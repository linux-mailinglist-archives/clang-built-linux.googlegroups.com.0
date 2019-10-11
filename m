Return-Path: <clang-built-linux+bncBDT6TV45WMPRB2PDQDWQKGQEUQCSFSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 563CED3A25
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 09:40:26 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id m22sf1592833ljj.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 00:40:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570779626; cv=pass;
        d=google.com; s=arc-20160816;
        b=syKPr7F+QAXQqT8HgCVXy2G/CKCm0QLgqvq6hfdsNmv5BqlgGMFrGGLEE3OMGVWwv7
         aACRkoboFzSIN5vFOLyWoCGolNFcLRn35ly+tMhEbM6XigbbWf5KqF8o77NiX5HiDaMm
         wc74FgVkdgrMrG5VjetPXb4vwaq3RnCNSE/efXJEfROvDQtr6hHpc2syryC5P/uUpbIS
         RERWx/+Bwiy2C0aaJbERtp6Ht4XM639JgPfcLpXishNMas10Wti0SwFSZQ6sYfWc+YIw
         j7AgvHK0Gvg9lXb4pZDInnl79BK9NvJAn3vWJLKTi3YhWHIdSX7l5ZD7aZIznyZhnrES
         V4pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=o2I+JaraxsjXulj8fQrBWoavoPZjnojHMTX1ejU0JNY=;
        b=YU5KAFsuvr5U8kX+uyuCPMXqkJTdRzhwO5ruNhI6vrNV0ECpSeptPJUfVVlRG10q+8
         ysoDmC+XWWbijvkivOBuxiZa73ffqwxQy+HCqt6rH0WII+Ckd4zLeWq17mfhxobUMzMC
         qOmQ6eB9QCLfB3noyUQzW7S8RfVqSXq4GuyjfZL+EsRM5Ug3Nlq4rB8ZgM6u4H5TXe7g
         Eyfai09rht7Ftyvmkgwg/3egazRUsmJZCL/F75BJmlKc0y4UePjGxqJy/RtxV5qZWb3O
         GviSCP3fGH4Phg6b6F6TmHpMBOpu08rjTrAZdpAgQWRzGFi7pHLT66ja/zSf3Jtzqf3U
         5pSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b="WmAiHw/D";
       spf=neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o2I+JaraxsjXulj8fQrBWoavoPZjnojHMTX1ejU0JNY=;
        b=pHYneBZKHO3b35nDY6IIH4n5wxIR3PCxNpbrCLRCzoUSXAE/CaPaaIkv0kZM0uT10W
         iViIMJSLWK6nmv2+4u9OzGzz6tLUpJyAYhm7Uyqyzl9h6Rw58KRjgPKsVtLKq70lbXKj
         U3Kfy7PtZUWG32x3jn7ZuH4+V+x4t0v+WH5N4J/GnqV7qiOD+FPqbpa8qWfC4Pyj/o67
         PynTY5fOeR6D8XWErt/motRfzrWCmcHujRtO3y4X7fK9NbYzgiVP6mRnImXQNKPvch3I
         fr7dT72sWyuBnb+aGarFLqIRt0urdKqMlsWPMzwpofHQVwtFIYQc1ltWa7ZfbEUSPESS
         6mPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o2I+JaraxsjXulj8fQrBWoavoPZjnojHMTX1ejU0JNY=;
        b=CcMyqYFHJSg6lbhC3mcWCIxntVnZ2+QUmvtbgBTriwy9WLJy8pYIs6TSKz4KCNoDJQ
         urDKhCHB2yYJMbc5geIUzd5dbSEpiV8gIAYAwZ9sRHf+W/kA31pzXuJBDaWXW4ijVf1O
         jkvIwCo8op3PBV6swllzkjOW5w3JIp+wCBr2UlNOiWlvYW/hpJ5m/HBU7egb8fUmqeFY
         02Ce3MqBeZrZHKPKIOwq48Y3bMrpMBOS/vuYcENEDeKHqB/UADOeEUxZ3bhEd1NMVHQg
         3pYIhOavTPs+tbheZzUEp3f+cDe9tfvm9b82MCJPB6+NtdgjwhtZvjN/QiijHAZEZ/uf
         VddQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX1aL62hUaTOBDEHThlgIh0cqPcySzi1WJA2AroAqrOBPvcgB/Q
	z4k9wr8e4osHYEfvzFRW5f8=
X-Google-Smtp-Source: APXvYqwtji0m70LV3eChVIlFiRzbYHikTEYwQ8jEqf0YqX5qbJWPw7myjwK6X/81xBlsw2B/O68+Rw==
X-Received: by 2002:a2e:964c:: with SMTP id z12mr1282479ljh.79.1570779625638;
        Fri, 11 Oct 2019 00:40:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4190:: with SMTP id z16ls620582lfh.7.gmail; Fri, 11 Oct
 2019 00:40:25 -0700 (PDT)
X-Received: by 2002:ac2:4d05:: with SMTP id r5mr7954433lfi.26.1570779624927;
        Fri, 11 Oct 2019 00:40:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570779624; cv=none;
        d=google.com; s=arc-20160816;
        b=FoICtsDR4lc5kHvgZhlhjca5iygIeNE2tPanCFevkOJMv5BVWuSEovndjN0oICTC3w
         mq2ije/hS8wtKqmOyGnsUIMYzQ9+LCKAcCQsyIY0sBlfZJsxnDAeSCyKnNmdjCyo/ijF
         FSVp86UeIVQURNzFcQgRyd31cFMjcrk5gt95qIBFUb5AoLVzI+dBF8sqtuz6s3oWsXFz
         CvhNJyCOAC7Nl8t4DFDmzgdGh399sWwODQBxLO1U/maPPa4MaN6v8w8wIcvSohboBr+x
         HWHCOrtoWmK5sCMb4RSCAY8A7NcwezFf9rVxiiiLorpx+5rpOUS8Ylggo5PLp6gtU5Ov
         p8fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=ujMcj2tmRnQZHR8979j20ZmAQX7GpjQ1iVKxJFv3ghs=;
        b=XhmoSxaWqRjWeNOw0G4NChyyR9xy/kpso95fbXF+a4yxRmTC9WoOAuhO28AYGP+G4C
         sgTeSFI510fyjzHJwfJYzYcsBbvWTb0cx1/m8pW0e171KG2Y8nKvoClt/zAS+LyDLo5i
         GGlA4GXSkfJlT/GTipFu94LK9QIacAEWYu9le/BqQL9dbToSsuKeQ4LYY4QKwczR9ZLi
         qf1JQx60AlxTMNguZzmPoSMze4VO+aEYPqvAJPCzN/Rf0p7wMfiYuT/N5a0OfFmOCo6M
         k5G8ffUhWZRzAQ95TVTg+EDYExjYq2h4/FrRn6KaxUM9dymv4zjT8m+VdAyhBG7vkdWL
         soiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b="WmAiHw/D";
       spf=neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id q25si151697ljg.5.2019.10.11.00.40.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 00:40:24 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id 3so9148777wmi.3
        for <clang-built-linux@googlegroups.com>; Fri, 11 Oct 2019 00:40:24 -0700 (PDT)
