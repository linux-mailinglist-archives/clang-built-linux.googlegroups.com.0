Return-Path: <clang-built-linux+bncBDT6TV45WMPRBBPL7OBQMGQE3G4CVNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 684F5365C52
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 17:38:46 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id p124-20020acad8820000b029013d36f4aa65sf13418220oig.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 08:38:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618933125; cv=pass;
        d=google.com; s=arc-20160816;
        b=Epo/Lf0SnDJd6bs8mzOrO57i1OxmLuagnX3bCI7NOXb37P73W0JLfSgUQBZv5hqAxA
         uOXdwjIywIXbsMn2r5nlQeHaowo2WAk93/R81oBqtr8z/YGqRNKkBVzBoHvjwPd/YbNF
         z2vu9QutZWQD/sG7IkY08A2O4XSQM5OpTHqOrNog9buqFTKkZrNUzsR/NMHQem52rXIL
         dNH7soec43B7irf7gtkc86S70zzxkFbH6/DcRbBHSlqR4KaofziR89nPjj+HUD9l29R6
         on1avgvIzi2X0c7lxxSQ13VGVrlgMiaIDWnANdjdV5YcYteUoxnpfLj/Yn/WF9xD4rL0
         JVlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=68bVUwSlXOEc/pzLjQm7+xFMCGzZEc50YFiIpkZA2ac=;
        b=jz4skNS7/1BEIf3cNtVV7BS3WxfTknUGSbKrx/UXFxkqiwYdGZzstpqmVTFrE1M7P0
         Q3UrqV9TLLxXi8JUKP2hDzPcJzMLeg7HZ4cG37ynutpJs5zae8AjE9kZzTfUv8vRYyXA
         zhR6yIrGNQUgIlVaWEIrIQttiawZZHVhTtDO7BRSXnNaakYe0wcrOm9GSa531XR3K+LF
         pHq4sUaO57uUUG6dpSvrvJjSmweewVebeM0+00vkAPKPZNlMSE9JH0ub9qw99A7E85Nx
         2huOQLbWyeiBs2HMtljL9RkvFuSvzbNH3danCvCGo0edES4VZlyx+JGdXyTMTyvcOXKe
         W0Sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=mtr0qoIY;
       spf=neutral (google.com: 2607:f8b0:4864:20::1033 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=68bVUwSlXOEc/pzLjQm7+xFMCGzZEc50YFiIpkZA2ac=;
        b=UDC21TlCq4jdcyNBLSactVGhXPDWgLzIzStiLUasIZN9RQyNn7G1GzBnHcyCjau5az
         A0jO0HkfDp0FA8ApIZFXMx6R7W4gth/jDyXDbzaR1qcDpaZ920WKvAOhCLyXpq2gaq2q
         gb07s2ia+AE5JxuwxKSXw6Kh/ZOeIGimb3kNs8nMf/oYmSTYxkyfhj/5LztGeaQZV+oZ
         oV6bzMDuDMGz4BCHEPF98j6ZOAxoszvJ0MPnQ1n9o70S4UCxq9XIIRM95tbqKlsNqOIz
         IwY7Tj2liTNLy5kQd6ivBI+nmbGLI53qS+dp1KFdu38OiD4BFxRZnBEEAwPEiP9vSwEA
         VzLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=68bVUwSlXOEc/pzLjQm7+xFMCGzZEc50YFiIpkZA2ac=;
        b=cw2WbSCLSXpHK6WXDPZIz5iu7KY1e63pQUU/gzfWZOICvjvuGnXPTFgblD6bBrFyt0
         opG24IuR0daYKdZ5zJZcNX4m3wCrICprqYHhXfCGZQMIQTSeK9vB4K4qLJTzsw0oO+cT
         fTQJGamJKfMDKKHf7us2x9/yb34+NQCcNE0mt/eJ+AsMJDoIhWNd9y0eP7ujANliWRsQ
         S7MvySxt1HnNZcEpEtC/ybxyVZgR/9SG94nm44paaGeHMNkt0/D5ktr0Wf6MRpfi4i5C
         sUs0+S5ggPw80hyXMWOb9DUnNEHHGRmFrn7s6B/u09WladcyFlKZi0XgJEr+UiHBwtFe
         je0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uF8VRoOQnN3a4H40ZDyIGYUvEw/6z49SDp3gFryRSFV9l50BU
	uqDllaZwfGpZUxdG0peD5Nw=
X-Google-Smtp-Source: ABdhPJwBNVTC3KvCQwyX7S7/vAmJywUUOgOceSHE7c9kfEm2xOheqXWk9goSC/QmrS0WMc+lR4WEkw==
X-Received: by 2002:a9d:311:: with SMTP id 17mr1404353otv.77.1618933125300;
        Tue, 20 Apr 2021 08:38:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4c4f:: with SMTP id z76ls697619oia.1.gmail; Tue, 20 Apr
 2021 08:38:44 -0700 (PDT)
X-Received: by 2002:aca:d70b:: with SMTP id o11mr3507714oig.151.1618933124649;
        Tue, 20 Apr 2021 08:38:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618933124; cv=none;
        d=google.com; s=arc-20160816;
        b=yxYjo8BA59/Mhphb9Ix9aSTcOGAV+Zxn/KpxlgyBvVMCNQgCHG3K59D95WG9LZ/eNT
         QtOZBrow5/FB1jhgaXMgmsZLixcFewoNLqhbFRVQRzVnKQ+yFo9isYv4uY7y/BKTSAeC
         deRzoH5u5VYWTAThEBR3xqX1StGYUnxbb3puMJlnK9+iQKuPOIY4J2/Ci5ll9FrxKikS
         WOvipXBJFnBmOajWfsoxESPSTwKy3I3b1fW7t8ACYzk153eNwP2gqLYbEFgGJwn4Rwv8
         1ksu05XYd7eW9Lcmhpi74ByxarGu9SwiczdH4UGaj/fbtIh5H8GmYyFRmQ49vvVgbOzQ
         Eu7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=GrP9a/FIgUXND7eyThu6eKdQHivdgK+k0Vd1yAnbc3s=;
        b=rmR74dKME/+zD1PaUM4Ma7QZHY273FFNScc/mVSSX5uXmqRbNaRH7VtG42JhBF3/nb
         8cfGhUSDkmPAUUb3OFPTV51nPLexjZz0zIPoAklXhbhRvex9AythRceUuIPNFsEV0hk8
         e6b6qQPHyrhzmU079C3Anr7YL008Dzkx5R2TYut8geok0K6+G8/PuDH37ZD90QgUwz7g
         6yQOZWZA0MQfS3+ReyjHJ1QYBAImVfo7zdFMk6aas3BttNYvtnme+GDleZcTDXVforcZ
         NLS7gr6T+pxB81pqX5yKdbxa+/dLhgrrHeRGOKAolwzF5jPAUXXAe532xkH+LHyei5ue
         MB4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=mtr0qoIY;
       spf=neutral (google.com: 2607:f8b0:4864:20::1033 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id w8si555083oic.1.2021.04.20.08.38.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 08:38:44 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1033 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id g1-20020a17090adac1b0290150d07f9402so2011020pjx.5
        for <clang-built-linux@googlegroups.com>; Tue, 20 Apr 2021 08:38:44 -0700 (PDT)
X-Received: by 2002:a17:90a:66cb:: with SMTP id z11mr5751576pjl.15.1618933121155;
        Tue, 20 Apr 2021 08:38:41 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id o127sm15779651pfd.147.2021.04.20.08.38.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 08:38:40 -0700 (PDT)
Message-ID: <607ef580.1c69fb81.5d7a1.94c4@mx.google.com>
Date: Tue, 20 Apr 2021 08:38:40 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20210420
X-Kernelci-Report-Type: build
X-Kernelci-Tree: next
X-Kernelci-Branch: master
Subject: next/master build: 231 builds: 10 failed, 221 passed, 18 errors,
 399 warnings (next-20210420)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=mtr0qoIY;       spf=neutral (google.com: 2607:f8b0:4864:20::1033 is
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

next/master build: 231 builds: 10 failed, 221 passed, 18 errors, 399 warnin=
gs (next-20210420)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20210420/

Tree: next
Branch: master
Git Describe: next-20210420
Git Commit: 593ef1658ecf61d3619885bdbbcfffa3d1417891
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arm64:
    allmodconfig: (clang-12) FAIL

arm:
    aspeed_g5_defconfig: (clang-10) FAIL
    allmodconfig: (clang-12) FAIL
    allmodconfig: (gcc-8) FAIL

i386:
    allmodconfig: (clang-10) FAIL
    allmodconfig: (clang-12) FAIL

mips:
    allnoconfig: (gcc-8) FAIL
    decstation_64_defconfig: (gcc-8) FAIL
    lemote2f_defconfig: (gcc-8) FAIL

x86_64:
    allmodconfig: (clang-12) FAIL

Errors and Warnings Detected:

arc:
    vdk_hs38_smp_defconfig (gcc-8): 1 warning

arm64:
    allmodconfig (clang-12): 1 error, 4 warnings
    allmodconfig (gcc-8): 3 warnings
    allmodconfig (clang-10): 46 warnings
    allnoconfig (gcc-8): 1 warning
    allnoconfig (clang-10): 2 warnings
    allnoconfig (clang-12): 2 warnings
    defconfig (gcc-8): 2 warnings
    defconfig (clang-10): 12 warnings
    defconfig (clang-12): 11 warnings
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-12): 11 warnings
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (gcc-8): 2 warnings
    defconfig+CONFIG_ARM64_64K_PAGES=3Dy (clang-10): 12 warnings
    defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 2 warnings
    defconfig+CONFIG_RANDOMIZE_BASE=3Dy (gcc-8): 2 warnings
    tinyconfig (gcc-8): 1 warning

arm:
    allmodconfig (gcc-8): 1 error, 1 warning
    allmodconfig (clang-12): 1 error, 6 warnings
    aspeed_g5_defconfig (clang-10): 11 errors
    axm55xx_defconfig (gcc-8): 2 warnings
    davinci_all_defconfig (gcc-8): 2 warnings
    dove_defconfig (gcc-8): 1 warning
    exynos_defconfig (gcc-8): 2 warnings
    footbridge_defconfig (gcc-8): 1 warning
    gemini_defconfig (gcc-8): 1 warning
    imx_v6_v7_defconfig (gcc-8): 3 warnings
    integrator_defconfig (gcc-8): 1 warning
    iop32x_defconfig (gcc-8): 1 warning
    ixp4xx_defconfig (gcc-8): 1 warning
    keystone_defconfig (gcc-8): 2 warnings
    multi_v5_defconfig (gcc-8): 3 warnings
    multi_v5_defconfig (clang-12): 4 warnings
    multi_v5_defconfig (clang-10): 4 warnings
    multi_v7_defconfig (gcc-8): 4 warnings
    multi_v7_defconfig (clang-12): 11 warnings
    multi_v7_defconfig (clang-10): 11 warnings
    multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (gcc-8): 4 warnings
    multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (gcc-8): 4 warnin=
gs
    multi_v7_defconfig+CONFIG_SMP=3Dn (gcc-8): 4 warnings
    mv78xx0_defconfig (gcc-8): 1 warning
    mvebu_v5_defconfig (gcc-8): 3 warnings
    mvebu_v7_defconfig (gcc-8): 4 warnings
    netwinder_defconfig (gcc-8): 1 warning
    omap1_defconfig (gcc-8): 2 warnings
    omap2plus_defconfig (gcc-8): 4 warnings
    orion5x_defconfig (gcc-8): 1 warning
    qcom_defconfig (gcc-8): 1 warning
    shmobile_defconfig (gcc-8): 3 warnings
    socfpga_defconfig (gcc-8): 2 warnings
    spear13xx_defconfig (gcc-8): 2 warnings
    tegra_defconfig (gcc-8): 1 warning
    vexpress_defconfig (gcc-8): 1 warning

i386:
    allmodconfig (clang-12): 1 error, 4 warnings
    allmodconfig (clang-10): 1 error, 56 warnings
    i386_defconfig (clang-12): 2 warnings
    i386_defconfig (gcc-8): 1 warning
    i386_defconfig (clang-10): 2 warnings

mips:
    32r2el_defconfig (gcc-8): 1 warning
    allnoconfig (gcc-8): 1 error
    ath25_defconfig (gcc-8): 1 warning
    bcm47xx_defconfig (gcc-8): 1 warning
    bcm63xx_defconfig (gcc-8): 1 warning
    bigsur_defconfig (gcc-8): 1 warning
    capcella_defconfig (gcc-8): 1 warning
    cavium_octeon_defconfig (gcc-8): 2 warnings
    cobalt_defconfig (gcc-8): 1 warning
    db1xxx_defconfig (gcc-8): 1 warning
    fuloong2e_defconfig (gcc-8): 1 warning
    gcw0_defconfig (gcc-8): 2 warnings
    gpr_defconfig (gcc-8): 1 warning
    ip27_defconfig (gcc-8): 1 warning
    ip32_defconfig (gcc-8): 1 warning
    jmr3927_defconfig (gcc-8): 1 warning
    lemote2f_defconfig (gcc-8): 1 warning
    loongson2k_defconfig (gcc-8): 1 warning
    loongson3_defconfig (gcc-8): 1 warning
    malta_defconfig (gcc-8): 1 warning
    malta_kvm_defconfig (gcc-8): 1 warning
    malta_qemu_32r6_defconfig (gcc-8): 2 warnings
    maltaaprp_defconfig (gcc-8): 2 warnings
    maltasmvp_defconfig (gcc-8): 1 warning
    maltasmvp_eva_defconfig (gcc-8): 1 warning
    maltaup_defconfig (gcc-8): 1 warning
    maltaup_xpa_defconfig (gcc-8): 1 warning
    mpc30x_defconfig (gcc-8): 1 warning
    mtx1_defconfig (gcc-8): 1 warning
    nlm_xlp_defconfig (gcc-8): 1 warning
    nlm_xlr_defconfig (gcc-8): 1 warning
    qi_lb60_defconfig (gcc-8): 2 warnings
    rb532_defconfig (gcc-8): 1 warning
    rbtx49xx_defconfig (gcc-8): 1 warning
    rm200_defconfig (gcc-8): 2 warnings
    rs90_defconfig (gcc-8): 2 warnings
    sb1250_swarm_defconfig (gcc-8): 2 warnings
    tb0219_defconfig (gcc-8): 1 warning
    tb0226_defconfig (gcc-8): 1 warning
    tb0287_defconfig (gcc-8): 1 warning
    xway_defconfig (gcc-8): 4 warnings

riscv:
    defconfig (gcc-8): 1 warning
    nommu_k210_defconfig (gcc-8): 1 warning
    nommu_k210_sdcard_defconfig (gcc-8): 1 warning
    nommu_virt_defconfig (gcc-8): 1 warning
    rv32_defconfig (gcc-8): 7 warnings

x86_64:
    allmodconfig (clang-12): 1 error, 7 warnings
    allmodconfig (clang-10): 39 warnings
    allmodconfig (gcc-8): 3 warnings
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 1 warning
    x86_64_defconfig (clang-10): 4 warnings
    x86_64_defconfig (clang-12): 2 warnings
    x86_64_defconfig+kvm_guest (gcc-8): 1 warning
    x86_64_defconfig+x86-chromebook (gcc-8): 1 warning

Errors summary:

    4    kernel/gcov/clang.c:296:21: error: implicit declaration of functio=
n 'vmalloc' [-Werror,-Wimplicit-function-declaration]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37D44): reloca=
tion R_ARM_PREL31 out of range: 2135571444 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C9C): reloca=
tion R_ARM_PREL31 out of range: 2135571612 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C8C): reloca=
tion R_ARM_PREL31 out of range: 2135571628 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C3C): reloca=
tion R_ARM_PREL31 out of range: 2135571708 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C2C): reloca=
tion R_ARM_PREL31 out of range: 2135571724 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C14): reloca=
tion R_ARM_PREL31 out of range: 2135571748 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37BFC): reloca=
tion R_ARM_PREL31 out of range: 2135571772 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37BCC): reloca=
tion R_ARM_PREL31 out of range: 2135571820 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37B9C): reloca=
tion R_ARM_PREL31 out of range: 2135571868 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37B54): reloca=
tion R_ARM_PREL31 out of range: 2135571940 is not in [-1073741824, 10737418=
23]
    1    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x35520): reloca=
