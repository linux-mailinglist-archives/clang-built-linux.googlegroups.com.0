Return-Path: <clang-built-linux+bncBDT6TV45WMPRBKVB37ZAKGQE5FY7Q2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 86141171DA8
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 15:22:35 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id p12sf3779921qtu.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 06:22:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582813354; cv=pass;
        d=google.com; s=arc-20160816;
        b=EoG8lD+Eb60SUz723v7FSRorJCw0WNCHWY3yrLRNTN6NkzvKAHM/CK/mjJRRRA/qoa
         WIrqhqiELP8fEtBIKV0fYX8TFF0qsfHCISqflOPGYaxCmGko2Pu/khqdy9Ro/rPA4N5w
         ULvyZq9IrAnc6RoInhshdsg3h+wGTwZW0/O0XgezeP0shDYzCmEqKT5y1Dg84FNrGnPD
         /RNq4FBrOlUgBxBKIXNqEBQ2Nwf0keU0HxLMViODDMOXTJ7GLJ+oV+tY8zbssdoXpmDD
         BPlVDPtLTNsBzSUBHEQhZvtxO0wl6KIE+rabkOoZym2+/hDgwuiW79NrSPxcQyh8GWSX
         eeDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=gGU2p2vlb0JUDc2yTspHbuUozWIoXri9teGK05ybbzc=;
        b=aAGkWlqOTvUQKBf8sKEIuyF82a5gByAZV2RIYVrE9bcu1y2i6Y7HRux0WKwcOxR1qH
         n3vmvwKne4cXBVL60iRj88bmCipeyX2YBiVY/YIo0pPjGr3iPdHr10VTFoYNB8eO6kFY
         /lYyex4bOoZ/4bBq/NJCmWnvOmjpXUJ5iZQhhN+QKd+qSTIb1p8ArJSJwzZToqS9QH6p
         MsVd4vU7YKWqzNwk0k3/UvQhikBajv1/7uj6Rj5CDfYrUMwGFqcAV5hh5slmf09qCYvF
         N1oinYPju/liSITWqNMwshN4NQ9x0MaI1NonIM1hA90chCOJRgQEmyda7/eyDwFZZm2N
         ukFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=rGHvWYnE;
       spf=neutral (google.com: 2607:f8b0:4864:20::641 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gGU2p2vlb0JUDc2yTspHbuUozWIoXri9teGK05ybbzc=;
        b=sC2dGVMIH15/rB7U7jop8gbG07MpK3BQ4ttplkx/3qguIj6S3UHIvGrB4CgwobDl4i
         NqhEAMEmGhvxW2vBShCClmEXyU+yORS0WQTitD83d37oXnjvwyt96vCoK9MxJWjX4e0t
         14VUbF9e7PLGgS9xyZuDh/3uuapjgAJ9707ApXj2GQkfwnVE7D1gQ4be99HJr/ViTN0U
         Gq2u1MKLsSy2V2dTFyaon4NoseX00GNLeW7BfEPAtLtKY5DNv+LsOMfAk57UvQJukNEx
         iCOG4KwP9/yBG+UGP6CA6m1Ep+Pz8+Sky41TF4IEyt+qhOAjQab0+QauEtFQHdurOSh6
         CzKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gGU2p2vlb0JUDc2yTspHbuUozWIoXri9teGK05ybbzc=;
        b=Z3AqwfTwMHF4OV64H15PMw65z0bHWToMZ00rMveu73ZBcGrTy56Y8N6/vrQb36iAjr
         IbOFWPe/aLLh32/T8Sxvt9DGJQJid/+LHfEU/7bNJn/EcwCHqrcUmICJfpU5oau1OMgk
         2w6YNvdV8MUvFXH50fzPZyo64Dzu24OLsLv3caxK/VXF6ee8TSZZXUAfTeI2IZXGDY8S
         cmEAwHuccZoO4qgZANiiFQPNQt3WQp0lGwJOCvGuUFWA9L86813uPctoKM6s8snbqGe7
         BWAdCWNwsN2T226CgSfeoCHSzt1DBo+pNzuTkeHdX+Uc7tK4mbmh2FvZzZIROLEMH994
         l04A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVfNmB86R2geEnv1sI7BZ8cf2THQ1XEjP5OtmNSQKG95QGbkTpp
	+yDoT7854/ato5LLq0yIzG8=
X-Google-Smtp-Source: APXvYqzdx+XbBWBBjKBu29kpVCg4ZSMQcRMIE8sJS5P8xQcJlh3eJWctGxX+EJSreCXCy10qdsl0pQ==
X-Received: by 2002:a37:6854:: with SMTP id d81mr6163793qkc.157.1582813354146;
        Thu, 27 Feb 2020 06:22:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9b96:: with SMTP id d144ls1621229qke.1.gmail; Thu, 27
 Feb 2020 06:22:33 -0800 (PST)
X-Received: by 2002:a05:620a:1134:: with SMTP id p20mr6008776qkk.33.1582813353532;
        Thu, 27 Feb 2020 06:22:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582813353; cv=none;
        d=google.com; s=arc-20160816;
        b=ky/1PcRrnPrhVxKWyMGCgXJ12ftSUhG+WeynfbPfGiZKBDyyMenPHq4HSiySJrKf3V
         bQSgU9aUvXwfyeBAR/5My4mcnyc4NTtf3HjsGrXpnkdudQTei7Don+n8crqS4Mhmas49
         e8R4+AFj50awQ2fpvVpPyBsGR5LNYRSsBWYIVl1tesHbVHBHeqN87QaBfxnQGmvp5B1/
         kKtoF5ud5UYsDP4lkwBpxa13qeBpqNmNWBtSqtL7ouaswlceW4xayFvF2V7WOTtHLWwT
         OoyA3rLq7MCUhC3OR8npnevd8hkKAnD1Z2ZHK3Ru7FmkxLw9scHS8NrxV4jb1+BhqGdd
         ACFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=a7fs56akwfhVoqNa5TfGJpIGo0ZPSHe8PntrefRZsPs=;
        b=0y3P/WoX51ImYAZAc25J6KXUDzMTsgSxecqCi4j9RESD6VZZBtgbvczjmJZ8BoA2Yd
         NKe1yEXiwVkxKOVZjokzLMHL4+tUmYEL7so8nC+yD6UkcJ3ogeP38X+xKRVL+rqNQYrj
         Y+4puAsUeTziaB2E+lcKA/tI1AZGxwggoRdUJMH/yqRot4/sNKlp9I3GkU2tPXr75sGM
         7vRHmijZ8u6p1iyJxQ1gC0Aiof5DwnfJd22FZPj6tEP6dNpK92qzoCgtc80GkH/Wuih9
         BTsJmBGOsW8c/c1ntTJm5BIgtrqi0BbzrwlJ2HEEZshHlmNrK+2/m1AIUkIYN5O3OKUY
         9hTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=rGHvWYnE;
       spf=neutral (google.com: 2607:f8b0:4864:20::641 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id b15si226851qkh.5.2020.02.27.06.22.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 06:22:33 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::641 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id d9so1202442plo.11
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 06:22:33 -0800 (PST)
X-Received: by 2002:a17:902:b089:: with SMTP id p9mr14183plr.42.1582813347726;
        Thu, 27 Feb 2020 06:22:27 -0800 (PST)
Received: from [10.0.9.4] ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id k4sm7286649pfg.40.2020.02.27.06.22.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 06:22:26 -0800 (PST)
Message-ID: <5e57d0a2.1c69fb81.b44cf.2a50@mx.google.com>
Date: Thu, 27 Feb 2020 06:22:26 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20200227
X-Kernelci-Report-Type: build
X-Kernelci-Tree: next
X-Kernelci-Branch: master
Subject: next/master build: 219 builds: 84 failed, 135 passed, 101 errors,
 267 warnings (next-20200227)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=rGHvWYnE;       spf=neutral (google.com: 2607:f8b0:4864:20::641 is
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

next/master build: 219 builds: 84 failed, 135 passed, 101 errors, 267 warni=
ngs (next-20200227)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200227/

Tree: next
Branch: master
Git Describe: next-20200227
Git Commit: 10569a280f259f696c0b32fc1d45866d2fd33f53
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Build Failures Detected:

arc:
    allnoconfig: (gcc-8) FAIL
    axs103_defconfig: (gcc-8) FAIL
    axs103_smp_defconfig: (gcc-8) FAIL
    haps_hs_defconfig: (gcc-8) FAIL
    haps_hs_smp_defconfig: (gcc-8) FAIL
    haps_hs_smp_defconfig+kselftest: (gcc-8) FAIL
    hsdk_defconfig: (gcc-8) FAIL
    nsimosci_hs_defconfig: (gcc-8) FAIL
    nsimosci_hs_smp_defconfig: (gcc-8) FAIL
    tinyconfig: (gcc-8) FAIL
    vdk_hs38_defconfig: (gcc-8) FAIL
    vdk_hs38_smp_defconfig: (gcc-8) FAIL

arm:
    cm_x300_defconfig: (gcc-8) FAIL
    em_x270_defconfig: (gcc-8) FAIL
    eseries_pxa_defconfig: (gcc-8) FAIL
    pxa_defconfig: (gcc-8) FAIL

mips:
    32r2el_defconfig: (gcc-8) FAIL
    32r2el_defconfig+kselftest: (gcc-8) FAIL
    allnoconfig: (gcc-8) FAIL
    ar7_defconfig: (gcc-8) FAIL
    ath25_defconfig: (gcc-8) FAIL
    ath79_defconfig: (gcc-8) FAIL
    bcm47xx_defconfig: (gcc-8) FAIL
    bcm63xx_defconfig: (gcc-8) FAIL
    bigsur_defconfig: (gcc-8) FAIL
    bmips_be_defconfig: (gcc-8) FAIL
    bmips_stb_defconfig: (gcc-8) FAIL
    capcella_defconfig: (gcc-8) FAIL
    cavium_octeon_defconfig: (gcc-8) FAIL
    ci20_defconfig: (gcc-8) FAIL
    cobalt_defconfig: (gcc-8) FAIL
    cu1000-neo_defconfig: (gcc-8) FAIL
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
    rt305x_defconfig: (gcc-8) FAIL
    sb1250_swarm_defconfig: (gcc-8) FAIL
    tb0219_defconfig: (gcc-8) FAIL
    tb0226_defconfig: (gcc-8) FAIL
    tb0287_defconfig: (gcc-8) FAIL
    tinyconfig: (gcc-8) FAIL
    vocore2_defconfig: (gcc-8) FAIL
    workpad_defconfig: (gcc-8) FAIL
    xway_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 1 error, 1 warning
    axs103_defconfig (gcc-8): 1 error, 1 warning
    axs103_smp_defconfig (gcc-8): 1 error, 1 warning
    haps_hs_defconfig (gcc-8): 1 error, 1 warning
    haps_hs_smp_defconfig (gcc-8): 1 error, 1 warning
    haps_hs_smp_defconfig (gcc-8): 1 error, 1 warning
    hsdk_defconfig (gcc-8): 1 error, 1 warning
    nsimosci_hs_defconfig (gcc-8): 1 error, 1 warning
    nsimosci_hs_smp_defconfig (gcc-8): 1 error, 1 warning
    tinyconfig (gcc-8): 1 error, 1 warning
    vdk_hs38_defconfig (gcc-8): 1 error, 1 warning
    vdk_hs38_smp_defconfig (gcc-8): 1 error, 1 warning

arm64:
    allmodconfig (clang-8): 81 warnings
    defconfig (clang-8): 18 warnings
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning

arm:
    allmodconfig (gcc-8): 21 warnings
    aspeed_g4_defconfig (gcc-8): 4 warnings
    aspeed_g5_defconfig (gcc-8): 4 warnings
    cm_x300_defconfig (gcc-8): 1 error, 2 warnings
    em_x270_defconfig (gcc-8): 1 error, 2 warnings
    eseries_pxa_defconfig (gcc-8): 14 errors, 12 warnings
    multi_v5_defconfig (gcc-8): 4 warnings
    multi_v7_defconfig (gcc-8): 4 warnings
    multi_v7_defconfig (gcc-8): 4 warnings
    multi_v7_defconfig (gcc-8): 4 warnings
    multi_v7_defconfig (gcc-8): 4 warnings
    multi_v7_defconfig (gcc-8): 5 warnings
    pxa_defconfig (gcc-8): 3 errors, 6 warnings

i386:

mips:
    32r2el_defconfig (gcc-8): 1 error, 1 warning
    32r2el_defconfig (gcc-8): 1 error, 1 warning
    allnoconfig (gcc-8): 1 error, 1 warning
    ar7_defconfig (gcc-8): 1 error, 1 warning
    ath25_defconfig (gcc-8): 1 error, 1 warning
    ath79_defconfig (gcc-8): 1 error, 1 warning
    bcm47xx_defconfig (gcc-8): 1 error, 1 warning
    bcm63xx_defconfig (gcc-8): 1 error, 1 warning
    bigsur_defconfig (gcc-8): 1 error, 1 warning
    bmips_be_defconfig (gcc-8): 1 error, 1 warning
    bmips_stb_defconfig (gcc-8): 1 error, 1 warning
    capcella_defconfig (gcc-8): 1 error, 1 warning
    cavium_octeon_defconfig (gcc-8): 1 error, 1 warning
    ci20_defconfig (gcc-8): 1 error, 1 warning
    cobalt_defconfig (gcc-8): 1 error, 1 warning
    cu1000-neo_defconfig (gcc-8): 1 error, 1 warning
    db1xxx_defconfig (gcc-8): 1 error, 1 warning
    decstation_64_defconfig (gcc-8): 1 error, 1 warning
    decstation_defconfig (gcc-8): 1 error, 1 warning
    decstation_r4k_defconfig (gcc-8): 1 error, 1 warning
    e55_defconfig (gcc-8): 1 error, 1 warning
    fuloong2e_defconfig (gcc-8): 1 error, 1 warning
    gcw0_defconfig (gcc-8): 1 error, 1 warning
    gpr_defconfig (gcc-8): 1 error, 1 warning
    ip22_defconfig (gcc-8): 1 error, 1 warning
    ip27_defconfig (gcc-8): 3 errors, 2 warnings
    ip28_defconfig (gcc-8): 1 error, 1 warning
    ip32_defconfig (gcc-8): 1 error, 1 warning
    jazz_defconfig (gcc-8): 1 error, 1 warning
    jmr3927_defconfig (gcc-8): 1 error, 1 warning
    lasat_defconfig (gcc-8): 1 error, 1 warning
    lemote2f_defconfig (gcc-8): 1 error, 1 warning
    loongson1b_defconfig (gcc-8): 1 error, 1 warning
    loongson1c_defconfig (gcc-8): 1 error, 1 warning
    loongson3_defconfig (gcc-8): 1 error, 1 warning
    malta_defconfig (gcc-8): 1 error, 1 warning
    malta_kvm_defconfig (gcc-8): 1 error, 1 warning
    malta_kvm_guest_defconfig (gcc-8): 1 error, 1 warning
    malta_qemu_32r6_defconfig (gcc-8): 1 error, 1 warning
    maltaaprp_defconfig (gcc-8): 1 error, 1 warning
    maltasmvp_defconfig (gcc-8): 1 error, 1 warning
    maltasmvp_eva_defconfig (gcc-8): 1 error, 1 warning
    maltaup_defconfig (gcc-8): 1 error, 1 warning
    maltaup_xpa_defconfig (gcc-8): 1 error, 1 warning
    markeins_defconfig (gcc-8): 1 error, 1 warning
    mips_paravirt_defconfig (gcc-8): 1 error, 1 warning
    mpc30x_defconfig (gcc-8): 1 error, 1 warning
    msp71xx_defconfig (gcc-8): 1 error, 1 warning
    mtx1_defconfig (gcc-8): 1 error, 1 warning
    nlm_xlp_defconfig (gcc-8): 1 error, 1 warning
    nlm_xlr_defconfig (gcc-8): 1 error, 1 warning
    omega2p_defconfig (gcc-8): 1 error, 1 warning
    pic32mzda_defconfig (gcc-8): 1 error, 1 warning
    pistachio_defconfig (gcc-8): 1 error, 1 warning
    pnx8335_stb225_defconfig (gcc-8): 1 error, 1 warning
    qi_lb60_defconfig (gcc-8): 1 error, 1 warning
    rb532_defconfig (gcc-8): 1 error, 1 warning
    rbtx49xx_defconfig (gcc-8): 1 error, 1 warning
    rm200_defconfig (gcc-8): 1 error, 1 warning
    rt305x_defconfig (gcc-8): 1 error, 1 warning
    sb1250_swarm_defconfig (gcc-8): 1 error, 1 warning
    tb0219_defconfig (gcc-8): 1 error, 1 warning
    tb0226_defconfig (gcc-8): 1 error, 1 warning
    tb0287_defconfig (gcc-8): 1 error, 1 warning
    tinyconfig (gcc-8): 1 error, 1 warning
    vocore2_defconfig (gcc-8): 1 error, 1 warning
    workpad_defconfig (gcc-8): 1 error, 1 warning
    xway_defconfig (gcc-8): 1 error, 1 warning

riscv:
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    tinyconfig (gcc-8): 1 warning

Errors summary:

    80   mm/memory.c:1523:41: error: implicit declaration of function =E2=
=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werr=
or=3Dimplicit-function-declaration]
    3    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] undef=
ined!
    2    arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=
=3D width of type [-Werror=3Dshift-count-overflow]
    1    sound/soc/codecs/wm9712.c:94:3: error: =E2=80=98const struct regma=
p_config=E2=80=99 has no member named =E2=80=98num_reg_defaults=E2=80=99
    1    sound/soc/codecs/wm9712.c:93:3: error: =E2=80=98const struct regma=
p_config=E2=80=99 has no member named =E2=80=98reg_defaults=E2=80=99
    1    sound/soc/codecs/wm9712.c:91:3: error: =E2=80=98const struct regma=
p_config=E2=80=99 has no member named =E2=80=98volatile_reg=E2=80=99
    1    sound/soc/codecs/wm9712.c:89:3: error: =E2=80=98const struct regma=
p_config=E2=80=99 has no member named =E2=80=98cache_type=E2=80=99
    1    sound/soc/codecs/wm9712.c:88:3: error: =E2=80=98const struct regma=
p_config=E2=80=99 has no member named =E2=80=98max_register=E2=80=99
    1    sound/soc/codecs/wm9712.c:87:3: error: =E2=80=98const struct regma=
p_config=E2=80=99 has no member named =E2=80=98val_bits=E2=80=99
    1    sound/soc/codecs/wm9712.c:86:3: error: =E2=80=98const struct regma=
p_config=E2=80=99 has no member named =E2=80=98reg_stride=E2=80=99
    1    sound/soc/codecs/wm9712.c:85:3: error: =E2=80=98const struct regma=
p_config=E2=80=99 has no member named =E2=80=98reg_bits=E2=80=99
    1    sound/soc/codecs/wm9712.c:84:35: error: storage size of =E2=80=98w=
m9712_regmap_config=E2=80=99 isn=E2=80=99t known
    1    sound/soc/codecs/wm9712.c:84:21: error: variable =E2=80=98wm9712_r=
egmap_config=E2=80=99 has initializer but incomplete type
    1    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of fu=
nction =E2=80=98regmap_ac97_default_volatile=E2=80=99 [-Werror=3Dimplicit-f=
unction-declaration]
    1    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of fu=
nction =E2=80=98snd_soc_component_exit_regmap=E2=80=99; did you mean =E2=80=
=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-declara=
tion]
    1    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of fu=
