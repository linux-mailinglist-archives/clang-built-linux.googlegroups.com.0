Return-Path: <clang-built-linux+bncBDT6TV45WMPRBDPYYLZQKGQEWZRSBLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CAD1882CB
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:01:19 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id ne3sf6442036pjb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:01:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584446478; cv=pass;
        d=google.com; s=arc-20160816;
        b=v71Xy8W4kTKbgkb7bF8ON1z23ppngMuuZf5DwnHD2yEAJG9/XEp4rG8OgAJWNei67O
         8t6EZfRqqM9O/3i2MRrJoK+9d3nUdoxzqYpVniXMOy5/SjVzDVCaeBGIVpuArqcm5B1t
         wMtf+JBmHOGNVq9gIX35ZDNY+VGnPKCuGuTJmmHQMFbIpISxnmRK7mthKw0lIc9fbuNm
         NMVR3taF8eKXwoDID8ee5TJOcKPkG3O41h50tfbI19lXWWL4tXvetoA2LFwai90+VwLe
         d9PvdC0fI8/ceivFMc4cBm5yXDleRc4yoFGhsINeZVU4eokfS9bfR9oL3M4Bs85tnk3E
         YC2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=xTF/+85tEf7i02Jl1ZrEjz/rHLXrM/UyT21g6BTEUl8=;
        b=qdWyjti5O/hAjUH8YKPMIoIcgZU4BYjzQ/xZUJ/5RiRcH8jZrfHoXjfEERyyhHQHPj
         QSO5mTjNyf8GR9n9xyc+Xne8m4C5pBGrY9cha6CBVtCHVfd20heqjebMBoP9bfgqYvq2
         A35s0nHTxjK/9fmOR+nadB3o0kP2cmmk/ZZ1Xp610TVUhRHLnQ/QqOouz8kWDuDdZmaX
         ISJAH89NkqPh3UjXrIYjIBtLITfwybvwDCJ8ww4c052OSc1Ndif6oUAYIR1uMWKWnRKO
         +T0NwgOK0Ee+kfmzw86NDLRfzPXZ/2LmKQFIZuOGYDV+qFnGPzo7wW2yo8haHhds8Mjh
         8CDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=C8OHb9MX;
       spf=neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xTF/+85tEf7i02Jl1ZrEjz/rHLXrM/UyT21g6BTEUl8=;
        b=sh2aisNh2177ej/xSCPZEDNi5g2eGDLa08Xe/+SJsvei8hvUV8lFLJ4rkYfRmBlE17
         OxqQyRQo6r1Ukhxw+9arw5f3KonOyIl5B7fBQdxhKwSrjt9N1l016o4E9+p1WS6QrRkJ
         eo1nXjiIWiqdDZX0AQumdEcJgZ13e+Iin9OKbin8nzg0NZ0ZgRiRhJVTnMBOIYCnDWzv
         2snJC3wFIDkZhBQGyVaKRV4sNOZl7g+1DQs+9gkJsB0yTXUovFpbxg919/DE5zAhn4IH
         PtAdYfYBO+0+WrwMZjEe2rxz6d5anFQ3U9Sb1a/jy+hlQGgrgX12AQVQY88cJpr075yw
         8WVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xTF/+85tEf7i02Jl1ZrEjz/rHLXrM/UyT21g6BTEUl8=;
        b=sokv59kBy8P6wNye390txJhe8/acC+tmhNc9QApvg5djm1G2XSb0CGq2kiZ0WA10zh
         hKT4bWvitYQQzoyjAfS36q5x9L3RJgIMP1N+4+TO8Y0KognlcKU48eNscDidtPl70bGx
         YkbNNHr4+uYMI1RH2LW9ebz0XnmePpvKTdI1s5Ee7JVYrjuoLrukZ2DwxkmUgjke2Yes
         lGajLMSCEOQgj9v2CMmYGHkPBoUJ3dwUJjrcmuYdwTw9F0lZ+F40tCYZ0rSawgnG+uiO
         V2mE6s1YwjcCYrmD7J4G7p1y8UeRitzfhj43eM1fmC4bd2ZXuTYQhVXUhICAULWyI996
         mLxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1kpxdZZzd0ivmFpkvmI8tP7qC+HvQZrch3Hm56MwSo+S1n4YAa
	H1XaGLeak2K4/ENvogf0EoQ=
X-Google-Smtp-Source: ADFU+vvyzp9KHrdeUb1xK7lxNTx5Mun8VRNoN4zNQL/L+luRe79TWoW59kNMM1Qm0UHK7TY6RiddKQ==
X-Received: by 2002:a62:4d87:: with SMTP id a129mr4695782pfb.116.1584446477391;
        Tue, 17 Mar 2020 05:01:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8597:: with SMTP id w23ls10298526pfn.8.gmail; Tue, 17
 Mar 2020 05:01:16 -0700 (PDT)
X-Received: by 2002:aa7:83cb:: with SMTP id j11mr5010597pfn.241.1584446476707;
        Tue, 17 Mar 2020 05:01:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584446476; cv=none;
        d=google.com; s=arc-20160816;
        b=WCqtnZ3E0+9wRWjcFlwoyneYDRP6xDPtwA+rcktX4g+W2kYRM0o6JShV/6poIcB6uL
         nsoSIthVBqOkXC2RgcrqND3FJtNDLvXzA01EAxkM8nM4DZCQVkgD+PT5k+YvE9lKL+Ju
         QhPAsrfCPt4Kh4q4/6KBjT0V83LS07MSvgXqCewhMCjqqr0v+L/9fMN66Btjf+Quvjbs
         icp9GDBDjOpE51Ma35jNWEJ6cYPl0NZ4FQnCAx3635aCELdygv3E3p3Vc+kisSRWNfxF
         xBGcmbIHb+HwFO36mLSS51Pbyk3w4PEyk5ucgwbjKy8hR+VO4LcGcD0+gDd0Du60rey6
         fgVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=uDgraQG509jmL0CBV/r7XeLNwXONoOopUlWOoen91fA=;
        b=0NWK0cjY7R71cDJPFu6aks7L/mSW0utbeqZa5NjrDaOL/7VbV8vuCxISzqyZi5oUW+
         0X2TGVrzdIwORQd2gZbl3hkKYyKF7yF0gpBNH0gHXM3Gl5xQcQlv4TxVrD6aJ1GG+3it
         xdxJ94zg2J5XWSHl80btt3LiKx9evSGA/oQR4UMH605P84N52jxyCo6XLVxid2bBGHWx
         jMFFSWToIxZs28WXLj0ARiOnSbBwb2QtXKi1TsZDckYVD0t7dr/EXp+X3EAQjrGelwiY
         kjK6LYeJrjcUst6S5XsEnFuh32QOcn8LaUCu4oE6m8ZLItaKsb7Byd4LugXXaom31P1r
         nCsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=C8OHb9MX;
       spf=neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 74si164083pfy.0.2020.03.17.05.01.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 05:01:16 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id b72so11818193pfb.11
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 05:01:16 -0700 (PDT)
X-Received: by 2002:a63:544:: with SMTP id 65mr4684611pgf.72.1584446471833;
        Tue, 17 Mar 2020 05:01:11 -0700 (PDT)