X-Received: by 2002:a05:600c:143:: with SMTP id w3mr2039428wmm.17.1570779619497;
        Fri, 11 Oct 2019 00:40:19 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id h125sm12849702wmf.31.2019.10.11.00.40.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 00:40:18 -0700 (PDT)
Message-ID: <5da031e2.1c69fb81.5a1eb.e14f@mx.google.com>
Date: Fri, 11 Oct 2019 00:40:18 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: next-20191011
X-Kernelci-Tree: next
X-Kernelci-Branch: master
Subject: next/master build: 218 builds: 62 failed, 156 passed, 170 errors,
 643 warnings (next-20191011)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b="WmAiHw/D";       spf=neutral (google.com: 2a00:1450:4864:20::342 is
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

next/master build: 218 builds: 62 failed, 156 passed, 170 errors, 643 warni=
ngs (next-20191011)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20191011/

Tree: next
Branch: master
Git Describe: next-20191011
Git Commit: 8ada228ac7ed08a2c5ce035089e858b103af09c4
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Build Failures Detected:

mips:
    allnoconfig: (gcc-8) FAIL
    ar7_defconfig: (gcc-8) FAIL
    ath25_defconfig: (gcc-8) FAIL
    ath79_defconfig: (gcc-8) FAIL
    bcm47xx_defconfig: (gcc-8) FAIL
    bcm63xx_defconfig: (gcc-8) FAIL
    bigsur_defconfig: (gcc-8) FAIL
    capcella_defconfig: (gcc-8) FAIL
    cavium_octeon_defconfig: (gcc-8) FAIL
    cobalt_defconfig: (gcc-8) FAIL
    db1xxx_defconfig: (gcc-8) FAIL
    decstation_64_defconfig: (gcc-8) FAIL
    decstation_defconfig: (gcc-8) FAIL
    decstation_r4k_defconfig: (gcc-8) FAIL
    e55_defconfig: (gcc-8) FAIL
    fuloong2e_defconfig: (gcc-8) FAIL
    gcw0_defconfig: (gcc-8) FAIL
    gpr_defconfig: (gcc-8) FAIL
    ip22_defconfig: (gcc-8) FAIL
    ip27_defconfig: (gcc-8) FAIL
    ip28_defconfig: (gcc-8) FAIL
    ip32_defconfig: (gcc-8) FAIL
    jazz_defconfig: (gcc-8) FAIL
    jmr3927_defconfig: (gcc-8) FAIL
    lasat_defconfig: (gcc-8) FAIL
    lemote2f_defconfig: (gcc-8) FAIL
    loongson1b_defconfig: (gcc-8) FAIL
    loongson1c_defconfig: (gcc-8) FAIL
    loongson3_defconfig: (gcc-8) FAIL
    malta_defconfig: (gcc-8) FAIL
    malta_kvm_defconfig: (gcc-8) FAIL
    malta_kvm_guest_defconfig: (gcc-8) FAIL
    malta_qemu_32r6_defconfig: (gcc-8) FAIL
    maltaaprp_defconfig: (gcc-8) FAIL
    maltasmvp_defconfig: (gcc-8) FAIL
    maltasmvp_eva_defconfig: (gcc-8) FAIL
    maltaup_defconfig: (gcc-8) FAIL
    maltaup_xpa_defconfig: (gcc-8) FAIL
    markeins_defconfig: (gcc-8) FAIL
    mips_paravirt_defconfig: (gcc-8) FAIL
    mpc30x_defconfig: (gcc-8) FAIL
    msp71xx_defconfig: (gcc-8) FAIL
    mtx1_defconfig: (gcc-8) FAIL
    nlm_xlp_defconfig: (gcc-8) FAIL
    nlm_xlr_defconfig: (gcc-8) FAIL
    omega2p_defconfig: (gcc-8) FAIL
    pic32mzda_defconfig: (gcc-8) FAIL
    pistachio_defconfig: (gcc-8) FAIL
    pnx8335_stb225_defconfig: (gcc-8) FAIL
    qi_lb60_defconfig: (gcc-8) FAIL
    rb532_defconfig: (gcc-8) FAIL
    rbtx49xx_defconfig: (gcc-8) FAIL
    rm200_defconfig: (gcc-8) FAIL
    sb1250_swarm_defconfig: (gcc-8) FAIL
    tb0219_defconfig: (gcc-8) FAIL
    tb0226_defconfig: (gcc-8) FAIL
    tb0287_defconfig: (gcc-8) FAIL
    tinyconfig: (gcc-8) FAIL
    vocore2_defconfig: (gcc-8) FAIL
    workpad_defconfig: (gcc-8) FAIL

riscv:
    allnoconfig: (gcc-8) FAIL
    tinyconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 1 warning
    axs103_defconfig (gcc-8): 2 warnings
    axs103_smp_defconfig (gcc-8): 3 warnings
    haps_hs_defconfig (gcc-8): 2 warnings
    haps_hs_smp_defconfig (gcc-8): 2 warnings
    hsdk_defconfig (gcc-8): 3 warnings
    nsim_hs_defconfig (gcc-8): 2 warnings
    nsim_hs_defconfig (gcc-8): 30 warnings
    nsim_hs_smp_defconfig (gcc-8): 2 warnings
    nsimosci_hs_defconfig (gcc-8): 3 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 3 warnings
    tinyconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 1 warning
    vdk_hs38_smp_defconfig (gcc-8): 2 warnings

arm64:
    allmodconfig (gcc-8): 1 warning
    allmodconfig (clang-8): 44 warnings
    defconfig (gcc-8): 1 warning
    defconfig (clang-8): 2 warnings
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 28 warnings

arm:
    allmodconfig (gcc-8): 20 warnings
    am200epdkit_defconfig (gcc-8): 1 warning
    aspeed_g4_defconfig (gcc-8): 1 warning
    aspeed_g5_defconfig (gcc-8): 1 warning
    at91_dt_defconfig (gcc-8): 3 warnings
    axm55xx_defconfig (gcc-8): 1 warning
    bcm2835_defconfig (gcc-8): 4 warnings
    cm_x2xx_defconfig (gcc-8): 1 warning
    cm_x300_defconfig (gcc-8): 1 warning
    cns3420vb_defconfig (gcc-8): 1 warning
    colibri_pxa270_defconfig (gcc-8): 1 warning
    colibri_pxa300_defconfig (gcc-8): 1 warning
    davinci_all_defconfig (gcc-8): 2 warnings
    dove_defconfig (gcc-8): 1 warning
    em_x270_defconfig (gcc-8): 1 warning
    ep93xx_defconfig (gcc-8): 1 warning
    eseries_pxa_defconfig (gcc-8): 2 warnings
    exynos_defconfig (gcc-8): 172 warnings
    ezx_defconfig (gcc-8): 1 warning
    gemini_defconfig (gcc-8): 1 warning
    h5000_defconfig (gcc-8): 1 warning
    hisi_defconfig (gcc-8): 1 warning
    imote2_defconfig (gcc-8): 1 warning
    imx_v4_v5_defconfig (gcc-8): 1 warning
    imx_v6_v7_defconfig (gcc-8): 2 warnings
    integrator_defconfig (gcc-8): 2 warnings
    ixp4xx_defconfig (gcc-8): 1 warning
    keystone_defconfig (gcc-8): 1 warning
    lpc18xx_defconfig (gcc-8): 1 warning
    lpc32xx_defconfig (gcc-8): 2 warnings
    magician_defconfig (gcc-8): 2 warnings
    milbeaut_m10v_defconfig (gcc-8): 1 warning
    mini2440_defconfig (gcc-8): 1 warning
    mmp2_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (gcc-8): 3 warnings
    multi_v7_defconfig (gcc-8): 5 warnings
    multi_v7_defconfig (gcc-8): 5 warnings
    multi_v7_defconfig (gcc-8): 5 warnings
    multi_v7_defconfig (gcc-8): 5 warnings
    multi_v7_defconfig (gcc-8): 32 warnings
    mv78xx0_defconfig (gcc-8): 1 warning
    mvebu_v5_defconfig (gcc-8): 1 warning
    mvebu_v7_defconfig (gcc-8): 1 warning
    mxs_defconfig (gcc-8): 2 warnings
    nhk8815_defconfig (gcc-8): 2 warnings
    omap1_defconfig (gcc-8): 1 warning
    omap2plus_defconfig (gcc-8): 2 warnings
    orion5x_defconfig (gcc-8): 1 warning
    oxnas_v6_defconfig (gcc-8): 1 warning
    palmz72_defconfig (gcc-8): 1 warning
    pcm027_defconfig (gcc-8): 1 warning
    prima2_defconfig (gcc-8): 1 warning
    pxa168_defconfig (gcc-8): 1 warning
    pxa3xx_defconfig (gcc-8): 1 warning
    pxa910_defconfig (gcc-8): 1 warning
    pxa_defconfig (gcc-8): 1 warning
    qcom_defconfig (gcc-8): 2 warnings
    realview_defconfig (gcc-8): 2 warnings
    s3c2410_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (gcc-8): 2 warnings
    s5pv210_defconfig (gcc-8): 2 warnings
    sama5_defconfig (gcc-8): 3 warnings
    shmobile_defconfig (gcc-8): 1 warning
    spear13xx_defconfig (gcc-8): 1 warning
    spear3xx_defconfig (gcc-8): 1 warning
    sunxi_defconfig (gcc-8): 2 warnings
    tango4_defconfig (gcc-8): 1 warning
    tegra_defconfig (gcc-8): 2 warnings
    trizeps4_defconfig (gcc-8): 1 warning
    u300_defconfig (gcc-8): 1 warning
    u8500_defconfig (gcc-8): 2 warnings
    versatile_defconfig (gcc-8): 2 warnings
    vexpress_defconfig (gcc-8): 2 warnings
    viper_defconfig (gcc-8): 1 warning
    xcep_defconfig (gcc-8): 1 warning
    zeus_defconfig (gcc-8): 2 warnings

i386:
    i386_defconfig (gcc-8): 1 warning
    i386_defconfig (gcc-8): 29 warnings

mips:
    32r2el_defconfig (gcc-8): 28 warnings
    allnoconfig (gcc-8): 1 error
    ar7_defconfig (gcc-8): 3 errors, 1 warning
    ath25_defconfig (gcc-8): 4 errors, 1 warning
    ath79_defconfig (gcc-8): 1 error
    bcm47xx_defconfig (gcc-8): 3 errors, 1 warning
    bcm63xx_defconfig (gcc-8): 3 errors, 1 warning
    bigsur_defconfig (gcc-8): 4 errors, 1 warning
    capcella_defconfig (gcc-8): 3 errors, 1 warning
    cavium_octeon_defconfig (gcc-8): 1 error
    cobalt_defconfig (gcc-8): 4 errors, 1 warning
    db1xxx_defconfig (gcc-8): 4 errors, 1 warning
    decstation_64_defconfig (gcc-8): 4 errors, 1 warning
    decstation_defconfig (gcc-8): 4 errors, 1 warning
    decstation_r4k_defconfig (gcc-8): 4 errors, 1 warning
    e55_defconfig (gcc-8): 3 errors, 1 warning
    fuloong2e_defconfig (gcc-8): 4 errors, 1 warning
    gcw0_defconfig (gcc-8): 1 error
    gpr_defconfig (gcc-8): 3 errors, 1 warning
    ip22_defconfig (gcc-8): 4 errors, 1 warning
    ip27_defconfig (gcc-8): 4 errors, 1 warning
    ip28_defconfig (gcc-8): 4 errors, 1 warning
    ip32_defconfig (gcc-8): 4 errors, 1 warning
    jazz_defconfig (gcc-8): 4 errors, 1 warning
    jmr3927_defconfig (gcc-8): 4 errors, 1 warning
    lasat_defconfig (gcc-8): 4 errors, 1 warning
    lemote2f_defconfig (gcc-8): 4 errors, 1 warning
    loongson1b_defconfig (gcc-8): 4 errors, 1 warning
    loongson1c_defconfig (gcc-8): 4 errors, 1 warning
    loongson3_defconfig (gcc-8): 4 errors, 1 warning
    malta_defconfig (gcc-8): 1 error
    malta_kvm_defconfig (gcc-8): 1 error
    malta_kvm_guest_defconfig (gcc-8): 1 error
    malta_qemu_32r6_defconfig (gcc-8): 1 error
    maltaaprp_defconfig (gcc-8): 1 error
    maltasmvp_defconfig (gcc-8): 1 error
    maltasmvp_eva_defconfig (gcc-8): 1 error
    maltaup_defconfig (gcc-8): 1 error
    maltaup_xpa_defconfig (gcc-8): 1 error
    markeins_defconfig (gcc-8): 3 errors, 1 warning
    mips_paravirt_defconfig (gcc-8): 4 errors, 1 warning
    mpc30x_defconfig (gcc-8): 3 errors, 1 warning
    msp71xx_defconfig (gcc-8): 4 errors, 1 warning
    mtx1_defconfig (gcc-8): 4 errors, 1 warning
    nlm_xlp_defconfig (gcc-8): 1 error
    nlm_xlr_defconfig (gcc-8): 4 errors, 1 warning
    omega2p_defconfig (gcc-8): 1 error
    pic32mzda_defconfig (gcc-8): 1 error
    pistachio_defconfig (gcc-8): 1 error
    pnx8335_stb225_defconfig (gcc-8): 4 errors, 1 warning
    qi_lb60_defconfig (gcc-8): 1 error
    rb532_defconfig (gcc-8): 4 errors, 1 warning
    rbtx49xx_defconfig (gcc-8): 4 errors, 1 warning
    rm200_defconfig (gcc-8): 4 errors, 1 warning
    sb1250_swarm_defconfig (gcc-8): 4 errors, 1 warning
    tb0219_defconfig (gcc-8): 3 errors, 1 warning
    tb0226_defconfig (gcc-8): 3 errors, 1 warning
    tb0287_defconfig (gcc-8): 3 errors, 1 warning
    tinyconfig (gcc-8): 1 error
    vocore2_defconfig (gcc-8): 1 error
    workpad_defconfig (gcc-8): 3 errors, 1 warning

riscv:
    allnoconfig (gcc-8): 1 error, 1 warning
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 28 warnings
    rv32_defconfig (gcc-8): 7 warnings
    tinyconfig (gcc-8): 1 error, 1 warning

x86_64:
    allmodconfig (gcc-8): 1 warning
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 28 warnings

Errors summary:

    48   arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclar=
ed (first use in this function); did you mean 'builtin_driver'?
    40   arch/mips/kernel/setup.c:603:3: error: implicit declaration of fun=
ction 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]
    40   arch/mips/kernel/setup.c:563:6: error: implicit declaration of fun=