nction =E2=80=98snd_soc_component_init_regmap=E2=80=99; did you mean =E2=80=
=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-declara=
tion]
    1    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of f=
unction =E2=80=98regmap_init_ac97=E2=80=99; did you mean =E2=80=98memmap_in=
it_zone=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    1    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9713.ko] undef=
ined!
    1    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9705.ko] undef=
ined!

Warnings summary:

    81   cc1: some warnings being treated as errors
    36   1 warning generated.
    14   drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warni=
ng: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define=
 of a different macro [-Wheader-guard]
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    9    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    9    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    9    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    9    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    8    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    6    2 warnings generated.
    4    kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=
=80=99 declared =E2=80=98static=E2=80=99 but never defined [-Wunused-functi=
on]
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    2    fs/btrfs/backref.c:394:30: warning: suggest braces around initiali=
zation of subobject [-Wmissing-braces]
    2    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest br=
aces around initialization of subobject [-Wmissing-braces]
    2    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2692:80=
: warning: suggest braces around initialization of subobject [-Wmissing-bra=
ces]
    2    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
    2    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    2    3 warnings generated.
    1    sound/soc/codecs/wm9712.c:93:18: warning: excess elements in struc=
t initializer
    1    sound/soc/codecs/wm9712.c:91:18: warning: excess elements in struc=