tion R_ARM_PREL31 out of range: 2135516184 is not in [-1073741824, 10737418=
23]
    1    drivers/net/ethernet/korina.c:326:2: error: redefinition of 'desc_=
empty'
    1    ERROR: modpost: Section mismatches detected.
    1    ./usr/include/linux/bcache-nvm.h:109:3: error: #error "Non-64bit p=
latform is not supported"

Warnings summary:

    73   drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rde=
v=E2=80=99 [-Wunused-variable]
    70   1 warning generated.
    19   drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wun=
used-variable]
    16   kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=
=E2=80=99 defined but not used [-Wunused-function]
    14   sound/soc/generic/simple-card.c:706:1: warning: the frame size of =
1552 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    14   sound/soc/generic/simple-card.c:478:1: warning: the frame size of =
1552 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    8    arch/arm64/configs/defconfig:1018:warning: override: reassigning t=
o symbol MTK_PMIC_WRAP
    7    drivers/net/ethernet/renesas/ravb_main.c:2088:6: warning: variable=
 'priv' is used uninitialized whenever 'if' condition is true [-Wsometimes-=
uninitialized]
    7    drivers/net/ethernet/renesas/ravb_main.c:2048:27: note: initialize=
 the variable 'priv' to silence this warning
    7    drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:425:11: warning: v=
