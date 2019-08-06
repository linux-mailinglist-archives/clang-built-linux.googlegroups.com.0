Return-Path: <clang-built-linux+bncBDT6TV45WMPRBD4HUXVAKGQEYQZG4HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F1282E66
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 11:08:32 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id g2sf42117896wrq.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 02:08:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565082512; cv=pass;
        d=google.com; s=arc-20160816;
        b=KdyWYd3Fx1IpsNtK1VovX/Y30ptOMxh9VW7BH9a3xeXVVS6s2n8xXZQzuJVY8n3Te+
         XUWjI4Kd0fn+dzOr0V/Wa0PYxI3gqDRwOVr8UbEyIvpz6cv4fSsPwRzdph3szqSYIX9k
         weqQGHIlFHTj+Rz/OUO1Dd+YZ9ZKxya7Audas8VWedMYBLUqdastYTmnuWUC/YamjFYq
         +ySlsZbnvB2ujODIV4qOAD6mQCgvL5dj2S508xeznNFqsPoWNny1QGm/jOzAKieOCa78
         Ikp8dw/3W/0BVSraCMi+kFhaShTfWXsWPKNgJj2Tg/PEwk8k9iSOOY1nJZR3622xIMxN
         vPVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=D4VM+yZtkkbRQtVS8VroJ01KLa+mQ98vqPI/BWeWEuQ=;
        b=SmOLmPHUGRBbYUf71yGMkehBQIHqj/sO8CFqhd3yq7Igo2cToV/w7o7o/gy9NDmiMH
         E6Q+hDelaswxoE1rfgP0CyQgDKEO3nXE66TzHn+uX+Y1Zhz07F/WmKLQPvnloW3U8vxY
         EU/D1QgItCX3KAphnmfpthSTGp3PiOY0tsEik1noSXWqU8fh+La9y8hlHdZ7f0qKpZb2
         VBka6HUn2Y7Xv9HfiI+ud+77hOLrkyOv1L7HTQu0MLQ43bNGNq4mnMihB8hnwCPR4aJJ
         xUNpfj2YY5eyMpb+Nf/ENWyifqx4uO9Rc2qlowgk32HQ9GjZFgWxjtVoJkiApAhgz62d
         tgng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=OJzVZuro;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D4VM+yZtkkbRQtVS8VroJ01KLa+mQ98vqPI/BWeWEuQ=;
        b=YZ5O2WysHAksmfNSNH4AyGoqEPPm5Id/sIbDBG4qArQNRzjEYWpyPuMmrlSg/hojYJ
         XtShR8hKDon4Z3m+fK2BcI4lHOcl2u1gBxICiU9UDw5WXW5/LBB3Gtuh/f/RrShoNlFe
         f1XZpjZ9ekfWrUxW4Lz9NNOq5cDIAvcGfZbZkKgEu0xM9owSNjQ5pPDhzW8v1NHHDFRA
         Ude+XYgMNmhTjWo9QFsDRJTVeUTc75AYsYb6x9fvZMNBsM2HBtDZ9Xc2RDprL1XC16+T
         hAob1HjiLDQPFK3TQV+J5Igt/ElGr15xmqIZBAJAUBv/FP1qamPUEE6CSqmKpoJcLxt6
         WJmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D4VM+yZtkkbRQtVS8VroJ01KLa+mQ98vqPI/BWeWEuQ=;
        b=Qzajb7M93gMf+zE4qHo0fTECWaVHOe9Bw9K0750bUd5ydXq+smmLbUOnWBK91jXrIH
         OtEcNk4vlbdBffxUsxD5gw6DwAnUpwLp1JK/HDLYZWiDcI5/tSB63RKQoZ1uQtc4G9fO
         4fGBTQstE9s6jiQtXLPW8EVm/Zy+frL7TxR9UtXu8pqSUEPV4AouNv4GI1n57PgyTpg2
         JJz0yjDiidNlMy1LOJcAJR3GSMFHKj3V9gTlc7nMkaL+OvT+M0Kug6fWIx1QNiYxkzTb
         WJbY8xeD+jW4Nedp7KCIMEzlo0Iq8oN4cDIHuFqLfiZrw6dbyoAtGhR10HNEEokt2DXD
         2utw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUWES4W7iL/EbLh0tXN484+lvLf3XvmdvncZmE6HkrWXcDQ984i
	257mlAFhRL6SzJRhYxnqVug=