t initializer
    1    sound/soc/codecs/wm9712.c:89:16: warning: excess elements in struc=
t initializer
    1    sound/soc/codecs/wm9712.c:88:18: warning: excess elements in struc=
t initializer
    1    sound/soc/codecs/wm9712.c:87:14: warning: excess elements in struc=
t initializer
    1    sound/soc/codecs/wm9712.c:86:16: warning: excess elements in struc=
t initializer
    1    sound/soc/codecs/wm9712.c:85:14: warning: excess elements in struc=
t initializer
    1    sound/soc/codecs/wm9712.c:653:10: warning: assignment to =E2=80=98=
struct regmap *=E2=80=99 from =E2=80=98int=E2=80=99 makes pointer from inte=
ger without a cast [-Wint-conversion]
    1    net/sched/cls_flower.c:331:1: warning: the frame size of 1032 byte=
s is larger than 1024 bytes [-Wframe-larger-than=3D]
    1    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
    1    mm/shmem.c:2745:35: warning: variable 'shmem_falloc_waitq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    include/linux/kernel.h:47:25: warning: excess elements in struct i=
nitializer
    1    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    1    fs/proc/base.c:1985:35: warning: variable 'wq' is uninitialized wh=
en used within its own initialization [-Wuninitialized]
    1    fs/nfs/dir.c:464:34: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
    1    fs/nfs/dir.c:1638:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
    1    fs/namei.c:3213:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1    fs/namei.c:1736:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized =
when used within its own initialization [-Wuninitialized]
    1    fs/cifs/readdir.c:84:34: warning: variable 'wq' is uninitialized w=
hen used within its own initialization [-Wuninitialized]
    1    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1    drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning: cast from poi=
nter to integer of different size [-Wpointer-to-int-cast]
    1    drivers/scsi/lpfc/lpfc_sli.c:11910:34: warning: variable 'done_q' =
is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/lpfc/lpfc_scsi.c:4728:34: warning: variable 'waitq' i=
s uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7: warning: vari=
able 'rate_idx' is used uninitialized whenever 'if' condition is false [-Ws=
ometimes-uninitialized]
    1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:184:13: warning: var=
iable 'rate_idx' is used uninitialized whenever 'if' condition is false [-W=
sometimes-uninitialized]
    1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:175:7: warning: vari=
able 'rate_idx' is used uninitialized whenever 'if' condition is false [-Ws=
ometimes-uninitialized]
    1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:139:13: note: initia=
lize the variable 'rate_idx' to silence this warning
    1    drivers/net/usb/lan78xx.c:2659:34: warning: variable 'unlink_wakeu=
p' is uninitialized when used within its own initialization [-Wuninitialize=
d]
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    drivers/net/ethernet/amazon/ena/ena_netdev.c:310:38: warning: sugg=
est braces around initialization of subobject [-Wmissing-braces]
    1    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/hwtracing/coresight/coresight-cti-sysfs.c:948:11: warning:=
 address of array 'grp->sig_types' will always evaluate to 'true' [-Wpointe=
r-bool-conversion]
    1    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:56: wa=