Received: from [10.0.9.4] ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id i187sm3059641pfg.33.2020.03.17.05.01.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 05:01:10 -0700 (PDT)
Message-ID: <5e70bc06.1c69fb81.5a1f8.bbb4@mx.google.com>
Date: Tue, 17 Mar 2020 05:01:10 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Branch: master
X-Kernelci-Tree: next
X-Kernelci-Kernel: next-20200317
X-Kernelci-Report-Type: build
Subject: next/master build: 329 builds: 20 failed, 309 passed, 65 errors,
 1332 warnings (next-20200317)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=C8OHb9MX;       spf=neutral (google.com: 2607:f8b0:4864:20::443 is
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

next/master build: 329 builds: 20 failed, 309 passed, 65 errors, 1332 warni=
ngs (next-20200317)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200317/

Tree: next
Branch: master
Git Describe: next-20200317
Git Commit: ec947d0be5f959fff44d59161401515a98a837f3
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
Built: 7 unique architectures

Build Failures Detected:

arm64:
    allmodconfig: (clang-9) FAIL
    allmodconfig: (gcc-8) FAIL

arm:
    allmodconfig: (clang-9) FAIL
    cm_x300_defconfig: (clang-9) FAIL
    em_x270_defconfig: (clang-9) FAIL
    eseries_pxa_defconfig: (clang-9) FAIL
    pxa_defconfig: (clang-9) FAIL
    rpc_defconfig: (clang-9) FAIL
    vf610m4_defconfig: (clang-9) FAIL
    allmodconfig: (gcc-8) FAIL
    cm_x300_defconfig: (gcc-8) FAIL
    em_x270_defconfig: (gcc-8) FAIL
    eseries_pxa_defconfig: (gcc-8) FAIL
    pxa_defconfig: (gcc-8) FAIL
    vf610m4_defconfig: (gcc-8) FAIL

mips:
    ip27_defconfig: (gcc-8) FAIL
    mtx1_defconfig: (gcc-8) FAIL

riscv:
    allnoconfig: (gcc-8) FAIL
    tinyconfig: (gcc-8) FAIL

x86_64:
    x86_64_defconfig+kvm_guest: (clang-9) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 1 warning
    axs103_defconfig (gcc-8): 1 warning
    axs103_smp_defconfig (gcc-8): 1 warning
    haps_hs_defconfig (gcc-8): 1 warning
    haps_hs_smp_defconfig (gcc-8): 1 warning
    haps_hs_smp_defconfig (gcc-8): 1 warning
    hsdk_defconfig (gcc-8): 1 warning
    nsimosci_hs_defconfig (gcc-8): 1 warning
    nsimosci_hs_smp_defconfig (gcc-8): 1 warning
    tinyconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 1 warning
    vdk_hs38_smp_defconfig (gcc-8): 1 warning

arm64:
    allmodconfig (clang-9): 4 errors, 11 warnings
    allmodconfig (gcc-8): 4 errors, 2 warnings
    allnoconfig (gcc-8): 1 warning
    defconfig (clang-9): 36 warnings
    defconfig (gcc-8): 36 warnings
    defconfig (gcc-8): 36 warnings
    defconfig (gcc-8): 36 warnings
    defconfig (gcc-8): 37 warnings
    tinyconfig (gcc-8): 1 warning

arm:
    allmodconfig (gcc-8): 4 errors, 20 warnings
    allmodconfig (clang-9): 4 errors, 37 warnings
    allnoconfig (gcc-8): 1 warning
    am200epdkit_defconfig (clang-9): 2 warnings
    am200epdkit_defconfig (gcc-8): 1 warning
    aspeed_g4_defconfig (gcc-8): 5 warnings
    aspeed_g4_defconfig (clang-9): 7 warnings
    aspeed_g5_defconfig (gcc-8): 5 warnings
    aspeed_g5_defconfig (clang-9): 6 warnings
    assabet_defconfig (clang-9): 3 warnings
    assabet_defconfig (gcc-8): 1 warning
    at91_dt_defconfig (gcc-8): 1 warning
    at91_dt_defconfig (clang-9): 2 warnings
    axm55xx_defconfig (gcc-8): 1 warning
    axm55xx_defconfig (clang-9): 2 warnings
    badge4_defconfig (gcc-8): 1 warning
    badge4_defconfig (clang-9): 3 warnings
    bcm2835_defconfig (gcc-8): 1 warning
    bcm2835_defconfig (clang-9): 2 warnings
    cerfcube_defconfig (clang-9): 3 warnings
    cerfcube_defconfig (gcc-8): 1 warning
    clps711x_defconfig (clang-9): 2 warnings
    clps711x_defconfig (gcc-8): 1 warning
    cm_x2xx_defconfig (gcc-8): 1 warning
    cm_x2xx_defconfig (clang-9): 3 warnings
    cm_x300_defconfig (clang-9): 1 error, 5 warnings
    cm_x300_defconfig (gcc-8): 1 error, 3 warnings
    cns3420vb_defconfig (gcc-8): 1 warning
    cns3420vb_defconfig (clang-9): 2 warnings
    colibri_pxa270_defconfig (clang-9): 2 warnings
    colibri_pxa270_defconfig (gcc-8): 1 warning
    colibri_pxa300_defconfig (gcc-8): 1 warning
    colibri_pxa300_defconfig (clang-9): 3 warnings
    collie_defconfig (clang-9): 3 warnings
    collie_defconfig (gcc-8): 1 warning
    corgi_defconfig (gcc-8): 1 warning
    corgi_defconfig (clang-9): 2 warnings
    davinci_all_defconfig (gcc-8): 1 warning
    davinci_all_defconfig (clang-9): 2 warnings
    dove_defconfig (clang-9): 2 warnings
    dove_defconfig (gcc-8): 1 warning
    ebsa110_defconfig (gcc-8): 1 warning
    ebsa110_defconfig (clang-9): 3 warnings
    efm32_defconfig (clang-9): 2 warnings
    efm32_defconfig (gcc-8): 1 warning
    em_x270_defconfig (gcc-8): 1 error, 3 warnings
    em_x270_defconfig (clang-9): 1 error, 5 warnings
    ep93xx_defconfig (gcc-8): 1 warning
    ep93xx_defconfig (clang-9): 3 warnings
    eseries_pxa_defconfig (gcc-8): 14 errors, 13 warnings
    eseries_pxa_defconfig (clang-9): 5 errors, 5 warnings
    exynos_defconfig (clang-9): 2 warnings
    exynos_defconfig (gcc-8): 1 warning
    ezx_defconfig (gcc-8): 1 warning
    ezx_defconfig (clang-9): 2 warnings
    footbridge_defconfig (clang-9): 3 warnings
    footbridge_defconfig (gcc-8): 1 warning
    gemini_defconfig (clang-9): 2 warnings
    gemini_defconfig (gcc-8): 1 warning
    h3600_defconfig (clang-9): 2 warnings
    h3600_defconfig (gcc-8): 1 warning
    h5000_defconfig (gcc-8): 1 warning
    h5000_defconfig (clang-9): 3 warnings
    hackkit_defconfig (clang-9): 3 warnings
    hackkit_defconfig (gcc-8): 1 warning
    hisi_defconfig (gcc-8): 1 warning
    hisi_defconfig (clang-9): 2 warnings
    imote2_defconfig (clang-9): 2 warnings
    imote2_defconfig (gcc-8): 1 warning
    imx_v4_v5_defconfig (clang-9): 2 warnings
    imx_v4_v5_defconfig (gcc-8): 1 warning
    imx_v6_v7_defconfig (clang-9): 2 warnings
    imx_v6_v7_defconfig (gcc-8): 1 warning
    integrator_defconfig (gcc-8): 2 warnings
    integrator_defconfig (clang-9): 3 warnings
    iop32x_defconfig (gcc-8): 1 warning
    iop32x_defconfig (clang-9): 3 warnings
    ixp4xx_defconfig (clang-9): 3 warnings
    ixp4xx_defconfig (gcc-8): 1 warning
    jornada720_defconfig (gcc-8): 1 warning
    jornada720_defconfig (clang-9): 3 warnings
    keystone_defconfig (gcc-8): 1 warning
    keystone_defconfig (clang-9): 2 warnings
    lart_defconfig (clang-9): 3 warnings
    lart_defconfig (gcc-8): 1 warning
    lpc18xx_defconfig (clang-9): 2 warnings
    lpc18xx_defconfig (gcc-8): 1 warning
    lpc32xx_defconfig (gcc-8): 1 warning
    lpc32xx_defconfig (clang-9): 2 warnings
    lpd270_defconfig (clang-9): 3 warnings
    lpd270_defconfig (gcc-8): 1 warning
    lubbock_defconfig (gcc-8): 1 warning
    lubbock_defconfig (clang-9): 3 warnings
    magician_defconfig (gcc-8): 1 warning
    magician_defconfig (clang-9): 2 warnings
    mainstone_defconfig (gcc-8): 1 warning
    mainstone_defconfig (clang-9): 3 warnings
    milbeaut_m10v_defconfig (gcc-8): 1 warning
    milbeaut_m10v_defconfig (clang-9): 4 warnings
    mini2440_defconfig (gcc-8): 1 warning
    mini2440_defconfig (clang-9): 3 warnings
    mmp2_defconfig (gcc-8): 1 warning
    mmp2_defconfig (clang-9): 2 warnings
    moxart_defconfig (clang-9): 2 warnings
    moxart_defconfig (gcc-8): 1 warning
    mps2_defconfig (clang-9): 2 warnings
    mps2_defconfig (gcc-8): 1 warning
    multi_v4t_defconfig (gcc-8): 2 warnings
    multi_v4t_defconfig (clang-9): 4 warnings
    multi_v5_defconfig (clang-9): 6 warnings
    multi_v5_defconfig (gcc-8): 5 warnings
    multi_v7_defconfig (clang-9): 55 warnings
    multi_v7_defconfig (gcc-8): 52 warnings
    multi_v7_defconfig (gcc-8): 52 warnings
    multi_v7_defconfig (gcc-8): 52 warnings
    multi_v7_defconfig (gcc-8): 52 warnings
    multi_v7_defconfig (gcc-8): 53 warnings
    mv78xx0_defconfig (clang-9): 2 warnings
    mv78xx0_defconfig (gcc-8): 1 warning
    mvebu_v5_defconfig (gcc-8): 1 warning
    mvebu_v5_defconfig (clang-9): 2 warnings
    mvebu_v7_defconfig (gcc-8): 1 warning
    mvebu_v7_defconfig (clang-9): 2 warnings
    mxs_defconfig (gcc-8): 1 warning
    mxs_defconfig (clang-9): 3 warnings
    neponset_defconfig (gcc-8): 1 warning
    neponset_defconfig (clang-9): 3 warnings
    netwinder_defconfig (clang-9): 3 warnings
    netwinder_defconfig (gcc-8): 1 warning
    nhk8815_defconfig (gcc-8): 1 warning
    nhk8815_defconfig (clang-9): 2 warnings
    omap1_defconfig (clang-9): 5 warnings
    omap1_defconfig (gcc-8): 1 warning
    omap2plus_defconfig (gcc-8): 1 warning
    omap2plus_defconfig (clang-9): 2 warnings
    orion5x_defconfig (clang-9): 2 warnings
    orion5x_defconfig (gcc-8): 1 warning
    oxnas_v6_defconfig (clang-9): 4 warnings
    oxnas_v6_defconfig (gcc-8): 1 warning
    palmz72_defconfig (clang-9): 2 warnings
    palmz72_defconfig (gcc-8): 1 warning
    pcm027_defconfig (clang-9): 2 warnings
    pcm027_defconfig (gcc-8): 1 warning
    pleb_defconfig (clang-9): 3 warnings
    pleb_defconfig (gcc-8): 1 warning
    prima2_defconfig (clang-9): 2 warnings
    prima2_defconfig (gcc-8): 1 warning
    pxa168_defconfig (clang-9): 2 warnings
    pxa168_defconfig (gcc-8): 1 warning
    pxa255-idp_defconfig (clang-9): 3 warnings
    pxa255-idp_defconfig (gcc-8): 1 warning
    pxa3xx_defconfig (clang-9): 2 warnings
    pxa3xx_defconfig (gcc-8): 1 warning
    pxa910_defconfig (clang-9): 2 warnings
    pxa910_defconfig (gcc-8): 1 warning
    pxa_defconfig (clang-9): 1 error, 8 warnings
    pxa_defconfig (gcc-8): 3 errors, 7 warnings
    qcom_defconfig (clang-9): 2 warnings
    qcom_defconfig (gcc-8): 1 warning
    realview_defconfig (clang-9): 2 warnings
    realview_defconfig (gcc-8): 1 warning
    rpc_defconfig (gcc-8): 1 warning
    rpc_defconfig (clang-9): 10 errors
    s3c2410_defconfig (clang-9): 3 warnings
    s3c2410_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (clang-9): 2 warnings
    s5pv210_defconfig (gcc-8): 1 warning
    s5pv210_defconfig (clang-9): 2 warnings
    sama5_defconfig (gcc-8): 1 warning
    sama5_defconfig (clang-9): 2 warnings
    shannon_defconfig (gcc-8): 1 warning
    shannon_defconfig (clang-9): 3 warnings
    shmobile_defconfig (gcc-8): 1 warning
    shmobile_defconfig (clang-9): 2 warnings
    simpad_defconfig (gcc-8): 1 warning
    simpad_defconfig (clang-9): 2 warnings
    socfpga_defconfig (gcc-8): 1 warning
    socfpga_defconfig (clang-9): 2 warnings
    spear13xx_defconfig (gcc-8): 1 warning
    spear13xx_defconfig (clang-9): 2 warnings
    spear3xx_defconfig (clang-9): 3 warnings
    spear3xx_defconfig (gcc-8): 1 warning
    spear6xx_defconfig (gcc-8): 1 warning
    spear6xx_defconfig (clang-9): 3 warnings
    spitz_defconfig (clang-9): 2 warnings
    spitz_defconfig (gcc-8): 1 warning
    stm32_defconfig (gcc-8): 1 warning
    stm32_defconfig (clang-9): 2 warnings
    sunxi_defconfig (clang-9): 49 warnings
    sunxi_defconfig (gcc-8): 48 warnings
    tango4_defconfig (gcc-8): 1 warning
    tango4_defconfig (clang-9): 2 warnings
    tct_hammer_defconfig (clang-9): 3 warnings
    tct_hammer_defconfig (gcc-8): 1 warning
    tegra_defconfig (gcc-8): 1 warning
    tegra_defconfig (clang-9): 2 warnings
    tinyconfig (gcc-8): 1 warning
    trizeps4_defconfig (clang-9): 2 warnings
    trizeps4_defconfig (gcc-8): 1 warning
    u300_defconfig (clang-9): 2 warnings
    u300_defconfig (gcc-8): 1 warning
    u8500_defconfig (clang-9): 2 warnings
    u8500_defconfig (gcc-8): 1 warning
    versatile_defconfig (clang-9): 3 warnings
    versatile_defconfig (gcc-8): 1 warning
    vexpress_defconfig (gcc-8): 1 warning
    vexpress_defconfig (clang-9): 2 warnings
    vf610m4_defconfig (gcc-8): 4 errors, 6 warnings
    vf610m4_defconfig (clang-9): 2 errors, 2 warnings
    viper_defconfig (gcc-8): 1 warning
    viper_defconfig (clang-9): 3 warnings
    vt8500_v6_v7_defconfig (gcc-8): 1 warning
    vt8500_v6_v7_defconfig (clang-9): 2 warnings
    xcep_defconfig (clang-9): 3 warnings
    xcep_defconfig (gcc-8): 1 warning
    zeus_defconfig (clang-9): 3 warnings
    zeus_defconfig (gcc-8): 1 warning
    zx_defconfig (gcc-8): 1 warning
    zx_defconfig (clang-9): 2 warnings

i386:
    allnoconfig (gcc-8): 1 warning
    i386_defconfig (gcc-8): 1 warning
    i386_defconfig (gcc-8): 1 warning
    tinyconfig (gcc-8): 1 warning

mips:
    32r2el_defconfig (gcc-8): 4 warnings
    32r2el_defconfig (gcc-8): 5 warnings
    allnoconfig (gcc-8): 2 warnings
    ar7_defconfig (gcc-8): 3 warnings
    ath25_defconfig (gcc-8): 3 warnings
    ath79_defconfig (gcc-8): 3 warnings
    bcm47xx_defconfig (gcc-8): 3 warnings
    bcm63xx_defconfig (gcc-8): 2 warnings
    bigsur_defconfig (gcc-8): 3 warnings
    bmips_be_defconfig (gcc-8): 2 warnings
    bmips_stb_defconfig (gcc-8): 2 warnings
    capcella_defconfig (gcc-8): 3 warnings
    cavium_octeon_defconfig (gcc-8): 3 warnings
    ci20_defconfig (gcc-8): 2 warnings
    cobalt_defconfig (gcc-8): 3 warnings
    cu1000-neo_defconfig (gcc-8): 2 warnings
    db1xxx_defconfig (gcc-8): 2 warnings
    decstation_64_defconfig (gcc-8): 3 warnings
    decstation_defconfig (gcc-8): 3 warnings
    decstation_r4k_defconfig (gcc-8): 3 warnings
    e55_defconfig (gcc-8): 3 warnings
    fuloong2e_defconfig (gcc-8): 3 warnings
    gcw0_defconfig (gcc-8): 2 warnings
    gpr_defconfig (gcc-8): 3 warnings
    ip22_defconfig (gcc-8): 3 warnings
    ip27_defconfig (gcc-8): 2 errors, 2 warnings
    ip28_defconfig (gcc-8): 3 warnings
    ip32_defconfig (gcc-8): 3 warnings
    jazz_defconfig (gcc-8): 3 warnings
    jmr3927_defconfig (gcc-8): 2 warnings
    lasat_defconfig (gcc-8): 2 warnings
    lemote2f_defconfig (gcc-8): 3 warnings
    loongson1b_defconfig (gcc-8): 3 warnings
    loongson1c_defconfig (gcc-8): 3 warnings
    loongson3_defconfig (gcc-8): 2 warnings
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
    mips_paravirt_defconfig (gcc-8): 3 warnings
    mpc30x_defconfig (gcc-8): 3 warnings
    msp71xx_defconfig (gcc-8): 3 warnings
    mtx1_defconfig (gcc-8): 2 errors, 2 warnings
    nlm_xlp_defconfig (gcc-8): 3 warnings
    nlm_xlr_defconfig (gcc-8): 3 warnings
    omega2p_defconfig (gcc-8): 2 warnings
    pic32mzda_defconfig (gcc-8): 3 warnings
    pistachio_defconfig (gcc-8): 3 warnings
    pnx8335_stb225_defconfig (gcc-8): 3 warnings
    qi_lb60_defconfig (gcc-8): 3 warnings
    rb532_defconfig (gcc-8): 3 warnings
    rbtx49xx_defconfig (gcc-8): 3 warnings
    rm200_defconfig (gcc-8): 3 warnings
    rt305x_defconfig (gcc-8): 3 warnings
    sb1250_swarm_defconfig (gcc-8): 3 warnings
    tb0219_defconfig (gcc-8): 3 warnings
    tb0226_defconfig (gcc-8): 3 warnings
    tb0287_defconfig (gcc-8): 3 warnings
    tinyconfig (gcc-8): 2 warnings
    vocore2_defconfig (gcc-8): 2 warnings
    workpad_defconfig (gcc-8): 3 warnings
    xway_defconfig (gcc-8): 3 warnings

riscv:
    allnoconfig (gcc-8): 1 error
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    nommu_virt_defconfig (gcc-8): 1 warning
    rv32_defconfig (gcc-8): 7 warnings
    tinyconfig (gcc-8): 1 error

x86_64:
    allmodconfig (gcc-8): 4 warnings
    allmodconfig (clang-9): 15 warnings
    allnoconfig (gcc-8): 1 warning
    allnoconfig (clang-9): 2 warnings
    tinyconfig (gcc-8): 2 warnings

Errors summary:

    5    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.=
ko] undefined!
    4    ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/pc=