ction 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dim=
plicit-function-declaration]
    40   arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *=
' from 'int' makes pointer from integer without a cast [-Werror=3Dint-conve=
rsion]
    2    arch/riscv/kernel/traps.c:130:17: error: implicit declaration of f=
unction 'get_break_insn_length' [-Werror=3Dimplicit-function-declaration]

Warnings summary:

    64   WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    54   drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused var=
iable 'dev' [-Wunused-variable]
    40   cc1: all warnings being treated as errors
    26   <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    17   1 warning generated.
    9    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'reg=
s' [-Wunused-variable]
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    5    sound/soc/soc-pcm.c:1207:8: warning: unused variable 'name' [-Wunu=
sed-variable]
    5    include/linux/kern_levels.h:5:18: warning: format '%lu' expects ar=
gument of type 'long unsigned int', but argument 8 has type 'unsigned int' =
[-Wformat=3D]
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    4    2 warnings generated.
    2    cc1: some warnings being treated as errors
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    warning: same module names found:
    1    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
    1    mm/shmem.c:2737:35: warning: variable 'shmem_falloc_waitq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    kernel/debug/debug_core.c:470:18: warning: array subscript [0, 0] =
is outside array bounds of 'struct debuggerinfo_struct[1]' [-Warray-bounds]
    1    kernel/debug/debug_core.c:469:33: warning: array subscript [0, 0] =