rning: address of 'pipe_ctx->stream_res' will always evaluate to 'true' [-W=
pointer-bool-conversion]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:31: wa=
rning: address of 'pipe_ctx->plane_res' will always evaluate to 'true' [-Wp=
ointer-bool-conversion]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2690:53=
: warning: suggest braces around initialization of subobject [-Wmissing-bra=
ces]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:342=
:53: warning: suggest braces around initialization of subobject [-Wmissing-=
braces]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:116=
:62: warning: suggest braces around initialization of subobject [-Wmissing-=
braces]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:297:4=
1: warning: suggest braces around initialization of subobject [-Wmissing-br=
aces]
    1    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8558:4=
3: warning: suggest braces around initialization of subobject [-Wmissing-br=
aces]
    1    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/android/binderfs.c:657:41: warning: suggest braces around =
initialization of subobject [-Wmissing-braces]
    1    cc1: all warnings being treated as errors
    1    /tmp/ccgeLqJj.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccgeLqJj.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1167:warning: override: UNWINDER_GUESS changes choice stat=
e

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning=
, 0 section mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 21 warnings, 0 section =
mismatches

Warnings:
    /tmp/ccgeLqJj.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/ccgeLqJj.s:18191: Warning: using r15 results in unpredictable beha=
viour
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
    drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning: cast from pointer =