ariable 'parent_name' is uninitialized when used here [-Wuninitialized]
    7    drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:385:30: note: init=
ialize the variable 'parent_name' to silence this warning
    5    sound/soc/generic/audio-graph-card.c:612:1: warning: the frame siz=
e of 1552 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    4    sound/soc/generic/simple-card.c:609:12: warning: stack frame size =
of 3168 bytes in function 'asoc_simple_probe' [-Wframe-larger-than=3D]
    4    sound/soc/generic/simple-card.c:609:12: warning: stack frame size =
of 3128 bytes in function 'asoc_simple_probe' [-Wframe-larger-than=3D]
    4    kernel/gcov/clang.c:296:19: warning: incompatible integer to point=
er conversion assigning to 'u64 *' (aka 'unsigned long long *') from 'int' =
[-Wint-conversion]
    4    2 warnings generated.
    4    1 warning and 1 error generated.
    3    drivers/platform/surface/surface_aggregator_registry.c:478:25: war=
ning: implicit conversion from 'int' to '__u8' (aka 'unsigned char') change=
s value from 65535 to 255 [-Wconstant-conversion]
    3    drivers/misc/habanalabs/goya/goya.c:142:14: warning: implicit conv=
ersion from enumeration type 'enum goya_pll_index' to different enumeration=
 type 'enum pll_index' [-Wenum-conversion]
    3    drivers/misc/habanalabs/goya/goya.c:141:15: warning: implicit conv=
ersion from enumeration type 'enum goya_pll_index' to different enumeration=
 type 'enum pll_index' [-Wenum-conversion]
    3    drivers/misc/habanalabs/goya/goya.c:140:14: warning: implicit conv=
ersion from enumeration type 'enum goya_pll_index' to different enumeration=
 type 'enum pll_index' [-Wenum-conversion]
    3    drivers/misc/habanalabs/goya/goya.c:139:14: warning: implicit conv=
ersion from enumeration type 'enum goya_pll_index' to different enumeration=
 type 'enum pll_index' [-Wenum-conversion]
    3    drivers/misc/habanalabs/goya/goya.c:138:13: warning: implicit conv=
ersion from enumeration type 'enum goya_pll_index' to different enumeration=
 type 'enum pll_index' [-Wenum-conversion]
    3    drivers/misc/habanalabs/goya/goya.c:137:13: warning: implicit conv=
ersion from enumeration type 'enum goya_pll_index' to different enumeration=
 type 'enum pll_index' [-Wenum-conversion]
    3    drivers/misc/habanalabs/goya/goya.c:136:14: warning: implicit conv=