ie-tegra194.ko] undefined!
    4    ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller/d=
wc/pcie-tegra194.ko] undefined!
    4    ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controller=
/dwc/pcie-tegra194.ko] undefined!
    4    ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pcie=
-tegra194.ko] undefined!
    3    clang: error: assembler command failed with exit code 1 (use -v to=
 see invocation)
    2    arch/riscv/kernel/stacktrace.c:78:8: error: =E2=80=98sp_in_global=
=E2=80=99 undeclared (first use in this function); did you mean =E2=80=98sp=
in_lock=E2=80=99?
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
    1    sound/soc/codecs/wm9712.c:84:35: error: variable has incomplete ty=
pe 'const struct regmap_config'
    1    sound/soc/codecs/wm9712.c:84:35: error: storage size of =E2=80=98w=
m9712_regmap_config=E2=80=99 isn=E2=80=99t known
    1    sound/soc/codecs/wm9712.c:84:21: error: variable =E2=80=98wm9712_r=
egmap_config=E2=80=99 has initializer but incomplete type
    1    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of fu=
nction =E2=80=98regmap_ac97_default_volatile=E2=80=99 [-Werror=3Dimplicit-f=
unction-declaration]
    1    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of fu=
nction 'regmap_ac97_default_volatile' [-Werror,-Wimplicit-function-declarat=
ion]
    1    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of fu=