is outside array bounds of 'struct debuggerinfo_struct[1]' [-Warray-bounds]
    1    kernel/debug/debug_core.c:452:17: warning: array subscript [0, 0] =
is outside array bounds of 'struct debuggerinfo_struct[1]' [-Warray-bounds]
    1    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    1    fs/proc/base.c:1894:35: warning: variable 'wq' is uninitialized wh=
en used within its own initialization [-Wuninitialized]
    1    fs/nfs/dir.c:448:34: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
    1    fs/nfs/dir.c:1499:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
    1    fs/namei.c:3132:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1    fs/namei.c:1644:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized =
when used within its own initialization [-Wuninitialized]
    1    fs/cifs/readdir.c:83:34: warning: variable 'wq' is uninitialized w=
hen used within its own initialization [-Wuninitialized]
    1    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/lpfc/lpfc_sli.c:11855:34: warning: variable 'done_q' =
is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/lpfc/lpfc_scsi.c:4724:34: warning: variable 'waitq' i=
s uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1    drivers/net/usb/lan78xx.c:2662:34: warning: variable 'unlink_wakeu=
p' is uninitialized when used within its own initialization [-Wuninitialize=
d]
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    drivers/gpu/drm/amd/amdgpu/../powerplay/renoir_ppt.c:182:26: warni=
ng: suggest braces around initialization of subobject [-Wmissing-braces]
    1    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/android/binderfs.c:657:41: warning: suggest braces around =