ersion from enumeration type 'enum goya_pll_index' to different enumeration=
 type 'enum pll_index' [-Wenum-conversion]
    3    drivers/misc/habanalabs/gaudi/gaudi.c:135:13: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    3    drivers/misc/habanalabs/gaudi/gaudi.c:134:14: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    3    drivers/misc/habanalabs/gaudi/gaudi.c:133:14: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    3    drivers/misc/habanalabs/gaudi/gaudi.c:132:15: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    3    drivers/misc/habanalabs/gaudi/gaudi.c:131:14: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    3    drivers/misc/habanalabs/gaudi/gaudi.c:130:14: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    3    drivers/misc/habanalabs/gaudi/gaudi.c:129:14: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    3    drivers/misc/habanalabs/gaudi/gaudi.c:128:15: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    3    drivers/misc/habanalabs/gaudi/gaudi.c:127:14: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    3    drivers/misc/habanalabs/gaudi/gaudi.c:126:14: warning: implicit co=
nversion from enumeration type 'enum gaudi_pll_index' to different enumerat=
ion type 'enum pll_index' [-Wenum-conversion]
    3    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.=
c:3015:53: warning: address of 'aconnector->mst_port->mst_mgr' will always =
evaluate to 'true' [-Wpointer-bool-conversion]
    3    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/mod=
ules/5.12.0-rc8-next-20210420/kernel/drivers/media/tuners/tuner-types.ko: u=
nsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
    3    7 warnings generated.
    3    10 warnings generated.
    2    sound/soc/generic/audio-graph-card.c:548:5: warning: stack frame s=
ize of 1584 bytes in function 'audio_graph_parse_of' [-Wframe-larger-than=
=3D]
    2    kernel/sched/fair.c:8433:13: warning: unused function 'update_nohz=
_stats' [-Wunused-function]
    2    drivers/spi/spi-stm32-qspi.c:481:21: warning: format =E2=80=98%x=
=E2=80=99 expects argument of type =E2=80=98unsigned int=E2=80=99, but argu=
ment 5 has type =E2=80=98size_t=E2=80=99 {aka =E2=80=98long unsigned int=E2=
=80=99} [-Wformat=3D]
    2    drivers/memstick/host/r592.c:367:2: warning: ignoring return value=
 of function declared with 'warn_unused_result' attribute [-Wunused-result]
    2    drivers/md/bcache/nvm-pages.c:588:6: warning: variable 'err' is us=
ed uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized=
]
    2    drivers/md/bcache/nvm-pages.c:564:12: note: initialize the variabl=
e 'err' to silence this warning
    2    drivers/hid/surface-hid/surface_hid.c:233:25: warning: implicit co=
nversion from 'int' to '__u8' (aka 'unsigned char') changes value from 6553=
5 to 255 [-Wconstant-conversion]
    2    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implici=
t conversion from 'unsigned long long' to 'unsigned long' changes value fro=
m 5000000000 to 705032704 [-Wconstant-conversion]
    2    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    2    ./include/linux/kfifo.h:588:1: warning: ignoring return value of =
=E2=80=98__kfifo_uint_must_check_helper=E2=80=99, declared with attribute w=
arn_unused_result [-Wunused-result]
    1    {standard input}:39: Warning: macro instruction expanded into mult=
iple instructions
    1    sound/soc/generic/simple-card.c:706:1: warning: the frame size of =
1544 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    1    sound/soc/generic/simple-card.c:609:12: warning: stack frame size =
of 3216 bytes in function 'asoc_simple_probe' [-Wframe-larger-than=3D]
    1    sound/soc/generic/simple-card.c:609:12: warning: stack frame size =
of 3192 bytes in function 'asoc_simple_probe' [-Wframe-larger-than=3D]
    1    sound/soc/generic/simple-card.c:609:12: warning: stack frame size =
of 3116 bytes in function 'asoc_simple_probe' [-Wframe-larger-than=3D]
    1    sound/soc/generic/simple-card.c:478:1: warning: the frame size of =
1544 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    1    sound/soc/generic/audio-graph-card.c:548:5: warning: stack frame s=
ize of 1572 bytes in function 'audio_graph_parse_of' [-Wframe-larger-than=
=3D]
    1    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame siz=
e of 1248 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=
=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 3304 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/staging/greybus/audio_topology.c:977:12: warning: stack fr=
ame size of 1828 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-la=
rger-than=3D]
    1    drivers/pci/vpd.c:289:13: warning: =E2=80=98pci_vpd_set_size=E2=80=
=99 defined but not used [-Wunused-function]
    1    drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring return=
 value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unuse=
d_result [-Wunused-result]
    1    drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring return=
 value of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unuse=
d_result [-Wunused-result]
    1    drivers/net/ethernet/korina.c:871:24: warning: incompatible pointe=
r to integer conversion assigning to 'enum chain_status' from 'int (const v=
oid *)' [-Wint-conversion]
    1    drivers/net/ethernet/korina.c:492:27: warning: comparison between =
pointer and integer ('enum chain_status' and 'int (*)(const void *)') [-Wpo=
inter-integer-compare]
    1    drivers/net/ethernet/korina.c:489:24: warning: incompatible pointe=
r to integer conversion assigning to 'enum chain_status' from 'int (const v=
oid *)' [-Wint-conversion]
    1    drivers/net/ethernet/korina.c:462:27: warning: comparison between =
pointer and integer ('enum chain_status' and 'int (*)(const void *)') [-Wpo=
inter-integer-compare]
    1    drivers/net/ethernet/korina.c:1030:22: warning: incompatible point=
er to integer conversion assigning to 'enum chain_status' from 'int (const =
void *)' [-Wint-conversion]
    1    drivers/net/ethernet/korina.c:1002:22: warning: incompatible point=
er to integer conversion assigning to 'enum chain_status' from 'int (const =
void *)' [-Wint-conversion]
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_prefault_relocations()+0xc6: stack state mismatch: cfa1=3D4+8 cfa2=3D-1+=
0
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
eb_copy_relocations()+0x249: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_c=
alc.c:997:6: warning: stack frame size of 1180 bytes in function 'dml1_rq_d=
lg_get_dlg_params' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vb=
a_21.c:3393:6: warning: stack frame size of 1548 bytes in function 'dml21_M=
odeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vb=
a_21.c:1463:13: warning: stack frame size of 1148 bytes in function 'DISPCL=
KDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation=
' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20v2.c:3393:6: warning: stack frame size of 1436 bytes in function 'dml20=
v2_ModeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20v2.c:1145:13: warning: stack frame size of 1196 bytes in function 'dml2=
0v2_DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceC=
alculation' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20.c:3286:6: warning: stack frame size of 1420 bytes in function 'dml20_M=
odeSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vb=
a_20.c:1085:13: warning: stack frame size of 1196 bytes in function 'dml20_=
DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalcu=
lation' [-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:13:=
 warning: stack frame size of 1564 bytes in function 'dcn_bw_calc_rq_dlg_tt=