X-Google-Smtp-Source: APXvYqwC9bkzQ+MEFTaca7lAeM9YR6IS7Ga2Sv7qM0kM7IbALpm7JNEyWOiRhEIe2ZROl9DlqqeKug==
X-Received: by 2002:a05:600c:23cd:: with SMTP id p13mr3265790wmb.86.1565082511786;
        Tue, 06 Aug 2019 02:08:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f78b:: with SMTP id q11ls16219156wrp.10.gmail; Tue, 06
 Aug 2019 02:08:31 -0700 (PDT)
X-Received: by 2002:a5d:630c:: with SMTP id i12mr3517918wru.312.1565082511136;
        Tue, 06 Aug 2019 02:08:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565082511; cv=none;
        d=google.com; s=arc-20160816;
        b=RcRG1JuZcHgWBs+l2XpgsL0NM247agUXS3es9M7i+mXHUdShK+8aJOC1vT4jueF7Hb
         pBJTCOT8bKULf0bnAIWtdXgK3ZR6THkZsq7zSCOw6pY8zwZg+jKuQNVr4ZL8DPlFPrMW
         CuLNEMCdTZSHTXAhOBYi9c46FdYYDda4kdKQmpkbatci5URg0i/Uod4VVVHHX0oShWyN
         YSq6iVtAQ+0aHOJtL5x272ZERUS5zWEjBxvVUjRlcnlKAT8NO5Vaxt2LphZvpsP30rzh
         ibTjFM8hsh5fiJpvjHgQxU06E2NGwjfUXsTrnF/o0QySx9uKJBZesF39HhsnItv76lbD
         8PLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=A5BV0VvApMquP5f9QXEvUaPqCZ88uO2wrM8hDIoIHiw=;
        b=IXtBhVBjsLZXjiddOt1qmX5Vfza2Sab7sZmkhAk2Hx6leozMXcR6Kvdx6CHlOmMIb5
         xTKPfrLAXBwvfNFSrecv4qJ4b835t6jQ9KDbnuWgcES2Yo3OFnAhRYUv3g8QHmzJdNUO
         ieFUBcjRGe8oyW2H3A11WdB/nvTTYrdyPmkjkFozBDIrw4i53uNIJ1thg8jRahfVSO5l
         xo/9X2hj2g3j4tT4gxId6YZ3TEbK0qHbI21B5hOoF4MarpKA20VN7IYXOWprM/09Mg1f
         mmcqR7Yg0rBEe43KiR8gOjSLxbIVh+6IY73p9EUfMMU2DyVEJC/2bValKTK7uXhNm1Ub
         KeWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=OJzVZuro;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=bot@kernelci.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id z24si483564wml.0.2019.08.06.02.08.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 02:08:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id r1so87057943wrl.7
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 02:08:30 -0700 (PDT)
X-Received: by 2002:adf:f386:: with SMTP id m6mr484712wro.313.1565082508566;
        Tue, 06 Aug 2019 02:08:28 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id w23sm94731896wmi.45.2019.08.06.02.08.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 02:08:27 -0700 (PDT)