initialization of subobject [-Wmissing-braces]
    1    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build=
@7/linux/build/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers=
/usb/storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    1    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build=
@7/linux/build/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers=
/usb/storage/uas.ko needs unknown symbol usb_stor_adjust_quirks
    1    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build=
@6/linux/build/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers=
/usb/storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    1    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build=
@6/linux/build/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers=
/usb/storage/uas.ko needs unknown symbol usb_stor_adjust_quirks
    1    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build=
@5/linux/build/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers=
/usb/storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    1    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build=
@5/linux/build/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers=
/usb/storage/uas.ko needs unknown symbol usb_stor_adjust_quirks
    1    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build=
@2/linux/build/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers=
/usb/storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    1    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build=
@2/linux/build/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers=
/usb/storage/uas.ko needs unknown symbol usb_stor_adjust_quirks
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build@2/linux/b=
uild/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/stora=
ge/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build@2/linux/b=
uild/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/stora=
ge/uas.ko needs unknown symbol usb_stor_adjust_quirks
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_ctrl_transfer
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_clear_halt
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_bulk_transfer_sg
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_CB_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol fill_inquiry_response
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol fill_inquiry_response
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_ctrl_transfer
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_bulk_transfer_sg
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_bulk_srb
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_CB_transport
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_CB_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol fill_inquiry_response
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_control_msg
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_Bulk_transport
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_Bulk_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_ctrl_transfer
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_Bulk_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol fill_inquiry_response
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_transparent_scsi_command
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_ctrl_transfer
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_Bulk_transport
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_control_msg
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_bulk_srb
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_bulk_transfer_sg
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_bulk_srb
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_Bulk_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol fill_inquiry_response
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_transparent_scsi_command
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_sense_invalidCDB
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_ctrl_transfer
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_Bulk_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol fill_inquiry_response
    1    /tmp/cc39eqwR.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/cc39eqwR.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1199:warning: override: UNWINDER_GUESS changes choice stat=
e
    1    ./.tmp.config.jupBy2Bj9X:4920:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.jupBy2Bj9X:4903:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.jupBy2Bj9X:4902:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.jupBy2Bj9X:4898:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.jupBy2Bj9X:4878:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.jupBy2Bj9X:4872:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.jupBy2Bj9X:4863:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.jupBy2Bj9X:4861:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.jupBy2Bj9X:4860:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.jupBy2Bj9X:4859:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.jupBy2Bj9X:4857:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.jupBy2Bj9X:4856:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.jupBy2Bj9X:4853:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.jupBy2Bj9X:4846:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.jupBy2Bj9X:4836:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.jupBy2Bj9X:4825:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.jupBy2Bj9X:4717:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.jupBy2Bj9X:4713:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.jupBy2Bj9X:4688:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.jupBy2Bj9X:4667:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.jupBy2Bj9X:4609:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.jupBy2Bj9X:4608:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.jupBy2Bj9X:4604:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.jupBy2Bj9X:4603:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.jupBy2Bj9X:4601:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.jupBy2Bj9X:4600:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.jupBy2Bj9X:4597:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.hUAb9D7Luo:3397:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.hUAb9D7Luo:3380:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.hUAb9D7Luo:3379:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.hUAb9D7Luo:3375:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.hUAb9D7Luo:3355:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.hUAb9D7Luo:3349:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.hUAb9D7Luo:3340:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.hUAb9D7Luo:3338:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.hUAb9D7Luo:3337:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.hUAb9D7Luo:3336:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.hUAb9D7Luo:3334:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.hUAb9D7Luo:3333:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.hUAb9D7Luo:3330:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.hUAb9D7Luo:3323:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.hUAb9D7Luo:3313:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.hUAb9D7Luo:3302:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.hUAb9D7Luo:3194:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.hUAb9D7Luo:3190:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.hUAb9D7Luo:3165:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.hUAb9D7Luo:3144:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.hUAb9D7Luo:3086:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.hUAb9D7Luo:3085:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.hUAb9D7Luo:3081:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.hUAb9D7Luo:3080:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.hUAb9D7Luo:3078:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.hUAb9D7Luo:3077:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.hUAb9D7Luo:3074:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.Xm61SLxf9Z:4012:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.Xm61SLxf9Z:3995:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.Xm61SLxf9Z:3994:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.Xm61SLxf9Z:3990:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.Xm61SLxf9Z:3970:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.Xm61SLxf9Z:3964:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.Xm61SLxf9Z:3955:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.Xm61SLxf9Z:3953:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.Xm61SLxf9Z:3952:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.Xm61SLxf9Z:3951:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.Xm61SLxf9Z:3949:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.Xm61SLxf9Z:3948:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.Xm61SLxf9Z:3945:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.Xm61SLxf9Z:3938:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.Xm61SLxf9Z:3928:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.Xm61SLxf9Z:3917:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.Xm61SLxf9Z:3809:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.Xm61SLxf9Z:3805:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.Xm61SLxf9Z:3780:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.Xm61SLxf9Z:3759:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.Xm61SLxf9Z:3701:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.Xm61SLxf9Z:3700:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.Xm61SLxf9Z:3696:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.Xm61SLxf9Z:3695:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.Xm61SLxf9Z:3693:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.Xm61SLxf9Z:3692:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.Xm61SLxf9Z:3689:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.PUe86piHLr:7971:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.PUe86piHLr:7954:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.PUe86piHLr:7953:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.PUe86piHLr:7949:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.PUe86piHLr:7929:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.PUe86piHLr:7923:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.PUe86piHLr:7914:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.PUe86piHLr:7912:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.PUe86piHLr:7911:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.PUe86piHLr:7910:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.PUe86piHLr:7908:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.PUe86piHLr:7907:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.PUe86piHLr:7904:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.PUe86piHLr:7897:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.PUe86piHLr:7887:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.PUe86piHLr:7876:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.PUe86piHLr:7768:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.PUe86piHLr:7764:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.PUe86piHLr:7739:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.PUe86piHLr:7718:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.PUe86piHLr:7660:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.PUe86piHLr:7659:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.PUe86piHLr:7655:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.PUe86piHLr:7654:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.PUe86piHLr:7652:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.PUe86piHLr:7651:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.PUe86piHLr:7648:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.8ZAQapZoas:4859:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.8ZAQapZoas:4842:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.8ZAQapZoas:4841:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.8ZAQapZoas:4837:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.8ZAQapZoas:4817:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.8ZAQapZoas:4811:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.8ZAQapZoas:4802:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.8ZAQapZoas:4800:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.8ZAQapZoas:4799:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.8ZAQapZoas:4798:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.8ZAQapZoas:4796:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.8ZAQapZoas:4795:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.8ZAQapZoas:4792:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.8ZAQapZoas:4785:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.8ZAQapZoas:4775:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.8ZAQapZoas:4764:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.8ZAQapZoas:4656:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.8ZAQapZoas:4652:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.8ZAQapZoas:4627:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.8ZAQapZoas:4606:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.8ZAQapZoas:4548:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.8ZAQapZoas:4547:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.8ZAQapZoas:4543:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.8ZAQapZoas:4542:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.8ZAQapZoas:4540:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.8ZAQapZoas:4539:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.8ZAQapZoas:4536:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.2nLfWNGBAH:1776:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.2nLfWNGBAH:1759:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.2nLfWNGBAH:1758:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.2nLfWNGBAH:1754:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.2nLfWNGBAH:1734:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.2nLfWNGBAH:1728:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.2nLfWNGBAH:1719:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.2nLfWNGBAH:1717:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.2nLfWNGBAH:1716:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.2nLfWNGBAH:1715:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.2nLfWNGBAH:1713:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.2nLfWNGBAH:1712:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.2nLfWNGBAH:1709:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.2nLfWNGBAH:1702:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.2nLfWNGBAH:1692:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.2nLfWNGBAH:1681:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.2nLfWNGBAH:1573:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.2nLfWNGBAH:1569:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.2nLfWNGBAH:1544:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.2nLfWNGBAH:1523:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.2nLfWNGBAH:1465:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.2nLfWNGBAH:1464:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.2nLfWNGBAH:1460:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.2nLfWNGBAH:1459:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.2nLfWNGBAH:1457:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.2nLfWNGBAH:1456:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.2nLfWNGBAH:1453:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.1MApBAYnfo:8561:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.1MApBAYnfo:8544:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.1MApBAYnfo:8543:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.1MApBAYnfo:8539:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.1MApBAYnfo:8519:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.1MApBAYnfo:8513:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.1MApBAYnfo:8504:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.1MApBAYnfo:8502:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.1MApBAYnfo:8501:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.1MApBAYnfo:8500:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.1MApBAYnfo:8498:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.1MApBAYnfo:8497:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.1MApBAYnfo:8494:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.1MApBAYnfo:8487:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.1MApBAYnfo:8477:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.1MApBAYnfo:8466:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.1MApBAYnfo:8358:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.1MApBAYnfo:8354:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.1MApBAYnfo:8329:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.1MApBAYnfo:8308:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.1MApBAYnfo:8250:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.1MApBAYnfo:8249:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.1MApBAYnfo:8245:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.1MApBAYnfo:8244:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.1MApBAYnfo:8242:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.1MApBAYnfo:8241:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.1MApBAYnfo:8238:warning: override: reassigning to sy=