to integer of different size [-Wpointer-to-int-cast]
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

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 81 warnings, 0 sect=
ion mismatches

Warnings:
    fs/proc/base.c:1985:35: warning: variable 'wq' is uninitialized when us=
ed within its own initialization [-Wuninitialized]
    1 warning generated.
    mm/shmem.c:2745:35: warning: variable 'shmem_falloc_waitq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitialized w=
hen used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/namei.c:1736:34: warning: variable 'wq' is uninitialized when used w=
ithin its own initialization [-Wuninitialized]
    fs/namei.c:3213:34: warning: variable 'wq' is uninitialized when used w=
ithin its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/android/binderfs.c:657:41: warning: suggest braces around initi=
alization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/hwtracing/coresight/coresight-cti-sysfs.c:948:11: warning: addr=
ess of array 'grp->sig_types' will always evaluate to 'true' [-Wpointer-boo=
l-conversion]
    1 warning generated.
    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/cifs/readdir.c:84:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/btrfs/backref.c:394:30: warning: suggest braces around initializatio=
n of subobject [-Wmissing-braces]
    1 warning generated.
    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/nfs/dir.c:464:34: warning: variable 'wq' is uninitialized when used =
within its own initialization [-Wuninitialized]
    fs/nfs/dir.c:1638:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest braces =