u' [-Wframe-larger-than=3D]
    1    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame=
 size of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
    1    arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301_g=
piod_table=E2=80=99 defined but not used [-Wunused-variable]
    1    arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98am=
s_delta_camera_power=E2=80=99 defined but not used [-Wunused-function]
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/mod=
ules/5.12.0-rc8-next-20210420/kernel/drivers/clk/keystone/pll.ko: unsupport=
ed GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/mod=
ules/5.12.0-rc8-next-20210420/kernel/drivers/clk/keystone/gate.ko: unsuppor=
ted GNU_PROPERTY_TYPE (5) type: 0xc0000000
    1    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/mod=
ules/5.12.0-rc8-next-20210420/kernel/crypto/cast_common.ko: unsupported GNU=
_PROPERTY_TYPE (5) type: 0xc0000000
    1    6 warnings and 1 error generated.
    1    .config:1202:warning: override: UNWINDER_GUESS changes choice stat=
e
    1    ./usr/include/linux/bcache.h:355:2: warning: field '' with variabl=
e sized type 'union jset::(anonymous at ./usr/include/linux/bcache.h:355:2)=
' not at the end of a struct or class is a GNU extension [-Wgnu-variable-si=
zed-type-not-at-end]
    1    ./usr/include/linux/bcache.h:354:2: warning: field '' with variabl=
e sized type 'union jset::(anonymous at ./usr/include/linux/bcache.h:354:2)=
' not at the end of a struct or class is a GNU extension [-Wgnu-variable-si=
zed-type-not-at-end]

Section mismatches summary:

    1    WARNING: modpost: vmlinux.o(.text+0x9f18): Section mismatch in ref=
erence from the function reserve_exception_space() to the function .meminit=
.text:memblock_reserve()

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-12) =E2=80=94 FAIL, 1 error, 4 warnings, 0 secti=
on mismatches

Errors:
    kernel/gcov/clang.c:296:21: error: implicit declaration of function 'vm=
alloc' [-Werror,-Wimplicit-function-declaration]

Warnings:
    kernel/gcov/clang.c:296:19: warning: incompatible integer to pointer co=
nversion assigning to 'u64 *' (aka 'unsigned long long *') from 'int' [-Win=
t-conversion]
    1 warning and 1 error generated.
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, clang-12) =E2=80=94 FAIL, 1 error, 7 warnings, 0 sect=
ion mismatches

Errors:
    kernel/gcov/clang.c:296:21: error: implicit declaration of function 'vm=
alloc' [-Werror,-Wimplicit-function-declaration]

Warnings:
    ./usr/include/linux/bcache.h:354:2: warning: field '' with variable siz=
ed type 'union jset::(anonymous at ./usr/include/linux/bcache.h:354:2)' not=
 at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-t=
ype-not-at-end]
    ./usr/include/linux/bcache.h:355:2: warning: field '' with variable siz=
ed type 'union jset::(anonymous at ./usr/include/linux/bcache.h:355:2)' not=
 at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-t=
ype-not-at-end]
    2 warnings generated.
    kernel/gcov/clang.c:296:19: warning: incompatible integer to pointer co=
nversion assigning to 'u64 *' (aka 'unsigned long long *') from 'int' [-Win=
t-conversion]
    1 warning and 1 error generated.
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section mis=
matches

Errors:
    ./usr/include/linux/bcache-nvm.h:109:3: error: #error "Non-64bit platfo=
rm is not supported"

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (i386, clang-12) =E2=80=94 FAIL, 1 error, 4 warnings, 0 sectio=
n mismatches

Errors:
    kernel/gcov/clang.c:296:21: error: implicit declaration of function 'vm=
alloc' [-Werror,-Wimplicit-function-declaration]

Warnings:
    kernel/gcov/clang.c:296:19: warning: incompatible integer to pointer co=
nversion assigning to 'u64 *' (aka 'unsigned long long *') from 'int' [-Win=
t-conversion]
    1 warning and 1 error generated.
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 39 warnings, 0 se=
ction mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.
    sound/soc/generic/simple-card.c:609:12: warning: stack frame size of 31=
92 bytes in function 'asoc_simple_probe' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/misc/habanalabs/goya/goya.c:136:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:140:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:139:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:142:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:137:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:138:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:141:15: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    7 warnings generated.
    drivers/misc/habanalabs/gaudi/gaudi.c:126:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:127:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:130:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:131:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:132:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:133:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:134:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:135:13: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:128:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:129:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    10 warnings generated.
    drivers/md/bcache/nvm-pages.c:588:6: warning: variable 'err' is used un=
initialized whenever 'if' condition is true [-Wsometimes-uninitialized]
    drivers/md/bcache/nvm-pages.c:564:12: note: initialize the variable 'er=
r' to silence this warning
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c:301=
5:53: warning: address of 'aconnector->mst_port->mst_mgr' will always evalu=
ate to 'true' [-Wpointer-bool-conversion]
    1 warning generated.
    drivers/platform/surface/surface_aggregator_registry.c:478:25: warning:=
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes val=
ue from 65535 to 255 [-Wconstant-conversion]
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3304 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/net/ethernet/renesas/ravb_main.c:2088:6: warning: variable 'pri=
v' is used uninitialized whenever 'if' condition is true [-Wsometimes-unini=
tialized]
    drivers/net/ethernet/renesas/ravb_main.c:2048:27: note: initialize the =
variable 'priv' to silence this warning
    1 warning generated.
    drivers/memstick/host/r592.c:367:2: warning: ignoring return value of f=
unction declared with 'warn_unused_result' attribute [-Wunused-result]
    1 warning generated.
    drivers/hid/surface-hid/surface_hid.c:233:25: warning: implicit convers=
ion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to =
255 [-Wconstant-conversion]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]
    drivers/spi/spi-stm32-qspi.c:481:21: warning: format =E2=80=98%x=E2=80=
=99 expects argument of type =E2=80=98unsigned int=E2=80=99, but argument 5=
 has type =E2=80=98size_t=E2=80=99 {aka =E2=80=98long unsigned int=E2=80=99=
} [-Wformat=3D]
    ./include/linux/kfifo.h:588:1: warning: ignoring return value of =E2=80=
=98__kfifo_uint_must_check_helper=E2=80=99, declared with attribute warn_un=
used_result [-Wunused-result]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]
    drivers/spi/spi-stm32-qspi.c:481:21: warning: format =E2=80=98%x=E2=80=