mbol BPF_SYSCALL

Section mismatches summary:

    5    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    3    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    3    WARNING: vmlinux.o(.text.unlikely+0x840): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x7c8): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x710): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()

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
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 28 warni=
ngs, 0 section mismatches

Warnings:
    ./.tmp.config.Xm61SLxf9Z:3689:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.Xm61SLxf9Z:3692:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.Xm61SLxf9Z:3693:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.Xm61SLxf9Z:3695:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.Xm61SLxf9Z:3696:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.Xm61SLxf9Z:3700:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.Xm61SLxf9Z:3701:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.Xm61SLxf9Z:3759:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.Xm61SLxf9Z:3780:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.Xm61SLxf9Z:3805:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.Xm61SLxf9Z:3809:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.Xm61SLxf9Z:3917:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.Xm61SLxf9Z:3928:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.Xm61SLxf9Z:3938:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.Xm61SLxf9Z:3945:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.Xm61SLxf9Z:3948:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.Xm61SLxf9Z:3949:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.Xm61SLxf9Z:3951:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.Xm61SLxf9Z:3952:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.Xm61SLxf9Z:3953:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.Xm61SLxf9Z:3955:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.Xm61SLxf9Z:3964:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.Xm61SLxf9Z:3970:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.Xm61SLxf9Z:3990:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.Xm61SLxf9Z:3994:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.Xm61SLxf9Z:3995:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.Xm61SLxf9Z:4012:warning: override: reassigning to symbol =
USER_NS
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 20 warnings, 0 section =
mismatches

Warnings:
    /tmp/cc39eqwR.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/cc39eqwR.s:18191: Warning: using r15 results in unpredictable beha=