around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake' is u=
ninitialized when used within its own initialization [-Wuninitialized]
    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake' is u=
ninitialized when used within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/net/ethernet/amazon/ena/ena_netdev.c:310:38: warning: suggest b=
races around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/net/usb/lan78xx.c:2659:34: warning: variable 'unlink_wakeup' is=
 uninitialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7: warning: variable =
'rate_idx' is used uninitialized whenever 'if' condition is false [-Wsometi=
mes-uninitialized]
    drivers/net/wireless/ath/ath11k/debugfs_sta.c:184:13: warning: variable=
 'rate_idx' is used uninitialized whenever 'if' condition is false [-Wsomet=
imes-uninitialized]
    drivers/net/wireless/ath/ath11k/debugfs_sta.c:175:7: warning: variable =
'rate_idx' is used uninitialized whenever 'if' condition is false [-Wsometi=
mes-uninitialized]
    drivers/net/wireless/ath/ath11k/debugfs_sta.c:139:13: note: initialize =
the variable 'rate_idx' to silence this warning
    3 warnings generated.
    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is uninitiali=
zed when used within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/scsi/lpfc/lpfc_sli.c:11910:34: warning: variable 'done_q' is un=
initialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/scsi/lpfc/lpfc_scsi.c:4728:34: warning: variable 'waitq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8558:43: wa=
rning: suggest braces around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:116:62: =
warning: suggest braces around initialization of subobject [-Wmissing-brace=
s]
    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:342:53: =
warning: suggest braces around initialization of subobject [-Wmissing-brace=
s]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:297:41: wa=
rning: suggest braces around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:31: warning=
: address of 'pipe_ctx->plane_res' will always evaluate to 'true' [-Wpointe=
r-bool-conversion]
    drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:56: warning=
: address of 'pipe_ctx->stream_res' will always evaluate to 'true' [-Wpoint=
er-bool-conversion]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2690:53: war=
ning: suggest braces around initialization of subobject [-Wmissing-braces]
    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2692:80: war=
ning: suggest braces around initialization of subobject [-Wmissing-braces]
    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2692:80: war=
ning: suggest braces around initialization of subobject [-Wmissing-braces]
    3 warnings generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

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
allnoconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section mism=
atches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section mis=
matches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section m=
ismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 se=
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

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 se=
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
ath25_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section=
 mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section=
 mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section=
 mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section =
mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 secti=
on mismatches

Errors:
    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] undefined!

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 18 warnings, 0 section=
 mismatches

Warnings:
    fs/btrfs/backref.c:394:30: warning: suggest braces around initializatio=
n of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest braces =
around initialization of subobject [-Wmissing-braces]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning: '=
__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of a=
 different macro [-Wheader-guard]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=80=99=
 declared =E2=80=98static=E2=80=99 but never defined [-Wunused-function]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 1 warning, 0 section mismatches

Warnings:
    kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=80=99=
 declared =E2=80=98static=E2=80=99 but never defined [-Wunused-function]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 1 warning, 0 section mismatches

Warnings:
    kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=80=99=
 declared =E2=80=98static=E2=80=99 but never defined [-Wunused-function]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=80=99=
 declared =E2=80=98static=E2=80=99 but never defined [-Wunused-function]

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section m=
ismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
em_x270_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 secti=
on mismatches

Errors:
    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] undefined!

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 14 errors, 12 warnings, =
0 section mismatches

Errors:
    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of functio=
n =E2=80=98regmap_ac97_default_volatile=E2=80=99 [-Werror=3Dimplicit-functi=
on-declaration]
    sound/soc/codecs/wm9712.c:84:21: error: variable =E2=80=98wm9712_regmap=
_config=E2=80=99 has initializer but incomplete type
    sound/soc/codecs/wm9712.c:85:3: error: =E2=80=98const struct regmap_con=
fig=E2=80=99 has no member named =E2=80=98reg_bits=E2=80=99
    sound/soc/codecs/wm9712.c:86:3: error: =E2=80=98const struct regmap_con=