=99 expects argument of type =E2=80=98unsigned int=E2=80=99, but argument 5=
 has type =E2=80=98size_t=E2=80=99 {aka =E2=80=98long unsigned int=E2=80=99=
} [-Wformat=3D]
    ./include/linux/kfifo.h:588:1: warning: ignoring return value of =E2=80=
=98__kfifo_uint_must_check_helper=E2=80=99, declared with attribute warn_un=
used_result [-Wunused-result]

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-12) =E2=80=94 FAIL, 1 error, 6 warnings, 0 section=
 mismatches

Errors:
    kernel/gcov/clang.c:296:21: error: implicit declaration of function 'vm=
alloc' [-Werror,-Wimplicit-function-declaration]

Warnings:
    kernel/gcov/clang.c:296:19: warning: incompatible integer to pointer co=
nversion assigning to 'u64 *' (aka 'unsigned long long *') from 'int' [-Win=
t-conversion]
    1 warning and 1 error generated.
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.
    drivers/firmware/tegra/bpmp-debugfs.c:321:16: warning: stack frame size=
 of 1264 bytes in function 'bpmp_debug_store' [-Wframe-larger-than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (i386, clang-10) =E2=80=94 FAIL, 1 error, 56 warnings, 0 secti=
on mismatches

Errors:
    drivers/net/ethernet/korina.c:326:2: error: redefinition of 'desc_empty=
'

Warnings:
    kernel/trace/trace_events_hist.c:4594:13: warning: stack frame size of =
1248 bytes in function 'hist_trigger_print_key' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.
    sound/soc/generic/simple-card.c:609:12: warning: stack frame size of 31=
16 bytes in function 'asoc_simple_probe' [-Wframe-larger-than=3D]
    1 warning generated.
    sound/soc/generic/audio-graph-card.c:548:5: warning: stack frame size o=
f 1572 bytes in function 'audio_graph_parse_of' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/misc/habanalabs/goya/goya.c:136:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:140:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:139:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:142:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:137:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:138:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:141:15: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    7 warnings generated.
    drivers/misc/habanalabs/gaudi/gaudi.c:126:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:127:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:130:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:131:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:132:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:133:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:134:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:135:13: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:128:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:129:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    10 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c:301=
5:53: warning: address of 'aconnector->mst_port->mst_mgr' will always evalu=
ate to 'true' [-Wpointer-bool-conversion]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:13: warn=
ing: stack frame size of 1564 bytes in function 'dcn_bw_calc_rq_dlg_ttu' [-=
Wframe-larger-than=3D]
    1 warning generated.
    drivers/net/ethernet/renesas/ravb_main.c:2088:6: warning: variable 'pri=
v' is used uninitialized whenever 'if' condition is true [-Wsometimes-unini=
tialized]
    drivers/net/ethernet/renesas/ravb_main.c:2048:27: note: initialize the =
variable 'priv' to silence this warning
    drivers/platform/surface/surface_aggregator_registry.c:478:25: warning:=
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes val=
ue from 65535 to 255 [-Wconstant-conversion]
    1 warning generated.
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dml1_display_rq_dlg_calc.c=
:997:6: warning: stack frame size of 1180 bytes in function 'dml1_rq_dlg_ge=
t_dlg_params' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.=
c:1463:13: warning: stack frame size of 1148 bytes in function 'DISPCLKDPPC=
LKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation' [-W=
frame-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.=
c:1085:13: warning: stack frame size of 1196 bytes in function 'dml20_DISPC=
LKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculatio=
n' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.=
c:3393:6: warning: stack frame size of 1548 bytes in function 'dml21_ModeSu=
pportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20.=
c:3286:6: warning: stack frame size of 1420 bytes in function 'dml20_ModeSu=
pportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v=
2.c:1145:13: warning: stack frame size of 1196 bytes in function 'dml20v2_D=
ISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalcul=
ation' [-Wframe-larger-than=3D]
    2 warnings generated.
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/display_mode_vba_20v=
2.c:3393:6: warning: stack frame size of 1436 bytes in function 'dml20v2_Mo=
deSupportAndSystemConfigurationFull' [-Wframe-larger-than=3D]
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 1828 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.
    2 warnings generated.
    drivers/net/ethernet/korina.c:462:27: warning: comparison between point=
er and integer ('enum chain_status' and 'int (*)(const void *)') [-Wpointer=
-integer-compare]
    drivers/net/ethernet/korina.c:489:24: warning: incompatible pointer to =
integer conversion assigning to 'enum chain_status' from 'int (const void *=
)' [-Wint-conversion]
    drivers/net/ethernet/korina.c:492:27: warning: comparison between point=
er and integer ('enum chain_status' and 'int (*)(const void *)') [-Wpointer=
-integer-compare]
    drivers/net/ethernet/korina.c:871:24: warning: incompatible pointer to =
integer conversion assigning to 'enum chain_status' from 'int (const void *=
)' [-Wint-conversion]
    drivers/net/ethernet/korina.c:1002:22: warning: incompatible pointer to=
 integer conversion assigning to 'enum chain_status' from 'int (const void =
*)' [-Wint-conversion]
    drivers/net/ethernet/korina.c:1030:22: warning: incompatible pointer to=
 integer conversion assigning to 'enum chain_status' from 'int (const void =
*)' [-Wint-conversion]
    6 warnings and 1 error generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 46 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.
    sound/soc/generic/simple-card.c:609:12: warning: stack frame size of 32=
16 bytes in function 'asoc_simple_probe' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/misc/habanalabs/goya/goya.c:136:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:140:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:139:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:142:14: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:137:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:138:13: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/goya/goya.c:141:15: warning: implicit conversio=
n from enumeration type 'enum goya_pll_index' to different enumeration type=
 'enum pll_index' [-Wenum-conversion]
    7 warnings generated.
    drivers/misc/habanalabs/gaudi/gaudi.c:126:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:127:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:130:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:131:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:132:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:133:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:134:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:135:13: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:128:15: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    drivers/misc/habanalabs/gaudi/gaudi.c:129:14: warning: implicit convers=
ion from enumeration type 'enum gaudi_pll_index' to different enumeration t=
ype 'enum pll_index' [-Wenum-conversion]
    10 warnings generated.
    drivers/md/bcache/nvm-pages.c:588:6: warning: variable 'err' is used un=
initialized whenever 'if' condition is true [-Wsometimes-uninitialized]
    drivers/md/bcache/nvm-pages.c:564:12: note: initialize the variable 'er=
r' to silence this warning
    1 warning generated.
    drivers/platform/surface/surface_aggregator_registry.c:478:25: warning:=
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes val=
ue from 65535 to 255 [-Wconstant-conversion]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c:301=
5:53: warning: address of 'aconnector->mst_port->mst_mgr' will always evalu=
ate to 'true' [-Wpointer-bool-conversion]
    1 warning generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:425:11: warning: variab=