Message-ID: <5d49438b.1c69fb81.872bd.e4a0@mx.google.com>
Date: Tue, 06 Aug 2019 02:08:27 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Tree: next
X-Kernelci-Kernel: next-20190806
X-Kernelci-Branch: master
X-Kernelci-Report-Type: build
Subject: next/master build: 230 builds: 5 failed, 225 passed, 5 errors,
 1230 warnings (next-20190806)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=OJzVZuro;       spf=pass (google.com: domain of bot@kernelci.org
 designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=bot@kernelci.org
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

next/master build: 230 builds: 5 failed, 225 passed, 5 errors, 1230 warning=
s (next-20190806)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20190806/

Tree: next
Branch: master
Git Describe: next-20190806
Git Commit: 958eb4327c1761c609bde8e9f7c04e9d1c6fbb96
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Build Failures Detected:

arm:
    allmodconfig: (gcc-8) FAIL

mips:
    cavium_octeon_defconfig: (gcc-8) FAIL
    fuloong2e_defconfig: (gcc-8) FAIL
    lemote2f_defconfig: (gcc-8) FAIL
    loongson3_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 2 warnings
    axs103_defconfig (gcc-8): 5 warnings
    axs103_smp_defconfig (gcc-8): 5 warnings
    haps_hs_defconfig (gcc-8): 4 warnings
    haps_hs_smp_defconfig (gcc-8): 4 warnings
    hsdk_defconfig (gcc-8): 4 warnings
    nsim_hs_defconfig (gcc-8): 4 warnings
    nsim_hs_defconfig (gcc-8): 12 warnings
    nsim_hs_smp_defconfig (gcc-8): 4 warnings
    nsimosci_hs_defconfig (gcc-8): 4 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 4 warnings
    tinyconfig (gcc-8): 2 warnings
    vdk_hs38_defconfig (gcc-8): 3 warnings
    vdk_hs38_smp_defconfig (gcc-8): 3 warnings

arm64:
    allmodconfig (gcc-8): 140 warnings
    allmodconfig (clang-8): 49 warnings
    allnoconfig (gcc-8): 1 warning
    defconfig (clang-8): 5 warnings
    defconfig (gcc-8): 137 warnings
    defconfig (gcc-8): 137 warnings
    defconfig (clang-8): 5 warnings
    defconfig (gcc-8): 137 warnings
    defconfig (clang-8): 5 warnings
    defconfig (clang-8): 5 warnings
    defconfig (gcc-8): 137 warnings
    tinyconfig (gcc-8): 1 warning

arm:
    allmodconfig (gcc-8): 1 error, 4 warnings
    allnoconfig (gcc-8): 1 warning
    aspeed_g4_defconfig (gcc-8): 1 warning
    aspeed_g5_defconfig (gcc-8): 1 warning
    assabet_defconfig (gcc-8): 2 warnings
    at91_dt_defconfig (gcc-8): 2 warnings
    axm55xx_defconfig (gcc-8): 9 warnings
    badge4_defconfig (gcc-8): 2 warnings
    bcm2835_defconfig (gcc-8): 1 warning
    cerfcube_defconfig (gcc-8): 2 warnings
    clps711x_defconfig (gcc-8): 1 warning
    cns3420vb_defconfig (gcc-8): 1 warning
    collie_defconfig (gcc-8): 2 warnings
    davinci_all_defconfig (gcc-8): 1 warning
    efm32_defconfig (gcc-8): 1 warning
    ep93xx_defconfig (gcc-8): 1 warning
    exynos_defconfig (gcc-8): 1 warning
    footbridge_defconfig (gcc-8): 1 warning
    gemini_defconfig (gcc-8): 1 warning
    h3600_defconfig (gcc-8): 2 warnings
    hisi_defconfig (gcc-8): 2 warnings
    imx_v4_v5_defconfig (gcc-8): 1 warning
    imx_v6_v7_defconfig (gcc-8): 1 warning
    integrator_defconfig (gcc-8): 1 warning
    ixp4xx_defconfig (gcc-8): 1 warning
    keystone_defconfig (gcc-8): 1 warning
    lpc18xx_defconfig (gcc-8): 1 warning
    lpc32xx_defconfig (gcc-8): 2 warnings
    milbeaut_m10v_defconfig (gcc-8): 1 warning
    mini2440_defconfig (gcc-8): 3 warnings
    mmp2_defconfig (gcc-8): 1 warning
    moxart_defconfig (gcc-8): 1 warning
    mps2_defconfig (gcc-8): 1 warning
    multi_v4t_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (gcc-8): 2 warnings
    multi_v7_defconfig (gcc-8): 6 warnings
    multi_v7_defconfig (gcc-8): 6 warnings
    multi_v7_defconfig (gcc-8): 6 warnings
    multi_v7_defconfig (gcc-8): 6 warnings
    multi_v7_defconfig (gcc-8): 14 warnings
    mv78xx0_defconfig (gcc-8): 1 warning
    mvebu_v5_defconfig (gcc-8): 1 warning
    mvebu_v7_defconfig (gcc-8): 1 warning
    mxs_defconfig (gcc-8): 1 warning
    neponset_defconfig (gcc-8): 2 warnings
    nhk8815_defconfig (gcc-8): 1 warning
    omap2plus_defconfig (gcc-8): 2 warnings
    orion5x_defconfig (gcc-8): 1 warning
    oxnas_v6_defconfig (gcc-8): 1 warning
    pleb_defconfig (gcc-8): 2 warnings
    prima2_defconfig (gcc-8): 1 warning
    pxa168_defconfig (gcc-8): 1 warning
    pxa910_defconfig (gcc-8): 1 warning
    pxa_defconfig (gcc-8): 1 warning
    qcom_defconfig (gcc-8): 1 warning
    realview_defconfig (gcc-8): 1 warning
    rpc_defconfig (gcc-8): 8 warnings
    s3c2410_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (gcc-8): 1 warning
    s5pv210_defconfig (gcc-8): 1 warning
    sama5_defconfig (gcc-8): 2 warnings
    shannon_defconfig (gcc-8): 2 warnings
    shmobile_defconfig (gcc-8): 3 warnings
    simpad_defconfig (gcc-8): 2 warnings
    socfpga_defconfig (gcc-8): 2 warnings
    spear13xx_defconfig (gcc-8): 2 warnings
    spear3xx_defconfig (gcc-8): 2 warnings
    spear6xx_defconfig (gcc-8): 2 warnings
    stm32_defconfig (gcc-8): 1 warning
    sunxi_defconfig (gcc-8): 3 warnings
    tango4_defconfig (gcc-8): 1 warning
    tct_hammer_defconfig (gcc-8): 3 warnings
    tegra_defconfig (gcc-8): 1 warning
    tinyconfig (gcc-8): 1 warning
    u300_defconfig (gcc-8): 1 warning
    u8500_defconfig (gcc-8): 1 warning
    versatile_defconfig (gcc-8): 1 warning
    vexpress_defconfig (gcc-8): 1 warning
    vf610m4_defconfig (gcc-8): 1 warning
    vt8500_v6_v7_defconfig (gcc-8): 1 warning
    zx_defconfig (gcc-8): 1 warning

i386:
    i386_defconfig (gcc-8): 1 warning
    i386_defconfig (gcc-8): 9 warnings

mips:
    32r2el_defconfig (gcc-8): 6 warnings
    32r2el_defconfig (gcc-8): 14 warnings
    allnoconfig (gcc-8): 2 warnings
    ar7_defconfig (gcc-8): 2 warnings
    ath25_defconfig (gcc-8): 2 warnings
    ath79_defconfig (gcc-8): 3 warnings
    bcm47xx_defconfig (gcc-8): 2 warnings
    bcm63xx_defconfig (gcc-8): 2 warnings
    bigsur_defconfig (gcc-8): 6 warnings
    bmips_be_defconfig (gcc-8): 2 warnings
    bmips_stb_defconfig (gcc-8): 2 warnings
    capcella_defconfig (gcc-8): 2 warnings
    cavium_octeon_defconfig (gcc-8): 1 error, 3 warnings
    ci20_defconfig (gcc-8): 4 warnings
    cobalt_defconfig (gcc-8): 2 warnings
    db1xxx_defconfig (gcc-8): 3 warnings
    decstation_64_defconfig (gcc-8): 6 warnings
    decstation_defconfig (gcc-8): 2 warnings
    decstation_r4k_defconfig (gcc-8): 2 warnings
    e55_defconfig (gcc-8): 2 warnings
    fuloong2e_defconfig (gcc-8): 1 error, 3 warnings
    gcw0_defconfig (gcc-8): 2 warnings
    gpr_defconfig (gcc-8): 3 warnings
    ip22_defconfig (gcc-8): 2 warnings
    ip27_defconfig (gcc-8): 7 warnings
    ip28_defconfig (gcc-8): 6 warnings
    ip32_defconfig (gcc-8): 7 warnings
    jazz_defconfig (gcc-8): 2 warnings
    jmr3927_defconfig (gcc-8): 1 warning
    lasat_defconfig (gcc-8): 1 warning
    lemote2f_defconfig (gcc-8): 1 error, 3 warnings
    loongson1b_defconfig (gcc-8): 2 warnings
    loongson1c_defconfig (gcc-8): 2 warnings
    loongson3_defconfig (gcc-8): 1 error, 4 warnings
    malta_defconfig (gcc-8): 3 warnings
    malta_kvm_defconfig (gcc-8): 3 warnings
    malta_kvm_guest_defconfig (gcc-8): 3 warnings
    malta_qemu_32r6_defconfig (gcc-8): 4 warnings
    maltaaprp_defconfig (gcc-8): 3 warnings
    maltasmvp_defconfig (gcc-8): 3 warnings
    maltasmvp_eva_defconfig (gcc-8): 3 warnings
    maltaup_defconfig (gcc-8): 3 warnings
    maltaup_xpa_defconfig (gcc-8): 3 warnings
    markeins_defconfig (gcc-8): 3 warnings
    mips_paravirt_defconfig (gcc-8): 6 warnings
    mpc30x_defconfig (gcc-8): 2 warnings
    msp71xx_defconfig (gcc-8): 2 warnings
    mtx1_defconfig (gcc-8): 3 warnings
    nlm_xlp_defconfig (gcc-8): 8 warnings
    nlm_xlr_defconfig (gcc-8): 11 warnings
    omega2p_defconfig (gcc-8): 3 warnings
    pic32mzda_defconfig (gcc-8): 3 warnings
    pistachio_defconfig (gcc-8): 3 warnings
    pnx8335_stb225_defconfig (gcc-8): 2 warnings
    qi_lb60_defconfig (gcc-8): 4 warnings
    rb532_defconfig (gcc-8): 3 warnings
    rbtx49xx_defconfig (gcc-8): 2 warnings
    rm200_defconfig (gcc-8): 3 warnings
    rt305x_defconfig (gcc-8): 3 warnings
    sb1250_swarm_defconfig (gcc-8): 4 warnings
    tb0219_defconfig (gcc-8): 2 warnings
    tb0226_defconfig (gcc-8): 3 warnings
    tb0287_defconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 2 warnings
    vocore2_defconfig (gcc-8): 3 warnings
    workpad_defconfig (gcc-8): 2 warnings
    xway_defconfig (gcc-8): 3 warnings

riscv:
    allnoconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    rv32_defconfig (gcc-8): 7 warnings
    tinyconfig (gcc-8): 1 warning

x86_64:
    allmodconfig (gcc-8): 4 warnings
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 1 warning

Errors summary:

    4    include/linux/page-flags-layout.h:95:2: error: #error "Not enough =
bits in page flags"
    1    drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c:2325:9: error: initiali=
zation of 'int (*)(struct aspeed_pinmux_data *, const struct aspeed_sig_exp=
r *, _Bool)' from incompatible pointer type 'int (*)(const struct aspeed_pi=
nmux_data *, const struct aspeed_sig_expr *, _Bool)' [-Werror=3Dincompatibl=
e-pointer-types]

