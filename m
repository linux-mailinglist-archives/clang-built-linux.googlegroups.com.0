Return-Path: <clang-built-linux+bncBDT6TV45WMPRB3MC27YAKGQEOAIFPMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6680C134118
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jan 2020 12:47:58 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id s25sf281110ljm.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jan 2020 03:47:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578484078; cv=pass;
        d=google.com; s=arc-20160816;
        b=O0ShaytOsbW61kxVZHZCToI2h5GDKzFTpMsHemOXlTzF9ykBlEzA/WbmCVA/6ayJhY
         QwRK6t4zK5YsMq/v5zXOFHpKzI4BfP6JdypzjLBE1xaFDfwbPgMz4b2bi5Uo2+3bzpWL
         PbLyPNkYZ10RnMr6hrYj36AJh2mStJwQ8cAoiqU4MSX5A2ITxGUn5kGEwg2sJIRpxZ1W
         LsRuf7dD8HEv/vuVs3D5CaThKPN0uCbRb9tPpOsLVcqpzJQY01WZ4PbSdRf6NIbsrmxM
         fTfYt/YPvlrwRFDacsqifJR8jyKEwDzfLwgP+8FYzIs4xPVuu1lFBUcbSGsvwMGAMLJO
         vp3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=WivfY/ZsTn7tR4w3ZRq+zsjgvIo1yGQbL0sK1Qrcdws=;
        b=uSa+q2jTwPyEMkvajsvRZmIVeo4lc5rNKkeFFeImv1PYzdslPtwYvPqtXVDtAqSd3M
         UdR43x7FfGMnp+1U3gwM4CvKdjfEvBIVmiK9KEAO/GEY8jUVB/x1qwgTFxPqUnUOpzCc
         llc1ySPPc6TOyCRyb/v2aBKrkP59onPE/iUQxvTPGhyCyrOfrq27klLHITfUUms5RDKn
         9R0K+R/+KGo1/+Tupo9Qr1HOGJA5xM4rodPdPOayx7pnixhPd9tL9c0uZ+jT0dS10Q76
         lmLAGXYN42fPKOVQu/JzC6JNtHimkBlWxNJgW1RazqpYTIUf/ocu6UbWJUmEoNsYMQvT
         GsRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=0pjsEiWb;
       spf=neutral (google.com: 2a00:1450:4864:20::444 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WivfY/ZsTn7tR4w3ZRq+zsjgvIo1yGQbL0sK1Qrcdws=;
        b=Hkk5ijFYqSAMg7Nv1Bu1IUclYom/C74ONKuYuNfk66Ek0pVn4K+eJR6MwCVyrBNJTM
         S7OFGSxrMpHSvDyIF29PN0OLhT7rZZMqJLqe617Ch5RVHefoS7RD9WBrBrp6mN+GzEZs
         k9UIiDYKOg6B85tgva1A9+M10LyhpwSnWM3oLw6j66Jn6j1aPL4HOGP/DYaojzdWRpXP
         O0ubZwfKLfzOCaUmpJPxfG2x7DOZZQA3WAzkQsarr0FmBs7oWw7d3mPCNgg6NIKdV39k
         FK0msZjsSY0zO+0i0Fu5PFdD192tk5NAFu3AK2YiHUuT5cMZVQIhBvtGtdC17XCnfCAQ
         WqcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WivfY/ZsTn7tR4w3ZRq+zsjgvIo1yGQbL0sK1Qrcdws=;
        b=i6/TfgqOhwrSGtiItqqboTmdVqoHxD+hih3++SuH6xTm6jTUPZhxV4osYjTUVHUd6c
         ElGOWi955HwDPmv64W1uguMIwRtZ+UKcmHtqwbPfOWiZBsRabhDa1oto6jnEx0v9E9sZ
         pOHTXnwnnsMMbUYDxkZzGo+kpnYTt6X/WXIpVP+AkLQiYzbMGjp1uB2lHVYEsfPtsTGm
         206dLQLGqayPS+KwH7JRKzJ9YtQLGyuXmVMN7129V48GsUGCRmIke/XAoOCnzRaIol0r
         PRtYiAMtyiHUsHe+5JIQ1JeM5VkwvqB6nkMpZKzeP+3yCGME+4YvW1pJxjDVWQcZ8AtE
         eqnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVyLCCk5z44LOQ9BVKKXyObZI+3eWQuEP9YUPK3+HY4F0e6vSMx
	4HPmUzlkDhaR0/CVQ0KyZwQ=
X-Google-Smtp-Source: APXvYqxOUcqWpK7RqzJhPSK+8j1CiNiowNqv41gqI9NBCxVwMWQHMJtTCN4n0U4Fc7eJC0CxfXLJzA==
X-Received: by 2002:a2e:3005:: with SMTP id w5mr2744418ljw.184.1578484077892;
        Wed, 08 Jan 2020 03:47:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c74d:: with SMTP id x74ls230565lff.12.gmail; Wed, 08 Jan
 2020 03:47:57 -0800 (PST)
X-Received: by 2002:ac2:50cc:: with SMTP id h12mr2560069lfm.29.1578484077262;
        Wed, 08 Jan 2020 03:47:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578484077; cv=none;
        d=google.com; s=arc-20160816;
        b=N5HD+bzmDXob1Hfqa2m8qEOpbYOzYK7/j+dKth8USER+ZCwjPZnyf93rkAeIHJ4LE9
         kDZIwZSDp1V1rab9H5IsVdZ/j5PfMw1+x9fyxfNb7os34IWdUcAQPFK2hY9BaTH1B0i1
         NplJbh2kg409OoPCRNfzV33bNtovPVSN/WNeM6aLQrLDoVUkhlIpQ2WHJXUWytwUHgaE
         UfJFxkZzOwqd15uwZ/VYebNrbFIHlwcnDsfRXNbbxhT0bfkp98NvFML40jdH2ZPJIDlW
         J2RgcZYeQyiRdPX3pS4a4yKKpzbWOWjlD5XHOXHW8bOF5AcbzhhW6g1f977RnC7rTawS
         h4FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=r/WftTsIB7Efis3UaW03lSxE89+OJd2ZOCsNiLWZenA=;
        b=cSw4vHMcadEdP4YR2347rFEkw6lnYwPDeLKDtdvK7zE8gy3/3iltG3pHp0nOQ2sfYP
         kKQL1/XqCdDlazc5T+fePc8Kz+2zl+3cG6t/Q+EtmBqWcXPlidP4qpSH2iF9SoRkw1td
         M4nUMgYzfKNefoTbP5QgGESSpx15j2v5gKw7DlV5V9E09rbKbU5rqqLYzwxbEJMxm15B
         LldkAlnYi4ynDC4OZZniDZmhDGUDZ34CXt670dTzCQJvfc0nFU33SR+gsnS9YpaMbyX5
         iOwRQPiRNuMdi5JITbyKmj6vGw3oLQhDDT71yfp4Nrv9C6xJePPtiHlLwQ4SOxFq5S30
         l3Pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=0pjsEiWb;
       spf=neutral (google.com: 2a00:1450:4864:20::444 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z16si92897ljk.0.2020.01.08.03.47.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2020 03:47:57 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::444 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id w15so3059944wru.4
        for <clang-built-linux@googlegroups.com>; Wed, 08 Jan 2020 03:47:56 -0800 (PST)
X-Received: by 2002:adf:e547:: with SMTP id z7mr4224011wrm.258.1578484075139;
        Wed, 08 Jan 2020 03:47:55 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id i8sm4204005wro.47.2020.01.08.03.47.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 03:47:54 -0800 (PST)
Message-ID: <5e15c16a.1c69fb81.ae549.2ede@mx.google.com>
Date: Wed, 08 Jan 2020 03:47:54 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20200108
X-Kernelci-Tree: next
X-Kernelci-Report-Type: build
X-Kernelci-Branch: master
Subject: next/master build: 214 builds: 1 failed, 213 passed, 1 error,
 187 warnings (next-20200108)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=0pjsEiWb;       spf=neutral (google.com: 2a00:1450:4864:20::444 is
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

next/master build: 214 builds: 1 failed, 213 passed, 1 error, 187 warnings =
(next-20200108)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200108/

Tree: next
Branch: master
Git Describe: next-20200108
Git Commit: 4becfd1b26ef4014a20fb38dd17554077adbed5d
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Build Failure Detected:

arm:
    allmodconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 2 warnings
    axs103_defconfig (gcc-8): 2 warnings
    axs103_smp_defconfig (gcc-8): 2 warnings
    haps_hs_defconfig (gcc-8): 2 warnings
    haps_hs_smp_defconfig (gcc-8): 2 warnings
    hsdk_defconfig (gcc-8): 2 warnings
    nsimosci_hs_defconfig (gcc-8): 2 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 1 warning
    vdk_hs38_smp_defconfig (gcc-8): 1 warning

arm64:
    allmodconfig (gcc-8): 6 warnings
    allnoconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning

arm:
    allmodconfig (gcc-8): 1 error, 4 warnings
    allnoconfig (gcc-8): 1 warning
    am200epdkit_defconfig (gcc-8): 1 warning
    assabet_defconfig (gcc-8): 1 warning
    axm55xx_defconfig (gcc-8): 1 warning
    badge4_defconfig (gcc-8): 1 warning
    cerfcube_defconfig (gcc-8): 1 warning
    clps711x_defconfig (gcc-8): 1 warning
    cm_x2xx_defconfig (gcc-8): 1 warning
    cm_x300_defconfig (gcc-8): 1 warning
    cns3420vb_defconfig (gcc-8): 1 warning
    colibri_pxa270_defconfig (gcc-8): 1 warning
    colibri_pxa300_defconfig (gcc-8): 1 warning
    collie_defconfig (gcc-8): 1 warning
    corgi_defconfig (gcc-8): 1 warning
    davinci_all_defconfig (gcc-8): 1 warning
    dove_defconfig (gcc-8): 1 warning
    ebsa110_defconfig (gcc-8): 1 warning
    em_x270_defconfig (gcc-8): 1 warning
    ep93xx_defconfig (gcc-8): 1 warning
    eseries_pxa_defconfig (gcc-8): 1 warning
    footbridge_defconfig (gcc-8): 1 warning
    gemini_defconfig (gcc-8): 1 warning
    h3600_defconfig (gcc-8): 1 warning
    h5000_defconfig (gcc-8): 1 warning
    hackkit_defconfig (gcc-8): 1 warning
    hisi_defconfig (gcc-8): 1 warning
    integrator_defconfig (gcc-8): 1 warning
    iop32x_defconfig (gcc-8): 1 warning
    ixp4xx_defconfig (gcc-8): 1 warning
    jornada720_defconfig (gcc-8): 1 warning
    lart_defconfig (gcc-8): 1 warning
    lpd270_defconfig (gcc-8): 1 warning
    lubbock_defconfig (gcc-8): 1 warning
    magician_defconfig (gcc-8): 1 warning
    mainstone_defconfig (gcc-8): 1 warning
    mini2440_defconfig (gcc-8): 1 warning
    mmp2_defconfig (gcc-8): 1 warning
    multi_v4t_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    mvebu_v5_defconfig (gcc-8): 1 warning
    neponset_defconfig (gcc-8): 1 warning
    netwinder_defconfig (gcc-8): 1 warning
    nhk8815_defconfig (gcc-8): 1 warning
    omap1_defconfig (gcc-8): 1 warning
    omap2plus_defconfig (gcc-8): 1 warning
    orion5x_defconfig (gcc-8): 1 warning
    palmz72_defconfig (gcc-8): 1 warning
    pcm027_defconfig (gcc-8): 1 warning
    pleb_defconfig (gcc-8): 1 warning
    prima2_defconfig (gcc-8): 1 warning
    pxa168_defconfig (gcc-8): 1 warning
    pxa255-idp_defconfig (gcc-8): 1 warning
    pxa3xx_defconfig (gcc-8): 1 warning
    pxa910_defconfig (gcc-8): 1 warning
    realview_defconfig (gcc-8): 1 warning
    rpc_defconfig (gcc-8): 1 warning
    s3c2410_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (gcc-8): 1 warning
    s5pv210_defconfig (gcc-8): 1 warning
    sama5_defconfig (gcc-8): 1 warning
    shannon_defconfig (gcc-8): 1 warning
    simpad_defconfig (gcc-8): 1 warning
    spear13xx_defconfig (gcc-8): 1 warning
    spear3xx_defconfig (gcc-8): 1 warning
    spear6xx_defconfig (gcc-8): 1 warning
    spitz_defconfig (gcc-8): 1 warning
    sunxi_defconfig (gcc-8): 1 warning
    tango4_defconfig (gcc-8): 1 warning
    tct_hammer_defconfig (gcc-8): 1 warning
    trizeps4_defconfig (gcc-8): 1 warning
    u300_defconfig (gcc-8): 1 warning
    u8500_defconfig (gcc-8): 1 warning
    versatile_defconfig (gcc-8): 1 warning
    vf610m4_defconfig (gcc-8): 1 warning
    viper_defconfig (gcc-8): 1 warning
    vt8500_v6_v7_defconfig (gcc-8): 1 warning
    xcep_defconfig (gcc-8): 1 warning
    zeus_defconfig (gcc-8): 1 warning
    zx_defconfig (gcc-8): 1 warning

i386:
    allnoconfig (gcc-8): 1 warning

mips:
    32r2el_defconfig (gcc-8): 2 warnings
    allnoconfig (gcc-8): 1 warning
    ar7_defconfig (gcc-8): 1 warning
    ath79_defconfig (gcc-8): 1 warning
    bcm63xx_defconfig (gcc-8): 1 warning
    bigsur_defconfig (gcc-8): 1 warning
    bmips_be_defconfig (gcc-8): 1 warning
    bmips_stb_defconfig (gcc-8): 1 warning
    capcella_defconfig (gcc-8): 1 warning
    cavium_octeon_defconfig (gcc-8): 1 warning
    cobalt_defconfig (gcc-8): 1 warning
    db1xxx_defconfig (gcc-8): 1 warning
    decstation_64_defconfig (gcc-8): 1 warning
    decstation_defconfig (gcc-8): 1 warning
    decstation_r4k_defconfig (gcc-8): 1 warning
    e55_defconfig (gcc-8): 1 warning
    gcw0_defconfig (gcc-8): 1 warning
    ip22_defconfig (gcc-8): 1 warning
    ip27_defconfig (gcc-8): 1 warning
    ip28_defconfig (gcc-8): 1 warning
    jazz_defconfig (gcc-8): 1 warning
    jmr3927_defconfig (gcc-8): 1 warning
    lasat_defconfig (gcc-8): 1 warning
    loongson3_defconfig (gcc-8): 1 warning
    malta_defconfig (gcc-8): 1 warning
    malta_kvm_guest_defconfig (gcc-8): 1 warning
    malta_qemu_32r6_defconfig (gcc-8): 2 warnings
    maltaaprp_defconfig (gcc-8): 1 warning
    maltasmvp_defconfig (gcc-8): 1 warning
    maltasmvp_eva_defconfig (gcc-8): 1 warning
    maltaup_defconfig (gcc-8): 1 warning
    maltaup_xpa_defconfig (gcc-8): 1 warning
    markeins_defconfig (gcc-8): 1 warning
    mips_paravirt_defconfig (gcc-8): 1 warning
    mpc30x_defconfig (gcc-8): 1 warning
    msp71xx_defconfig (gcc-8): 1 warning
    pnx8335_stb225_defconfig (gcc-8): 1 warning
    qi_lb60_defconfig (gcc-8): 1 warning
    rb532_defconfig (gcc-8): 1 warning
    rbtx49xx_defconfig (gcc-8): 2 warnings
    rm200_defconfig (gcc-8): 1 warning
    sb1250_swarm_defconfig (gcc-8): 1 warning
    tb0219_defconfig (gcc-8): 1 warning
    tb0226_defconfig (gcc-8): 1 warning
    tb0287_defconfig (gcc-8): 1 warning
    workpad_defconfig (gcc-8): 1 warning

riscv:
    allnoconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    rv32_defconfig (gcc-8): 7 warnings

x86_64:
    allmodconfig (gcc-8): 9 warnings
    allnoconfig (gcc-8): 1 warning
    tinyconfig (gcc-8): 1 warning

Errors summary:

    1    drivers/infiniband/core/umem_odp.c:245:26: error: =E2=80=98HPAGE_S=
HIFT=E2=80=99 undeclared (first use in this function); did you mean =E2=80=
=98PAGE_SHIFT=E2=80=99?

Warnings summary:

    134  kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]
    20   <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    8    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=
=E2=80=99 may be used uninitialized in this function [-Wmaybe-uninitialized=
]
    4    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: for=
mat =E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, bu=
t argument 6 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    4    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: for=
mat =E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, bu=
t argument 5 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    3    WARNING: modpost: missing MODULE_LICENSE() in drivers/phy/intel/ph=
y-intel-emmc.o
    2    WARNING: unmet direct dependencies detected for I2C_S3C2410
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:141: Warning: macro instruction expanded into mul=
tiple instructions
    1    sound/soc/txx9/txx9aclc.c:54:30: warning: unused variable =E2=80=
=98rtd=E2=80=99 [-Wunused-variable]
    1    mm/hmm.c:478:9: warning: unused variable =E2=80=98pmdp=E2=80=99 [-=
Wunused-variable]
    1    mm/hmm.c:477:30: warning: unused variable =E2=80=98next=E2=80=99 [=
-Wunused-variable]
    1    drivers/base/test/property-entry-test.c:214:1: warning: the frame =
size of 3128 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    1    /tmp/cc63SFsG.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/cc63SFsG.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1163:warning: override: UNWINDER_GUESS changes choice stat=
e

Section mismatches summary:

    5    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    3    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    3    WARNING: vmlinux.o(.text.unlikely+0x8d8): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x97c): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x860): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x7a4): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x3a98): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()
    1    WARNING: vmlinux.o(.text.unlikely+0x3740): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 section=
 mismatches