le 'parent_name' is uninitialized when used here [-Wuninitialized]
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:385:30: note: initializ=
e the variable 'parent_name' to silence this warning
    1 warning generated.
    drivers/staging/greybus/audio_topology.c:977:12: warning: stack frame s=
ize of 3328 bytes in function 'gbaudio_tplg_create_widget' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/net/ethernet/renesas/ravb_main.c:2088:6: warning: variable 'pri=
v' is used uninitialized whenever 'if' condition is true [-Wsometimes-unini=
tialized]
    drivers/net/ethernet/renesas/ravb_main.c:2048:27: note: initialize the =
variable 'priv' to silence this warning
    1 warning generated.
    drivers/memstick/host/r592.c:367:2: warning: ignoring return value of f=
unction declared with 'warn_unused_result' attribute [-Wunused-result]
    1 warning generated.
    drivers/hid/surface-hid/surface_hid.c:233:25: warning: implicit convers=
ion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to =
255 [-Wconstant-conversion]
    1 warning generated.
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/modules/=
5.12.0-rc8-next-20210420/kernel/crypto/cast_common.ko: unsupported GNU_PROP=
ERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/modules/=
5.12.0-rc8-next-20210420/kernel/drivers/clk/keystone/gate.ko: unsupported G=
NU_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/modules/=
5.12.0-rc8-next-20210420/kernel/drivers/clk/keystone/pll.ko: unsupported GN=
U_PROPERTY_TYPE (5) type: 0xc0000000
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/modules/=
5.12.0-rc8-next-20210420/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
allnoconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: unused function 'update_nohz_stat=
s' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section mi=
smatches

Errors:
    ERROR: modpost: Section mismatches detected.

Section mismatches:
    WARNING: modpost: vmlinux.o(.text+0x9f18): Section mismatch in referenc=
e from the function reserve_exception_space() to the function .meminit.text=
:memblock_reserve()

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: unused function 'update_nohz_stat=
s' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, clang-10) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, clang-10) =E2=80=94 FAIL, 11 errors, 0 warnings, =
0 section mismatches

Errors:
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x35520): relocation =
R_ARM_PREL31 out of range: 2135516184 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37B54): relocation =
R_ARM_PREL31 out of range: 2135571940 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37B9C): relocation =
R_ARM_PREL31 out of range: 2135571868 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37BCC): relocation =
R_ARM_PREL31 out of range: 2135571820 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37BFC): relocation =
R_ARM_PREL31 out of range: 2135571772 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C14): relocation =
R_ARM_PREL31 out of range: 2135571748 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C2C): relocation =
R_ARM_PREL31 out of range: 2135571724 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C3C): relocation =
R_ARM_PREL31 out of range: 2135571708 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C8C): relocation =
R_ARM_PREL31 out of range: 2135571628 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37C9C): relocation =
R_ARM_PREL31 out of range: 2135571612 is not in [-1073741824, 1073741823]
    ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x37D44): relocation =
R_ARM_PREL31 out of range: 2135571444 is not in [-1073741824, 1073741823]

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

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
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

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
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

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
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

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
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
cu1830-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    sound/soc/generic/simple-card.c:478:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/simple-card.c:706:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 FAIL, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section mi=
smatches

Warnings:
    arch/arm64/configs/defconfig:1018:warning: override: reassigning to sym=
bol MTK_PMIC_WRAP
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-10) =E2=80=94 PASS, 0 errors, 12 warnings, 0 sectio=
n mismatches

Warnings:
    arch/arm64/configs/defconfig:1018:warning: override: reassigning to sym=
bol MTK_PMIC_WRAP
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.
    drivers/net/ethernet/renesas/ravb_main.c:2088:6: warning: variable 'pri=
v' is used uninitialized whenever 'if' condition is true [-Wsometimes-unini=
tialized]
    drivers/net/ethernet/renesas/ravb_main.c:2048:27: note: initialize the =
variable 'priv' to silence this warning
    1 warning generated.
    sound/soc/generic/simple-card.c:609:12: warning: stack frame size of 31=
68 bytes in function 'asoc_simple_probe' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:425:11: warning: variab=
le 'parent_name' is uninitialized when used here [-Wuninitialized]
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:385:30: note: initializ=
e the variable 'parent_name' to silence this warning
    1 warning generated.
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/modules/=
5.12.0-rc8-next-20210420/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-12) =E2=80=94 PASS, 0 errors, 11 warnings, 0 sectio=
n mismatches

Warnings:
    arch/arm64/configs/defconfig:1018:warning: override: reassigning to sym=
bol MTK_PMIC_WRAP
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.
    drivers/net/ethernet/renesas/ravb_main.c:2088:6: warning: variable 'pri=
v' is used uninitialized whenever 'if' condition is true [-Wsometimes-unini=
tialized]
    drivers/net/ethernet/renesas/ravb_main.c:2048:27: note: initialize the =
variable 'priv' to silence this warning
    1 warning generated.
    sound/soc/generic/simple-card.c:609:12: warning: stack frame size of 31=
68 bytes in function 'asoc_simple_probe' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:425:11: warning: variab=
le 'parent_name' is uninitialized when used here [-Wuninitialized]
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:385:30: note: initializ=
e the variable 'parent_name' to silence this warning
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-12) =E2=80=94 PASS, 0 er=
rors, 11 warnings, 0 section mismatches

Warnings:
    arch/arm64/configs/defconfig:1018:warning: override: reassigning to sym=
bol MTK_PMIC_WRAP
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.
    drivers/net/ethernet/renesas/ravb_main.c:2088:6: warning: variable 'pri=
v' is used uninitialized whenever 'if' condition is true [-Wsometimes-unini=
tialized]
    drivers/net/ethernet/renesas/ravb_main.c:2048:27: note: initialize the =
variable 'priv' to silence this warning
    1 warning generated.
    sound/soc/generic/simple-card.c:609:12: warning: stack frame size of 31=
68 bytes in function 'asoc_simple_probe' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:425:11: warning: variab=
le 'parent_name' is uninitialized when used here [-Wuninitialized]
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:385:30: note: initializ=
e the variable 'parent_name' to silence this warning
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 error=
s, 2 warnings, 0 section mismatches

Warnings:
    arch/arm64/configs/defconfig:1018:warning: override: reassigning to sym=
bol MTK_PMIC_WRAP
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_ARM64_64K_PAGES=3Dy (arm64, clang-10) =E2=80=94 PASS, 0 er=
rors, 12 warnings, 0 section mismatches

Warnings:
    arch/arm64/configs/defconfig:1018:warning: override: reassigning to sym=
bol MTK_PMIC_WRAP
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.
    drivers/net/ethernet/renesas/ravb_main.c:2088:6: warning: variable 'pri=
v' is used uninitialized whenever 'if' condition is true [-Wsometimes-unini=
tialized]
    drivers/net/ethernet/renesas/ravb_main.c:2048:27: note: initialize the =