Warnings summary:

    315  arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    184  <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    121  drivers/of/platform.c:650:18: warning: ?: using integer constants =
in boolean context [-Wint-in-bool-context]
    26   drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused =
variable 'r' [-Wunused-variable]
    25   1 warning generated.
    20   arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    20   arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    15   mm/memcontrol.c:1160:11: warning: suggest parentheses around assig=
nment used as truth value [-Wparentheses]
    12   include/linux/compiler.h:328:5: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    11   drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    9    printk(KERN_WARNING "SA1100 flash: unknown base address "
    9    include/linux/printk.h:309:2: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    9    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    7    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this stat=
ement may fall through [-Wimplicit-fallthrough=3D]
    7    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this stat=
ement may fall through [-Wimplicit-fallthrough=3D]
    7    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statem=
ent may fall through [-Wimplicit-fallthrough=3D]
    5    mm/memcontrol.c:1160:17: warning: using the result of an assignmen=
t as a condition without parentheses [-Wparentheses]
    5    mm/memcontrol.c:1160:17: note: place parentheses around the assign=
ment to silence this warning
    5    include/linux/kern_levels.h:5:18: warning: format '%lu' expects ar=
gument of type 'long unsigned int', but argument 8 has type 'unsigned int' =
[-Wformat=3D]
    5    fs/btrfs/tree-checker.c:1216:10: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    5    fs/btrfs/tree-checker.c:1200:50: warning: format '%lu' expects arg=
ument of type 'long unsigned int', but argument 5 has type 'unsigned int' [=
-Wformat=3D]
    5    fs/btrfs/tree-checker.c:1083:10: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    5    fs/btrfs/tree-checker.c:1065:9: warning: cast from pointer to inte=
ger of different size [-Wpointer-to-int-cast]
    5    fs/btrfs/tree-checker.c:1057:10: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    5    fs/btrfs/tree-checker.c:1051:8: warning: cast from pointer to inte=
ger of different size [-Wpointer-to-int-cast]
    5    fs/btrfs/tree-checker.c:1003:47: warning: format '%lu' expects arg=
ument of type 'long unsigned int', but argument 5 has type 'unsigned int' [=
-Wformat=3D]
    5    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:396:3=
: warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:394:3=
: warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:386:3=
: warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:384:3=
: warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:363:2=
4: warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:361:2=
4: warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:353:2=
4: warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:351:2=
4: warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    5    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    4    2 warnings generated.
    3    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this stat=
ement may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/watchdog/jz4740_wdt.c:165:6: warning: unused variable 'ret=
' [-Wunused-variable]
    2    drivers/usb/gadget/udc/s3c2410_udc.c:418:7: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/usb/gadget/udc/s3c2410_udc.c:314:7: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    2    arch/x86/kernel/apic/probe_32.c:146:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:134: Warning: macro instruction expanded into mul=
tiple instructions
    1    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
    1    mm/shmem.c:2734:35: warning: variable 'shmem_falloc_waitq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    1    fs/proc/base.c:1894:35: warning: variable 'wq' is uninitialized wh=
en used within its own initialization [-Wuninitialized]
    1    fs/nfs/dir.c:448:34: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
    1    fs/nfs/dir.c:1499:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
    1    fs/namei.c:3136:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1    fs/namei.c:1646:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized =
when used within its own initialization [-Wuninitialized]
    1    fs/cifs/readdir.c:83:34: warning: variable 'wq' is uninitialized w=
hen used within its own initialization [-Wuninitialized]
    1    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1    drivers/watchdog/wdt285.c:170:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/acornfb.c:860:9: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    1    drivers/usb/gadget/udc/lpc32xx_udc.c:2231:3: warning: this stateme=
nt may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/scsi/lpfc/lpfc_sli.c:11850:34: warning: variable 'done_q' =
is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/lpfc/lpfc_scsi.c:4559:34: warning: variable 'waitq' i=
s uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/arm/fas216.c:913:6: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    1    drivers/scsi/arm/fas216.c:605:20: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/scsi/arm/fas216.c:1959:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/scsi/arm/fas216.c:1573:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/scsi/arm/fas216.c:1424:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/scsi/arm/fas216.c:1413:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/net/usb/lan78xx.c:2662:34: warning: variable 'unlink_wakeu=
p' is uninitialized when used within its own initialization [-Wuninitialize=
d]
    1    drivers/mtd/nand/raw/au1550nd.c:443:57: warning: pointer type mism=