Warnings:
    WARNING: unmet direct dependencies detected for I2C_S3C2410
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 6 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 5 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 6 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 5 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    WARNING: modpost: missing MODULE_LICENSE() in drivers/phy/intel/phy-int=
el-emmc.o

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 4 warnings, 0 section mi=
smatches

Errors:
    drivers/infiniband/core/umem_odp.c:245:26: error: =E2=80=98HPAGE_SHIFT=
=E2=80=99 undeclared (first use in this function); did you mean =E2=80=98PA=
GE_SHIFT=E2=80=99?

Warnings:
    drivers/base/test/property-entry-test.c:214:1: warning: the frame size =
of 3128 bytes is larger than 2048 bytes [-Wframe-larger-than=3D]
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]
    /tmp/cc63SFsG.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/cc63SFsG.s:18191: Warning: using r15 results in unpredictable beha=
viour

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 sectio=
n mismatches

Warnings:
    WARNING: unmet direct dependencies detected for I2C_S3C2410
    mm/hmm.c:478:9: warning: unused variable =E2=80=98pmdp=E2=80=99 [-Wunus=
ed-variable]
    mm/hmm.c:477:30: warning: unused variable =E2=80=98next=E2=80=99 [-Wunu=
sed-variable]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 6 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 5 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 6 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    drivers/net/wireless/intel/iwlegacy/common.h:2928:32: warning: format =
=E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=E2=80=99, but ar=
gument 5 has type =E2=80=98long int=E2=80=99 [-Wformat=3D]
    WARNING: modpost: missing MODULE_LICENSE() in drivers/phy/intel/phy-int=
el-emmc.o
    WARNING: modpost: missing MODULE_LICENSE() in drivers/phy/intel/phy-int=
el-emmc.o

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section mi=
smatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

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
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

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
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

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
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8d8): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x3a98): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x3740): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 1 warning, 0 section mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 1 warning, 0 section mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x7a4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8d8): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in reference=
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
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

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
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x860): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
lasat_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

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
loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warning=
s, 0 section mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]
    {standard input}:141: Warning: macro instruction expanded into multiple=
 instructions

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
markeins_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
msp71xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 1 warning, 0 section mismatches

Warnings:
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 1 warning, 0 section mismatches

Warnings:
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 =
warning, 0 section mismatches

Warnings:
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warni=
ng, 0 section mismatches

Warnings:
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

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
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/clocksource/timer-ti-dm.c:798:13: warning: =E2=80=98timer=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

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
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8d8): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

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
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]
    sound/soc/txx9/txx9aclc.c:54:30: warning: unused variable =E2=80=98rtd=
=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x97c): Section mismatch in reference=
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
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]
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
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

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
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

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
    .config:1163:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

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
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5e15c16a.1c69fb81.ae549.2ede%40mx.google.com.