nction =E2=80=98snd_soc_component_exit_regmap=E2=80=99; did you mean =E2=80=
=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-declara=
tion]
    1    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of fu=
nction 'snd_soc_component_exit_regmap' [-Werror,-Wimplicit-function-declara=
tion]
    1    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of fu=
nction =E2=80=98snd_soc_component_init_regmap=E2=80=99; did you mean =E2=80=
=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-declara=
tion]
    1    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of fu=
nction 'snd_soc_component_init_regmap' [-Werror,-Wimplicit-function-declara=
tion]
    1    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of f=
unction =E2=80=98regmap_init_ac97=E2=80=99; did you mean =E2=80=98memmap_in=
it_zone=E2=80=99? [-Werror=3Dimplicit-function-declaration]
    1    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of f=
unction 'regmap_init_ac97' [-Werror,-Wimplicit-function-declaration]
    1    drivers/usb/gadget/udc/pxa25x_udc.c:2328:11: error: invalid % esca=
pe in inline assembly string
    1    drivers/clocksource/timer-vf-pit.c:194:58: error: expected '}'
    1    drivers/clocksource/timer-vf-pit.c:194: error: unterminated argume=
nt list invoking macro "BUG_ON"
    1    drivers/clocksource/timer-vf-pit.c:131:8: error: expected =E2=80=
=98;=E2=80=99 at end of input
    1    drivers/clocksource/timer-vf-pit.c:131:2: error: =E2=80=98BUG_ON=
=E2=80=99 undeclared (first use in this function)
    1    drivers/clocksource/timer-vf-pit.c:131:2: error: unterminated func=
tion-like macro invocation
    1    drivers/clocksource/timer-vf-pit.c:131:2: error: expected declarat=
ion or statement at end of input
    1    ERROR: modpost: "sysrq_toggle_support" [drivers/tty/serial/serial_=
core.ko] undefined!
    1    ERROR: modpost: "sysrq_mask" [drivers/tty/serial/serial_core.ko] u=
ndefined!
    1    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9713.=
ko] undefined!
    1    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9705.=
ko] undefined!
    1    /tmp/main-32bcf2.s:1469: Error: selected processor does not suppor=