atch in conditional expression
    1    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
.altinstr_replacement+0x36: redundant UACCESS disable
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
.altinstr_replacement+0x34: redundant UACCESS disable
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
.altinstr_replacement+0x1c: redundant UACCESS disable
    1    drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1561:4: warni=
ng: variable 'asic_default_power_limit' is used uninitialized whenever '?:'=
 condition is false [-Wsometimes-uninitialized]
    1    drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1544:35: note=
: initialize the variable 'asic_default_power_limit' to silence this warnin=
g
    1    drivers/gpu/drm/amd/amdgpu/../powerplay/arcturus_ppt.c:1346:4: war=
ning: variable 'asic_default_power_limit' is used uninitialized whenever '?=
:' condition is false [-Wsometimes-uninitialized]
    1    drivers/gpu/drm/amd/amdgpu/../powerplay/arcturus_ppt.c:1329:35: no=
te: initialize the variable 'asic_default_power_limit' to silence this warn=
ing
    1    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/ata/pata_rb532_cf.c:161:24: warning: unused variable 'info=
' [-Wunused-variable]
    1    cc1: some warnings being treated as errors
    1    arch/mips/pci/ops-bcm63xx.c:474:6: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    1    arch/arm/mach-rpc/riscpc.c:48:13: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    arch/arm/mach-ep93xx/crunch.c:46:3: warning: this statement may fa=