fig=E2=80=99 has no member named =E2=80=98reg_stride=E2=80=99
    sound/soc/codecs/wm9712.c:87:3: error: =E2=80=98const struct regmap_con=
fig=E2=80=99 has no member named =E2=80=98val_bits=E2=80=99
    sound/soc/codecs/wm9712.c:88:3: error: =E2=80=98const struct regmap_con=
fig=E2=80=99 has no member named =E2=80=98max_register=E2=80=99
    sound/soc/codecs/wm9712.c:89:3: error: =E2=80=98const struct regmap_con=
fig=E2=80=99 has no member named =E2=80=98cache_type=E2=80=99
    sound/soc/codecs/wm9712.c:91:3: error: =E2=80=98const struct regmap_con=
fig=E2=80=99 has no member named =E2=80=98volatile_reg=E2=80=99
    sound/soc/codecs/wm9712.c:93:3: error: =E2=80=98const struct regmap_con=
fig=E2=80=99 has no member named =E2=80=98reg_defaults=E2=80=99
    sound/soc/codecs/wm9712.c:94:3: error: =E2=80=98const struct regmap_con=
fig=E2=80=99 has no member named =E2=80=98num_reg_defaults=E2=80=99
    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of functi=
on =E2=80=98regmap_init_ac97=E2=80=99; did you mean =E2=80=98memmap_init_zo=
ne=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of functio=
n =E2=80=98snd_soc_component_init_regmap=E2=80=99; did you mean =E2=80=98sn=
d_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of functio=
n =E2=80=98snd_soc_component_exit_regmap=E2=80=99; did you mean =E2=80=98sn=
d_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    sound/soc/codecs/wm9712.c:84:35: error: storage size of =E2=80=98wm9712=
_regmap_config=E2=80=99 isn=E2=80=99t known

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    sound/soc/codecs/wm9712.c:85:14: warning: excess elements in struct ini=
tializer
    sound/soc/codecs/wm9712.c:86:16: warning: excess elements in struct ini=
tializer
    sound/soc/codecs/wm9712.c:87:14: warning: excess elements in struct ini=
tializer
    sound/soc/codecs/wm9712.c:88:18: warning: excess elements in struct ini=
tializer
    sound/soc/codecs/wm9712.c:89:16: warning: excess elements in struct ini=
tializer
    sound/soc/codecs/wm9712.c:91:18: warning: excess elements in struct ini=
tializer
    sound/soc/codecs/wm9712.c:93:18: warning: excess elements in struct ini=
tializer
    include/linux/kernel.h:47:25: warning: excess elements in struct initia=
lizer
    sound/soc/codecs/wm9712.c:653:10: warning: assignment to =E2=80=98struc=
t regmap *=E2=80=99 from =E2=80=98int=E2=80=99 makes pointer from integer w=
ithout a cast [-Wint-conversion]
    cc1: some warnings being treated as errors

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
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section =
mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section m=
ismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
haps_hs_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 war=
ning, 0 section mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section m=
ismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section =
mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 2 warnings, 0 sectio=
n mismatches

Errors:
    arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=3D wi=
dth of type [-Werror=3Dshift-count-overflow]
    arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=3D wi=
dth of type [-Werror=3Dshift-count-overflow]
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: all warnings being treated as errors
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
ip28_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section =
mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section =
mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section =
mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
lasat_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section=
 mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
malta_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section=
 mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning,=
 0 section mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning,=
 0 section mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
markeins_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
mpc30x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
msp71xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section =
mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

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

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

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

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 4 warnings, 0 section mismatches

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

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 4 warnings, 0 section mismatches

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

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 =
warnings, 0 section mismatches

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

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warni=
ngs, 0 section mismatches

Warnings:
    net/sched/cls_flower.c:331:1: warning: the frame size of 1032 bytes is =
larger than 1024 bytes [-Wframe-larger-than=3D]
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
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
omega2p_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 3 errors, 6 warnings, 0 section =
mismatches

Errors:
    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9713.ko] undefined!
    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] undefined!
    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9705.ko] undefined!

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9713

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section=
 mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section=
 mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section mism=
atches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section misma=
tches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1167:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section =
mismatches

Errors:
    mm/memory.c:1523:41: error: implicit declaration of function =E2=80=98p=
te_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=3Dim=
plicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
clang-built-linux/5e57d0a2.1c69fb81.b44cf.2a50%40mx.google.com.