viour
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to integ=
er of different size [-Wpointer-to-int-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
    warning: same module names found:

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 44 warnings, 0 sect=
ion mismatches

Warnings:
    mm/shmem.c:2737:35: warning: variable 'shmem_falloc_waitq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/proc/base.c:1894:35: warning: variable 'wq' is uninitialized when us=
ed within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitialized w=
hen used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/namei.c:1644:34: warning: variable 'wq' is uninitialized when used w=
ithin its own initialization [-Wuninitialized]
    fs/namei.c:3132:34: warning: variable 'wq' is uninitialized when used w=
ithin its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/android/binderfs.c:657:41: warning: suggest braces around initi=
alization of subobject [-Wmissing-braces]
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
    drivers/gpu/drm/amd/amdgpu/../powerplay/renoir_ppt.c:182:26: warning: s=
uggest braces around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1 warning generated.
    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
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
    drivers/scsi/lpfc/lpfc_sli.c:11855:34: warning: variable 'done_q' is un=
initialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/scsi/lpfc/lpfc_scsi.c:4724:34: warning: variable 'waitq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
    1 warning generated.

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
allnoconfig (riscv, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section mi=
smatches

Errors:
    arch/riscv/kernel/traps.c:130:17: error: implicit declaration of functi=
on 'get_break_insn_length' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section mi=
smatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

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
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 1 warning, 0 section =
mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
ath25_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 sectio=
n mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sectio=
n mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
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
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    kernel/debug/debug_core.c:452:17: warning: array subscript [0, 0] is ou=
tside array bounds of 'struct debuggerinfo_struct[1]' [-Warray-bounds]
    kernel/debug/debug_core.c:469:33: warning: array subscript [0, 0] is ou=
tside array bounds of 'struct debuggerinfo_struct[1]' [-Warray-bounds]
    kernel/debug/debug_core.c:470:18: warning: array subscript [0, 0] is ou=
tside array bounds of 'struct debuggerinfo_struct[1]' [-Warray-bounds]
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 1 warning, 0 sect=
ion mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 1 warning, 0 sect=
ion mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 secti=
on mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

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
capcella_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 1 warning, 0 sec=
tion mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, =
0 section mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

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
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 secti=
on mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x840): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 secti=
on mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, =
0 section mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 s=
ection mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning,=
 0 section mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section =
mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 1 warning, 0 section mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 1 warning, 0 section mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 28 warnings, 0=
 section mismatches

Warnings:
    ./.tmp.config.hUAb9D7Luo:3074:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.hUAb9D7Luo:3077:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.hUAb9D7Luo:3078:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.hUAb9D7Luo:3080:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.hUAb9D7Luo:3081:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.hUAb9D7Luo:3085:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.hUAb9D7Luo:3086:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.hUAb9D7Luo:3144:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.hUAb9D7Luo:3165:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.hUAb9D7Luo:3190:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.hUAb9D7Luo:3194:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.hUAb9D7Luo:3302:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.hUAb9D7Luo:3313:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.hUAb9D7Luo:3323:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.hUAb9D7Luo:3330:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.hUAb9D7Luo:3333:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.hUAb9D7Luo:3334:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.hUAb9D7Luo:3336:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.hUAb9D7Luo:3337:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.hUAb9D7Luo:3338:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.hUAb9D7Luo:3340:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.hUAb9D7Luo:3349:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.hUAb9D7Luo:3355:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.hUAb9D7Luo:3375:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.hUAb9D7Luo:3379:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.hUAb9D7Luo:3380:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.hUAb9D7Luo:3397:warning: override: reassigning to symbol =
USER_NS
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 28 warnings, 0=
 section mismatches

Warnings:
    ./.tmp.config.PUe86piHLr:7648:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.PUe86piHLr:7651:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.PUe86piHLr:7652:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.PUe86piHLr:7654:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.PUe86piHLr:7655:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.PUe86piHLr:7659:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.PUe86piHLr:7660:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.PUe86piHLr:7718:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.PUe86piHLr:7739:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.PUe86piHLr:7764:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.PUe86piHLr:7768:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.PUe86piHLr:7876:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.PUe86piHLr:7887:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.PUe86piHLr:7897:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.PUe86piHLr:7904:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.PUe86piHLr:7907:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.PUe86piHLr:7908:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.PUe86piHLr:7910:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.PUe86piHLr:7911:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.PUe86piHLr:7912:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.PUe86piHLr:7914:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.PUe86piHLr:7923:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.PUe86piHLr:7929:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.PUe86piHLr:7949:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.PUe86piHLr:7953:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.PUe86piHLr:7954:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.PUe86piHLr:7971:warning: override: reassigning to symbol =
USER_NS
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 1 warning, 0 section =
mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

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
em_x270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x710): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    sound/soc/soc-pcm.c:1207:8: warning: unused variable 'name' [-Wunused-v=
ariable]

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 172 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_Bulk_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_ctrl_transfer
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_transparent_scsi_command
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_Bulk_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_bulk_srb
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_bulk_transfer_sg
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_bulk_srb
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_control_msg
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_ctrl_transfer
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_transparent_scsi_command
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_Bulk_transport
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_Bulk_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_ctrl_transfer
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_Bulk_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_Bulk_transport
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_control_msg
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_bulk_srb
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_bulk_transfer_sg
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_CB_transport
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_CB_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_ctrl_transfer
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_bulk_transfer_sg
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_clear_halt
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_CB_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_ctrl_transfer
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_set_xfer_buf

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 se=
ction mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section=
 mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 1 warning, 0 section =
mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x840): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
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
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 29 warning=
s, 0 section mismatches

Warnings:
    ./.tmp.config.8ZAQapZoas:4536:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.8ZAQapZoas:4539:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.8ZAQapZoas:4540:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.8ZAQapZoas:4542:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.8ZAQapZoas:4543:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.8ZAQapZoas:4547:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.8ZAQapZoas:4548:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.8ZAQapZoas:4606:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.8ZAQapZoas:4627:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.8ZAQapZoas:4652:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.8ZAQapZoas:4656:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.8ZAQapZoas:4764:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.8ZAQapZoas:4775:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.8ZAQapZoas:4785:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.8ZAQapZoas:4792:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.8ZAQapZoas:4795:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.8ZAQapZoas:4796:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.8ZAQapZoas:4798:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.8ZAQapZoas:4799:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.8ZAQapZoas:4800:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.8ZAQapZoas:4802:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.8ZAQapZoas:4811:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.8ZAQapZoas:4817:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.8ZAQapZoas:4837:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.8ZAQapZoas:4841:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.8ZAQapZoas:4842:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.8ZAQapZoas:4859:warning: override: reassigning to symbol =
USER_NS
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 section=
 mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 section=
 mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
ip28_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 section=
 mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 section=
 mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 section=
 mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 sect=
ion mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x7c8): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
lasat_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 sectio=
n mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 sec=
tion mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 s=
ection mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 s=
ection mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 se=
ction mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
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
    sound/soc/soc-pcm.c:1207:8: warning: unused variable 'name' [-Wunused-v=
ariable]

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sectio=
n mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 se=
ction mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings=
, 0 section mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings=
, 0 section mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 se=
ction mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 se=
ction mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, =
0 section mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sect=
ion mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 =
section mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
markeins_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 1 warning, 0 sec=
tion mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, =
0 section mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 1 warning, 0 secti=
on mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
msp71xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 sect=
ion mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 section=
 mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    depmod: WARNING: /home/buildslave/workspace/kernel-build@2/linux/build/=