ll through [-Wimplicit-fallthrough=3D]
    1    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:396:3: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    1    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:394:3: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    1    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:386:3: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    1    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:384:3: =
warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    1    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:363:24:=
 warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    1    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:361:24:=
 warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    1    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:353:24:=
 warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    1    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:351:24:=
 warning: this statement may fall through [-Wimplicit-fallthrough=3D]
    1    WARNING: unmet direct dependencies detected for MDIO_OCTEON
    1    .config:1177:warning: override: UNWINDER_GUESS changes choice stat=
e

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 14 warni=
ngs, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    fs/btrfs/tree-checker.c:1003:47: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1051:8: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1057:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1065:9: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1083:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1200:50: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1216:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
acs5k_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
acs5k_tiny_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 4 warnings, 0 section mi=
smatches

Errors:
    drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c:2325:9: error: initializatio=
n of 'int (*)(struct aspeed_pinmux_data *, const struct aspeed_sig_expr *, =
_Bool)' from incompatible pointer type 'int (*)(const struct aspeed_pinmux_=
data *, const struct aspeed_sig_expr *, _Bool)' [-Werror=3Dincompatible-poi=
nter-types]

Warnings:
    WARNING: unmet direct dependencies detected for MDIO_OCTEON
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .alti=
nstr_replacement+0x1c: redundant UACCESS disable
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 140 warnings, 0 secti=
on mismatches

Warnings:
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:351:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:353:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:361:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:363:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:384:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:386:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:394:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:396:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 49 warnings, 0 sect=
ion mismatches