t `strh r0,[r1]' in ARM mode
    1    /tmp/main-32bcf2.s:1466: Error: selected processor does not suppor=
t `ldrh r0,[r0]' in ARM mode
    1    /tmp/elf-5932ff.s:49: Error: selected processor does not support `=
ldrh r2,[r0,#18]' in ARM mode
    1    /tmp/do_mounts_rd-f0bf4b.s:529: Error: selected processor does not=
 support `ldrh r0,[r5,#56]' in ARM mode
    1    /tmp/do_mounts_rd-f0bf4b.s:525: Error: selected processor does not=
 support `ldrh r1,[r5,#2]' in ARM mode
    1    /tmp/do_mounts_rd-f0bf4b.s:524: Error: selected processor does not=
 support `ldrh r0,[r5,#10]' in ARM mode
    1    /tmp/do_mounts_rd-f0bf4b.s:510: Error: selected processor does not=
 support `ldrh r0,[r5,#16]' in ARM mode

Warnings summary:

    204  drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_se=
condary=E2=80=99 defined but not used [-Wunused-function]
    192  arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_f=
ormat): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has =
invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-c=
ells =3D=3D 2, #size-cells =3D=3D 1)
    160  arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format)=
: /soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invali=
d length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    127  1 warning generated.
    123  <stdin>:1520:2: warning: #warning syscall process_madvise not impl=
emented [-Wcpp]
    107  drivers/char/random.c:820:13: warning: unused function 'crng_initi=
alize_secondary' [-Wunused-function]
    80   arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
    60   scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warnin=
g (dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges=
" property has invalid length (12 bytes) (parent #address-cells =3D=3D 1, c=
hild #address-cells =3D=3D 2, #size-cells =3D=3D 1)
    24   arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_for=
mat): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has in=
valid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cel=
ls =3D=3D 2, #size-cells =3D=3D 1)
    16   WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    15   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Wa=
rning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but=
 its #size-cells (1) differs from / (2)
    15   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Wa=
rning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but=
 its #address-cells (1) differs from / (2)
    12   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    12   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    12   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warn=
ing (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C addr=
ess must be less than 10-bits, got "0x40000010"
    12   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: =
Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus =
unit address format error, expected "40000010"
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    5    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_range=
s_format): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells=
 (1) differs from / (2)
    5    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_range=
s_format): /soc:dma-ranges: empty "dma-ranges" property but its #address-ce=
lls (1) differs from / (2)
    5    2 warnings generated.
    4    include/linux/dynamic_debug.h:157:25: warning: =E2=80=98key=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    4    arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_fo=
rmat): /:dma-ranges: Root node has a "dma-ranges" property
    4    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
    4    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    3    drivers/rtc/rtc-mt2712.c:235:6: warning: unused variable =E2=80=98=
irqen=E2=80=99 [-Wunused-variable]
    3    drivers/rtc/rtc-mt2712.c:235:6: warning: unused variable 'irqen' [=
-Wunused-variable]
    3    drivers/net/ethernet/mellanox/mlx5/core/mr.c:63:21: warning: varia=
ble 'key' is uninitialized when used here [-Wuninitialized]
    3    drivers/net/ethernet/mellanox/mlx5/core/mr.c:47:8: note: initializ=
e the variable 'key' to silence this warning
    3    drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:6: warning: variable 'sh=
adow' is used uninitialized whenever 'if' condition is false [-Wsometimes-u=
ninitialized]
    3    drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:738:13: note: initialize the=
 variable 'shadow' to silence this warning
    3    ./usr/include/linux/usb/raw_gadget.h:74:12: warning: unused functi=
on 'usb_raw_io_flags_zero' [-Wunused-function]
    3    ./usr/include/linux/usb/raw_gadget.h:69:12: warning: unused functi=
on 'usb_raw_io_flags_valid' [-Wunused-function]
    2    drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame s=
ize of 1232 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=
=3D]
    2    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least=
 version 4.6 of GCC [-W#warnings]
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    2    #warning This code requires at least version 4.6 of GCC
    1    {standard input}:141: Warning: macro instruction expanded into mul=
tiple instructions
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
    1    sound/soc/codecs/cros_ec_codec.c:776:12: warning: stack frame size=
 of 1152 bytes in function 'wov_hotword_model_put' [-Wframe-larger-than=3D]
    1    security/integrity/ima/ima_crypto.c:512:5: warning: stack frame si=
ze of 1152 bytes in function 'ima_calc_field_array_hash' [-Wframe-larger-th=
an=3D]
    1    net/sched/cls_flower.c:331:1: warning: the frame size of 1032 byte=
s is larger than 1024 bytes [-Wframe-larger-than=3D]
    1    include/linux/kernel.h:47:25: warning: excess elements in struct i=
nitializer
    1    drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning: cast from poi=
nter to integer of different size [-Wpointer-to-int-cast]
    1    drivers/soc/fsl/dpio/dpio-service.c:476:5: warning: stack frame si=
ze of 1072 bytes in function 'dpaa2_io_service_enqueue_multiple_desc_fq' [-=
Wframe-larger-than=3D]
    1    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size=
 of 1824 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-la=
rger-than=3D]
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c:879:1: warning:=
 stack frame size of 1168 bytes in function '__mlx5_tc_ct_flow_offload' [-W=
frame-larger-than=3D]
    1    drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c:479:1: warning:=
 stack frame size of 1128 bytes in function 'mlx5_tc_ct_entry_add_rule' [-W=
frame-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: =
warning: stack frame size of 5648 bytes in function 'calculate_bandwidth' [=
-Wframe-larger-than=3D]
    1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3014:6:=
 warning: stack frame size of 1376 bytes in function 'bw_calcs' [-Wframe-la=
rger-than=3D]
    1    drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame s=
ize of 1224 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=
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
    1    cc1: some warnings being treated as errors
    1    cc1: all warnings being treated as errors
    1    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x1=
f8: call to memset() with UACCESS enabled
    1    arch/arm/mach-omap1/pm.c:656:11: warning: variable 'irq' is used u=
ninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
    1    arch/arm/mach-omap1/pm.c:611:9: note: initialize the variable 'irq=
' to silence this warning
    1    /tmp/test-arm-23d565.s:18788: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/test-arm-23d565.s:18713: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/futex-fbc742.s:23104: Warning: source register same as write-=
back base
    1    /tmp/futex-f68be1.s:23064: Warning: source register same as write-=
back base
    1    /tmp/futex-f51df9.s:7504: Warning: source register same as write-b=
ack base
    1    /tmp/futex-f48d58.s:7483: Warning: source register same as write-b=
ack base
    1    /tmp/futex-f0d561.s:23064: Warning: source register same as write-=
back base
    1    /tmp/futex-ec9b3d.s:7499: Warning: source register same as write-b=
ack base
    1    /tmp/futex-eb429c.s:7476: Warning: source register same as write-b=
ack base
    1    /tmp/futex-e9c6c5.s:7504: Warning: source register same as write-b=
ack base
    1    /tmp/futex-e93ba9.s:7446: Warning: source register same as write-b=
ack base
    1    /tmp/futex-e1476f.s:23245: Warning: source register same as write-=
back base
    1    /tmp/futex-dfaf02.s:7504: Warning: source register same as write-b=
ack base
    1    /tmp/futex-df8a33.s:22782: Warning: source register same as write-=
back base
    1    /tmp/futex-dba44a.s:7637: Warning: source register same as write-b=
ack base
    1    /tmp/futex-cba44d.s:7504: Warning: source register same as write-b=
ack base
    1    /tmp/futex-c781ba.s:7433: Warning: source register same as write-b=
ack base
    1    /tmp/futex-baeadb.s:23546: Warning: source register same as write-=
back base
    1    /tmp/futex-a91254.s:7474: Warning: source register same as write-b=
ack base
    1    /tmp/futex-9ddb7d.s:7434: Warning: source register same as write-b=
ack base
    1    /tmp/futex-959b93.s:23064: Warning: source register same as write-=
back base
    1    /tmp/futex-923551.s:23004: Warning: source register same as write-=
back base
    1    /tmp/futex-84286d.s:7455: Warning: source register same as write-b=
ack base
    1    /tmp/futex-7c9d30.s:23064: Warning: source register same as write-=
back base
    1    /tmp/futex-725f7d.s:7475: Warning: source register same as write-b=
ack base
    1    /tmp/futex-6da7c9.s:23137: Warning: source register same as write-=
back base
    1    /tmp/futex-693722.s:7474: Warning: source register same as write-b=
ack base
    1    /tmp/futex-65afa6.s:7424: Warning: source register same as write-b=
ack base
    1    /tmp/futex-6356da.s:7446: Warning: source register same as write-b=
ack base
    1    /tmp/futex-43fb54.s:7458: Warning: source register same as write-b=
ack base
    1    /tmp/futex-37865a.s:7476: Warning: source register same as write-b=
ack base
    1    /tmp/futex-35f2f5.s:7474: Warning: source register same as write-b=
ack base
    1    /tmp/futex-2d3439.s:7504: Warning: source register same as write-b=
ack base
    1    /tmp/futex-24f675.s:7488: Warning: source register same as write-b=
ack base
    1    /tmp/futex-209bf6.s:7474: Warning: source register same as write-b=
ack base
    1    /tmp/futex-1204fb.s:22782: Warning: source register same as write-=
back base
    1    /tmp/futex-0b21ce.s:7504: Warning: source register same as write-b=
ack base
    1    /tmp/futex-08ddb2.s:7476: Warning: source register same as write-b=
ack base
    1    /tmp/futex-05adb2.s:7446: Warning: source register same as write-b=
ack base
    1    /tmp/futex-04e753.s:23137: Warning: source register same as write-=
back base
    1    /tmp/ccIx05kz.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccIx05kz.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1161:warning: override: UNWINDER_GUESS changes choice stat=
e
    1    .arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()+=
0x1fa: call to memset() with UACCESS enabled
    1    .arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_fram=
e()+0x1ef: call to memset() with UACCESS enabled
    1    ./usr/include/linux/usb/raw_gadget.h:74:12: warning: =E2=80=98usb_=
raw_io_flags_zero=E2=80=99 defined but not used [-Wunused-function]
    1    ./usr/include/linux/usb/raw_gadget.h:69:12: warning: =E2=80=98usb_=
raw_io_flags_valid=E2=80=99 defined but not used [-Wunused-function]
    1    .............mm/kasan/common.o: warning: objtool: kasan_report()+0=
x87: call to __stack_chk_fail() with UACCESS enabled

Section mismatches summary:

    1    WARNING: modpost: vmlinux.o(.text.unlikely+0x39dc): Section mismat=
ch in reference from the function pmax_setup_memory_region() to the functio=
n .init.text:add_memory_region()
    1    WARNING: modpost: vmlinux.o(.text.unlikely+0x3684): Section mismat=
ch in reference from the function pmax_setup_memory_region() to the functio=
n .init.text:add_memory_region()

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnin=
gs, 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    ./usr/include/linux/usb/raw_gadget.h:74:12: warning: =E2=80=98usb_raw_i=
o_flags_zero=E2=80=99 defined but not used [-Wunused-function]
    ./usr/include/linux/usb/raw_gadget.h:69:12: warning: =E2=80=98usb_raw_i=
o_flags_valid=E2=80=99 defined but not used [-Wunused-function]
    drivers/rtc/rtc-mt2712.c:235:6: warning: unused variable =E2=80=98irqen=
=E2=80=99 [-Wunused-variable]
    include/linux/dynamic_debug.h:157:25: warning: =E2=80=98key=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-9) =E2=80=94 FAIL, 4 errors, 11 warnings, 0 sect=
ion mismatches

Errors:
    ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller/dwc/pc=
ie-tegra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controller/dwc/=
pcie-tegra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/pcie-te=
gra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pcie-tegr=
a194.ko] undefined!

Warnings:
    ./usr/include/linux/usb/raw_gadget.h:69:12: warning: unused function 'u=
sb_raw_io_flags_valid' [-Wunused-function]
    ./usr/include/linux/usb/raw_gadget.h:74:12: warning: unused function 'u=
sb_raw_io_flags_zero' [-Wunused-function]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:6: warning: variable 'shadow'=
 is used uninitialized whenever 'if' condition is false [-Wsometimes-uninit=
ialized]
    drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:738:13: note: initialize the vari=
able 'shadow' to silence this warning
    1 warning generated.
    drivers/rtc/rtc-mt2712.c:235:6: warning: unused variable 'irqen' [-Wunu=
sed-variable]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/mr.c:63:21: warning: variable '=
key' is uninitialized when used here [-Wuninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/mr.c:47:8: note: initialize the=
 variable 'key' to silence this warning
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 4 errors, 20 warnings, 0 section =
mismatches

Errors:
    ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pcie-tegr=
a194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller/dwc/pc=
ie-tegra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controller/dwc/=
pcie-tegra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/pcie-te=
gra194.ko] undefined!

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    /tmp/ccIx05kz.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/ccIx05kz.s:18191: Warning: using r15 results in unpredictable beha=
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
    include/linux/dynamic_debug.h:157:25: warning: =E2=80=98key=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]
    drivers/rtc/rtc-mt2712.c:235:6: warning: unused variable =E2=80=98irqen=
=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (arm, clang-9) =E2=80=94 FAIL, 4 errors, 37 warnings, 0 sectio=
n mismatches

Errors:
    ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller/dwc/pc=
ie-tegra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controller/dwc/=
pcie-tegra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/pcie-te=
gra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pcie-tegr=
a194.ko] undefined!

Warnings:
    security/integrity/ima/ima_crypto.c:512:5: warning: stack frame size of=
 1152 bytes in function 'ima_calc_field_array_hash' [-Wframe-larger-than=3D=
]
    1 warning generated.
    ./usr/include/linux/usb/raw_gadget.h:69:12: warning: unused function 'u=
sb_raw_io_flags_valid' [-Wunused-function]
    ./usr/include/linux/usb/raw_gadget.h:74:12: warning: unused function 'u=
sb_raw_io_flags_zero' [-Wunused-function]
    2 warnings generated.
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least vers=
ion 4.6 of GCC [-W#warnings]
    #warning This code requires at least version 4.6 of GCC
    1 warning generated.
    /tmp/test-arm-23d565.s:18713: Warning: using r15 results in unpredictab=
le behaviour
    /tmp/test-arm-23d565.s:18788: Warning: using r15 results in unpredictab=
le behaviour
    drivers/crypto/inside-secure/safexcel_cipher.c:404:12: warning: stack f=
rame size of 1136 bytes in function 'safexcel_aead_setkey' [-Wframe-larger-=
than=3D]
    1 warning generated.
    sound/soc/codecs/cros_ec_codec.c:776:12: warning: stack frame size of 1=
152 bytes in function 'wov_hotword_model_put' [-Wframe-larger-than=3D]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:6: warning: variable 'shadow'=
 is used uninitialized whenever 'if' condition is false [-Wsometimes-uninit=
ialized]
    drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:738:13: note: initialize the vari=
able 'shadow' to silence this warning
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/mr.c:63:21: warning: variable '=
key' is uninitialized when used here [-Wuninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/mr.c:47:8: note: initialize the=
 variable 'key' to silence this warning
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3014:6: warn=
ing: stack frame size of 1376 bytes in function 'bw_calcs' [-Wframe-larger-=
than=3D]
    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: warni=
ng: stack frame size of 5648 bytes in function 'calculate_bandwidth' [-Wfra=
me-larger-than=3D]
    2 warnings generated.
    drivers/soc/fsl/dpio/dpio-service.c:476:5: warning: stack frame size of=
 1072 bytes in function 'dpaa2_io_service_enqueue_multiple_desc_fq' [-Wfram=
e-larger-than=3D]
    1 warning generated.
    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size of 1=
824 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-larger-=
than=3D]
    1 warning generated.
    drivers/rtc/rtc-mt2712.c:235:6: warning: unused variable 'irqen' [-Wunu=
sed-variable]
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c:879:1: warning: stac=
k frame size of 1168 bytes in function '__mlx5_tc_ct_flow_offload' [-Wframe=
-larger-than=3D]
    drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c:479:1: warning: stac=
k frame size of 1128 bytes in function 'mlx5_tc_ct_entry_add_rule' [-Wframe=
-larger-than=3D]
    2 warnings generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 4 errors, 2 warnings, 0 section=
 mismatches

Errors:
    ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pcie-tegr=
a194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/pcie-te=
gra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller/dwc/pc=
ie-tegra194.ko] undefined!
    ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controller/dwc/=
pcie-tegra194.ko] undefined!

Warnings:
    include/linux/dynamic_debug.h:157:25: warning: =E2=80=98key=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]
    drivers/rtc/rtc-mt2712.c:235:6: warning: unused variable =E2=80=98irqen=
=E2=80=99 [-Wunused-variable]

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, clang-9) =E2=80=94 PASS, 0 errors, 15 warnings, 0 sec=
tion mismatches

Warnings:
    .arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_frame()+0=
x1ef: call to memset() with UACCESS enabled
    .............mm/kasan/common.o: warning: objtool: kasan_report()+0x87: =
call to __stack_chk_fail() with UACCESS enabled
    .arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()+0x1fa=
: call to memset() with UACCESS enabled
    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x1f8: c=
all to memset() with UACCESS enabled
    ./usr/include/linux/usb/raw_gadget.h:69:12: warning: unused function 'u=
sb_raw_io_flags_valid' [-Wunused-function]
    ./usr/include/linux/usb/raw_gadget.h:74:12: warning: unused function 'u=
sb_raw_io_flags_zero' [-Wunused-function]
    2 warnings generated.
    drivers/rtc/rtc-mt2712.c:235:6: warning: unused variable 'irqen' [-Wunu=
sed-variable]
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:6: warning: variable 'shadow'=
 is used uninitialized whenever 'if' condition is false [-Wsometimes-uninit=
ialized]
    drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:738:13: note: initialize the vari=
able 'shadow' to silence this warning
    1 warning generated.
    drivers/net/ethernet/mellanox/mlx5/core/mr.c:63:21: warning: variable '=
key' is uninitialized when used here [-Wuninitialized]
    drivers/net/ethernet/mellanox/mlx5/core/mr.c:47:8: note: initialize the=
 variable 'key' to silence this warning
    1 warning generated.

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section m=
ismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
allnoconfig (riscv, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section m=
ismatches

Errors:
    arch/riscv/kernel/stacktrace.c:78:8: error: =E2=80=98sp_in_global=E2=80=
=99 undeclared (first use in this function); did you mean =E2=80=98spin_loc=
k=E2=80=99?

---------------------------------------------------------------------------=
-----
allnoconfig (x86_64, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
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
aspeed_g4_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 7 warnings, 0 =
section mismatches

Warnings:
    /tmp/futex-923551.s:23004: Warning: source register same as write-back =
base
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.
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
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
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
aspeed_g5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 6 warnings, 0 =
section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.
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
assabet_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    /tmp/futex-2d3439.s:7504: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    /tmp/futex-fbc742.s:23104: Warning: source register same as write-back =
base
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    /tmp/futex-e9c6c5.s:7504: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    /tmp/futex-e93ba9.s:7446: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, clang-9) =E2=80=94 FAIL, 1 error, 5 warnings, 0 sec=
tion mismatches

Errors:
    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] u=
ndefined!

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    /tmp/futex-dba44a.s:7637: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 3 warnings, 0 secti=
on mismatches

Errors:
    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] u=
ndefined!

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warning=
s, 0 section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warning=
s, 0 section mismatches

Warnings:
    /tmp/futex-e1476f.s:23245: Warning: source register same as write-back =
base
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.
    /tmp/futex-84286d.s:7455: Warning: source register same as write-back b=
ase

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

Section mismatches:
    WARNING: modpost: vmlinux.o(.text.unlikely+0x39dc): Section mismatch in=
 reference from the function pmax_setup_memory_region() to the function .in=
it.text:add_memory_region()

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

Section mismatches:
    WARNING: modpost: vmlinux.o(.text.unlikely+0x3684): Section mismatch in=
 reference from the function pmax_setup_memory_region() to the function .in=
it.text:add_memory_region()

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-9) =E2=80=94 PASS, 0 errors, 36 warnings, 0 section=
 mismatches

Warnings:
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
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
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 36 warnings, 0 section m=
ismatches

Warnings:
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
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
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 36 warnings, 0 section mismatches

Warnings:
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
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
, 36 warnings, 0 section mismatches

Warnings:
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
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
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 37 warnings, 0=
 section mismatches

Warnings:
    include/linux/dynamic_debug.h:157:25: warning: =E2=80=98key=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma_r=
anges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" proper=
ty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #ad=
dress-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
    scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (dm=
a_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" pro=
perty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child =
#address-cells =3D=3D 2, #size-cells =3D=3D 1)
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
dove_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
ebsa110_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    /tmp/futex-37865a.s:7476: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 3 warnings, 0 secti=
on mismatches

Errors:
    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] u=
ndefined!

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, clang-9) =E2=80=94 FAIL, 1 error, 5 warnings, 0 sec=
tion mismatches

Errors:
    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] u=
ndefined!

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    /tmp/futex-6356da.s:7446: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    /tmp/futex-9ddb7d.s:7434: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 14 errors, 13 warnings, =
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
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
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
eseries_pxa_defconfig (arm, clang-9) =E2=80=94 FAIL, 5 errors, 5 warnings, =
0 section mismatches

Errors:
    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of functio=
n 'regmap_ac97_default_volatile' [-Werror,-Wimplicit-function-declaration]
    sound/soc/codecs/wm9712.c:84:35: error: variable has incomplete type 'c=
onst struct regmap_config'
    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of functi=
on 'regmap_init_ac97' [-Werror,-Wimplicit-function-declaration]
    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of functio=
n 'snd_soc_component_init_regmap' [-Werror,-Wimplicit-function-declaration]
    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of functio=
n 'snd_soc_component_exit_regmap' [-Werror,-Wimplicit-function-declaration]

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    /tmp/futex-693722.s:7474: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches

Warnings:
    /tmp/futex-eb429c.s:7476: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    /tmp/futex-05adb2.s:7446: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    /tmp/futex-c781ba.s:7433: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 wa=
rning, 0 section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_format)=
: /:dma-ranges: Root node has a "dma-ranges" property

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.
    arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_format)=
: /:dma-ranges: Root node has a "dma-ranges" property

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    /tmp/futex-209bf6.s:7474: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 2 warnings, 0 sectio=
n mismatches

Errors:
    arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=3D wi=
dth of type [-Werror=3Dshift-count-overflow]
    arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=3D wi=
dth of type [-Werror=3Dshift-count-overflow]

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    /tmp/futex-725f7d.s:7475: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches

Warnings:
    /tmp/futex-0b21ce.s:7504: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    /tmp/futex-cba44d.s:7504: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
lasat_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
lpd270_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    /tmp/futex-7c9d30.s:23064: Warning: source register same as write-back =
base
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
lubbock_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    /tmp/futex-f0d561.s:23064: Warning: source register same as write-back =
base
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    /tmp/futex-959b93.s:23064: Warning: source register same as write-back =
base
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    {standard input}:141: Warning: macro instruction expanded into multiple=
 instructions
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
markeins_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 4 warnings=
, 0 section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.
    drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame size o=
f 1224 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    /tmp/futex-6da7c9.s:23137: Warning: source register same as write-back =
base
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings,=
 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
msp71xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 2 warnings, 0 sectio=
n mismatches

Errors:
    ERROR: modpost: "sysrq_toggle_support" [drivers/tty/serial/serial_core.=
ko] undefined!
    ERROR: modpost: "sysrq_mask" [drivers/tty/serial/serial_core.ko] undefi=
ned!

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_format)=
: /:dma-ranges: Root node has a "dma-ranges" property

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches

Warnings:
    /tmp/futex-ec9b3d.s:7499: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.
    arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_format)=
: /:dma-ranges: Root node has a "dma-ranges" property

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 6 warnings, 0 s=
ection mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.
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
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
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
multi_v7_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 55 warnings, 0 =
section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.
    drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame size o=
f 1232 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=3D]
    1 warning generated.
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 52 warnings, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
 errors, 52 warnings, 0 section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
=94 PASS, 0 errors, 52 warnings, 0 section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 52=
 warnings, 0 section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 53 warn=
ings, 0 section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    net/sched/cls_flower.c:331:1: warning: the frame size of 1032 bytes is =
larger than 1024 bytes [-Wframe-larger-than=3D]
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
mv78xx0_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    /tmp/futex-baeadb.s:23546: Warning: source register same as write-back =
base
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    /tmp/futex-f51df9.s:7504: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    /tmp/futex-08ddb2.s:7476: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sect=
ion mismatches

Warnings:
    arch/arm/mach-omap1/pm.c:656:11: warning: variable 'irq' is used uninit=
ialized whenever 'if' condition is false [-Wsometimes-uninitialized]
    arch/arm/mach-omap1/pm.c:611:9: note: initialize the variable 'irq' to =
silence this warning
    1 warning generated.
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 4 warnings, 0 s=
ection mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.
    drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame size o=
f 1232 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=3D]
    1 warning generated.

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    /tmp/futex-24f675.s:7488: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches

Warnings:
    /tmp/futex-f68be1.s:23064: Warning: source register same as write-back =
base
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, clang-9) =E2=80=94 FAIL, 1 error, 8 warnings, 0 section=
 mismatches

Errors:
    drivers/usb/gadget/udc/pxa25x_udc.c:2328:11: error: invalid % escape in=
 inline assembly string

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 3 errors, 7 warnings, 0 section =
mismatches

Errors:
    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9713.ko] u=
ndefined!
    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] u=
ndefined!
    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9705.ko] u=
ndefined!

Warnings:
    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, clang-9) =E2=80=94 FAIL, 10 errors, 0 warnings, 0 secti=
on mismatches

Errors:
    /tmp/elf-5932ff.s:49: Error: selected processor does not support `ldrh =
r2,[r0,#18]' in ARM mode
    clang: error: assembler command failed with exit code 1 (use -v to see =
invocation)
    /tmp/main-32bcf2.s:1466: Error: selected processor does not support `ld=
rh r0,[r0]' in ARM mode
    /tmp/main-32bcf2.s:1469: Error: selected processor does not support `st=
rh r0,[r1]' in ARM mode
    clang: error: assembler command failed with exit code 1 (use -v to see =
invocation)
    /tmp/do_mounts_rd-f0bf4b.s:510: Error: selected processor does not supp=
ort `ldrh r0,[r5,#16]' in ARM mode
    /tmp/do_mounts_rd-f0bf4b.s:524: Error: selected processor does not supp=
ort `ldrh r0,[r5,#10]' in ARM mode
    /tmp/do_mounts_rd-f0bf4b.s:525: Error: selected processor does not supp=
ort `ldrh r1,[r5,#2]' in ARM mode
    /tmp/do_mounts_rd-f0bf4b.s:529: Error: selected processor does not supp=
ort `ldrh r0,[r5,#56]' in ARM mode
    clang: error: assembler command failed with exit code 1 (use -v to see =
invocation)

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

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
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    /tmp/futex-04e753.s:23137: Warning: source register same as write-back =
base
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, =
0 section mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches

Warnings:
    /tmp/futex-dfaf02.s:7504: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    /tmp/futex-1204fb.s:22782: Warning: source register same as write-back =
base
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
spear6xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches

Warnings:
    /tmp/futex-df8a33.s:22782: Warning: source register same as write-back =
base
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 49 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 48 warnings, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /so=
c/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid len=
gth (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=3D=
 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
    arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format):=
 /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has invalid=
 length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches

Warnings:
    /tmp/futex-f48d58.s:7483: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section =
mismatches

Warnings:
    .config:1161:warning: override: UNWINDER_GUESS changes choice state
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section mi=
smatches

Errors:
    arch/riscv/kernel/stacktrace.c:78:8: error: =E2=80=98sp_in_global=E2=80=
=99 undeclared (first use in this function); did you mean =E2=80=98spin_loc=
k=E2=80=99?

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mism=
atches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mism=
atches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section mi=
smatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches

Warnings:
    /tmp/futex-a91254.s:7474: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 FAIL, 4 errors, 6 warnings, 0 sect=
ion mismatches

Errors:
    drivers/clocksource/timer-vf-pit.c:194: error: unterminated argument li=
st invoking macro "BUG_ON"
    drivers/clocksource/timer-vf-pit.c:131:2: error: =E2=80=98BUG_ON=E2=80=
=99 undeclared (first use in this function)
    drivers/clocksource/timer-vf-pit.c:131:8: error: expected =E2=80=98;=E2=
=80=99 at end of input
    drivers/clocksource/timer-vf-pit.c:131:2: error: expected declaration o=
r statement at end of input

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    drivers/clocksource/timer-vf-pit.c:131:2: warning: no return statement =
in function returning non-void [-Wreturn-type]
    drivers/clocksource/timer-vf-pit.c:126:19: warning: =E2=80=98pit_clocke=
vent_init=E2=80=99 defined but not used [-Wunused-function]
    drivers/clocksource/timer-vf-pit.c:117:34: warning: =E2=80=98clockevent=
_pit=E2=80=99 defined but not used [-Wunused-variable]
    drivers/clocksource/timer-vf-pit.c:97:20: warning: =E2=80=98pit_timer_i=
nterrupt=E2=80=99 defined but not used [-Wunused-function]
    drivers/clocksource/timer-vf-pit.c:56:19: warning: =E2=80=98pit_clockso=
urce_init=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, clang-9) =E2=80=94 FAIL, 2 errors, 2 warnings, 0 se=
ction mismatches

Errors:
    drivers/clocksource/timer-vf-pit.c:131:2: error: unterminated function-=
like macro invocation
    drivers/clocksource/timer-vf-pit.c:194:58: error: expected '}'

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    /tmp/futex-43fb54.s:7458: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings,=
 0 section mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

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
x86_64_defconfig+kvm_guest (x86_64, clang-9) =E2=80=94 FAIL, 0 errors, 0 wa=
rnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    /tmp/futex-65afa6.s:7424: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]
    <stdin>:1520:2: warning: #warning syscall process_madvise not implement=
ed [-Wcpp]

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches

Warnings:
    /tmp/futex-35f2f5.s:7474: Warning: source register same as write-back b=
ase
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_seconda=
ry=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches

Warnings:
    drivers/char/random.c:820:13: warning: unused function 'crng_initialize=
_secondary' [-Wunused-function]
    1 warning generated.

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5e70bc06.1c69fb81.5a1f8.bbb4%40mx.google.com.