_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ua=
s.ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/kernel-build@2/linux/build/=
_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/storage/ua=
s.ko needs unknown symbol usb_stor_adjust_quirks

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 5 warnings, 0 section mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@7/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/=
storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@7/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/=
storage/uas.ko needs unknown symbol usb_stor_adjust_quirks

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 5 warnings, 0 section mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@6/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/=
storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@6/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/=
storage/uas.ko needs unknown symbol usb_stor_adjust_quirks

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 =
warnings, 0 section mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@2/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/=
storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@2/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/=
storage/uas.ko needs unknown symbol usb_stor_adjust_quirks

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 32 warn=
ings, 0 section mismatches

Warnings:
    ./.tmp.config.1MApBAYnfo:8238:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.1MApBAYnfo:8241:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.1MApBAYnfo:8242:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.1MApBAYnfo:8244:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.1MApBAYnfo:8245:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.1MApBAYnfo:8249:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.1MApBAYnfo:8250:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.1MApBAYnfo:8308:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.1MApBAYnfo:8329:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.1MApBAYnfo:8354:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.1MApBAYnfo:8358:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.1MApBAYnfo:8466:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.1MApBAYnfo:8477:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.1MApBAYnfo:8487:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.1MApBAYnfo:8494:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.1MApBAYnfo:8497:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.1MApBAYnfo:8498:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.1MApBAYnfo:8500:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.1MApBAYnfo:8501:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.1MApBAYnfo:8502:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.1MApBAYnfo:8504:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.1MApBAYnfo:8513:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.1MApBAYnfo:8519:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.1MApBAYnfo:8539:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.1MApBAYnfo:8543:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.1MApBAYnfo:8544:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.1MApBAYnfo:8561:warning: override: reassigning to symbol =
USER_NS
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@5/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/=
storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@5/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191011/kernel/drivers/usb/=
storage/uas.ko needs unknown symbol usb_stor_adjust_quirks

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section =
mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sect=
ion mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 sect=
ion mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

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
    ./.tmp.config.2nLfWNGBAH:1453:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.2nLfWNGBAH:1456:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.2nLfWNGBAH:1457:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.2nLfWNGBAH:1459:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.2nLfWNGBAH:1460:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.2nLfWNGBAH:1464:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.2nLfWNGBAH:1465:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.2nLfWNGBAH:1523:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.2nLfWNGBAH:1544:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.2nLfWNGBAH:1569:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.2nLfWNGBAH:1573:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.2nLfWNGBAH:1681:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.2nLfWNGBAH:1692:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.2nLfWNGBAH:1702:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.2nLfWNGBAH:1709:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.2nLfWNGBAH:1712:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.2nLfWNGBAH:1713:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.2nLfWNGBAH:1715:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.2nLfWNGBAH:1716:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.2nLfWNGBAH:1717:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.2nLfWNGBAH:1719:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.2nLfWNGBAH:1728:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.2nLfWNGBAH:1734:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.2nLfWNGBAH:1754:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.2nLfWNGBAH:1758:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.2nLfWNGBAH:1759:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.2nLfWNGBAH:1776:warning: override: reassigning to symbol =
USER_NS
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]

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
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sect=
ion mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 se=
ction mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 se=
ction mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x840): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning,=
 0 section mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sect=
ion mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 sectio=
n mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 sec=
tion mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0 sectio=
n mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in reference=
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
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
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
    sound/soc/soc-pcm.c:1207:8: warning: unused variable 'name' [-Wunused-v=
ariable]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    sound/soc/soc-pcm.c:1207:8: warning: unused variable 'name' [-Wunused-v=
ariable]

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 4 errors, 1 warning, 0=
 section mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in reference=
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
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

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
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 1 warning, 0 secti=
on mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 1 warning, 0 secti=
on mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 1 warning, 0 secti=
on mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
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
    .config:1199:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section mis=
matches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section mis=
matches

Errors:
    arch/riscv/kernel/traps.c:130:17: error: implicit declaration of functi=
on 'get_break_insn_length' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mism=
atches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
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
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 sect=
ion mismatches

Errors:
    arch/mips/kernel/setup.c:582:30: error: 'builtin_cmdline' undeclared (f=
irst use in this function); did you mean 'builtin_driver'?

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 1 warning, 0 sect=
ion mismatches

Errors:
    arch/mips/kernel/setup.c:563:6: error: implicit declaration of function=
 'of_get_flat_dt_prop'; did you mean 'vm_get_page_prot'? [-Werror=3Dimplici=
t-function-declaration]
    arch/mips/kernel/setup.c:563:4: error: assignment to 'const char *' fro=
m 'int' makes pointer from integer without a cast [-Werror=3Dint-conversion=
]
    arch/mips/kernel/setup.c:603:3: error: implicit declaration of function=
 'of_scan_flat_dt' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 28 war=
nings, 0 section mismatches

Warnings:
    ./.tmp.config.jupBy2Bj9X:4597:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.jupBy2Bj9X:4600:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.jupBy2Bj9X:4601:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.jupBy2Bj9X:4603:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.jupBy2Bj9X:4604:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.jupBy2Bj9X:4608:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.jupBy2Bj9X:4609:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.jupBy2Bj9X:4667:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.jupBy2Bj9X:4688:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.jupBy2Bj9X:4713:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.jupBy2Bj9X:4717:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.jupBy2Bj9X:4825:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.jupBy2Bj9X:4836:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.jupBy2Bj9X:4846:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.jupBy2Bj9X:4853:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.jupBy2Bj9X:4856:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.jupBy2Bj9X:4857:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.jupBy2Bj9X:4859:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.jupBy2Bj9X:4860:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.jupBy2Bj9X:4861:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.jupBy2Bj9X:4863:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.jupBy2Bj9X:4872:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.jupBy2Bj9X:4878:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.jupBy2Bj9X:4898:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.jupBy2Bj9X:4902:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.jupBy2Bj9X:4903:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.jupBy2Bj9X:4920:warning: override: reassigning to symbol =
USER_NS
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    sound/soc/soc-pcm.c:1207:8: warning: unused variable 'name' [-Wunused-v=
ariable]

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
clang-built-linux/5da031e2.1c69fb81.5a1eb.e14f%40mx.google.com.