Warnings:
    mm/shmem.c:2734:35: warning: variable 'shmem_falloc_waitq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/proc/base.c:1894:35: warning: variable 'wq' is uninitialized when us=
ed within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitialized w=
hen used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/namei.c:1646:34: warning: variable 'wq' is uninitialized when used w=
ithin its own initialization [-Wuninitialized]
    fs/namei.c:3136:34: warning: variable 'wq' is uninitialized when used w=
ithin its own initialization [-Wuninitialized]
    2 warnings generated.
    mm/memcontrol.c:1160:17: warning: using the result of an assignment as =
a condition without parentheses [-Wparentheses]
    mm/memcontrol.c:1160:17: note: place parentheses around the assignment =
to silence this warning
    1 warning generated.
    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/cifs/readdir.c:83:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/nfs/dir.c:448:34: warning: variable 'wq' is uninitialized when used =
within its own initialization [-Wuninitialized]
    fs/nfs/dir.c:1499:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../powerplay/arcturus_ppt.c:1346:4: warning:=
 variable 'asic_default_power_limit' is used uninitialized whenever '?:' co=
ndition is false [-Wsometimes-uninitialized]
    drivers/gpu/drm/amd/amdgpu/../powerplay/arcturus_ppt.c:1329:35: note: i=
nitialize the variable 'asic_default_power_limit' to silence this warning
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1561:4: warning: v=
ariable 'asic_default_power_limit' is used uninitialized whenever '?:' cond=
ition is false [-Wsometimes-uninitialized]
    drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1544:35: note: ini=
tialize the variable 'asic_default_power_limit' to silence this warning
    1 warning generated.
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    1 warning generated.
    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1 warning generated.
    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake' is u=
ninitialized when used within its own initialization [-Wuninitialized]
    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake' is u=
ninitialized when used within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/net/usb/lan78xx.c:2662:34: warning: variable 'unlink_wakeup' is=
 uninitialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/scsi/lpfc/lpfc_sli.c:11850:34: warning: variable 'done_q' is un=
initialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/scsi/lpfc/lpfc_scsi.c:4559:34: warning: variable 'waitq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section mi=
smatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section m=
ismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

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
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]

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
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:351:24: warn=
ing: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:353:24: warn=
ing: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:361:24: warn=
ing: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:363:24: warn=
ing: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:384:3: warni=
ng: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:386:3: warni=
ng: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:394:3: warni=
ng: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:396:3: warni=
ng: this statement may fall through [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    arch/mips/pci/ops-bcm63xx.c:474:6: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]

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
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 3 warnings, =
0 section mismatches

Errors:
    include/linux/page-flags-layout.h:95:2: error: #error "Not enough bits =
in page flags"

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/watchdog/jz4740_wdt.c:165:6: warning: unused variable 'ret' [-W=
unused-variable]

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    drivers/mtd/nand/raw/au1550nd.c:443:57: warning: pointer type mismatch =
in conditional expression

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings,=
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
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 section =
mismatches

Warnings:
    mm/memcontrol.c:1160:17: warning: using the result of an assignment as =
a condition without parentheses [-Wparentheses]
    mm/memcontrol.c:1160:17: note: place parentheses around the assignment =
to silence this warning
    1 warning generated.
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 137 warnings, 0 section =
mismatches

Warnings:
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:351:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:353:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:361:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:363:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:384:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:386:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:394:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:396:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 137 warnings, 0 section mismatches

Warnings:
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:351:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:353:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:361:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:363:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:384:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:386:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:394:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:396:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, clang-8) =E2=80=94 PASS, 0 erro=
rs, 5 warnings, 0 section mismatches

Warnings:
    mm/memcontrol.c:1160:17: warning: using the result of an assignment as =
a condition without parentheses [-Wparentheses]
    mm/memcontrol.c:1160:17: note: place parentheses around the assignment =
to silence this warning
    1 warning generated.
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 137 warnings, 0 section mismatches

Warnings:
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:351:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:353:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:361:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:363:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:384:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:386:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:394:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:396:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, clang-8) =E2=80=94 PASS, 0 erro=
rs, 5 warnings, 0 section mismatches

Warnings:
    mm/memcontrol.c:1160:17: warning: using the result of an assignment as =
a condition without parentheses [-Wparentheses]
    mm/memcontrol.c:1160:17: note: place parentheses around the assignment =
to silence this warning
    1 warning generated.
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, clang-8) =E2=80=94 PASS, 0 errors, 5 warnings, =
0 section mismatches

Warnings:
    mm/memcontrol.c:1160:17: warning: using the result of an assignment as =