variable 'priv' to silence this warning
    1 warning generated.
    sound/soc/generic/simple-card.c:609:12: warning: stack frame size of 31=
68 bytes in function 'asoc_simple_probe' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:425:11: warning: variab=
le 'parent_name' is uninitialized when used here [-Wuninitialized]
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:385:30: note: initializ=
e the variable 'parent_name' to silence this warning
    1 warning generated.
    aarch64-linux-gnu-strip: warning: /tmp/kci/linux/_modules_/lib/modules/=
5.12.0-rc8-next-20210420/kernel/drivers/media/tuners/tuner-types.ko: unsupp=
orted GNU_PROPERTY_TYPE (5) type: 0xc0000000

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 2 warnings, 0 section mismatches

Warnings:
    arch/arm64/configs/defconfig:1018:warning: override: reassigning to sym=
bol MTK_PMIC_WRAP
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 2 warnings, 0 section mismatches

Warnings:
    arch/arm64/configs/defconfig:1018:warning: override: reassigning to sym=
bol MTK_PMIC_WRAP
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    sound/soc/generic/simple-card.c:478:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/simple-card.c:706:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    sound/soc/generic/simple-card.c:478:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/simple-card.c:706:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

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
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, clang-10) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.

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
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    sound/soc/generic/simple-card.c:478:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/simple-card.c:706:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 FAIL, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

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
loongson2k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

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
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warning=
s, 0 section mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]
    {standard input}:39: Warning: macro instruction expanded into multiple =
instructions

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

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
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    sound/soc/generic/simple-card.c:478:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/simple-card.c:706:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    sound/soc/generic/simple-card.c:609:12: warning: stack frame size of 31=
28 bytes in function 'asoc_simple_probe' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    sound/soc/generic/simple-card.c:609:12: warning: stack frame size of 31=
28 bytes in function 'asoc_simple_probe' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]
    sound/soc/generic/simple-card.c:478:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/simple-card.c:706:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/audio-graph-card.c:612:1: warning: the frame size of =
1552 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-12) =E2=80=94 PASS, 0 errors, 11 warnings, 0=
 section mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.
    sound/soc/generic/simple-card.c:609:12: warning: stack frame size of 31=
28 bytes in function 'asoc_simple_probe' [-Wframe-larger-than=3D]
    1 warning generated.
    sound/soc/generic/audio-graph-card.c:548:5: warning: stack frame size o=
f 1584 bytes in function 'audio_graph_parse_of' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:425:11: warning: variab=
le 'parent_name' is uninitialized when used here [-Wuninitialized]
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:385:30: note: initializ=
e the variable 'parent_name' to silence this warning
    1 warning generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implicit con=
version from 'unsigned long long' to 'unsigned long' changes value from 500=
0000000 to 705032704 [-Wconstant-conversion]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, clang-10) =E2=80=94 PASS, 0 errors, 11 warnings, 0=
 section mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.
    sound/soc/generic/simple-card.c:609:12: warning: stack frame size of 31=
28 bytes in function 'asoc_simple_probe' [-Wframe-larger-than=3D]
    1 warning generated.
    sound/soc/generic/audio-graph-card.c:548:5: warning: stack frame size o=
f 1584 bytes in function 'audio_graph_parse_of' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:425:11: warning: variab=
le 'parent_name' is uninitialized when used here [-Wuninitialized]
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:385:30: note: initializ=
e the variable 'parent_name' to silence this warning
    1 warning generated.
    drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implicit con=
version from 'unsigned long long' to 'unsigned long' changes value from 500=
0000000 to 705032704 [-Wconstant-conversion]
    1 warning generated.

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 4 warnings, 0 section mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]
    sound/soc/generic/simple-card.c:478:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/simple-card.c:706:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/audio-graph-card.c:612:1: warning: the frame size of =
1552 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 4 warnings, 0 section mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]
    sound/soc/generic/simple-card.c:478:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/simple-card.c:706:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/audio-graph-card.c:612:1: warning: the frame size of =
1552 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 =
warnings, 0 section mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]
    sound/soc/generic/simple-card.c:478:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/simple-card.c:706:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/audio-graph-card.c:612:1: warning: the frame size of =
1552 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]
    sound/soc/generic/simple-card.c:478:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/simple-card.c:706:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]
    sound/soc/generic/simple-card.c:478:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/simple-card.c:706:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]

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
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
nommu_k210_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
nommu_k210_sdcard_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

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
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    arch/arm/mach-omap1/board-h2.c:347:34: warning: =E2=80=98isp1301_gpiod_=
table=E2=80=99 defined but not used [-Wunused-variable]
    arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: =E2=80=98ams_del=
ta_camera_power=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 se=
ction mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]
    sound/soc/generic/simple-card.c:478:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/simple-card.c:706:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/audio-graph-card.c:612:1: warning: the frame size of =
1552 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    sound/soc/generic/simple-card.c:478:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/simple-card.c:706:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/pci/vpd.c:289:13: warning: =E2=80=98pci_vpd_set_size=E2=80=99 d=
efined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]
    drivers/block/paride/bpck.c:32: warning: "PC" redefined

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
rs90_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    sound/soc/generic/simple-card.c:478:1: warning: the frame size of 1544 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/simple-card.c:706:1: warning: the frame size of 1544 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]
    <stdin>:834:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1131:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1515:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    sound/soc/generic/simple-card.c:478:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    sound/soc/generic/simple-card.c:706:1: warning: the frame size of 1552 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

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
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1202:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

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
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-10) =E2=80=94 PASS, 0 errors, 4 warnings, 0=
 section mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_pr=
efault_relocations()+0xc6: stack state mismatch: cfa1=3D4+8 cfa2=3D-1+0
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: eb_co=
py_relocations()+0x249: stack state mismatch: cfa1=3D4+104 cfa2=3D-1+0

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, clang-12) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable 'rdev' [-Wunused-=
variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
x86_64_defconfig+x86-chromebook (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1=
 warning, 0 section mismatches

Warnings:
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    kernel/sched/fair.c:8433:13: warning: =E2=80=98update_nohz_stats=E2=80=
=99 defined but not used [-Wunused-function]
    drivers/pci/quirks.c:312:18: warning: unused variable =E2=80=98rdev=E2=
=80=99 [-Wunused-variable]
    drivers/net/ethernet/lantiq_etop.c:273:4: warning: ignoring return valu=
e of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unused_res=
ult [-Wunused-result]
    drivers/net/ethernet/lantiq_etop.c:281:4: warning: ignoring return valu=
e of =E2=80=98request_irq=E2=80=99, declared with attribute warn_unused_res=
ult [-Wunused-result]

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/607ef580.1c69fb81.5d7a1.94c4%40mx.google.com.
