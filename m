Return-Path: <clang-built-linux+bncBDT6TV45WMPRBNHS3H3AKGQECDDEJ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id B17131EBF9E
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 18:07:18 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id x67sf6255869oix.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 09:07:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591114037; cv=pass;
        d=google.com; s=arc-20160816;
        b=NzJ/Zsx0O0cXkW8wtFeJKkIMfBKXJjJvmvEsj3E8brD/qabqbub5DC9MKG9ad4GOAs
         P/iy4nHbGQiOS37d1reIuUMBmDwHEObYdqp1smG5+D7y2b/CGVuDtRgO5lgBmfVSxzgh
         qOwjkFgvyy7qq8abKgGBoCW2K7HtBxzAopAvAvxbwCw3xPl7b5QNC8WPmJXkv8v4L1Re
         iUCZHzXAAxrMkmdH6yycuVOx6zkEWGEvTRDuELztBs0aQBTzwv/+3R4i68SMAGdOuUiG
         sV8gyVln4256jmMkSoTZxWoN0ItRUfkPbXTMfemoZQmrWrJMpaIe6L+aIvcEu5BUyUST
         oCog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=Edy462Z/Swo7gaV+vyK3V+9AS2xoBjOT+otrm0W5cFo=;
        b=hM3/KW1TrTJjlwgsu8K0YgN5+HGsuUTPeMDBMw9LAqVPbeKWax5XY7B0gtRVzFCUJY
         qPBX3Y+epyokCTINXci3LPo8n4NWHIJAOff6CcIRwe2/owEt7R4WHO87B2bMHOtuEgbD
         RK9NPAAgYHTaR53ggsbYJvjk3hTgP70AGzFzko1d0L1KDqKtA8L75Ug73FzII4Vj3U5x
         hPiUFT23RLDu0f8XWgkwtaIR++yWWk3tf/31om3Qguy5buApeJa/lv6RVVJ1kybYodRa
         OBPXKPkXUgL85fbCcsHSaXvpAbH37WLE4B1CocEo11lMx3RE9dm/OMeqUQgQQbU34EMu
         5+VA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=kMIMdP8l;
       spf=neutral (google.com: 2607:f8b0:4864:20::62e is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Edy462Z/Swo7gaV+vyK3V+9AS2xoBjOT+otrm0W5cFo=;
        b=NtnXcrrsb3zozQjt1OCm14qESYO///aj3R62ao4Bnc80lw+IMYWqMyIxkZrbEFjtLD
         gZzMQcFyP0mUl4OQoQg7f+uc83GZ0yaMrA6eK0A4ULG1Tuqtjb6gnjU85tr9vvYXsBVs
         ei7FqBoPyIPv+EbUKBiJHRWhK1C9cgpZAETojyL8InYiL5VS2HDjvIahU3PECYxyQr7C
         mBP/BUrOby9ulsnxYbmdTPykS5JZoHtl1w5XgKeijxoTWmCqHYhRm9rwuyBMbG8VYquU
         i9r4PfWwYqt33NgzJYv+uyqzWKm1w4O6Lt5kOluHoJXn3Bn8kSihpbgZzrSI9FWm0cWW
         Jeiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Edy462Z/Swo7gaV+vyK3V+9AS2xoBjOT+otrm0W5cFo=;
        b=o49GDY5plxhBId3/Q+TXtq9sRCcnzTVBeD26u8Dh/BrrE70XsS0qoGlgXKpsgHZIzB
         JaedkHc3h6l2Gro9N2L2a/sqEIutgLetdk/chOlKeliuJweVwuxDGBFyvOMSuFeU0XWI
         3RL0DE3zMZW61ZwiRrLCwo0uSUssCVSU4KLHQ/TmLVBm9wjq12a1PdBkkAd6htY9pBr4
         PsHlEzovjOOcC1E9XB+kvmUnMM+sdSAIJXtAE/repPF9fy5GL6B7Iwd2+lmT3yAIliWy
         V6tDA9ePkrL9QQuVjCfUbsivVQ1yAG7Xag+/DpLWnCEir5McBLZDBNbjF5Bgv2hKINV4
         kCDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530PuNUmHD5aoLzB6bElUZvtE6UMXpqG87sAksTinhj1QcZJlM2+
	OJ7LXrc1jJnI4jNDIp5D2fQ=
X-Google-Smtp-Source: ABdhPJwTRq2zZ/cGd7NWVnPOnGrCaP7pYCGu/+wdLAyZvUak1TsU8NKOS/ACCtkFSiENgvSZdk5NYw==
X-Received: by 2002:a9d:32b4:: with SMTP id u49mr41168otb.304.1591114037062;
        Tue, 02 Jun 2020 09:07:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2c46:: with SMTP id f64ls3095594otb.2.gmail; Tue, 02 Jun
 2020 09:07:16 -0700 (PDT)
X-Received: by 2002:a9d:966:: with SMTP id 93mr58218otp.104.1591114036118;
        Tue, 02 Jun 2020 09:07:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591114036; cv=none;
        d=google.com; s=arc-20160816;
        b=yrYfrWXaWhpgSpjUI/7OzK1l8lKWXMP8pC3bAmzpXAeK8u5X3ToIFdAIRjsl7g0/qo
         xcaMZhdzXoAKbKwZ6tUHB+S124+fJXmYkHNbQkk6Y8coSvGcZZiCxVNsxDGYZdBSLwSg
         wLWlQyapOQtFcjuFR7CU0BhVLYXvyXp1603x9wwfBtqXnzV2m0Cp2re0Kw0MSS4w1oa8
         5xTSesYmdpdSp4lxcckI/1WVOvP+3rObUxDX/rRzyiAo8+l03TmkDzUVjXKoVivfA7h1
         ttoFYvqt/ApZhHNrn5SNnCkwiIz1K0bENh6qIVgIZSUB9g0A7ErfEJ+iVcBCoqV6jD4X
         tOeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=fBN62IVRVaYtOnmtv50HmOXdv0GHPZY2MAJYJIGaViM=;
        b=gPPQnQ7lr4oqqAekSq5/VJaT0S7mspsJlGQtvGMrScFvxq05YSzMHrAH+FHAHF4Auy
         no0JtlELuk6CyU+ahVbdsIF7BX5prfvEN3k0oC0hWHH0f2e13Os6MGvyBWuOIDNNrMn4
         DXW9Jd1S1BwG3pCb7+LNbTOq/GCrae0aXzepwMwWiaRElqmaIpCDIupR0dl5sAJK4YUT
         Umb04ox/W5Q5FNvyf7J10QqwH6MYFo0abFSXlI/0GQwJoVjqnsEg9tZRtTZdz9Tg53bV
         qrRa8Dj1CpRrkH1vQZEqICOllGj7ra/e2EvsR1wY1IGfbPSrS6Qqd0A7swohm76/6BIj
         EWUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=kMIMdP8l;
       spf=neutral (google.com: 2607:f8b0:4864:20::62e is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id f133si126639oib.5.2020.06.02.09.07.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 09:07:15 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::62e is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id x11so1515673plv.9
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 09:07:15 -0700 (PDT)
X-Received: by 2002:a17:902:7d85:: with SMTP id a5mr26410150plm.106.1591114031835;
        Tue, 02 Jun 2020 09:07:11 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id c9sm2904079pfp.100.2020.06.02.09.07.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2020 09:07:09 -0700 (PDT)
Message-ID: <5ed6792d.1c69fb81.f5969.a1d7@mx.google.com>
Date: Tue, 02 Jun 2020 09:07:09 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20200602
X-Kernelci-Report-Type: build
X-Kernelci-Branch: master
X-Kernelci-Tree: next
Subject: next/master build: 172 builds: 7 failed, 165 passed, 43 errors,
 2010 warnings (next-20200602)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=kMIMdP8l;       spf=neutral (google.com: 2607:f8b0:4864:20::62e is
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

next/master build: 172 builds: 7 failed, 165 passed, 43 errors, 2010 warnin=
gs (next-20200602)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200602/

Tree: next
Branch: master
Git Describe: next-20200602
Git Commit: 0e21d4620dd047da7952f44a2e1ac777ded2d57e
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arm64:
    allnoconfig: (clang-9) FAIL
    allnoconfig: (gcc-8) FAIL

arm:
    hisi_defconfig: (gcc-8) FAIL
    lpc18xx_defconfig: (gcc-8) FAIL
    vf610m4_defconfig: (gcc-8) FAIL

mips:
    rbtx49xx_defconfig: (gcc-8) FAIL
    xway_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:

arm64:
    allmodconfig (clang-9): 13 warnings
    allnoconfig (clang-9): 1 error
    allnoconfig (gcc-8): 1 error
    defconfig (gcc-8): 8 warnings
    defconfig (clang-9): 11 warnings
    defconfig (clang-10): 1810 warnings
    defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 8 warnings
    defconfig+CONFIG_RANDOMIZE_BASE=3Dy (gcc-8): 8 warnings
    defconfig+kselftest (gcc-8): 8 warnings

arm:
    aspeed_g4_defconfig (gcc-8): 12 warnings
    aspeed_g5_defconfig (clang-9): 12 warnings
    aspeed_g5_defconfig (gcc-8): 12 warnings
    collie_defconfig (gcc-8): 3 warnings
    h5000_defconfig (gcc-8): 3 warnings
    lpc18xx_defconfig (gcc-8): 20 errors
    multi_v5_defconfig (gcc-8): 12 warnings
    multi_v5_defconfig (clang-9): 12 warnings
    multi_v7_defconfig (clang-9): 12 warnings
    multi_v7_defconfig (clang-10): 12 warnings
    multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 12 warnings
    multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (gcc-8): 12 warni=
ngs
    multi_v7_defconfig+kselftest (gcc-8): 12 warnings
    vf610m4_defconfig (gcc-8): 20 errors
    xcep_defconfig (gcc-8): 2 warnings

i386:

mips:
    ip27_defconfig (gcc-8): 1 warning
    loongson3_defconfig (gcc-8): 1 warning
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    mtx1_defconfig (gcc-8): 1 warning
    nlm_xlr_defconfig (gcc-8): 1 warning
    xway_defconfig (gcc-8): 1 error

riscv:
    defconfig+kselftest (gcc-8): 1 warning

x86_64:
    allmodconfig (clang-9): 10 warnings

Errors summary:

    40   fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =
=E2=80=98copy_to_user=E2=80=99
    1    smp.c:(.text+0x214): undefined reference to `irq_work_single'
    1    smp.c:(.text+0x14c): undefined reference to `irq_work_single'
    1    drivers/mtd/nand/raw/xway_nand.c:227:30: error: =E2=80=98mtd=E2=80=
=99 undeclared (first use in this function)

Warnings summary:

    82   aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    21   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Wa=
rning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but=
 its #size-cells (1) differs from / (2)
    21   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Wa=
rning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but=
 its #address-cells (1) differs from / (2)
    10   arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C add=
ress must be less than 10-bits, got "0x40000010"
    10   arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4:=
 Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus=
 unit address format error, expected "40000010"
    10   arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C add=
ress must be less than 10-bits, got "0x40000010"
    10   arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4:=
 Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus=
 unit address format error, expected "40000010"
    10   arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C add=
ress must be less than 10-bits, got "0x40000010"
    10   arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4:=
 Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus=
 unit address format error, expected "40000010"
    10   arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    10   arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4:=
 Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus =
unit address format error, expected "40000010"
    10   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    10   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    10   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    10   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    10   aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    9    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    7    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_range=
s_format): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells=
 (1) differs from / (2)
    7    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_range=
s_format): /soc:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (1) differs from / (2)
    7    1 warning generated.
    4    drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:6: warning: va=
riable 'err' is used uninitialized whenever 'if' condition is true [-Wsomet=
imes-uninitialized]
    4    drivers/net/ethernet/mellanox/mlx5/core/main.c:1259:9: note: initi=
alize the variable 'err' to silence this warning
    4    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/ra=
id6/raid6_pq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ipa/ipa.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: security/keys/sysctl.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: net/sunrpc/sysctl.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: net/sunrpc/auth_gss/trace.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: mm/init-mm.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: mm/highmem.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/zlib_inflate/inflate_syms.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/zlib_deflate/deflate_syms.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/xz/xz_dec_syms.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/nmi_backtrace.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/irq_regs.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x8.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x16.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/ctype.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/clz_tab.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: lib/bitrev.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: ipc/syscall.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: init/version.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: init/init_task.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: fs/nfs/nfstrace.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: fs/nfs/nfs4trace.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: fs/iomap/trace.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: fs/ext2/symlink.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/video/logo/logo_linux_clut2=
24.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/usb/host/xhci-trace.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/trace.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/tty/vt/defkeymap.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/tty/vt/consolemap_deftbl.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/thermal/qcom/tsens-v2.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77995-sysc.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77980-sysc.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77970-sysc.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77965-sysc.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774b1-sysc.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774a1-sysc.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/platform/chrome/cros_ec_tra=
ce.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/pinctrl/samsung/pinctrl-exy=
nos-arm64.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/xmc.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/fujitsu.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/everspin.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/esmt.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/eon.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/catalyst.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra210.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra124.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/iommu/iommu-traces.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-j721e.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-am654.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-s=
ys.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-p=
eri.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-m=
io.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/base/firmware_loader/fallba=
ck_table.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utresdecode.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utglobal.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utdebug.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsserial.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsmemory.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsirq.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsio.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsinfo.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsdumpinfo.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/psopcode.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/nsdump.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwsleep.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwgpe.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwacpi.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/exdump.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfgpe.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfevnt.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evsci.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeutil.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeinit.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeblk.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpe.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evglock.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evevent.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: crypto/rsapubkey.asn1.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: crypto/rsaprivkey.asn1.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: crypto/hash_info.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509_akid.as=
n1.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509.asn1.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/pkcs7.asn1.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    4    aarch64-linux-gnu-ld: warning: ./drivers/firmware/efi/libstub/lib-=
ctype.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    3    drivers/net/ethernet/intel/e1000e/netdev.c:137:13: warning: =E2=80=
=98e1000e_check_me=E2=80=99 defined but not used [-Wunused-function]
    3    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/wi=
reless/cfg80211.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    3    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/msm/msm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    net/sunrpc/svcsock.c:226:5: warning: "ARCH_IMPLEMENTS_FLUSH_DCACHE=
_PAGE" is not defined, evaluates to 0 [-Wundef]
    2    net/core/filter.c:4253:6: warning: unused variable =E2=80=98ifinde=
x=E2=80=99 [-Wunused-variable]
    2    net/core/filter.c:4252:14: warning: unused variable =E2=80=98net=
=E2=80=99 [-Wunused-variable]
    2    net/core/filter.c:4251:7: warning: unused variable =E2=80=98devnam=
e=E2=80=99 [-Wunused-variable]
    2    drivers/phy/intel/phy-intel-combo.c:202:34: warning: implicit conv=
ersion from enumeration type 'enum intel_phy_mode' to different enumeration=
 type 'enum intel_combo_mode' [-Wenum-conversion]
    2    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
hda/snd-hda-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ma=
c80211/mac80211.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/wireless/ath/ath10k/ath10k_snoc.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/tuners/tuner-types.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    2    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/vc4/vc4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/tegra/tegra-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    2    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/lima/lima.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-objcopy: warning: vmlinux: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-nm: warning: vmlinux: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms1: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-ld: warning: net/wireless/cfg80211.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-ld: warning: lib/raid6/raid6_pq.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-ld: warning: drivers/net/ipa/ipa.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    2    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/msm/msm.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    {standard input}:141: Warning: macro instruction expanded into mul=
tiple instructions
    1    warning: sound/soc/qcom/qdsp6/q6core.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    1    warning: sound/soc/qcom/qdsp6/q6asm-dai.mod.oaarch64-linux-gnu-ld:=
 : unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: sound/soc/qcom/qdsp6/q6adm.mod.o: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    1    warning: sound/soc/bcm/snd-soc-bcm2835-i2s.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: net/netfilter/xt_LOG.mod.o: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    warning: net/ipv6/netfilter/ip6table_filter.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: lib/zstd/zstd_decompress.mod.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    warning: fs/overlayfs/overlay.mod.o: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0x  LD [M]  lib/crypto/libchacha.ko
    1    warning: fs/btrfs/btrfs.mod.o: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    warning: drivers/thermal/imx_sc_thermal.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/spi/spi-sh-msiof.mod.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    warning: drivers/spi/spi-geni-qcom.mod.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    1    warning: drivers/soc/qcom/socinfo.mod.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    warning: drivers/rtc/rtc-pcf85363.mod.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    warning: drivers/net/phy/microchip.mod.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    1    warning: drivers/net/phy/mdio-mux-meson-g12a.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/net/phy/bcm-phy-lib.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    1    warning: drivers/net/ipa/ipa.o: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    warning: drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/tuners/tda8290.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-twinhan1027.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-tanix-tx5max.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-tanix-tx3mini.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (aarch64-linux-gnu-ld: 5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-tango.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-msi-digivox-iii.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-manli.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-kworld-315u.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-genius-tvgo-a11mce.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-d680-dmb.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-avermedia.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-avermedia-dvbt.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/rc/keymaps/rc-asus-ps3-100.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/media/platform/s5p-mfc/s5p-mfc.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/input/keyboard/snvs_pwrkey.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/i2c/busses/i2c-bcm2835.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/hwmon/pwm-fan.mod.o: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    warning: drivers/hwmon/ina2xx.mod.o: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    warning: drivers/gpu/drm/meson/meson_dw_hdmi.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: drivers/gpu/drm/lima/lima.mod.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    1    warning: drivers/gpu/drm/i2c/ch7006.mod.o: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    1    warning: drivers/char/hw_random/hisi-rng.mod.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    1    warning: crypto/gcm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    warning: crypto/ccm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    warning: aarch64-linux-gnu-ld: warning: drivers/net/macvlan.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning: aarch64-linux-gnu-ld: sound/soc/qcom/qdsp6/q6asm.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    warning:   LD [M]  drivers/media/rc/keymaps/rc-twinhan-dtv-cab-ci.=
ko
    1    include/linux/compiler_attributes.h:200:41: warning: statement wil=
l never be executed [-Wswitch-unreachable]
    1    drivers/media/tuners/mxl5005s.c:3953:1: warning: the frame size of=
 1120 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    1    drivers/infiniband/hw/hfi1/qp.c:198:9: warning: implicit conversio=
n from enumeration type 'enum opa_mtu' to different enumeration type 'enum =
ib_mtu' [-Wenum-conversion]
    1    arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()+0=
x1f2: call to memset() with UACCESS enabled
    1    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x1=
cb: call to memset() with UACCESS enabled
    1    arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_frame=
()+0x1fa: call to memset() with UACCESS enabled
    1    aarch64-linux-gnu-strip: warning: drivers/firmware/efi/libstub/lib=
-ctype.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/sunxi/sun4i-spdif.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/sh/rcar/snd-soc-rcar.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/rockchip/snd-soc-rockchip-spdif.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/rockchip/snd-soc-rockchip-rt5645.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/rockchip/snd-soc-rockchip-pcm.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/rockchip/snd-soc-rockchip-i2s.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/rockchip/snd-soc-rk3399-gru-sound.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/qcom/snd-soc-sdm845.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/qcom/snd-soc-qcom-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/qcom/qdsp6/q6routing.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/qcom/qdsp6/q6dsp-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/qcom/qdsp6/q6core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/qcom/qdsp6/q6asm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/qcom/qdsp6/q6asm-dai.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/qcom/qdsp6/q6afe.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/qcom/qdsp6/q6afe-dai.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/qcom/qdsp6/q6adm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-t9015.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-gx-sound-card.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-g12a-tohdmitx.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-codec-glue.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-card-utils.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-axg-toddr.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-axg-tdmout.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-axg-tdmin.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-axg-tdm-interface.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-axg-tdm-formatter.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-axg-spdifout.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-axg-spdifin.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-axg-sound-card.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-axg-pdm.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-axg-frddr.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-axg-fifo.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/meson/snd-soc-meson-aiu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/generic/snd-soc-simple-card.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/generic/snd-soc-simple-card-utils.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/generic/snd-soc-audio-graph-card.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-wsa881x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-wcd934x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-tas571x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-spdif-tx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-spdif-rx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-simple-amplifier.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-rt5663.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-rt5645.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-rt5514.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-rt5514-spi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-rl6231.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-pcm3168a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-pcm3168a-i2c.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-max98927.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-max98357a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-hdmi-codec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-es7241.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-es7134.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-dmic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-da7219.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-cros-ec-codec.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/codecs/snd-soc-ak4613.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
soc/bcm/snd-soc-bcm2835-i2s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
pci/hda/snd-hda-tegra.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
pci/hda/snd-hda-codec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/=
pci/hda/snd-hda-codec-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/rf=
kill/rfkill.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/qr=
tr/qrtr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/qr=
tr/qrtr-tun.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/qr=
tr/qrtr-smd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/qr=
tr/ns.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ne=
tfilter/xt_tcpudp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ne=
tfilter/xt_nat.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ne=
tfilter/xt_conntrack.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ne=
tfilter/xt_addrtype.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ne=
tfilter/xt_MASQUERADE.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ne=
tfilter/xt_LOG.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ne=
tfilter/xt_CHECKSUM.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ne=
tfilter/x_tables.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ne=
tfilter/nf_nat.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ne=
tfilter/nf_log_common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ne=
tfilter/nf_conntrack.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ll=
c/llc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v6/sit.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v6/netfilter/nf_reject_ipv6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v6/netfilter/nf_log_ipv6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v6/netfilter/nf_defrag_ipv6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v6/netfilter/ip6table_nat.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v6/netfilter/ip6table_mangle.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v6/netfilter/ip6table_filter.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v6/netfilter/ip6t_REJECT.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v6/netfilter/ip6_tables.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v6/ipv6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v4/tunnel4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v4/netfilter/nf_reject_ipv4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v4/netfilter/nf_log_ipv4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v4/netfilter/nf_defrag_ipv4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v4/netfilter/iptable_nat.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v4/netfilter/iptable_mangle.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v4/netfilter/iptable_filter.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v4/netfilter/ipt_REJECT.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v4/netfilter/ip_tables.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ip=
v4/ip_tunnel.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ds=
a/tag_ocelot.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ds=
a/dsa_core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ca=
n/can.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ca=
n/can-raw.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ca=
n/can-gw.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ca=
n/can-bcm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/br=
idge/bridge.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/bl=
uetooth/hidp/hidp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/bl=
uetooth/bluetooth.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/80=
21q/8021q.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/80=
2/stp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/80=
2/psnap.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/80=
2/p8022.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/80=
2/mrp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/80=
2/garp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/zs=
td/zstd_decompress.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/zs=
td/zstd_compress.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/li=
bcrc32c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/cr=
ypto/libdes.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/cr=
ypto/libchacha.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/cr=
ypto/libarc4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/cr=
c-ccitt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/fs/ove=
rlayfs/overlay.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/fs/nfs=
/flexfilelayout/nfs_layout_flexfiles.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/fs/nfs=
/blocklayout/blocklayoutdriver.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/fs/fus=
e/fuse.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/fs/fus=
e/cuse.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/fs/btr=
fs/btrfs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/watchdog/sunxi_wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/watchdog/qcom-wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/watchdog/meson_wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/watchdog/meson_gxbb_wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/watchdog/imx_sc_wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/video/backlight/pwm_bl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/video/backlight/lp855x_bl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/video/backlight/generic_bl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/usb/typec/typec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/usb/typec/tcpm/tcpm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/usb/typec/tcpm/fusb302.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/usb/typec/hd3ss3220.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/usb/renesas_usbhs/renesas_usbhs.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/usb/gadget/udc/tegra-xudc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/usb/gadget/udc/renesas_usb3.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/thermal/tegra/tegra-bpmp-thermal.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/thermal/rockchip_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/thermal/qoriq_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/thermal/qcom/qcom-spmi-temp-alarm.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/thermal/imx_sc_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/thermal/imx8mm_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/thermal/broadcom/brcmstb_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/thermal/broadcom/bcm2835_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/thermal/broadcom/bcm2711_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/spi/spidev.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/spi/spi-sh-msiof.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/spi/spi-qcom-qspi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/spi/spi-meson-spifc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/spi/spi-meson-spicc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/spi/spi-imx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/spi/spi-geni-qcom.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/spi/spi-bitbang.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/spi/spi-bcm2835aux.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/spi/spi-bcm2835.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/soundwire/soundwire-qcom.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/soundwire/soundwire-bus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/soc/qcom/socinfo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/soc/qcom/rmtfs_mem.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/soc/qcom/qmi_helpers.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/soc/qcom/pdr_interface.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/soc/qcom/mdt_loader.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/soc/qcom/apr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/soc/amlogic/meson-canvas.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/slimbus/slimbus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/slimbus/slim-qcom-ngd-ctrl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/slimbus/slim-qcom-ctrl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/scsi/ufs/ufs-qcom.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/scsi/raid_class.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/scsi/mpt3sas/mpt3sas.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/rtc/rtc-snvs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/rtc/rtc-rx8581.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/rtc/rtc-rk808.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/rtc/rtc-pcf85363.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/rtc/rtc-pcf2127.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/rtc/rtc-meson-vrtc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/rtc/rtc-imx-sc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/rtc/rtc-ds1307.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/rpmsg/qcom_glink_smem.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/reset/reset-qcom-pdc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/reset/reset-meson-audio-arb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/remoteproc/qcom_sysmon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/remoteproc/qcom_q6v5_pas.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/remoteproc/qcom_q6v5_mss.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/remoteproc/qcom_q6v5_ipa_notify.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/remoteproc/qcom_q6v5.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/remoteproc/qcom_common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/regulator/vctrl-regulator.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/pwm/pwm-tegra.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/pwm/pwm-sun4i.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/pwm/pwm-rcar.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/pwm/pwm-meson.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/pwm/pwm-cros-ec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/pwm/pwm-bcm2835.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/power/supply/sbs-battery.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/platform/chrome/cros_ec_typec.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/phy/tegra/phy-tegra194-p2u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/phy/rockchip/phy-rockchip-pcie.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/phy/rockchip/phy-rockchip-inno-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/phy/renesas/phy-rcar-gen3-usb3.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/phy/qualcomm/phy-qcom-qusb2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/phy/qualcomm/phy-qcom-qmp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/phy/allwinner/phy-sun6i-mipi-dphy.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/perf/thunderx2_pmu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/perf/fsl_imx8_ddr_perf.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/perf/arm_smmuv3_pmu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/pci/controller/pcie-rockchip-host.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/pci/controller/pcie-brcmstb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/pci/controller/dwc/pcie-tegra194.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/nvmem/nvmem_meson_efuse.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/nvme/host/nvme.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/nvme/host/nvme-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/wireless/ti/wlcore/wlcore_sdio.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/wireless/ti/wlcore/wlcore.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/wireless/ti/wl18xx/wl18xx.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/wireless/marvell/mwifiex/mwifiex_pcie.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/wireless/marvell/mwifiex/mwifiex.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/wireless/broadcom/brcm80211/brcmutil/brcmutil.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/wireless/broadcom/brcm80211/brcmfmac/brcmfmac.ko: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/wireless/ath/ath10k/ath10k_pci.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/wireless/ath/ath10k/ath10k_core.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/wireless/ath/ath.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/veth.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/zaurus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/usbnet.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/sr9800.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/smsc95xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/smsc75xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/rtl8150.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/r8152.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/plusb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/pegasus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/net1080.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/mcs7830.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/lan78xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/dm9601.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/cdc_subset.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/cdc_ncm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/cdc_ether.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/ax88179_178a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/usb/asix.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/tap.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/phy/realtek.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/phy/microchip.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/phy/meson-gxl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/phy/mdio-xpcs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/phy/mdio-mux-meson-g12a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/phy/mdio-bcm-unimac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/phy/marvell10g.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/phy/marvell.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/phy/broadcom.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/phy/bcm7xxx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/phy/bcm-phy-lib.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/mdio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/macvtap.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/macvlan.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/stmicro/stmmac/stmmac.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/stmicro/stmmac/stmmac-platform.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/stmicro/stmmac/dwmac-sunxi.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/stmicro/stmmac/dwmac-sun8i.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/stmicro/stmmac/dwmac-rk.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.ko: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/stmicro/stmmac/dwmac-meson8b.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/stmicro/stmmac/dwmac-meson.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/stmicro/stmmac/dwmac-ipq806x.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/stmicro/stmmac/dwmac-imx.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/stmicro/stmmac/dwmac-generic.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/stmicro/stmmac/dwmac-altr-socfpga.ko: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/qualcomm/rmnet/rmnet.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/qualcomm/emac/qcom-emac.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/mscc/mscc_ocelot_common.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/mellanox/mlx5/core/mlx5_core.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/mellanox/mlx4/mlx4_en.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/mellanox/mlx4/mlx4_core.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/broadcom/genet/genet.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/broadcom/bnx2x/bnx2x.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/ethernet/atheros/atl1c/atl1c.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/dsa/ocelot/mscc_felix.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/can/rcar/rcar_canfd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/can/rcar/rcar_can.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/can/flexcan.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/net/can/can-dev.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/misc/uacce/uacce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/misc/eeprom/at25.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/misc/eeprom/at24.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/mfd/wcd934x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/mfd/exynos-lpass.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/v4l2-core/videodev.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/v4l2-core/v4l2-mem2mem.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/v4l2-core/v4l2-fwnode.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/v4l2-core/v4l2-dv-timings.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/usb/uvc/uvcvideo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/usb/gspca/gspca_main.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/tuners/xc5000.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/tuners/xc4000.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/tuners/tuner-xc2028.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/tuners/tuner-simple.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/tuners/tda9887.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/tuners/tda8290.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/tuners/tda827x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/tuners/tda18271.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/tuners/mt20xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/tuners/mc44s803.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/sunxi-cir.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/rc-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/meson-ir.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-zx-irdec.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-xbox-dvd.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-x96max.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-winfast.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-winfast-usbii-deluxe.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-wetek-play2.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-wetek-hub.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-videostrong-kii-pro.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-videomate-tv-pvr.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-videomate-s350.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-videomate-m1f.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-vega-s9x.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-twinhan1027.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-twinhan-dtv-cab-ci.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-tt-1500.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-trekstor.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-total-media-in-hand.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-total-media-in-hand-02.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-tivo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-tevii-nec.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-terratec-slim.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-terratec-slim-2.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-terratec-cinergy-xs.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-terratec-cinergy-s2-hd.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-terratec-cinergy-c-pci.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-technisat-usb2.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-technisat-ts35.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-tbs-nec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-tanix-tx5max.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-tanix-tx3mini.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-tango.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-su3000.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-streamzap.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-snapstream-firefly.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-reddo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-real-audio-220-32-keys.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-rc6-mce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-pv951.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-purpletv.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-proteus-2309.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-powercolor-real-angel.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-pixelview.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-pixelview-new.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-pixelview-mk12.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-pixelview-002t.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-pinnacle-pctv-hd.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-pinnacle-grey.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-pinnacle-color.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-pctv-sedna.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-odroid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-npgtech.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-norwood.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-nec-terratec-cinergy-xs.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-nebula.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-msi-tvanywhere.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-msi-tvanywhere-plus.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-msi-digivox-iii.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-msi-digivox-ii.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-medion-x10.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-medion-x10-or2x.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-medion-x10-digitainer.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-manli.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-lme2510.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-leadtek-y04g0051.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-kworld-plus-tv-analog.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-kworld-pc150u.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-kworld-315u.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-khadas.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-kaiomy.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-it913x-v2.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-it913x-v1.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-iodata-bctv7e.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-imon-rsc.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-imon-pad.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-imon-mce.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-hisi-tv-demo.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-hisi-poplar.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-hauppauge.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-gotview7135.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-genius-tvgo-a11mce.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-geekbox.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-gadmei-rm008z.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-fusionhdtv-mce.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-flyvideo.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-flydvb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-eztv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-evga-indtube.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-encore-enltv2.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-encore-enltv.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-encore-enltv-fm53.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-em-terratec.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-dvico-portable.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-dvico-mce.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-dvbsky.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-dtt200u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-dntv-live-dvbt-pro.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-dntv-live-dvb-t.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-dm1105-nec.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-digittrade.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-digitalnow-tinytwin.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-dib0700-rc5.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-dib0700-nec.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-delock-61959.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-d680-dmb.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-cinergy.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-cinergy-1400.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-cec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-budget-ci-old.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-behold.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-behold-columbus.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-beelink-gs1.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-azurewave-ad-tu700.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-avertv-303.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-avermedia.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-avermedia-rm-ks.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-avermedia-m733a-rm-k6.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-avermedia-m135a.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-avermedia-dvbt.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-avermedia-cardbus.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-avermedia-a16d.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-ati-x10.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-ati-tv-wonder-hd-600.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-asus-ps3-100.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-asus-pc39.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-astrometa-t2hybrid.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-apac-viewcomp.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-anysee.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-alink-dtu-m.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/rc/keymaps/rc-adstech-dvb-t-pci.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/platform/vsp1/vsp1.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/platform/sunxi/sun6i-csi/sun6i-csi.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/platform/s5p-mfc/s5p-mfc.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/platform/s5p-jpeg/s5p-jpeg.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/platform/rcar_fdp1.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/platform/rcar_drif.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/platform/rcar-vin/rcar-vin.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/platform/rcar-vin/rcar-csi2.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/platform/rcar-fcp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/platform/qcom/camss/qcom-camss.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/platform/exynos-gsc/exynos-gsc.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/mc/mc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/i2c/ir-kbd-i2c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/dvb-core/dvb-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/common/videobuf2/videobuf2-vmalloc.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/common/videobuf2/videobuf2-v4l2.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/common/videobuf2/videobuf2-memops.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/common/videobuf2/videobuf2-dma-sg.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/common/videobuf2/videobuf2-dma-contig.ko: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/common/videobuf2/videobuf2-common.ko: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/media/cec/core/cec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/md/md-mod.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/md/dm-zero.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/md/dm-region-hash.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/md/dm-mod.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/md/dm-mirror.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/md/dm-log.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/mailbox/bcm-flexrm-mailbox.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/input/touchscreen/atmel_mxt_ts.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/input/misc/pm8xxx-vibrator.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/input/keyboard/snvs_pwrkey.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/input/keyboard/imx_sc_key.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/input/keyboard/adc-keys.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/iio/pressure/mpl3115.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/iio/pressure/cros_ec_baro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/iio/light/isl29018.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/iio/light/cros_ec_light_prox.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/iio/common/cros_ec_sensors/cros_ec_sensors_core.ko: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/iio/common/cros_ec_sensors/cros_ec_sensors.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/iio/buffer/kfifo_buf.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/iio/buffer/industrialio-triggered-buffer.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/iio/adc/rockchip_saradc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/iio/adc/qcom-vadc-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/iio/adc/qcom-spmi-adc5.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/iio/adc/max9611.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/i2c/busses/i2c-qcom-geni.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/i2c/busses/i2c-qcom-cci.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/i2c/busses/i2c-gpio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/i2c/busses/i2c-bcm2835.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/hwmon/raspberrypi-hwmon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/hwmon/pwm-fan.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/hwmon/lm90.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/hwmon/ina3221.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/hwmon/ina2xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/hid/i2c-hid/i2c-hid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/host1x/host1x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/ttm/ttm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/sun4i/sun8i_tcon_top.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/sun4i/sun8i-mixer.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/sun4i/sun8i-drm-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/sun4i/sun6i_mipi_dsi.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/sun4i/sun6i_drc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/sun4i/sun4i_tv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/sun4i/sun4i-tcon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/sun4i/sun4i-frontend.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/sun4i/sun4i-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/sun4i/sun4i-drm-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/sun4i/sun4i-backend.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/scheduler/gpu-sched.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/rockchip/rockchipdrm.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/rcar-du/rcar_lvds.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/rcar-du/rcar_dw_hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/rcar-du/rcar_cmm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/rcar-du/rcar-du-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/pl111/pl111_drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/panfrost/panfrost.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/panel/panel-truly-nt35597.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/panel/panel-simple.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/panel/panel-lvds.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/meson/meson_dw_hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/meson/meson-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/i2c/tda998x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/i2c/sil164.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/i2c/ch7006.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/hisilicon/kirin/kirin-drm.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/hisilicon/kirin/dw_drm_dsi.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/hisilicon/hibmc/hibmc-drm.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/exynos/exynosdrm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/etnaviv/etnaviv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/drm_vram_helper.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/drm_ttm_helper.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/drm_kms_helper.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/bridge/ti-sn65dsi86.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/bridge/thc63lvd1024.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/bridge/synopsys/dw-mipi-dsi.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/bridge/synopsys/dw-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/bridge/synopsys/dw-hdmi-cec.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/bridge/simple-bridge.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/bridge/sii902x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/bridge/display-connector.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/bridge/analogix/analogix_dp.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/bridge/adv7511/adv7511.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpu/drm/arm/mali-dp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpio/gpio-wcd934x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpio/gpio-bd9571mwv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/gpio/gpio-altera.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/fpga/stratix10-soc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/fpga/of-fpga-region.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/fpga/fpga-region.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/fpga/fpga-bridge.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/fpga/altera-freeze-bridge.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/firmware/stratix10-rsu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/dma/sun6i-dma.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/dma/sh/usb-dmac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/dma/bcm-sba-raid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/crypto/virtio/virtio_crypto.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/crypto/qcom-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/crypto/hisilicon/zip/hisi_zip.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/crypto/hisilicon/sec2/hisi_sec2.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/crypto/hisilicon/hpre/hisi_hpre.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/crypto/hisilicon/hisi_qm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/crypto/ccree/ccree.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/crypto/caam/error.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/crypto/caam/dpaa2_caam.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/crypto/caam/caamhash_desc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/crypto/caam/caamalg_desc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/crypto/caam/caam_jr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/crypto/caam/caam.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/crypto/bcm/bcm_crypto_spu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/crypto/allwinner/sun8i-ce/sun8i-ce.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/cpufreq/sun50i-cpufreq-nvmem.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/cpufreq/raspberrypi-cpufreq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/cpufreq/imx-cpufreq-dt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/cpufreq/cpufreq_powersave.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/cpufreq/cpufreq_conservative.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/cpufreq/cppc_cpufreq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/clk/qcom/camcc-sdm845.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/clk/meson/sclk-div.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/clk/meson/clk-phase.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/clk/meson/axg-audio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/clk/bcm/clk-raspberrypi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/char/ipmi/ipmi_si.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/char/ipmi/ipmi_msghandler.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/char/ipmi/ipmi_devintf.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/char/hw_random/xgene-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/char/hw_random/rng-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/char/hw_random/optee-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/char/hw_random/omap-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/char/hw_random/mtk-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/char/hw_random/meson-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/char/hw_random/iproc-rng200.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/char/hw_random/hisi-trng-v2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/char/hw_random/hisi-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/char/hw_random/exynos-trng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/char/hw_random/cavium-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/char/hw_random/cavium-rng-vf.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/char/hw_random/bcm2835-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/bluetooth/hci_uart.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/bluetooth/btusb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/bluetooth/btrtl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/bluetooth/btqca.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/bluetooth/btintel.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/bluetooth/btbcm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/block/nbd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/base/regmap/regmap-slimbus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/driver=
s/base/regmap/regmap-sdw.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/xxhash_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/xts.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/xor.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/sm4_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/sm3_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/sha512_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/sha3_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/md5.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/ghash-generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/gcm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/ecdh_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/ecc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/dh_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/des_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/ctr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/cmac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/ccm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/blake2b_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/authencesn.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/authenc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/algif_rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto=
/af_alg.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/a=
rm64/lib/xor-neon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/a=
rm64/crypto/sm3-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/a=
rm64/crypto/sha512-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/a=
rm64/crypto/sha512-arm64.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/a=
rm64/crypto/sha3-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/a=
rm64/crypto/crct10dif-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/a=
rm64/crypto/chacha-neon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/a=
rm64/crypto/aes-neon-bs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kerne=
l-build/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/a=
rm64/crypto/aes-neon-blk.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    1    aarch64-linux-gnu-objdump: warning: drivers/firmware/efi/libstub/l=
ib-ctype.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-objcopy: warning: drivers/firmware/efi/libstub/l=
ib-ctype.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/sunxi/sun4i-spdif.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/sh/rcar/snd-soc-rcar.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rockchip=
-spdif.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rockchip=
-rt5645.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rockchip=
-pcm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rockchip=
-i2s.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rk3399-g=
ru-sound.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/qcom/snd-soc-sdm845.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/qcom/snd-soc-qcom-common.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6routing.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6dsp-common.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6afe.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6afe-dai.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-t9015=
.mod.oaarch64-linux-gnu-ld: : unsupported GNU_PROPERTY_TYPE (warning: 5soun=
d/soc/meson/snd-soc-meson-gx-sound-card.mod.o) type: 0x: unsupported GNU_PR=
OPERTY_TYPE (c00000005
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-g12a-=
tohdmitx.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-codec=
-glue.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-card-=
utils.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-t=
oddr.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-t=
dmout.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-t=
dmin.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-t=
dm-interface.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-t=
dm-formatter.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-s=
pdifout.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-s=
pdifin.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-s=
ound-card.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-p=
dm.mod.o: unsupported GNU_PROPERTY_TYPE (5  LD [M]  sound/soc/meson/snd-soc=
-meson-axg-tdm-formatter.ko
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-f=
rddr.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-f=
ifo.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-aiu.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/generic/snd-soc-simple-ca=
rd.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/generic/snd-soc-simple-ca=
rd-utils.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/generic/snd-soc-audio-gra=
ph-card.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-wsa881x.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-wcd934x.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-tas571x.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-spdif-tx.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-spdif-rx.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-simple-amp=
lifier.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rt5663.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rt5645.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rt5514.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rt5514-spi=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rl6231.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-pcm3168a.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-pcm3168a-i=
2c.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-max98927.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-max98357a.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-hdmi-codec=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-es7241.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-es7134.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  sound/soc/codecs/sn=
d-soc-es7241.ko
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-dmic.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-da7219.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-cros-ec-co=
dec.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-ak4613.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/pci/hda/snd-hda-codec.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/pci/hda/snd-hda-codec-hdmi.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/hda/trace.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/hda/snd-hda-core.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: sound/hda/snd-hda-core.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/wireless/trace.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/wireless/shipped-certs.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/wireless/cfg80211.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/rfkill/rfkill.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/qrtr/qrtr.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/qrtr/qrtr-tun.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/qrtr/qrtr-smd.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/qrtr/ns.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/xt_tcpudp.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/xt_nat.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/xt_conntrack.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/xt_addrtype.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/xt_CHECKSUM.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/x_tables.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/nf_nat.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/nf_log_common.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/netfilter/nf_conntrack.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/mac80211/trace.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/mac80211/mac80211.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/mac80211/mac80211.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/llc/llc.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/sit.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/nf_reject_ipv6.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/nf_log_ipv6.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/nf_defrag_ipv6.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6table_nat.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6table_mangle.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6t_REJECT.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6_tables.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv6/ipv6.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/tunnel4.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/nf_reject_ipv4.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/nf_log_ipv4.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/nf_defrag_ipv4.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/iptable_nat.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/iptable_mangle.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/iptable_filter.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/ipt_REJECT.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/ip_tables.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/ipv4/ip_tunnel.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/dsa/tag_ocelot.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/dsa/dsa_core.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/can/can.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/can/can-raw.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/can/can-gw.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/can/can-bcm.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/bluetooth/hidp/hidp.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/8021q/8021q.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/802/stp.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/802/psnap.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/802/p8022.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/802/mrp.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: net/802/garp.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/zstd/zstd_compress.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/raid6/tables.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/raid6/raid6_pq.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0x  LD [M]  net/802/mrp.ko
    1    aarch64-linux-gnu-ld: warning: lib/raid6/raid6_pq.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/raid6/int32.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/raid6/int16.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/libcrc32c.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/crypto/libdes.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/crypto/libchacha.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: lib/crc-ccitt.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: fs/nfs/flexfilelayout/nfs_layout_fl=
exfiles.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: fs/nfs/blocklayout/blocklayoutdrive=
r.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: fs/fuse/fuse.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: fs/fuse/cuse.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/watchdog/sunxi_wdt.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/watchdog/qcom-wdt.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/watchdog/meson_wdt.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/watchdog/imx_sc_wdt.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/video/backlight/pwm_bl.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/video/backlight/lp855x_bl.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/video/backlight/generic_bl.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/usb/typec/tcpm/fusb302.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/usb/typec/hd3ss3220.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/usb/renesas_usbhs/renesas_u=
sbhs.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/tegra-xudc.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/renesas_usb3=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/tegra/tegra-bpmp-th=
ermal.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/rockchip_thermal.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/qoriq_thermal.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/qcom/qcom-spmi-temp=
-alarm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/imx8mm_thermal.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/broadcom/brcmstb_th=
ermal.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/broadcom/bcm2835_th=
ermal.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/thermal/broadcom/bcm2711_th=
ermal.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spidev.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spi-qcom-qspi.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spi-meson-spifc.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spi-meson-spicc.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spi-imx.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spi-bitbang.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-ld:
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spi-bcm2835aux.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/spi/spi-bcm2835.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soundwire/soundwire-qcom.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/rmtfs_mem.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/qmi_helpers.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/pdr_interface.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/mdt_loader.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/apr.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/soc/amlogic/meson-canvas.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/slimbus/slimbus.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/slimbus/slim-qcom-ngd-ctrl.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/slimbus/slim-qcom-ctrl.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/scsi/ufs/ufs-qcom.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/scsi/raid_class.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/scsi/mpt3sas/mpt3sas.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-snvs.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-rx8581.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-rk808.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-pcf2127.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-ld: c0000000
    1    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-meson-vrtc.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-imx-sc.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-ds1307.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/rpmsg/qcom_glink_smem.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/reset/reset-qcom-pdc.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/reset/reset-meson-audio-arb=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_sysmon.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_q6v5_pas.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_q6v5_mss.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_q6v5_ipa_no=
tify.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_common.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/regulator/vctrl-regulator.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-tegra.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-sun4i.mod.oaarch64-=
linux-gnu-ld: warning: drivers/remoteproc/qcom_q6v5.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-rcar.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-meson.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-cros-ec.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-bcm2835.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/power/supply/sbs-battery.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/platform/chrome/cros_ec_typ=
ec.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/phy/tegra/phy-tegra194-p2u.=
mod.o: unsupported GNU_PROPERTY_TYPE (5  LD [M]  drivers/power/supply/sbs-b=
attery.ko
    1    aarch64-linux-gnu-ld: warning: drivers/phy/rockchip/phy-rockchip-p=
cie.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/phy/rockchip/phy-rockchip-i=
nno-hdmi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/phy/renesas/phy-rcar-gen3-u=
sb3.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/phy/qualcomm/phy-qcom-qusb2=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/phy/qualcomm/phy-qcom-qmp.m=
od.o  LD [M]  drivers/phy/qualcomm/phy-qcom-qusb2.ko
    1    aarch64-linux-gnu-ld: warning: drivers/phy/allwinner/phy-sun6i-mip=
i-dphy.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/perf/thunderx2_pmu.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/perf/fsl_imx8_ddr_perf.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/perf/arm_smmuv3_pmu.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pci/controller/pcie-rockchi=
p-host.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pci/controller/pcie-brcmstb=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/pci/controller/dwc/pcie-teg=
ra194.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/nvmem/nvmem_meson_efuse.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/nvme/host/nvme.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/nvme/host/nvme-core.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ti/wlcore/wlco=
re_sdio.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ti/wlcore/wlco=
re.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ti/wl18xx/wl18=
xx.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/marvell/mwifie=
x/mwifiex_pcie.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/marvell/mwifie=
x/mwifiex.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/broadcom/brcm8=
0211/brcmfmac/brcmfmac.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/qmi=
_wlfw_v01.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/ath=
10k_snoc.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux=
-gnu-ld: warning: drivers/net/wireless/broadcom/brcm80211/brcmutil/brcmutil=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/ath=
10k_snoc.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/ath=
10k_pci.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/ath=
10k_core.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/veth.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/zaurus.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/usbnet.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/sr9800.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/smsc95xx.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/smsc75xx.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/rtl8150.mod.o: unsu=
pported GNU_PROPERTY_TYPE (aarch64-linux-gnu-ld: warning: drivers/net/usb/p=
lusb.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/r8152.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/pegasus.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/net1080.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/mcs7830.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/lan78xx.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5aarch64-linux-gnu-ld: ) type: 0xwarning: driver=
s/net/usb/cdc_ether.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/dm9601.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/cdc_subset.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/cdc_ncm.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/ax88179_178a.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/usb/asix.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/tap.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/phy/meson-gxl.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/phy/mdio-xpcs.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/phy/mdio-bcm-unimac.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/phy/broadcom.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/phy/bcm7xxx.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/mdio.mod.oaarch64-linux=
-gnu-ld: aarch64-linux-gnu-ld: : unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/macvtap.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ipa/ipa_qmi_msg.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ipa/ipa_data-sdm845.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ipa/ipa_data-sc7180.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ipa/ipa.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac=
/dwmac-sunxi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac=
/dwmac-sun8i.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac=
/dwmac-rk.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac=
/dwmac-qcom-ethqos.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac=
/dwmac-meson.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac=
/dwmac-ipq806x.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac=
/dwmac-imx.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac=
/dwmac-generic.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac=
/dwmac-altr-socfpga.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/qualcomm/rmnet=
/rmnet.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/qualcomm/emac/=
qcom-emac.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/mscc/mscc_ocel=
ot_common.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/mellanox/mlx5/=
core/mlx5_core.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/mellanox/mlx4/=
mlx4_en.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/mellanox/mlx4/=
mlx4_core.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/broadcom/genet=
/genet.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/broadcom/bnx2x=
/bnx2x.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/atheros/atl1c/=
atl1c.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/dsa/ocelot/mscc_felix.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/can/rcar/rcar_canfd.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/can/rcar/rcar_can.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/can/flexcan.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/net/can/can-dev.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/misc/uacce/uacce.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/misc/eeprom/at25.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/misc/eeprom/at24.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/mfd/wcd934x.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/mfd/exynos-lpass.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/v4l2-core/videodev.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/v4l2-core/v4l2-mem2me=
m.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/v4l2-core/v4l2-fwnode=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/v4l2-core/v4l2-dv-tim=
ings.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/usb/uvc/uvcvideo.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/usb/gspca/gspca_main.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/xc5000.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/xc4000.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tuner-xc2028.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tuner-types.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tuner-types.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tuner-simple.m=
od.o: unsupported GNU_PROPERTY_TYPE (5  LD [M]  drivers/media/tuners/xc4000=
.ko
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tda9887.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tda827x.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tda18271.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/mt20xx.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/tuners/mc44s803.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/sunxi-cir.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/rc-core.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/meson-ir.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-zx-irde=
c.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-xbox-dv=
d.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-x96max.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-winfast=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-winfast=
-usbii-deluxe.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-wetek-p=
lay2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-wetek-h=
ub.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-videost=
rong-kii-pro.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-videoma=
te-tv-pvr.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-videoma=
te-s350.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-videoma=
te-m1f.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-twinhan=
-dtv-cab-ci.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tt-1500=
.mod.oaarch64-linux-gnu-ld: : unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-treksto=
r.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-total-m=
edia-in-hand-02.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tivo.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tevii-n=
ec.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terrate=
c-slim.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terrate=
c-slim-2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terrate=
c-cinergy-xs.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terrate=
c-cinergy-s2-hd.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terrate=
c-cinergy-c-pci.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-technis=
at-usb2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-technis=
at-ts35.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tbs-nec=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-su3000.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-streamz=
ap.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-reddo.m=
od.o: unsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-ld: warning: drivers=
/media/rc/keymaps/rc-snapstream-firefly.mod.o: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-real-au=
dio-220-32-keys.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-rc6-mce=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pv951.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-purplet=
v.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-proteus=
-2309.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-powerco=
lor-real-angel.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pixelvi=
ew.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pixelvi=
ew-new.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pixelvi=
ew-mk12.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pixelvi=
ew-002t.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pinnacl=
e-pctv-hd.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pinnacl=
e-grey.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pinnacl=
e-color.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pctv-se=
dna.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-odroid.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-npgtech=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-norwood=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-nec-ter=
ratec-cinergy-xs.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-nebula.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-msi-tva=
nywhere.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-msi-tva=
nywhere-plus.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-msi-dig=
ivox-ii.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-medion-=
x10-or2x.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-medion-=
x10-digitainer.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-lme2510=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-kworld-=
pc150u.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-khadas.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-kaiomy.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-it913x-=
v2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-it913x-=
v1.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-iodata-=
bctv7e.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-imon-rs=
c.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-imon-pa=
d.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-imon-mc=
e.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-hisi-po=
plar.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-hauppau=
ge.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-gotview=
7135.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-geekbox=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-gadmei-=
rm008z.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-fusionh=
dtv-mce.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-flyvide=
o.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-flydvb.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-eztv.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-evga-in=
dtube.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-encore-=
enltv2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-encore-=
enltv.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-encore-=
enltv-fm53.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-em-terr=
atec.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dvico-p=
ortable.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dvico-m=
ce.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dvbsky.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dtt200u=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dntv-li=
ve-dvbt-pro.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dntv-li=
ve-dvb-t.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dm1105-=
nec.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-digittr=
ade.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-digital=
now-tinytwin.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dib0700=
-rc5.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux=
-gnu-ld: warning: drivers/media/rc/keymaps/rc-cinergy.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dib0700=
-nec.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-delock-=
61959.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-cinergy=
-1400.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-cec.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-budget-=
ci-old.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-behold.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-behold-=
columbus.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-beelink=
-gs1.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-azurewa=
ve-ad-tu700.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avertv-=
303.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermed=
ia-rm-ks.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermed=
ia-m733a-rm-k6.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermed=
ia-m135a.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermed=
ia-cardbus.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermed=
ia-a16d.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-ati-x10=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-ati-tv-=
wonder-hd-600.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-asus-pc=
39.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-astrome=
ta-t2hybrid.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-apac-vi=
ewcomp.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-anysee.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-alink-d=
tu-m.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-adstech=
-dvb-t-pci.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/platform/vsp1/vsp1.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/platform/sunxi/sun6i-=
csi/sun6i-csi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/platform/s5p-jpeg/s5p=
-jpeg.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/platform/rcar_fdp1.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/platform/rcar_drif.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/platform/rcar-vin/rca=
r-vin.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/platform/rcar-vin/rca=
r-csi2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/platform/rcar-fcp.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/platform/qcom/camss/q=
com-camss.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/platform/exynos-gsc/e=
xynos-gsc.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/mc/mc.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/i2c/ir-kbd-i2c.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/dvb-core/dvb-core.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/vide=
obuf2-vmalloc.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/vide=
obuf2-memops.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/vide=
obuf2-dma-sg.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux=
-gnu-ld: warning: drivers/media/common/videobuf2/videobuf2-v4l2.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/vide=
obuf2-dma-contig.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/vide=
obuf2-common.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/media/cec/core/cec.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/md/md-mod.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/md/dm-zero.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/md/dm-region-hash.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/md/dm-mod.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/md/dm-mirror.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/md/dm-log.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/mailbox/bcm-flexrm-mailbox.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/input/touchscreen/atmel_mxt=
_ts.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/input/misc/pm8xxx-vibrator.=
mod.o  LD [M]  drivers/md/dm-mirror.ko
    1    aarch64-linux-gnu-ld: warning: drivers/input/keyboard/imx_sc_key.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/pressure/mpl3115.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/pressure/cros_ec_baro.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/light/isl29018.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/light/cros_ec_light_pro=
x.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/common/cros_ec_sensors/=
cros_ec_sensors_core.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/common/cros_ec_sensors/=
cros_ec_sensors.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/buffer/kfifo_buf.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/buffer/industrialio-tri=
ggered-buffer.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/adc/rockchip_saradc.mod=
.o  LD [M]  drivers/iio/buffer/industrialio-triggered-buffer.ko
    1    aarch64-linux-gnu-ld: warning: drivers/iio/adc/qcom-vadc-common.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/adc/qcom-spmi-adc5.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/iio/adc/max9611.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/i2c/busses/i2c-qcom-geni.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/i2c/busses/i2c-qcom-cci.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/i2c/busses/i2c-gpio.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/hwmon/raspberrypi-hwmon.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-ld:
    1    aarch64-linux-gnu-ld: warning: drivers/hwmon/lm90.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/hwmon/ina3221.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/hid/i2c-hid/i2c-hid.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/host1x/host1x.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/vc4/vc4_trace_point=
s.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/vc4/vc4.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/vc4/vc4.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/ttm/ttm.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/tegra/trace.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/tegra/tegra-drm.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/tegra/tegra-drm.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun8i-mixer.m=
od.o: unsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-ld: warning: drivers=
/gpu/drm/sun4i/sun8i_tcon_top.mod.o: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun6i_mipi_ds=
i.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-ld: wa=
rning: drivers/gpu/drm/sun4i/sun8i-drm-hdmi.mod.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun6i_drc.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i_tv.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-tcon.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-fronten=
d.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-drm.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-drm-hdm=
i.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-backend=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/scheduler/gpu-sched=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rockchip/rockchipdr=
m.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rcar-du/rcar_lvds.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rcar-du/rcar_dw_hdm=
i.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rcar-du/rcar_cmm.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rcar-du/rcar-du-drm=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/pl111/pl111_drm.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/panfrost/panfrost.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  drivers/gpu/drm/p=
l111/pl111_drm.ko
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/panel/panel-truly-n=
t35597.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/panel/panel-simple.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/panel/panel-lvds.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/subdev=
/pci/agp.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/subdev=
/bios/shadowof.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine=
/gr/ctxgp107.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine=
/gr/ctxgp104.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine=
/gr/ctxgk208.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine=
/gr/ctxgk110b.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine=
/gr/ctxgf119.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine=
/gr/ctxgf110.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine=
/gr/ctxgf104.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/msm/msm_gpu_tracepo=
ints.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/msm/msm_atomic_trac=
epoints.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/lima/lima_trace.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/lima/lima.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  drivers/gpu/drm/nouveau/nouve=
au.ko
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/hisilicon/kirin/kir=
in-drm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/hisilicon/kirin/dw_=
drm_dsi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/etnaviv/etnaviv.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm_vram_helper.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm_ttm_helper.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm_trace_points.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm_kms_helper.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/ti-sn65dsi86=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/thc63lvd1024=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-=
mipi-dsi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  drivers=
/gpu/drm/drm_ttm_helper.ko
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-=
hdmi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-=
hdmi-i2s-audio.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-=
hdmi-cec.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-=
hdmi-ahb-audio.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/simple-bridg=
e.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/sii902x.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/display-conn=
ector.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000  LD [M]  dr=
ivers/gpu/drm/bridge/synopsys/dw-hdmi-cec.ko
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/analogix/ana=
logix_dp.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/adv7511/adv7=
511.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/arm/mali-dp.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpio/gpio-wcd934x.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpio/gpio-bd9571mwv.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/gpio/gpio-altera.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/fpga/stratix10-soc.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-ld: warn=
ing: drivers/fpga/of-fpga-region.mod.o: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/fpga/fpga-region.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/fpga/fpga-bridge.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/fpga/altera-freeze-bridge.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/firmware/stratix10-rsu.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/dma/sun6i-dma.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/dma/sh/usb-dmac.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/dma/bcm-sba-raid.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/virtio/virtio_crypto=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/qcom-rng.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/hisilicon/zip/hisi_z=
ip.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/hisilicon/sec2/hisi_=
sec2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/hisilicon/hpre/hisi_=
hpre.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/hisilicon/hisi_qm.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/ccree/ccree.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/error.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/dpaa2_caam.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/caamhash_desc.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/caamalg_desc.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/caam_jr.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/caam.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/bcm/bcm_crypto_spu.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/crypto/allwinner/sun8i-ce/s=
un8i-ce.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/cpufreq/sun50i-cpufreq-nvme=
m.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/cpufreq/raspberrypi-cpufreq=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/cpufreq/imx-cpufreq-dt.mod.=
o: unsupported GNU_PROPERTY_TYPE (  LD [M]  drivers/crypto/allwinner/sun8i-=
ce/sun8i-ce.ko
    1    aarch64-linux-gnu-ld: warning: drivers/cpufreq/cpufreq_powersave.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/cpufreq/cpufreq_conservativ=
e.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/cpufreq/cppc_cpufreq.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/clk/qcom/camcc-sdm845.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/clk/meson/sclk-div.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/clk/meson/clk-phase.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/clk/meson/axg-audio.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/clk/bcm/clk-raspberrypi.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/ipmi/ipmi_si.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/ipmi/ipmi_msghandler.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/ipmi/ipmi_devintf.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/xgene-rng.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/rng-core.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/optee-rng.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/omap-rng.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/mtk-rng.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/meson-rng.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/iproc-rng200=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/hisi-trng-v2=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/exynos-trng.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/cavium-rng.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/cavium-rng-v=
f.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/bcm2835-rng.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/bluetooth/hci_uart.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/bluetooth/btusb.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/bluetooth/btrtl.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/bluetooth/btqca.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/bluetooth/btintel.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/bluetooth/btbcm.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/block/nbd.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/base/regmap/regmap-slimbus.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: drivers/base/regmap/regmap-sdw.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/xxhash_generic.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/xts.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/xor.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/sm4_generic.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/sm3_generic.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/sha512_generic.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/sha3_generic.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/md5.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/ecdh_generic.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/ecc.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/dh_generic.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/des_generic.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/ctr.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/cmac.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/blake2b_generic.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/authencesn.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/authenc.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/algif_rng.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: crypto/af_alg.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/lib/xor-neon.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/sm3-ce.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/sha512-ce.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/sha512-arm64.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/sha3-ce.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/crct10dif-ce.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/chacha-neon.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/aes-neon-bs.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/aes-neon-blk.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: aarch64-linux-gnu-ld: warning: driv=
ers/usb/typec/tcpm/tcpm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-ld: warning: aarch64-linux-gnu-ld: warning: driv=
ers/net/phy/marvell10g.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    1    aarch64-linux-gnu-ld: warning: aarch64-linux-gnu-ld: warning: driv=
ers/media/rc/keymaps/rc-leadtek-y04g0051.mod.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: aarch64-linux-gnu-ld: warning: driv=
ers/gpu/drm/hisilicon/hibmc/hibmc-drm.mod.o: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: warning: aarch64-linux-gnu-ld: drivers/gpu/d=
rm/meson/meson-drm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/watchdog/qcom-wdt=
.ko
    1    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/media/rc/keymaps/=
rc-msi-digivox-iii.ko
    1    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/media/rc/keymaps/=
rc-imon-mce.ko
    1    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/input/touchscreen=
/atmel_mxt_ts.ko
    1    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/gpu/drm/msm/msm.k=
o
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: warning: net/=
bridge/bridge.mod.onet/bluetooth/bluetooth.mod.o: unsupported GNU_PROPERTY_=
TYPE (: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000005
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: sound/pci/hda=
/snd-hda-tegra.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: net/netfilter=
/xt_MASQUERADE.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: lib/crypto/li=
barc4.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/sound=
wire/soundwire-bus.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/net/p=
hy/realtek.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/net/e=
thernet/stmicro/stmmac/stmmac.mod.o: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/media=
/rc/keymaps/rc-vega-s9x.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/gpu/d=
rm/msm/msm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/gpu/d=
rm/i2c/sil164.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: crypto/ghash-=
generic.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ar: warning: lib/nmi_backtrace.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ar: warning: lib/irq_regs.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ar: warning: lib/ctype.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ar: warning: lib/clz_tab.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-ar: warning: drivers/firmware/efi/libstub/lib-ct=
ype.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

Section mismatches summary:

    1    WARNING: modpost: vmlinux.o(.text.unlikely+0x2c00): Section mismat=
ch in reference from the function pmax_setup_memory_region() to the functio=
n .init.text:add_memory_region()
    1    WARNING: modpost: vmlinux.o(.text.unlikely+0x2980): Section mismat=
ch in reference from the function pmax_setup_memory_region() to the functio=
n .init.text:add_memory_region()

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, clang-9) =E2=80=94 PASS, 0 errors, 10 warnings, 0 sec=
tion mismatches

Warnings:
    arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_frame()+0x=
1fa: call to memset() with UACCESS enabled
    arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()+0x1f2:=
 call to memset() with UACCESS enabled
    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x1cb: c=
all to memset() with UACCESS enabled
    drivers/phy/intel/phy-intel-combo.c:202:34: warning: implicit conversio=
n from enumeration type 'enum intel_phy_mode' to different enumeration type=
 'enum intel_combo_mode' [-Wenum-conversion]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:6: warning: variabl=
e 'err' is used uninitialized whenever 'if' condition is true [-Wsometimes-=
uninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/main.c:1259:9: note: initialize=
 the variable 'err' to silence this warning
    1 warning generated.
    drivers/infiniband/hw/hfi1/qp.c:198:9: warning: implicit conversion fro=
m enumeration type 'enum opa_mtu' to different enumeration type 'enum ib_mt=
u' [-Wenum-conversion]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-9) =E2=80=94 PASS, 0 errors, 13 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/phy/intel/phy-intel-combo.c:202:34: warning: implicit conversio=
n from enumeration type 'enum intel_phy_mode' to different enumeration type=
 'enum intel_combo_mode' [-Wenum-conversion]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:6: warning: variabl=
e 'err' is used uninitialized whenever 'if' condition is true [-Wsometimes-=
uninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/main.c:1259:9: note: initialize=
 the variable 'err' to silence this warning
    1 warning generated.
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
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-9) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section=
 mismatches

Errors:
    smp.c:(.text+0x214): undefined reference to `irq_work_single'

---------------------------------------------------------------------------=
-----
allnoconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

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
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section m=
ismatches

Errors:
    smp.c:(.text+0x14c): undefined reference to `irq_work_single'

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 12 warnings, 0 s=
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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 12 warnings, 0=
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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 12 warnings, 0 s=
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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    net/core/filter.c:4253:6: warning: unused variable =E2=80=98ifindex=E2=
=80=99 [-Wunused-variable]
    net/core/filter.c:4252:14: warning: unused variable =E2=80=98net=E2=80=
=99 [-Wunused-variable]
    net/core/filter.c:4251:7: warning: unused variable =E2=80=98devname=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

Section mismatches:
    WARNING: modpost: vmlinux.o(.text.unlikely+0x2c00): Section mismatch in=
 reference from the function pmax_setup_memory_region() to the function .in=
it.text:add_memory_region()

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

Section mismatches:
    WARNING: modpost: vmlinux.o(.text.unlikely+0x2980): Section mismatch in=
 reference from the function pmax_setup_memory_region() to the function .in=
it.text:add_memory_region()

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 section mi=
smatches

Warnings:
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
defconfig (arm64, clang-9) =E2=80=94 PASS, 0 errors, 11 warnings, 0 section=
 mismatches

Warnings:
    drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:6: warning: variabl=
e 'err' is used uninitialized whenever 'if' condition is true [-Wsometimes-=
uninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/main.c:1259:9: note: initialize=
 the variable 'err' to silence this warning
    1 warning generated.
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
defconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 1810 warnings, 0 sect=
ion mismatches

Warnings:
    aarch64-linux-gnu-ar: warning: lib/clz_tab.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ar: warning: lib/ctype.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-ar: warning: lib/irq_regs.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ar: warning: lib/nmi_backtrace.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: drivers/firmware/efi/libstub/lib-ctyp=
e.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objdump: warning: drivers/firmware/efi/libstub/lib-ct=
ype.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: drivers/firmware/efi/libstub/lib-ct=
ype.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ar: warning: drivers/firmware/efi/libstub/lib-ctype.s=
tub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: init/version.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: init/init_task.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: ./drivers/firmware/efi/libstub/lib-ctype=
.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: mm/highmem.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: mm/init-mm.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/iomap/trace.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/ext2/symlink.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/nfstrace.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/nfs4trace.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: ipc/syscall.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: security/keys/sysctl.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/rsapubkey.asn1.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/rsaprivkey.asn1.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509.asn1.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509_akid.asn1.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/pkcs7.asn1.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/hash_info.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/bitrev.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zlib_inflate/inflate_syms.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zlib_deflate/deflate_syms.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/xz/xz_dec_syms.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x8.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x16.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/clz_tab.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/ctype.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/irq_regs.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/nmi_backtrace.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pinctrl/samsung/pinctrl-exynos-a=
rm64.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/video/logo/logo_linux_clut224.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evevent.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpe.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeblk.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeinit.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeutil.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evglock.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evsci.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfevnt.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfgpe.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/exdump.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwacpi.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwgpe.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwsleep.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/nsdump.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/psopcode.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsdumpinfo.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsinfo.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsio.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsirq.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsmemory.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsserial.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utdebug.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utglobal.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utresdecode.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-sys.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-mio.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-peri.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-am654.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-j721e.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774a1-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774b1-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77965-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77970-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77980-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77995-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/tty/vt/consolemap_deftbl.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/tty/vt/defkeymap.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iommu/iommu-traces.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/base/firmware_loader/fallback_ta=
ble.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/catalyst.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/eon.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/esmt.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/everspin.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/fujitsu.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/xmc.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/host/xhci-trace.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/trace.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/qcom/tsens-v2.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/platform/chrome/cros_ec_trace.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra124.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra210.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/sunrpc/sysctl.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/sunrpc/auth_gss/trace.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: init/version.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: init/init_task.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: ./drivers/firmware/efi/libstub/lib-ctype=
.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: mm/highmem.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: mm/init-mm.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/iomap/trace.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/ext2/symlink.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/nfstrace.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/nfs4trace.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: ipc/syscall.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: security/keys/sysctl.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/rsapubkey.asn1.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/rsaprivkey.asn1.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509.asn1.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509_akid.asn1.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/pkcs7.asn1.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/hash_info.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/bitrev.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zlib_inflate/inflate_syms.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zlib_deflate/deflate_syms.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/xz/xz_dec_syms.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x8.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x16.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/clz_tab.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/ctype.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/irq_regs.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/nmi_backtrace.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pinctrl/samsung/pinctrl-exynos-a=
rm64.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/video/logo/logo_linux_clut224.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evevent.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpe.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeblk.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeinit.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeutil.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evglock.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evsci.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfevnt.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfgpe.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/exdump.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwacpi.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwgpe.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwsleep.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/nsdump.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/psopcode.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsdumpinfo.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsinfo.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsio.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsirq.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsmemory.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsserial.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utdebug.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utglobal.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utresdecode.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-sys.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-mio.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-peri.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-am654.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-j721e.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774a1-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774b1-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77965-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77970-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77980-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77995-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/tty/vt/consolemap_deftbl.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/tty/vt/defkeymap.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iommu/iommu-traces.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/base/firmware_loader/fallback_ta=
ble.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/catalyst.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/eon.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/esmt.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/everspin.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/fujitsu.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/xmc.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/host/xhci-trace.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/trace.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/qcom/tsens-v2.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/platform/chrome/cros_ec_trace.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra124.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra210.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/sunrpc/sysctl.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/sunrpc/auth_gss/trace.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms1: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms1: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: init/version.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: init/init_task.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: ./drivers/firmware/efi/libstub/lib-ctype=
.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: mm/highmem.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: mm/init-mm.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/iomap/trace.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/ext2/symlink.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/nfstrace.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/nfs4trace.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: ipc/syscall.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: security/keys/sysctl.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/rsapubkey.asn1.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/rsaprivkey.asn1.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509.asn1.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509_akid.asn1.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/pkcs7.asn1.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/hash_info.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/bitrev.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zlib_inflate/inflate_syms.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zlib_deflate/deflate_syms.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/xz/xz_dec_syms.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x8.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x16.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/clz_tab.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/ctype.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/irq_regs.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/nmi_backtrace.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pinctrl/samsung/pinctrl-exynos-a=
rm64.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/video/logo/logo_linux_clut224.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evevent.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpe.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeblk.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeinit.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeutil.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evglock.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evsci.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfevnt.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfgpe.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/exdump.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwacpi.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwgpe.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwsleep.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/nsdump.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/psopcode.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsdumpinfo.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsinfo.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsio.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsirq.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsmemory.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsserial.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utdebug.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utglobal.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utresdecode.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-sys.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-mio.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-peri.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-am654.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-j721e.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774a1-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774b1-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77965-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77970-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77980-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77995-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/tty/vt/consolemap_deftbl.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/tty/vt/defkeymap.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iommu/iommu-traces.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/base/firmware_loader/fallback_ta=
ble.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/catalyst.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/eon.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/esmt.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/everspin.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/fujitsu.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/xmc.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/host/xhci-trace.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/trace.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/qcom/tsens-v2.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/platform/chrome/cros_ec_trace.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra124.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra210.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/sunrpc/sysctl.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/sunrpc/auth_gss/trace.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: init/version.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: init/init_task.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: ./drivers/firmware/efi/libstub/lib-ctype=
.stub.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: mm/highmem.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: mm/init-mm.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/iomap/trace.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/ext2/symlink.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/nfstrace.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/nfs4trace.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: ipc/syscall.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: security/keys/sysctl.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/rsapubkey.asn1.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/rsaprivkey.asn1.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509.asn1.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/x509_akid.asn1.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/asymmetric_keys/pkcs7.asn1.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/hash_info.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/bitrev.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zlib_inflate/inflate_syms.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zlib_deflate/deflate_syms.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/xz/xz_dec_syms.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x8.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/fonts/font_8x16.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/clz_tab.o: unsupported GNU_PROPERTY_=
TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/ctype.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/irq_regs.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/nmi_backtrace.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pinctrl/samsung/pinctrl-exynos-a=
rm64.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/video/logo/logo_linux_clut224.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evevent.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpe.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeblk.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeinit.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evgpeutil.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evglock.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evsci.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfevnt.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/evxfgpe.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/exdump.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwacpi.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwgpe.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/hwsleep.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/nsdump.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/psopcode.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsdumpinfo.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsinfo.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsio.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsirq.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsmemory.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/rsserial.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utdebug.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utglobal.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/acpi/acpica/utresdecode.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-sys.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-mio.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/uniphier/clk-uniphier-peri.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-am654.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/ti/k3-psil-j721e.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774a1-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a774b1-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77965-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77970-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77980-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/renesas/r8a77995-sysc.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/tty/vt/consolemap_deftbl.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/tty/vt/defkeymap.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iommu/iommu-traces.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/base/firmware_loader/fallback_ta=
ble.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/catalyst.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/eon.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/esmt.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/everspin.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/fujitsu.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mtd/spi-nor/xmc.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/host/xhci-trace.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/trace.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/qcom/tsens-v2.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/platform/chrome/cros_ec_trace.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra124.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/memory/tegra/tegra210.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/sunrpc/sysctl.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/sunrpc/auth_gss/trace.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-nm: warning: vmlinux: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-nm: warning: vmlinux: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-objcopy: warning: vmlinux: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/hda/trace.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/raid6/tables.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/raid6/int16.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/raid6/int32.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/mac80211/trace.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/lima/lima_trace.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/wireless/trace.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/wireless/shipped-certs.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/tegra/trace.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/vc4/vc4_trace_points.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/msm/msm_atomic_tracepoin=
ts.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/msm/msm_gpu_tracepoints.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ipa/ipa_qmi_msg.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ipa/ipa_data-sdm845.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ipa/ipa_data-sc7180.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:6: warning: variabl=
e 'err' is used uninitialized whenever 'if' condition is true [-Wsometimes-=
uninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/main.c:1259:9: note: initialize=
 the variable 'err' to silence this warning
    1 warning generated.
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/qmi_wlfw=
_v01.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm_trace_points.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/subdev/bios=
/shadowof.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/subdev/pci/=
agp.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine/gr/c=
txgf104.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine/gr/c=
txgf110.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine/gr/c=
txgf119.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine/gr/c=
txgk110b.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine/gr/c=
txgk208.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine/gr/c=
txgp104.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nvkm/engine/gr/c=
txgp107.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/aes-neon-blk.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/aes-neon-bs.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/chacha-neon.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/crct10dif-ce.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/sha3-ce.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/sha512-arm64.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/sm3-ce.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/crypto/sha512-ce.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: arch/arm64/lib/xor-neon.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/af_alg.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/algif_rng.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/authenc.mod.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/blake2b_generic.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: crypto/ccm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-ld: warning: crypto/authencesn.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/cmac.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/ctr.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/des_generic.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/dh_generic.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/ecdh_generic.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: crypto/ghash-gener=
ic.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/ecc.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    warning: crypto/gcm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-ld: warning: crypto/md5.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/sha3_generic.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/sha512_generic.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/sm4_generic.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/sm3_generic.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/xor.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/xts.mod.o: unsupported GNU_PROPER=
TY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: crypto/xxhash_generic.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/base/regmap/regmap-sdw.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/block/nbd.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/base/regmap/regmap-slimbus.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/bluetooth/btintel.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/bluetooth/btbcm.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/bluetooth/btqca.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/bluetooth/btrtl.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/bluetooth/hci_uart.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/bluetooth/btusb.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/cavium-rng.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/bcm2835-rng.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/exynos-trng.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/cavium-rng-vf.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/char/hw_random/hisi-rng.mod.o: unsupported GNU_PROPERT=
Y_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/iproc-rng200.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/hisi-trng-v2.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/mtk-rng.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/meson-rng.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/omap-rng.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/rng-core.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/optee-rng.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/ipmi/ipmi_devintf.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/ipmi/ipmi_msghandler.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/hw_random/xgene-rng.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/char/ipmi/ipmi_si.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/bcm/clk-raspberrypi.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/meson/axg-audio.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/meson/sclk-div.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/meson/clk-phase.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/clk/qcom/camcc-sdm845.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/cpufreq/cppc_cpufreq.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/cpufreq/cpufreq_conservative.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/cpufreq/cpufreq_powersave.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/cpufreq/sun50i-cpufreq-nvmem.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/cpufreq/raspberrypi-cpufreq.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/cpufreq/imx-cpufreq-dt.mod.o: un=
supported GNU_PROPERTY_TYPE (  LD [M]  drivers/crypto/allwinner/sun8i-ce/su=
n8i-ce.ko
    aarch64-linux-gnu-ld: warning: drivers/crypto/allwinner/sun8i-ce/sun8i-=
ce.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/bcm/bcm_crypto_spu.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/caam_jr.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/caam.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/caamalg_desc.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/caamhash_desc.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/dpaa2_caam.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/caam/error.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/ccree/ccree.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/hisilicon/hisi_qm.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/hisilicon/hpre/hisi_hpre.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/hisilicon/sec2/hisi_sec2.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/hisilicon/zip/hisi_zip.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/qcom-rng.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/crypto/virtio/virtio_crypto.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/sh/usb-dmac.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/firmware/stratix10-rsu.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/sun6i-dma.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/dma/bcm-sba-raid.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/fpga/altera-freeze-bridge.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/fpga/fpga-bridge.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/fpga/fpga-region.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/fpga/stratix10-soc.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-ld: warning: =
drivers/fpga/of-fpga-region.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpio/gpio-altera.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpio/gpio-bd9571mwv.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpio/gpio-wcd934x.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/arm/mali-dp.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/adv7511/adv7511.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/analogix/analogix=
_dp.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/sii902x.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/display-connector=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000  LD [M]  drivers=
/gpu/drm/bridge/synopsys/dw-hdmi-cec.ko
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/simple-bridge.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-hdmi-=
ahb-audio.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-hdmi-=
cec.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-hdmi-=
i2s-audio.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-hdmi.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/thc63lvd1024.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/ti-sn65dsi86.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/bridge/synopsys/dw-mipi-=
dsi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  drivers/gpu/=
drm/drm_ttm_helper.ko
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm_kms_helper.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm_ttm_helper.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/drm_vram_helper.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/etnaviv/etnaviv.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: aarch64-linux-gnu-ld: warning: drivers/g=
pu/drm/hisilicon/hibmc/hibmc-drm.mod.o: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/hisilicon/kirin/dw_drm_d=
si.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/gpu/drm/i2=
c/sil164.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/hisilicon/kirin/kirin-dr=
m.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/gpu/drm/i2c/ch7006.mod.o: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/gpu/drm/msm/msm.ko
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/lima/lima.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  drivers/gpu/drm/nouveau/nouveau.ko
    aarch64-linux-gnu-ld: warning: aarch64-linux-gnu-ld: drivers/gpu/drm/me=
son/meson-drm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/gpu/drm/lima/lima.mod.o: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/msm/msm.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/msm/msm.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/gpu/drm/ms=
m/msm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/gpu/drm/meson/meson_dw_hdmi.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/nouveau/nouveau.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/panel/panel-lvds.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/panel/panel-simple.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/panel/panel-truly-nt3559=
7.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/panfrost/panfrost.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  drivers/gpu/drm/pl111/=
pl111_drm.ko
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/pl111/pl111_drm.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rcar-du/rcar-du-drm.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rcar-du/rcar_cmm.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rcar-du/rcar_dw_hdmi.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rockchip/rockchipdrm.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/rcar-du/rcar_lvds.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/scheduler/gpu-sched.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-backend.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-drm-hdmi.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-drm.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-frontend.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i_tv.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun4i-tcon.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun6i_drc.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun6i_mipi_dsi.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-ld: warning=
: drivers/gpu/drm/sun4i/sun8i-drm-hdmi.mod.o: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/sun4i/sun8i-mixer.mod.o:=
 unsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-ld: warning: drivers/gpu/=
drm/sun4i/sun8i_tcon_top.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/tegra/tegra-drm.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/tegra/tegra-drm.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/vc4/vc4.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/vc4/vc4.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/drm/ttm/ttm.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/gpu/host1x/host1x.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/hid/i2c-hid/i2c-hid.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/hwmon/ina2xx.mod.o: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/hwmon/ina3221.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/hwmon/lm90.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/hwmon/pwm-fan.mod.o: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/hwmon/raspberrypi-hwmon.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-ld:
    warning: drivers/i2c/busses/i2c-bcm2835.mod.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/i2c/busses/i2c-gpio.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/i2c/busses/i2c-qcom-cci.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/i2c/busses/i2c-qcom-geni.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/adc/qcom-spmi-adc5.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/adc/qcom-vadc-common.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/adc/max9611.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/adc/rockchip_saradc.mod.o  L=
D [M]  drivers/iio/buffer/industrialio-triggered-buffer.ko
    aarch64-linux-gnu-ld: warning: drivers/iio/buffer/industrialio-triggere=
d-buffer.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/buffer/kfifo_buf.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/common/cros_ec_sensors/cros_=
ec_sensors.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/common/cros_ec_sensors/cros_=
ec_sensors_core.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/light/isl29018.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/pressure/cros_ec_baro.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/light/cros_ec_light_prox.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/iio/pressure/mpl3115.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/input/touchscreen/atme=
l_mxt_ts.ko
    aarch64-linux-gnu-ld: warning: drivers/input/keyboard/imx_sc_key.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/input/keyboard/snvs_pwrkey.mod.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/input/touchscreen/atmel_mxt_ts.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/input/misc/pm8xxx-vibrator.mod.o=
  LD [M]  drivers/md/dm-mirror.ko
    aarch64-linux-gnu-ld: warning: drivers/mailbox/bcm-flexrm-mailbox.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/md/dm-log.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/md/dm-mod.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/md/dm-mirror.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/md/dm-region-hash.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/md/md-mod.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/md/dm-zero.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/cec/core/cec.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/videobuf2=
-common.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/videobuf2=
-dma-contig.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/videobuf2=
-memops.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/videobuf2=
-dma-sg.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-=
ld: warning: drivers/media/common/videobuf2/videobuf2-v4l2.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/common/videobuf2/videobuf2=
-vmalloc.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/dvb-core/dvb-core.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/i2c/ir-kbd-i2c.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/mc/mc.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/platform/exynos-gsc/exynos=
-gsc.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/platform/qcom/camss/qcom-c=
amss.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/platform/rcar-fcp.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/platform/rcar-vin/rcar-csi=
2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/platform/rcar-vin/rcar-vin=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/platform/rcar_drif.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/platform/rcar_fdp1.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/platform/sunxi/sun6i-csi/s=
un6i-csi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/platform/s5p-jpeg/s5p-jpeg=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/platform/s5p-mfc/s5p-mfc.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/platform/vsp1/vsp1.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-alink-dtu-m.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-apac-viewcom=
p.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-anysee.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-adstech-dvb-=
t-pci.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-astrometa-t2=
hybrid.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-asus-pc39.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-ati-tv-wonde=
r-hd-600.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/rc/keymaps/rc-asus-ps3-100.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-ati-x10.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermedia-ca=
rdbus.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermedia-a1=
6d.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/rc/keymaps/rc-avermedia-dvbt.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermedia-m1=
35a.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermedia-rm=
-ks.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avermedia-m7=
33a-rm-k6.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/rc/keymaps/rc-avermedia.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-avertv-303.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-azurewave-ad=
-tu700.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-beelink-gs1.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-behold-colum=
bus.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-behold.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-budget-ci-ol=
d.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-cec.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-cinergy-1400=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/rc/keymaps/rc-d680-dmb.mod.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-delock-61959=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dib0700-nec.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dib0700-rc5.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-=
ld: warning: drivers/media/rc/keymaps/rc-cinergy.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-digitalnow-t=
inytwin.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-digittrade.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dm1105-nec.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dntv-live-dv=
b-t.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dntv-live-dv=
bt-pro.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dtt200u.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dvbsky.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dvico-mce.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-dvico-portab=
le.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-em-terratec.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-encore-enltv=
-fm53.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-encore-enltv=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-evga-indtube=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-encore-enltv=
2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-eztv.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-flydvb.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-flyvideo.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-fusionhdtv-m=
ce.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-gadmei-rm008=
z.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-geekbox.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-hauppauge.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-hisi-poplar.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-gotview7135.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/rc/keymaps/rc-genius-tvgo-a11mce.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/media/rc/keymaps/rc-im=
on-mce.ko
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-imon-mce.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-imon-pad.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-imon-rsc.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-iodata-bctv7=
e.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-it913x-v1.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-it913x-v2.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-khadas.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/rc/keymaps/rc-kworld-315u.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-kaiomy.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-kworld-pc150=
u.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: aarch64-linux-gnu-ld: warning: drivers/m=
edia/rc/keymaps/rc-leadtek-y04g0051.mod.o: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-lme2510.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/rc/keymaps/rc-manli.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-medion-x10-d=
igitainer.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-medion-x10-o=
r2x.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/media/rc/keymaps/rc-ms=
i-digivox-iii.ko
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-msi-digivox-=
ii.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/rc/keymaps/rc-msi-digivox-iii.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-msi-tvanywhe=
re-plus.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-msi-tvanywhe=
re.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-nebula.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-nec-terratec=
-cinergy-xs.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-npgtech.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-norwood.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-odroid.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pctv-sedna.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pinnacle-col=
or.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pinnacle-gre=
y.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pinnacle-pct=
v-hd.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pixelview-00=
2t.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pixelview-mk=
12.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pixelview-ne=
w.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-powercolor-r=
eal-angel.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-purpletv.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pixelview.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-proteus-2309=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-pv951.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-rc6-mce.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-real-audio-2=
20-32-keys.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-reddo.mod.o:=
 unsupported GNU_PROPERTY_TYPE (aarch64-linux-gnu-ld: warning: drivers/medi=
a/rc/keymaps/rc-snapstream-firefly.mod.o: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-streamzap.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-su3000.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/rc/keymaps/rc-tanix-tx3mini.mod.o: unsupported G=
NU_PROPERTY_TYPE (aarch64-linux-gnu-ld: 5) type: 0xc0000000
    warning: drivers/media/rc/keymaps/rc-tango.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tbs-nec.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-technisat-ts=
35.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-technisat-us=
b2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/rc/keymaps/rc-tanix-tx5max.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terratec-cin=
ergy-c-pci.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terratec-cin=
ergy-s2-hd.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terratec-cin=
ergy-xs.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terratec-sli=
m-2.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-terratec-sli=
m.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tevii-nec.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tivo.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-total-media-=
in-hand-02.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-trekstor.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-tt-1500.mod.=
oaarch64-linux-gnu-ld: : unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning:   LD [M]  drivers/media/rc/keymaps/rc-twinhan-dtv-cab-ci.ko
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-twinhan-dtv-=
cab-ci.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/media/rc/k=
eymaps/rc-vega-s9x.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    warning: drivers/media/rc/keymaps/rc-twinhan1027.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-videomate-m1=
f.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-videomate-tv=
-pvr.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-videomate-s3=
50.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-videostrong-=
kii-pro.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-wetek-hub.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-wetek-play2.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-winfast-usbi=
i-deluxe.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-x96max.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-winfast.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-xbox-dvd.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/keymaps/rc-zx-irdec.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/meson-ir.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/rc-core.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/rc/sunxi-cir.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/mc44s803.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/mt20xx.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tda18271.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tda827x.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/media/tuners/tda8290.mod.o: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tda9887.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tuner-types.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tuner-types.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tuner-simple.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5  LD [M]  drivers/media/tuners/xc4000.ko
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/tuner-xc2028.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/xc4000.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/tuners/xc5000.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/usb/gspca/gspca_main.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/usb/uvc/uvcvideo.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/v4l2-core/v4l2-dv-timings.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/v4l2-core/v4l2-fwnode.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/v4l2-core/v4l2-mem2mem.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mfd/exynos-lpass.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/media/v4l2-core/videodev.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/misc/eeprom/at24.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/mfd/wcd934x.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/misc/eeprom/at25.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/can/flexcan.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/can/can-dev.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/can/rcar/rcar_canfd.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/misc/uacce/uacce.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/atheros/atl1c/atl1c=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/dsa/ocelot/mscc_felix.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/can/rcar/rcar_can.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/broadcom/bnx2x/bnx2=
x.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/mellanox/mlx4/mlx4_=
core.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/broadcom/genet/gene=
t.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/mellanox/mlx4/mlx4_=
en.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/mellanox/mlx5/core/=
mlx5_core.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/mscc/mscc_ocelot_co=
mmon.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/qualcomm/emac/qcom-=
emac.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/qualcomm/rmnet/rmne=
t.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac/dwma=
c-generic.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac/dwma=
c-altr-socfpga.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac/dwma=
c-ipq806x.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac/dwma=
c-meson.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac/dwma=
c-imx.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac/dwma=
c-qcom-ethqos.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac/dwma=
c-rk.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac/dwma=
c-sun8i.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ethernet/stmicro/stmmac/dwma=
c-sunxi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/net/ethern=
et/stmicro/stmmac/stmmac.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    warning: aarch64-linux-gnu-ld: warning: drivers/net/macvlan.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/mdio.mod.oaarch64-linux-gnu-=
ld: aarch64-linux-gnu-ld: : unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    warning: drivers/net/ipa/ipa.o: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ipa/ipa.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ipa/ipa.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/ipa/ipa.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/net/phy/bcm-phy-lib.mod.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/macvtap.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/phy/bcm7xxx.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/phy/broadcom.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: aarch64-linux-gnu-ld: warning: drivers/n=
et/phy/marvell10g.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/phy/mdio-bcm-unimac.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/phy/mdio-xpcs.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/phy/meson-gxl.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/net/phy/mdio-mux-meson-g12a.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/net/phy/re=
altek.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/tap.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/net/phy/microchip.mod.o: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/asix.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/ax88179_178a.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/cdc_ncm.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/cdc_subset.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/dm9601.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/lan78xx.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5aarch64-linux-gnu-ld: ) type: 0xwarning: drivers/net=
/usb/cdc_ether.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/net1080.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/mcs7830.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/pegasus.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/r8152.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/rtl8150.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (aarch64-linux-gnu-ld: warning: drivers/net/usb/plusb.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/smsc95xx.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/smsc75xx.mod.o: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/sr9800.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/usbnet.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/usb/zaurus.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/veth.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/ath10k_c=
ore.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/ath10k_p=
ci.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/ath10k_s=
noc.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-=
ld: warning: drivers/net/wireless/broadcom/brcm80211/brcmutil/brcmutil.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ath/ath10k/ath10k_s=
noc.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/broadcom/brcm80211/=
brcmfmac/brcmfmac.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/marvell/mwifiex/mwi=
fiex.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/marvell/mwifiex/mwi=
fiex_pcie.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ti/wl18xx/wl18xx.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ti/wlcore/wlcore.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/net/wireless/ti/wlcore/wlcore_sd=
io.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/nvme/host/nvme.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/nvme/host/nvme-core.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pci/controller/dwc/pcie-tegra194=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/nvmem/nvmem_meson_efuse.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pci/controller/pcie-brcmstb.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pci/controller/pcie-rockchip-hos=
t.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/perf/arm_smmuv3_pmu.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/perf/fsl_imx8_ddr_perf.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/phy/allwinner/phy-sun6i-mipi-dph=
y.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/phy/qualcomm/phy-qcom-qmp.mod.o =
 LD [M]  drivers/phy/qualcomm/phy-qcom-qusb2.ko
    aarch64-linux-gnu-ld: warning: drivers/phy/qualcomm/phy-qcom-qusb2.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/perf/thunderx2_pmu.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/phy/renesas/phy-rcar-gen3-usb3.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/phy/rockchip/phy-rockchip-inno-h=
dmi.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/phy/tegra/phy-tegra194-p2u.mod.o=
: unsupported GNU_PROPERTY_TYPE (5  LD [M]  drivers/power/supply/sbs-batter=
y.ko
    aarch64-linux-gnu-ld: warning: drivers/platform/chrome/cros_ec_typec.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/power/supply/sbs-battery.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-bcm2835.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/phy/rockchip/phy-rockchip-pcie.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-cros-ec.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-meson.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-rcar.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-tegra.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/regulator/vctrl-regulator.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_common.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_q6v5_ipa_notify.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/pwm/pwm-sun4i.mod.oaarch64-linux=
-gnu-ld: warning: drivers/remoteproc/qcom_q6v5.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_q6v5_mss.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_q6v5_pas.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/reset/reset-meson-audio-arb.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/remoteproc/qcom_sysmon.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/reset/reset-qcom-pdc.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/rpmsg/qcom_glink_smem.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-ds1307.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-imx-sc.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-meson-vrtc.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-pcf2127.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xaarch64-linux-gnu-ld: c0000000
    warning: drivers/rtc/rtc-pcf85363.mod.o: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-rk808.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-rx8581.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/rtc/rtc-snvs.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/scsi/mpt3sas/mpt3sas.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/scsi/raid_class.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/slimbus/slim-qcom-ngd-ctrl.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/scsi/ufs/ufs-qcom.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/slimbus/slim-qcom-ctrl.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/slimbus/slimbus.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/amlogic/meson-canvas.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/apr.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/pdr_interface.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/mdt_loader.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/rmtfs_mem.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soc/qcom/qmi_helpers.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: drivers/soundwire/=
soundwire-bus.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/soc/qcom/socinfo.mod.o: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spi-bcm2835.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/soundwire/soundwire-qcom.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spi-bcm2835aux.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spi-bitbang.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000aarch64-linux-gnu-ld:
    warning: drivers/spi/spi-geni-qcom.mod.o: unsupported GNU_PROPERTY_TYPE=
 (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spi-imx.mod.o: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spi-meson-spicc.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spi-qcom-qspi.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spi-meson-spifc.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/spi/spidev.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/broadcom/bcm2835_thermal=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/broadcom/bcm2711_thermal=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/broadcom/brcmstb_thermal=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/imx8mm_thermal.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: drivers/spi/spi-sh-msiof.mod.o: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    warning: drivers/thermal/imx_sc_thermal.mod.o: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/qcom/qcom-spmi-temp-alar=
m.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/rockchip_thermal.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/qoriq_thermal.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/thermal/tegra/tegra-bpmp-thermal=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/renesas_usb3.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/gadget/udc/tegra-xudc.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/typec/hd3ss3220.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/renesas_usbhs/renesas_usbhs.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/usb/typec/tcpm/fusb302.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: aarch64-linux-gnu-ld: warning: drivers/u=
sb/typec/tcpm/tcpm.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-ld: warning: drivers/video/backlight/generic_bl.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/video/backlight/lp855x_bl.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/video/backlight/pwm_bl.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning:   LD [M]  drivers/watchdog/qcom-wdt.ko
    aarch64-linux-gnu-ld: warning: drivers/watchdog/meson_wdt.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/watchdog/imx_sc_wdt.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/watchdog/sunxi_wdt.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: drivers/watchdog/qcom-wdt.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/fuse/cuse.mod.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    warning: fs/btrfs/btrfs.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-ld: warning: fs/fuse/fuse.mod.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/blocklayout/blocklayoutdriver.mod=
.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/crc-ccitt.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: lib/crypto/libarc4=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: fs/nfs/flexfilelayout/nfs_layout_flexfil=
es.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: fs/overlayfs/overlay.mod.o: unsupported GNU_PROPERTY_TYPE (5) =
type: 0x  LD [M]  lib/crypto/libchacha.ko
    aarch64-linux-gnu-ld: warning: lib/crypto/libchacha.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/crypto/libdes.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/libcrc32c.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/raid6/raid6_pq.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/raid6/raid6_pq.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/raid6/raid6_pq.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0x  LD [M]  net/802/mrp.ko
    aarch64-linux-gnu-ld: warning: lib/raid6/raid6_pq.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    warning: lib/zstd/zstd_decompress.mod.o: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: lib/zstd/zstd_compress.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/802/garp.mod.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/802/p8022.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/802/mrp.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/802/psnap.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/802/stp.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/8021q/8021q.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/bluetooth/hidp/hidp.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: warning: net/bridg=
e/bridge.mod.onet/bluetooth/bluetooth.mod.o: unsupported GNU_PROPERTY_TYPE =
(: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000005
    aarch64-linux-gnu-ld: warning: net/can/can-bcm.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/can/can-raw.mod.o: unsupported GNU_P=
ROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/can/can-gw.mod.o: unsupported GNU_PR=
OPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/can/can.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/dsa/dsa_core.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/ip_tunnel.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/ip_tables.mod.o: unsu=
pported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/dsa/tag_ocelot.mod.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/ipt_REJECT.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/iptable_filter.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/iptable_nat.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/nf_defrag_ipv4.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/iptable_mangle.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/nf_log_ipv4.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/netfilter/nf_reject_ipv4.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv4/tunnel4.mod.o: unsupported GNU_=
PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/ipv6.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6_tables.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: net/ipv6/netfilter/ip6table_filter.mod.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6t_REJECT.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6table_mangle.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/ip6table_nat.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/nf_defrag_ipv6.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/nf_log_ipv6.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/netfilter/nf_reject_ipv6.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/ipv6/sit.mod.o: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/llc/llc.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/mac80211/mac80211.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/mac80211/mac80211.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/nf_conntrack.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/nf_log_common.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/nf_nat.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/x_tables.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/xt_CHECKSUM.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/xt_addrtype.mod.o: unsuppo=
rted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: net/netfilter/xt_M=
ASQUERADE.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: net/netfilter/xt_LOG.mod.o: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/xt_conntrack.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/xt_nat.mod.o: unsupported =
GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/qrtr/ns.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/qrtr/qrtr-tun.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/netfilter/xt_tcpudp.mod.o: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/qrtr/qrtr-smd.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/qrtr/qrtr.mod.o: unsupported GNU_PRO=
PERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/rfkill/rfkill.mod.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/wireless/cfg80211.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/wireless/cfg80211.o: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: net/wireless/cfg80211.mod.o: unsupported=
 GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/pci/hda/snd-hda-codec-hdmi.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/pci/hda/snd-hda-codec.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/hda/snd-hda-core.o: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/hda/snd-hda-core.mod.o: unsupporte=
d GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: aarch64-linux-gnu-ld: warning: sound/pci/hda/snd-=
hda-tegra.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: sound/soc/bcm/snd-soc-bcm2835-i2s.mod.o: unsupported GNU_PROPE=
RTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-ak4613.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-cros-ec-codec.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-da7219.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-dmic.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-es7134.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0x  LD [M]  sound/soc/codecs/snd-soc=
-es7241.ko
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-es7241.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-hdmi-codec.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-max98927.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-max98357a.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-pcm3168a-i2c.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-pcm3168a.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rl6231.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rt5514-spi.mod.=
o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rt5663.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rt5514.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-simple-amplifie=
r.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-spdif-rx.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-rt5645.mod.o: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-spdif-tx.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-tas571x.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-wsa881x.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/codecs/snd-soc-wcd934x.mod.o: =
unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/generic/snd-soc-audio-graph-ca=
rd.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/generic/snd-soc-simple-card-ut=
ils.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/generic/snd-soc-simple-card.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-aiu.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-fifo.m=
od.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-frddr.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-pdm.mo=
d.o: unsupported GNU_PROPERTY_TYPE (5  LD [M]  sound/soc/meson/snd-soc-meso=
n-axg-tdm-formatter.ko
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-spdifi=
n.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-sound-=
card.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-tdm-fo=
rmatter.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-spdifo=
ut.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-tdmin.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-tdmout=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-tdm-in=
terface.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-axg-toddr.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-card-utils=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-codec-glue=
.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-g12a-tohdm=
itx.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/meson/snd-soc-meson-t9015.mod.=
oaarch64-linux-gnu-ld: : unsupported GNU_PROPERTY_TYPE (warning: 5sound/soc=
/meson/snd-soc-meson-gx-sound-card.mod.o) type: 0x: unsupported GNU_PROPERT=
Y_TYPE (c00000005
    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6afe-dai.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: sound/soc/qcom/qdsp6/q6adm.mod.o: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    warning: sound/soc/qcom/qdsp6/q6asm-dai.mod.oaarch64-linux-gnu-ld: : un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: aarch64-linux-gnu-ld: sound/soc/qcom/qdsp6/q6asm.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    warning: sound/soc/qcom/qdsp6/q6core.mod.o: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6afe.mod.o: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6routing.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/qcom/qdsp6/q6dsp-common.mod.o:=
 unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/qcom/snd-soc-qcom-common.mod.o=
: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rk3399-gru-so=
und.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/qcom/snd-soc-sdm845.mod.o: uns=
upported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rockchip-i2s.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rockchip-pcm.=
mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/sh/rcar/snd-soc-rcar.mod.o: un=
supported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rockchip-rt56=
45.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/rockchip/snd-soc-rockchip-spdi=
f.mod.o: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-ld: warning: sound/soc/sunxi/sun4i-spdif.mod.o: unsup=
ported GNU_PROPERTY_TYPE (5) type: 0xc0000000
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
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/arm64/=
crypto/aes-neon-blk.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/arm64/=
crypto/aes-neon-bs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/arm64/=
crypto/chacha-neon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/arm64/=
crypto/crct10dif-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/arm64/=
crypto/sha3-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/arm64/=
crypto/sha512-arm64.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/arm64/=
crypto/sha512-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/arm64/=
crypto/sm3-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/arch/arm64/=
lib/xor-neon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/af_a=
lg.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/algi=
f_rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/auth=
enc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/auth=
encesn.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/blak=
e2b_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/ccm.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/cmac=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/ctr.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/des_=
generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/dh_g=
eneric.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/ecc.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/ecdh=
_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/gcm.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/ghas=
h-generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/md5.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/sha3=
_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/sha5=
12_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/sm3_=
generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/sm4_=
generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/xor.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/xts.=
ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/crypto/xxha=
sh_generic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/bas=
e/regmap/regmap-sdw.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/bas=
e/regmap/regmap-slimbus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/blo=
ck/nbd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/blu=
etooth/btbcm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/blu=
etooth/btintel.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/blu=
etooth/btqca.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/blu=
etooth/btrtl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/blu=
etooth/btusb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/blu=
etooth/hci_uart.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cha=
r/hw_random/bcm2835-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cha=
r/hw_random/cavium-rng-vf.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cha=
r/hw_random/cavium-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cha=
r/hw_random/exynos-trng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cha=
r/hw_random/hisi-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cha=
r/hw_random/hisi-trng-v2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cha=
r/hw_random/iproc-rng200.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cha=
r/hw_random/meson-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cha=
r/hw_random/mtk-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cha=
r/hw_random/omap-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cha=
r/hw_random/optee-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cha=
r/hw_random/rng-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cha=
r/hw_random/xgene-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cha=
r/ipmi/ipmi_devintf.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cha=
r/ipmi/ipmi_msghandler.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cha=
r/ipmi/ipmi_si.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/clk=
/bcm/clk-raspberrypi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/clk=
/meson/axg-audio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/clk=
/meson/clk-phase.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/clk=
/meson/sclk-div.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/clk=
/qcom/camcc-sdm845.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cpu=
freq/cppc_cpufreq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cpu=
freq/cpufreq_conservative.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cpu=
freq/cpufreq_powersave.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cpu=
freq/imx-cpufreq-dt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cpu=
freq/raspberrypi-cpufreq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cpu=
freq/sun50i-cpufreq-nvmem.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cry=
pto/allwinner/sun8i-ce/sun8i-ce.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cry=
pto/bcm/bcm_crypto_spu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cry=
pto/caam/caam.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cry=
pto/caam/caam_jr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cry=
pto/caam/caamalg_desc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cry=
pto/caam/caamhash_desc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cry=
pto/caam/dpaa2_caam.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cry=
pto/caam/error.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cry=
pto/ccree/ccree.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cry=
pto/hisilicon/hisi_qm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cry=
pto/hisilicon/hpre/hisi_hpre.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cry=
pto/hisilicon/sec2/hisi_sec2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cry=
pto/hisilicon/zip/hisi_zip.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cry=
pto/qcom-rng.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/cry=
pto/virtio/virtio_crypto.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/dma=
/bcm-sba-raid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/dma=
/sh/usb-dmac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/dma=
/sun6i-dma.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/fir=
mware/stratix10-rsu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/fpg=
a/altera-freeze-bridge.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/fpg=
a/fpga-bridge.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/fpg=
a/fpga-region.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/fpg=
a/of-fpga-region.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/fpg=
a/stratix10-soc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpi=
o/gpio-altera.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpi=
o/gpio-bd9571mwv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpi=
o/gpio-wcd934x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/arm/mali-dp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/bridge/adv7511/adv7511.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/bridge/analogix/analogix_dp.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/bridge/display-connector.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/bridge/sii902x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/bridge/simple-bridge.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/bridge/synopsys/dw-hdmi-ahb-audio.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/bridge/synopsys/dw-hdmi-cec.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/bridge/synopsys/dw-hdmi-i2s-audio.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/bridge/synopsys/dw-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/bridge/synopsys/dw-mipi-dsi.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/bridge/thc63lvd1024.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/bridge/ti-sn65dsi86.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/drm_kms_helper.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/drm_ttm_helper.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/drm_vram_helper.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/etnaviv/etnaviv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/exynos/exynosdrm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/hisilicon/hibmc/hibmc-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/hisilicon/kirin/dw_drm_dsi.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/hisilicon/kirin/kirin-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/i2c/ch7006.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/i2c/sil164.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/i2c/tda998x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/lima/lima.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/lima/lima.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/meson/meson-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/meson/meson_dw_hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/msm/msm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/msm/msm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/msm/msm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/nouveau/nouveau.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/panel/panel-lvds.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/panel/panel-simple.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/panel/panel-truly-nt35597.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/panfrost/panfrost.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/pl111/pl111_drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/rcar-du/rcar-du-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/rcar-du/rcar_cmm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/rcar-du/rcar_dw_hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/rcar-du/rcar_lvds.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/rockchip/rockchipdrm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/scheduler/gpu-sched.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/sun4i/sun4i-backend.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/sun4i/sun4i-drm-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/sun4i/sun4i-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/sun4i/sun4i-frontend.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/sun4i/sun4i-tcon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/sun4i/sun4i_tv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/sun4i/sun6i_drc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/sun4i/sun6i_mipi_dsi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/sun4i/sun8i-drm-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/sun4i/sun8i-mixer.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/sun4i/sun8i_tcon_top.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/tegra/tegra-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/tegra/tegra-drm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/ttm/ttm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/vc4/vc4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/drm/vc4/vc4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/gpu=
/host1x/host1x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/hid=
/i2c-hid/i2c-hid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/hwm=
on/ina2xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/hwm=
on/ina3221.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/hwm=
on/lm90.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/hwm=
on/pwm-fan.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/hwm=
on/raspberrypi-hwmon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/i2c=
/busses/i2c-bcm2835.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/i2c=
/busses/i2c-gpio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/i2c=
/busses/i2c-qcom-cci.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/i2c=
/busses/i2c-qcom-geni.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/iio=
/adc/max9611.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/iio=
/adc/qcom-spmi-adc5.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/iio=
/adc/qcom-vadc-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/iio=
/adc/rockchip_saradc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/iio=
/buffer/industrialio-triggered-buffer.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/iio=
/buffer/kfifo_buf.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/iio=
/common/cros_ec_sensors/cros_ec_sensors.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/iio=
/common/cros_ec_sensors/cros_ec_sensors_core.ko: unsupported GNU_PROPERTY_T=
YPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/iio=
/light/cros_ec_light_prox.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/iio=
/light/isl29018.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/iio=
/pressure/cros_ec_baro.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/iio=
/pressure/mpl3115.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/inp=
ut/keyboard/adc-keys.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/inp=
ut/keyboard/imx_sc_key.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/inp=
ut/keyboard/snvs_pwrkey.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/inp=
ut/misc/pm8xxx-vibrator.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/inp=
ut/touchscreen/atmel_mxt_ts.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/mai=
lbox/bcm-flexrm-mailbox.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/md/=
dm-log.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/md/=
dm-mirror.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/md/=
dm-mod.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/md/=
dm-region-hash.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/md/=
dm-zero.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/md/=
md-mod.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/cec/core/cec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/common/videobuf2/videobuf2-common.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/common/videobuf2/videobuf2-dma-contig.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/common/videobuf2/videobuf2-dma-sg.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/common/videobuf2/videobuf2-memops.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/common/videobuf2/videobuf2-v4l2.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/common/videobuf2/videobuf2-vmalloc.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/dvb-core/dvb-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/i2c/ir-kbd-i2c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/mc/mc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/platform/exynos-gsc/exynos-gsc.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/platform/qcom/camss/qcom-camss.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/platform/rcar-fcp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/platform/rcar-vin/rcar-csi2.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/platform/rcar-vin/rcar-vin.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/platform/rcar_drif.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/platform/rcar_fdp1.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/platform/s5p-jpeg/s5p-jpeg.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/platform/s5p-mfc/s5p-mfc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/platform/sunxi/sun6i-csi/sun6i-csi.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/platform/vsp1/vsp1.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-adstech-dvb-t-pci.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-alink-dtu-m.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-anysee.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-apac-viewcomp.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-astrometa-t2hybrid.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-asus-pc39.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-asus-ps3-100.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-ati-tv-wonder-hd-600.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-ati-x10.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-avermedia-a16d.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-avermedia-cardbus.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-avermedia-dvbt.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-avermedia-m135a.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-avermedia-m733a-rm-k6.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-avermedia-rm-ks.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-avermedia.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-avertv-303.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-azurewave-ad-tu700.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-beelink-gs1.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-behold-columbus.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-behold.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-budget-ci-old.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-cec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-cinergy-1400.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-cinergy.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-d680-dmb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-delock-61959.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-dib0700-nec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-dib0700-rc5.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-digitalnow-tinytwin.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-digittrade.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-dm1105-nec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-dntv-live-dvb-t.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-dntv-live-dvbt-pro.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-dtt200u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-dvbsky.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-dvico-mce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-dvico-portable.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-em-terratec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-encore-enltv-fm53.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-encore-enltv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-encore-enltv2.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-evga-indtube.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-eztv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-flydvb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-flyvideo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-fusionhdtv-mce.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-gadmei-rm008z.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-geekbox.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-genius-tvgo-a11mce.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-gotview7135.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-hauppauge.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-hisi-poplar.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-hisi-tv-demo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-imon-mce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-imon-pad.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-imon-rsc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-iodata-bctv7e.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-it913x-v1.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-it913x-v2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-kaiomy.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-khadas.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-kworld-315u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-kworld-pc150u.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-kworld-plus-tv-analog.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-leadtek-y04g0051.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-lme2510.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-manli.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-medion-x10-digitainer.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-medion-x10-or2x.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-medion-x10.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-msi-digivox-ii.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-msi-digivox-iii.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-msi-tvanywhere-plus.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-msi-tvanywhere.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-nebula.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-nec-terratec-cinergy-xs.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-norwood.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-npgtech.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-odroid.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-pctv-sedna.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-pinnacle-color.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-pinnacle-grey.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-pinnacle-pctv-hd.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-pixelview-002t.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-pixelview-mk12.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-pixelview-new.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-pixelview.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-powercolor-real-angel.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-proteus-2309.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-purpletv.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-pv951.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-rc6-mce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-real-audio-220-32-keys.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-reddo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-snapstream-firefly.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-streamzap.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-su3000.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-tango.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-tanix-tx3mini.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-tanix-tx5max.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-tbs-nec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-technisat-ts35.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-technisat-usb2.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-terratec-cinergy-c-pci.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-terratec-cinergy-s2-hd.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-terratec-cinergy-xs.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-terratec-slim-2.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-terratec-slim.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-tevii-nec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-tivo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-total-media-in-hand-02.ko: unsupported GNU_PROPERTY_TYPE (=
5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-total-media-in-hand.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-trekstor.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-tt-1500.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-twinhan-dtv-cab-ci.ko: unsupported GNU_PROPERTY_TYPE (5) t=
ype: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-twinhan1027.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-vega-s9x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-videomate-m1f.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-videomate-s350.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-videomate-tv-pvr.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-videostrong-kii-pro.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-wetek-hub.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-wetek-play2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-winfast-usbii-deluxe.ko: unsupported GNU_PROPERTY_TYPE (5)=
 type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-winfast.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-x96max.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-xbox-dvd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/keymaps/rc-zx-irdec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/meson-ir.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/rc-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/rc/sunxi-cir.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/tuners/mc44s803.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/tuners/mt20xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/tuners/tda18271.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/tuners/tda827x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/tuners/tda8290.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/tuners/tda9887.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/tuners/tuner-simple.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/tuners/tuner-types.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/tuners/tuner-types.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/tuners/tuner-xc2028.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/tuners/xc4000.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/tuners/xc5000.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/usb/gspca/gspca_main.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/usb/uvc/uvcvideo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/v4l2-core/v4l2-dv-timings.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/v4l2-core/v4l2-fwnode.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/v4l2-core/v4l2-mem2mem.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/med=
ia/v4l2-core/videodev.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/mfd=
/exynos-lpass.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/mfd=
/wcd934x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/mis=
c/eeprom/at24.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/mis=
c/eeprom/at25.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/mis=
c/uacce/uacce.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/can/can-dev.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/can/flexcan.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/can/rcar/rcar_can.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/can/rcar/rcar_canfd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/dsa/ocelot/mscc_felix.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/atheros/atl1c/atl1c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/broadcom/bnx2x/bnx2x.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/broadcom/genet/genet.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/mellanox/mlx4/mlx4_core.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/mellanox/mlx4/mlx4_en.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/mellanox/mlx5/core/mlx5_core.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/mscc/mscc_ocelot_common.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/qualcomm/emac/qcom-emac.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/qualcomm/rmnet/rmnet.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/stmicro/stmmac/dwmac-altr-socfpga.ko: unsupported GNU_PROPERTY_TY=
PE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/stmicro/stmmac/dwmac-generic.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/stmicro/stmmac/dwmac-imx.ko: unsupported GNU_PROPERTY_TYPE (5) ty=
pe: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/stmicro/stmmac/dwmac-ipq806x.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/stmicro/stmmac/dwmac-meson.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/stmicro/stmmac/dwmac-meson8b.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.ko: unsupported GNU_PROPERTY_TYP=
E (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/stmicro/stmmac/dwmac-rk.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/stmicro/stmmac/dwmac-sun8i.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/stmicro/stmmac/dwmac-sunxi.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/stmicro/stmmac/stmmac-platform.ko: unsupported GNU_PROPERTY_TYPE =
(5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ethernet/stmicro/stmmac/stmmac.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ipa/ipa.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ipa/ipa.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ipa/ipa.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/ipa/ipa.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/macvlan.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/macvtap.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/mdio.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/phy/bcm-phy-lib.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/phy/bcm7xxx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/phy/broadcom.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/phy/marvell.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/phy/marvell10g.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/phy/mdio-bcm-unimac.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/phy/mdio-mux-meson-g12a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/phy/mdio-xpcs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/phy/meson-gxl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/phy/microchip.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/phy/realtek.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/tap.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/asix.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/ax88179_178a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/cdc_ether.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/cdc_ncm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/cdc_subset.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/dm9601.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/lan78xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/mcs7830.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/net1080.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/pegasus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/plusb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/r8152.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/rtl8150.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/smsc75xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/smsc95xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/sr9800.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/usbnet.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/usb/zaurus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/veth.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/wireless/ath/ath.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/wireless/ath/ath10k/ath10k_core.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/wireless/ath/ath10k/ath10k_pci.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/wireless/ath/ath10k/ath10k_snoc.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/wireless/ath/ath10k/ath10k_snoc.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/wireless/broadcom/brcm80211/brcmfmac/brcmfmac.ko: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/wireless/broadcom/brcm80211/brcmutil/brcmutil.ko: unsupported GNU_PROPERTY=
_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/wireless/marvell/mwifiex/mwifiex.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/wireless/marvell/mwifiex/mwifiex_pcie.ko: unsupported GNU_PROPERTY_TYPE (5=
) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/wireless/ti/wl18xx/wl18xx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/wireless/ti/wlcore/wlcore.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/net=
/wireless/ti/wlcore/wlcore_sdio.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/nvm=
e/host/nvme-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/nvm=
e/host/nvme.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/nvm=
em/nvmem_meson_efuse.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/pci=
/controller/dwc/pcie-tegra194.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/pci=
/controller/pcie-brcmstb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/pci=
/controller/pcie-rockchip-host.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/per=
f/arm_smmuv3_pmu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/per=
f/fsl_imx8_ddr_perf.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/per=
f/thunderx2_pmu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/phy=
/allwinner/phy-sun6i-mipi-dphy.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/phy=
/qualcomm/phy-qcom-qmp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/phy=
/qualcomm/phy-qcom-qusb2.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/phy=
/renesas/phy-rcar-gen3-usb3.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/phy=
/rockchip/phy-rockchip-inno-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/phy=
/rockchip/phy-rockchip-pcie.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/phy=
/tegra/phy-tegra194-p2u.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/pla=
tform/chrome/cros_ec_typec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/pow=
er/supply/sbs-battery.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/pwm=
/pwm-bcm2835.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/pwm=
/pwm-cros-ec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/pwm=
/pwm-meson.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/pwm=
/pwm-rcar.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/pwm=
/pwm-sun4i.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/pwm=
/pwm-tegra.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/reg=
ulator/vctrl-regulator.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/rem=
oteproc/qcom_common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/rem=
oteproc/qcom_q6v5.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/rem=
oteproc/qcom_q6v5_ipa_notify.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/rem=
oteproc/qcom_q6v5_mss.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/rem=
oteproc/qcom_q6v5_pas.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/rem=
oteproc/qcom_sysmon.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/res=
et/reset-meson-audio-arb.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/res=
et/reset-qcom-pdc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/rpm=
sg/qcom_glink_smem.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/rtc=
/rtc-ds1307.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/rtc=
/rtc-imx-sc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/rtc=
/rtc-meson-vrtc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/rtc=
/rtc-pcf2127.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/rtc=
/rtc-pcf85363.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/rtc=
/rtc-rk808.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/rtc=
/rtc-rx8581.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/rtc=
/rtc-snvs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/scs=
i/mpt3sas/mpt3sas.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/scs=
i/raid_class.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/scs=
i/ufs/ufs-qcom.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/sli=
mbus/slim-qcom-ctrl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/sli=
mbus/slim-qcom-ngd-ctrl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/sli=
mbus/slimbus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/soc=
/amlogic/meson-canvas.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/soc=
/qcom/apr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/soc=
/qcom/mdt_loader.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/soc=
/qcom/pdr_interface.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/soc=
/qcom/qmi_helpers.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/soc=
/qcom/rmtfs_mem.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/soc=
/qcom/socinfo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/sou=
ndwire/soundwire-bus.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/sou=
ndwire/soundwire-qcom.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/spi=
/spi-bcm2835.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/spi=
/spi-bcm2835aux.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/spi=
/spi-bitbang.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/spi=
/spi-geni-qcom.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/spi=
/spi-imx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/spi=
/spi-meson-spicc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/spi=
/spi-meson-spifc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/spi=
/spi-qcom-qspi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/spi=
/spi-sh-msiof.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/spi=
/spidev.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/the=
rmal/broadcom/bcm2711_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/the=
rmal/broadcom/bcm2835_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/the=
rmal/broadcom/brcmstb_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/the=
rmal/imx8mm_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/the=
rmal/imx_sc_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/the=
rmal/qcom/qcom-spmi-temp-alarm.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/the=
rmal/qoriq_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/the=
rmal/rockchip_thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/the=
rmal/tegra/tegra-bpmp-thermal.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/usb=
/gadget/udc/renesas_usb3.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/usb=
/gadget/udc/tegra-xudc.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/usb=
/renesas_usbhs/renesas_usbhs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/usb=
/typec/hd3ss3220.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/usb=
/typec/tcpm/fusb302.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/usb=
/typec/tcpm/tcpm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/usb=
/typec/typec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/vid=
eo/backlight/generic_bl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/vid=
eo/backlight/lp855x_bl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/vid=
eo/backlight/pwm_bl.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/wat=
chdog/imx_sc_wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/wat=
chdog/meson_gxbb_wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/wat=
chdog/meson_wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/wat=
chdog/qcom-wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/drivers/wat=
chdog/sunxi_wdt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/fs/btrfs/bt=
rfs.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/fs/fuse/cus=
e.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/fs/fuse/fus=
e.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/fs/nfs/bloc=
klayout/blocklayoutdriver.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00=
00000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/fs/nfs/flex=
filelayout/nfs_layout_flexfiles.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/fs/overlayf=
s/overlay.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/crc-cci=
tt.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/crypto/=
libarc4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/crypto/=
libchacha.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/crypto/=
libdes.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/libcrc3=
2c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/raid6/r=
aid6_pq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/raid6/r=
aid6_pq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/raid6/r=
aid6_pq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/raid6/r=
aid6_pq.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/zstd/zs=
td_compress.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/lib/zstd/zs=
td_decompress.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/802/gar=
p.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/802/mrp=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/802/p80=
22.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/802/psn=
ap.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/802/stp=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/8021q/8=
021q.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/bluetoo=
th/bluetooth.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/bluetoo=
th/hidp/hidp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/bridge/=
bridge.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/can/can=
-bcm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/can/can=
-gw.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/can/can=
-raw.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/can/can=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/dsa/dsa=
_core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/dsa/tag=
_ocelot.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv4/ip=
_tunnel.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv4/ne=
tfilter/ip_tables.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv4/ne=
tfilter/ipt_REJECT.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv4/ne=
tfilter/iptable_filter.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv4/ne=
tfilter/iptable_mangle.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv4/ne=
tfilter/iptable_nat.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv4/ne=
tfilter/nf_defrag_ipv4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv4/ne=
tfilter/nf_log_ipv4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv4/ne=
tfilter/nf_reject_ipv4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv4/tu=
nnel4.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv6/ip=
v6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv6/ne=
tfilter/ip6_tables.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv6/ne=
tfilter/ip6t_REJECT.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv6/ne=
tfilter/ip6table_filter.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv6/ne=
tfilter/ip6table_mangle.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv6/ne=
tfilter/ip6table_nat.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv6/ne=
tfilter/nf_defrag_ipv6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv6/ne=
tfilter/nf_log_ipv6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv6/ne=
tfilter/nf_reject_ipv6.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/ipv6/si=
t.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/llc/llc=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/mac8021=
1/mac80211.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/mac8021=
1/mac80211.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/netfilt=
er/nf_conntrack.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/netfilt=
er/nf_log_common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/netfilt=
er/nf_nat.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/netfilt=
er/x_tables.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/netfilt=
er/xt_CHECKSUM.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/netfilt=
er/xt_LOG.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/netfilt=
er/xt_MASQUERADE.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/netfilt=
er/xt_addrtype.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/netfilt=
er/xt_conntrack.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/netfilt=
er/xt_nat.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/netfilt=
er/xt_tcpudp.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/qrtr/ns=
.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/qrtr/qr=
tr-smd.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/qrtr/qr=
tr-tun.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/qrtr/qr=
tr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/rfkill/=
rfkill.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/wireles=
s/cfg80211.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/wireles=
s/cfg80211.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/net/wireles=
s/cfg80211.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/hda/s=
nd-hda-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/hda/s=
nd-hda-core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/pci/h=
da/snd-hda-codec-hdmi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/pci/h=
da/snd-hda-codec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/pci/h=
da/snd-hda-tegra.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/b=
cm/snd-soc-bcm2835-i2s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-ak4613.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-cros-ec-codec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-da7219.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-dmic.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-es7134.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-es7241.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-hdmi-codec.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-max98357a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-max98927.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-pcm3168a-i2c.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-pcm3168a.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-rl6231.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-rt5514-spi.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-rt5514.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-rt5645.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-rt5663.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-simple-amplifier.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-spdif-rx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-spdif-tx.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-tas571x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-wcd934x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/c=
odecs/snd-soc-wsa881x.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000000=
0
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/g=
eneric/snd-soc-audio-graph-card.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/g=
eneric/snd-soc-simple-card-utils.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/g=
eneric/snd-soc-simple-card.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-aiu.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-axg-fifo.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc=
0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-axg-frddr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-axg-pdm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0=
000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-axg-sound-card.ko: unsupported GNU_PROPERTY_TYPE (5) typ=
e: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-axg-spdifin.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-axg-spdifout.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-axg-tdm-formatter.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-axg-tdm-interface.ko: unsupported GNU_PROPERTY_TYPE (5) =
type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-axg-tdmin.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-axg-tdmout.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-axg-toddr.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-card-utils.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-codec-glue.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0=
xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-g12a-tohdmitx.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-gx-sound-card.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/m=
eson/snd-soc-meson-t9015.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc000=
0000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/q=
com/qdsp6/q6adm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/q=
com/qdsp6/q6afe-dai.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/q=
com/qdsp6/q6afe.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/q=
com/qdsp6/q6asm-dai.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/q=
com/qdsp6/q6asm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/q=
com/qdsp6/q6core.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/q=
com/qdsp6/q6dsp-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc00000=
00
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/q=
com/qdsp6/q6routing.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/q=
com/snd-soc-qcom-common.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000=
000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/q=
com/snd-soc-sdm845.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/r=
ockchip/snd-soc-rk3399-gru-sound.ko: unsupported GNU_PROPERTY_TYPE (5) type=
: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/r=
ockchip/snd-soc-rockchip-i2s.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/r=
ockchip/snd-soc-rockchip-pcm.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0x=
c0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/r=
ockchip/snd-soc-rockchip-rt5645.ko: unsupported GNU_PROPERTY_TYPE (5) type:=
 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/r=
ockchip/snd-soc-rockchip-spdif.ko: unsupported GNU_PROPERTY_TYPE (5) type: =
0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/s=
h/rcar/snd-soc-rcar.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /home/buildslave/workspace/kernel-bui=
ld/linux/build/_modules_/lib/modules/5.7.0-next-20200602/kernel/sound/soc/s=
unxi/sun4i-spdif.ko: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 8 warnings, 0 section mismatches

Warnings:
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
, 8 warnings, 0 section mismatches

Warnings:
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
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    drivers/net/ethernet/intel/e1000e/netdev.c:137:13: warning: =E2=80=98e1=
000e_check_me=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 =
section mismatches

Warnings:
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
ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    net/core/filter.c:4253:6: warning: unused variable =E2=80=98ifindex=E2=
=80=99 [-Wunused-variable]
    net/core/filter.c:4252:14: warning: unused variable =E2=80=98net=E2=80=
=99 [-Wunused-variable]
    net/core/filter.c:4251:7: warning: unused variable =E2=80=98devname=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
hisi_defconfig (arm, gcc-8) =E2=80=94 FAIL, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/net/ethernet/intel/e1000e/netdev.c:137:13: warning: =E2=80=98e1=
000e_check_me=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/media/tuners/mxl5005s.c:3953:1: warning: the frame size of 1120=
 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 FAIL, 20 errors, 0 warnings, 0 sec=
tion mismatches

Errors:
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches

Warnings:
    {standard input}:141: Warning: macro instruction expanded into multiple=
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
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    include/linux/compiler_attributes.h:200:41: warning: statement will nev=
er be executed [-Wswitch-unreachable]

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 12 warnings, 0 se=
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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 12 warnings, 0 =
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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 12 warnings, 0 =
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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 12 warnings, 0=
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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 12 warnings, 0 section mismatches

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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 12 warnings, 0 section mismatches

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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 12 warn=
ings, 0 section mismatches

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
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus unit =
address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C address m=
ust be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bus unit=
 address format error, expected "40000010"
    arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Warning =
(i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C address =
must be less than 10-bits, got "0x40000010"

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/net/ethernet/intel/e1000e/netdev.c:137:13: warning: =E2=80=98e1=
000e_check_me=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

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
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

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
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

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
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

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
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 FAIL, 20 errors, 0 warnings, 0 sec=
tion mismatches

Errors:
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99
    fs/binfmt_elf_fdpic.c:611:7: error: too few arguments to function =E2=
=80=98copy_to_user=E2=80=99

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

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
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    net/sunrpc/svcsock.c:226:5: warning: "ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE=
" is not defined, evaluates to 0 [-Wundef]
    net/sunrpc/svcsock.c:226:5: warning: "ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE=
" is not defined, evaluates to 0 [-Wundef]

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section=
 mismatches

Errors:
    drivers/mtd/nand/raw/xway_nand.c:227:30: error: =E2=80=98mtd=E2=80=99 u=
ndeclared (first use in this function)

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
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
clang-built-linux/5ed6792d.1c69fb81.f5969.a1d7%40mx.google.com.