a condition without parentheses [-Wparentheses]
    mm/memcontrol.c:1160:17: note: place parentheses around the assignment =
to silence this warning
    1 warning generated.
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 137 warnings, =
0 section mismatches

Warnings:
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:351:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:353:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:361:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:363:24: wa=
rning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:384:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:386:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:394:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/../../../../virt/kvm/arm/hyp/vgic-v3-sr.c:396:3: war=
ning: this statement may fall through [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    arch/arm/mach-ep93xx/crunch.c:46:3: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/watchdog/wdt285.c:170:3: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 3 warnings, 0 se=
ction mismatches

Errors:
    include/linux/page-flags-layout.h:95:2: error: #error "Not enough bits =
in page flags"

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

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
haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    arch/x86/kernel/apic/probe_32.c:146:7: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 9 warnings=
, 0 section mismatches

Warnings:
    arch/x86/kernel/apic/probe_32.c:146:7: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    fs/btrfs/tree-checker.c:1003:47: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1051:8: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1057:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1065:9: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1083:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1200:50: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1216:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
iop13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
iop33x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
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
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
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
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
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
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
ks8695_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
lemote2f_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 3 warnings, 0 sec=
tion mismatches

Errors:
    include/linux/page-flags-layout.h:95:2: error: #error "Not enough bits =
in page flags"

Warnings:
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
loongson3_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 4 warnings, 0 se=
ction mismatches

Errors:
    include/linux/page-flags-layout.h:95:2: error: #error "Not enough bits =
in page flags"

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/usb/gadget/udc/lpc32xx_udc.c:2231:3: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]

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
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    {standard input}:134: Warning: macro instruction expanded into multiple=
 instructions
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
markeins_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/usb/gadget/udc/s3c2410_udc.c:314:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    drivers/usb/gadget/udc/s3c2410_udc.c:418:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]

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
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
msp71xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 6 warnings, 0 section mismatches

Warnings:
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 6 warnings, 0 section mismatches

Warnings:
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 6 =
warnings, 0 section mismatches

Warnings:
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 14 warn=
ings, 0 section mismatches

Warnings:
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    fs/btrfs/tree-checker.c:1003:47: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1051:8: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1057:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1065:9: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1083:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1200:50: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1216:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 11 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    fs/btrfs/tree-checker.c:1003:47: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1051:8: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1057:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1065:9: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1083:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1200:50: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1216:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsim_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsim_hs_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 12 warni=
ngs, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    fs/btrfs/tree-checker.c:1003:47: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1051:8: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1057:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1065:9: warning: cast from pointer to integer o=
f different size [-Wpointer-to-int-cast]
    fs/btrfs/tree-checker.c:1083:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]
    fs/btrfs/tree-checker.c:1200:50: warning: format '%lu' expects argument=
 of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wfor=
mat=3D]
    fs/btrfs/tree-checker.c:1216:10: warning: cast to pointer from integer =
of different size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
nsim_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nuc910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
nuc950_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
nuc960_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

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
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/watchdog/jz4740_wdt.c:165:6: warning: unused variable 'ret' [-W=
unused-variable]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/ata/pata_rb532_cf.c:161:24: warning: unused variable 'info' [-W=
unused-variable]
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
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 section =
mismatches

Warnings:
    arch/arm/mach-rpc/riscpc.c:48:13: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/scsi/arm/fas216.c:913:6: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    drivers/scsi/arm/fas216.c:1959:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/scsi/arm/fas216.c:1413:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/scsi/arm/fas216.c:1424:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/scsi/arm/fas216.c:1573:6: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/scsi/arm/fas216.c:605:20: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/acornfb.c:860:9: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
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
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]

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
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    printk(KERN_WARNING "SA1100 flash: unknown base address "

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/i2c/busses/i2c-designware-master.c:658:6: warning: unused varia=
ble 'r' [-Wunused-variable]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
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
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    drivers/usb/gadget/udc/s3c2410_udc.c:314:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    drivers/usb/gadget/udc/s3c2410_udc.c:418:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1177:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mism=
atches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section mi=
smatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section mis=
matches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

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
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .alti=
nstr_replacement+0x34: redundant UACCESS disable

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches

Warnings:
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .alti=
nstr_replacement+0x36: redundant UACCESS disable

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    drivers/of/platform.c:650:18: warning: ?: using integer constants in bo=
olean context [-Wint-in-bool-context]

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5d49438b.1c69fb81.872bd.e4a0%40mx.google.com.
