Return-Path: <clang-built-linux+bncBDT6TV45WMPRBQ4ORPVAKGQESJX2QWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id E25CE7D9F5
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2019 13:04:35 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id 17sf13597085wmj.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Aug 2019 04:04:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564657475; cv=pass;
        d=google.com; s=arc-20160816;
        b=u2P65u1YIRSJ+DmMI25L436/8cPU/z1DxSpdQu1ym+RSz6H5a0rom1pCBfW5T/trfH
         nrLo4Itu3Z2clRbhWoSJHlUFMLBHWmg3jkV+D934LUY4Idq/k9rIp6ZChkV04Hpjr3Lb
         ib2YWe2PHnytATJILOdQQ2tKPkKNRunZG/+ujM2pmp1sLnpA41RXvSlhpLziAPaQV26r
         2i8wjXRDtHsXMddl5wclBqVOkLvnWqfm5rJNpysAFoCQhQrzJCKK0ijNJSaHGuQCUfhn
         t7L/WsElZpIAk0tTY/gQF6M3ri7YWSyCm/mOXhs77A0yzIPm21gPgKa1VPnJ7oNsxBsy
         zjig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=KP7xYLuIhVYXXqfk3DAfMVhKHZi4jn3WmAfu5o6du54=;
        b=Oyki8/6W1IHaavYw7pT0sDWtxuZOfK45H82UV8G4b3+j3C587w1L1WHCPnNq9DlCu/
         FSSffPxHg99A9U9NOKpoX0hcXujxSAeeC0vgCP8/8Hmw+jMVsn4A7+7wwYDz8fWNyML3
         wEFHj52gCRStqLh7uqD5JAumfxKx6b/OKP8B6RVO0cq2EY166oUHQO1108QffHiyvBlh
         6scwvy+7sLvKD9gPQlFafjO55FSzr4azcWLicUKvlLhQRJ9Ydu4zkdJUf2cbRCoEI+4K
         zuLwrf5qYA9ZZLKJfpP9mQAEJxVJyLgfCHSA47UAxcxIuM0CeWwn8hQw83cGvFjv1MJO
         yz+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=1LFdsgOD;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KP7xYLuIhVYXXqfk3DAfMVhKHZi4jn3WmAfu5o6du54=;
        b=ZC/OEhIjdwP8HwtBn4mBVTvvqe2TeRJzIUT1JZzREkoScMdUpWRwGEfvrCcd25hYec
         n8SJJk4bL8ToxC3EdQqQV8xFKUd+MqDMvYGmghdGBRX8OhrLCzyPUhC2PZzswEgAaI9w
         /Uc/Wug5xJdGFMXQt9DiE4Kw8fiuTL44Jfstr2Urz5uapS3y84f7DoCNZs9Z32jaMhlZ
         MjsWC9nXp1ppRqkYU4mGgH+NBWx1JbNWpIqgEiO5P1GHbo9EIIc8m+jC2bjsA7usBg8/
         nFOkU2Wk1u0z9+incSOJVgw/ZtszzAlZ9HuFtDGUFf79RAPDi6BBbhzZZVgbR8qzSFuG
         te0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KP7xYLuIhVYXXqfk3DAfMVhKHZi4jn3WmAfu5o6du54=;
        b=Yf66HXxeTybmkvGGOw7NhnQtsRMggPKjCbp6QBGv1fPg7JrybskOwzN9H5XVoACnnB
         SjgGTLBHy37MLpJzZogecss5F5VsNOGCSy+5cyaWp8paBRmTVOfFhhpKMzu87AnOPvnI
         M6usRDeP3d3A6BeXstKDfNSUuP0TIwIhVQuYd6HvlUG315R+h4iKz2UpjWhaVp2/mXra
         kmw3WeZr5ywdGuQD/6AI7DgeDTGi3wc3jKMPkniGupVbzBVhWzHNSS9UkxpkmnekRPX2
         tSAcKpqDBYTHixle3M4tzMIk3MhYfwuUZDyFx+w6yJr5xSo3N4X8L3xjdyVgMzLuQwDx
         U2mg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVoZ0lf78763i000RcBnaj5z5+ev/c5t/Zjn3h6lR+ysPikZq0o
	yaenf6KNKMpMgkERTngMZFE=
X-Google-Smtp-Source: APXvYqz+mq1IZY+T/q2LYDDfBB0KXnkoGTVYrF92q2o0xTamxBhEZQRun4rWGEagE7hYC6jd9XPORQ==
X-Received: by 2002:a7b:c8c3:: with SMTP id f3mr52743415wml.124.1564657475268;
        Thu, 01 Aug 2019 04:04:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4907:: with SMTP id x7ls20355783wrq.0.gmail; Thu, 01 Aug
 2019 04:04:30 -0700 (PDT)
X-Received: by 2002:adf:c003:: with SMTP id z3mr56243774wre.243.1564657470505;
        Thu, 01 Aug 2019 04:04:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564657470; cv=none;
        d=google.com; s=arc-20160816;
        b=avcACdYbwBIDlyOPeVEKVEaq485fSjeFsZ9etAQFqBvWwyAyMxxboRFkN4f929S8HB
         +Ulqq4Jhh15XZWZRLyohZyU1eMyrDVfh+oEctCKjWId37VNogMNAF64a9G9WQujusIgG
         x7zdEfv9TMHO8OPeBptJWJV/GhkQBd2ZJ0NapI2iQ3BLTgO5JOl4qideAhWNkr/TRtHe
         FJZtiJq0rEthF4BS9cEz27sw0MEBAFnplwMt5pueYocZieFqXf7ChEPWgppfU+qhDtTf
         8LIlsEKmpKSUovwdU4bQ6903Gl0CR7LnQKeX7DvpudK9PXuamX/X+TARfcuFOhB/ZiGb
         DODA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=+rzAPZ+XckZ57t/LKXjZ01N3qKLkUFNzP7k+coRvIZs=;
        b=KorTR2qGCpJjnq5AAf8wCMuJzyTeDK4xDvMgLLR6Z4JoLaI/7nXuTUEGxPgcISBY7M
         DrM8qzaW4/XHfT0evVCn0kjBp9TdIqndHnBVM+dLabMypEfMy+nu2MKA2bpsvWFXnvWA
         jgJ4hXalBW3tgVcCSYCJbGT4L8dL9RLbS/cB5WKsiQvo1pnlXdigqvN9I+ssq9r+UdGM
         PFWPFyCKEBlREdnvnyMnrTgJFPC09p8dHRWZ7f+yq6IPku60wUragWQ6Aa/WnJ/ifg1I
         6CdQu5EjBLgwizKcXKo7nH5cxVGd9Bc7B42K71pPokfWAlYT2KwBwThgLUoEpYC5jcny
         TlzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=1LFdsgOD;
       spf=pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=bot@kernelci.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id q14si3939104wmc.1.2019.08.01.04.04.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2019 04:04:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of bot@kernelci.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id h19so3392665wme.0
        for <clang-built-linux@googlegroups.com>; Thu, 01 Aug 2019 04:04:30 -0700 (PDT)
X-Received: by 2002:a1c:480a:: with SMTP id v10mr115154388wma.120.1564657468129;
        Thu, 01 Aug 2019 04:04:28 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id t185sm61633169wma.11.2019.08.01.04.04.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2019 04:04:26 -0700 (PDT)
Message-ID: <5d42c73a.1c69fb81.731be.1e5e@mx.google.com>
Date: Thu, 01 Aug 2019 04:04:26 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Tree: next
X-Kernelci-Kernel: next-20190801
X-Kernelci-Branch: master
X-Kernelci-Report-Type: build
Subject: next/master build: 230 builds: 5 failed, 225 passed, 5 errors,
 1246 warnings (next-20190801)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=1LFdsgOD;       spf=pass (google.com: domain of bot@kernelci.org
 designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=bot@kernelci.org
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

next/master build: 230 builds: 5 failed, 225 passed, 5 errors, 1246 warning=
s (next-20190801)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20190801/

Tree: next
Branch: master
Git Describe: next-20190801
Git Commit: 882e8691130bd75fd0ab540896db26e25eedf476
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
    allnoconfig (gcc-8): 1 warning
    axs103_defconfig (gcc-8): 5 warnings
    axs103_smp_defconfig (gcc-8): 5 warnings
    haps_hs_defconfig (gcc-8): 5 warnings
    haps_hs_smp_defconfig (gcc-8): 5 warnings
    hsdk_defconfig (gcc-8): 5 warnings
    nsim_hs_defconfig (gcc-8): 5 warnings
    nsim_hs_defconfig (gcc-8): 5 warnings
    nsim_hs_smp_defconfig (gcc-8): 5 warnings
    nsimosci_hs_defconfig (gcc-8): 5 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 5 warnings
    tinyconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 4 warnings
    vdk_hs38_smp_defconfig (gcc-8): 4 warnings

arm64:
    allmodconfig (gcc-8): 151 warnings
    allmodconfig (clang-8): 53 warnings
    allnoconfig (gcc-8): 4 warnings
    defconfig (clang-8): 5 warnings
    defconfig (gcc-8): 146 warnings
    defconfig (gcc-8): 145 warnings
    defconfig (clang-8): 5 warnings
    defconfig (gcc-8): 146 warnings
    defconfig (clang-8): 5 warnings
    defconfig (clang-8): 5 warnings
    defconfig (gcc-8): 146 warnings
    tinyconfig (gcc-8): 4 warnings

arm:
    allmodconfig (gcc-8): 1 error, 26 warnings
    assabet_defconfig (gcc-8): 2 warnings
    at91_dt_defconfig (gcc-8): 1 warning
    axm55xx_defconfig (gcc-8): 12 warnings
    badge4_defconfig (gcc-8): 2 warnings
    cerfcube_defconfig (gcc-8): 2 warnings
    collie_defconfig (gcc-8): 2 warnings
    ep93xx_defconfig (gcc-8): 1 warning
    footbridge_defconfig (gcc-8): 1 warning
    h3600_defconfig (gcc-8): 2 warnings
    imx_v6_v7_defconfig (gcc-8): 3 warnings
    lpc32xx_defconfig (gcc-8): 1 warning
    mini2440_defconfig (gcc-8): 2 warnings
    multi_v5_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 14 warnings
    multi_v7_defconfig (gcc-8): 14 warnings
    multi_v7_defconfig (gcc-8): 14 warnings
    multi_v7_defconfig (gcc-8): 14 warnings
    multi_v7_defconfig (gcc-8): 14 warnings
    neponset_defconfig (gcc-8): 2 warnings
    omap1_defconfig (gcc-8): 8 warnings
    omap2plus_defconfig (gcc-8): 1 warning
    pleb_defconfig (gcc-8): 2 warnings
    qcom_defconfig (gcc-8): 5 warnings
    rpc_defconfig (gcc-8): 8 warnings
    sama5_defconfig (gcc-8): 1 warning
    shannon_defconfig (gcc-8): 2 warnings
    shmobile_defconfig (gcc-8): 2 warnings
    simpad_defconfig (gcc-8): 2 warnings
    sunxi_defconfig (gcc-8): 2 warnings
    tct_hammer_defconfig (gcc-8): 2 warnings

i386:
    allnoconfig (gcc-8): 1 warning
    i386_defconfig (gcc-8): 4 warnings
    i386_defconfig (gcc-8): 4 warnings
    tinyconfig (gcc-8): 1 warning

mips:
    32r2el_defconfig (gcc-8): 4 warnings
    32r2el_defconfig (gcc-8): 4 warnings
    allnoconfig (gcc-8): 1 warning
    ar7_defconfig (gcc-8): 2 warnings
    ath25_defconfig (gcc-8): 2 warnings
    ath79_defconfig (gcc-8): 2 warnings
    bcm47xx_defconfig (gcc-8): 2 warnings
    bcm63xx_defconfig (gcc-8): 2 warnings
    bigsur_defconfig (gcc-8): 6 warnings
    bmips_be_defconfig (gcc-8): 1 warning
    bmips_stb_defconfig (gcc-8): 1 warning
    capcella_defconfig (gcc-8): 2 warnings
    cavium_octeon_defconfig (gcc-8): 1 error, 3 warnings
    ci20_defconfig (gcc-8): 3 warnings
    cobalt_defconfig (gcc-8): 2 warnings
    db1xxx_defconfig (gcc-8): 5 warnings
    decstation_64_defconfig (gcc-8): 6 warnings
    decstation_defconfig (gcc-8): 2 warnings
    decstation_r4k_defconfig (gcc-8): 2 warnings
    e55_defconfig (gcc-8): 2 warnings
    fuloong2e_defconfig (gcc-8): 1 error, 3 warnings
    gcw0_defconfig (gcc-8): 1 warning
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
    loongson3_defconfig (gcc-8): 1 error, 3 warnings
    malta_defconfig (gcc-8): 2 warnings
    malta_kvm_defconfig (gcc-8): 2 warnings
    malta_kvm_guest_defconfig (gcc-8): 2 warnings
    malta_qemu_32r6_defconfig (gcc-8): 4 warnings
    maltaaprp_defconfig (gcc-8): 2 warnings
    maltasmvp_defconfig (gcc-8): 2 warnings
    maltasmvp_eva_defconfig (gcc-8): 2 warnings
    maltaup_defconfig (gcc-8): 2 warnings
    maltaup_xpa_defconfig (gcc-8): 2 warnings
    markeins_defconfig (gcc-8): 3 warnings
    mips_paravirt_defconfig (gcc-8): 6 warnings
    mpc30x_defconfig (gcc-8): 2 warnings
    msp71xx_defconfig (gcc-8): 2 warnings
    mtx1_defconfig (gcc-8): 3 warnings
    nlm_xlp_defconfig (gcc-8): 7 warnings
    nlm_xlr_defconfig (gcc-8): 3 warnings
    omega2p_defconfig (gcc-8): 2 warnings
    pic32mzda_defconfig (gcc-8): 2 warnings
    pistachio_defconfig (gcc-8): 2 warnings
    pnx8335_stb225_defconfig (gcc-8): 2 warnings
    qi_lb60_defconfig (gcc-8): 3 warnings
    rb532_defconfig (gcc-8): 3 warnings
    rbtx49xx_defconfig (gcc-8): 2 warnings
    rm200_defconfig (gcc-8): 3 warnings
    rt305x_defconfig (gcc-8): 2 warnings
    sb1250_swarm_defconfig (gcc-8): 4 warnings
    tb0219_defconfig (gcc-8): 2 warnings
    tb0226_defconfig (gcc-8): 3 warnings
    tb0287_defconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 1 warning
    vocore2_defconfig (gcc-8): 2 warnings
    workpad_defconfig (gcc-8): 2 warnings
    xway_defconfig (gcc-8): 2 warnings

riscv:
    rv32_defconfig (gcc-8): 6 warnings

x86_64:
    allmodconfig (gcc-8): 3 warnings
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 2 warnings
    x86_64_defconfig (gcc-8): 2 warnings

Errors summary:

    4    include/linux/page-flags-layout.h:95:2: error: #error "Not enough =
bits in page flags"
    1    drivers/net/phy/mdio-cavium.h:111:36: error: implicit declaration =
of function 'writeq'; did you mean 'writel'? [-Werror=3Dimplicit-function-d=
eclaration]

Warnings summary:

    315  arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    184  <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    28   arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    28   arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
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
    14   mm/memcontrol.c:1160:11: warning: suggest parentheses around assig=
nment used as truth value [-Wparentheses]
    13   drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    13   drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this stateme=
nt may fall through [-Wimplicit-fallthrough=3D]
    13   drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this stateme=
nt may fall through [-Wimplicit-fallthrough=3D]
    12   include/linux/compiler.h:328:5: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    12   drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this sta=
tement may fall through [-Wimplicit-fallthrough=3D]
    12   drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this sta=
tement may fall through [-Wimplicit-fallthrough=3D]
    12   drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    12   arch/arc/kernel/unwind.c:836:20: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    12   arch/arc/kernel/unwind.c:827:20: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    11   drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    9    printk(KERN_WARNING "SA1100 flash: unknown base address "
    9    include/linux/printk.h:309:2: warning: this statement may fall thr=
ough [-Wimplicit-fallthrough=3D]
    9    drivers/mtd/maps/sa1100-flash.c:82:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    8    drivers/i2c/i2c-core-acpi.c:347:12: warning: 'i2c_acpi_find_match_=
adapter' defined but not used [-Wunused-function]
    8    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statem=
ent may fall through [-Wimplicit-fallthrough=3D]
    7    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this stat=
ement may fall through [-Wimplicit-fallthrough=3D]
    7    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this stat=
ement may fall through [-Wimplicit-fallthrough=3D]
    5    mm/memcontrol.c:1160:17: warning: using the result of an assignmen=
t as a condition without parentheses [-Wparentheses]
    5    mm/memcontrol.c:1160:17: note: place parentheses around the assign=
ment to silence this warning
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
    5    2 warnings generated.
    4    drivers/i2c/i2c-core-acpi.c:347:12: warning: unused function 'i2c_=
acpi_find_match_adapter' [-Wunused-function]
    4    arch/x86/kernel/ptrace.c:202:6: warning: this statement may fall t=
hrough [-Wimplicit-fallthrough=3D]
    3    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this stat=
ement may fall through [-Wimplicit-fallthrough=3D]
    3    drivers/net/phy/mdio-cavium.h:111:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    2    drivers/watchdog/jz4740_wdt.c:165:6: warning: unused variable 'ret=
' [-Wunused-variable]
    2    drivers/usb/gadget/udc/s3c2410_udc.c:418:7: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/usb/gadget/udc/s3c2410_udc.c:314:7: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:60:7: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    2    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
.altinstr_replacement+0x36: redundant UACCESS disable
    2    drivers/gpu/drm/arm/malidp_hw.c:387:8: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    2    drivers/gpu/drm/arm/malidp_hw.c:1311:4: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    2    arch/x86/kernel/cpu/mtrr/cyrix.c:99:6: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    2    arch/x86/kernel/apic/probe_32.c:146:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:134: Warning: macro instruction expanded into mul=
tiple instructions
    1    {standard input}:131: Warning: macro instruction expanded into mul=
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
    1    fs/f2fs/hash.c:130:7: warning: 'folded' may be used uninitialized =
in this function [-Wmaybe-uninitialized]
    1    fs/f2fs/hash.c:128:3: warning: variable 'folded' is uninitialized =
when used here [-Wuninitialized]
    1    fs/f2fs/hash.c:116:21: note: initialize the variable 'folded' to s=
ilence this warning
    1    fs/cifs/readdir.c:83:34: warning: variable 'wq' is uninitialized w=
hen used within its own initialization [-Wuninitialized]
    1    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1    drivers/watchdog/wdt285.c:170:3: warning: this statement may fall =
through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/omap/omapfb_main.c:449:23: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/omap/omapfb_main.c:1549:6: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/omap/omapfb_main.c:1547:3: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/omap/omapfb_main.c:1545:3: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/omap/omapfb_main.c:1543:3: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/omap/omapfb_main.c:1540:6: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/omap/omapfb_main.c:1538:3: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/video/fbdev/omap/omapfb_main.c:1535:3: warning: this state=
ment may fall through [-Wimplicit-fallthrough=3D]
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
    1    drivers/power/supply/ab8500_charger.c:738:6: warning: this stateme=
nt may fall through [-Wimplicit-fallthrough=3D]
    1    drivers/pcmcia/db1xxx_ss.c:269:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/pcmcia/db1xxx_ss.c:257:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    1    drivers/net/usb/lan78xx.c:2662:34: warning: variable 'unlink_wakeu=
p' is uninitialized when used within its own initialization [-Wuninitialize=
d]
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    drivers/mtd/nand/raw/au1550nd.c:443:57: warning: pointer type mism=
atch in conditional expression
    1    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake'=
 is uninitialized when used within its own initialization [-Wuninitialized]
    1    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is unin=
itialized when used within its own initialization [-Wuninitialized]
    1    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: =
.altinstr_replacement+0x1c: redundant UACCESS disable
    1    drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1534:4: warni=
ng: variable 'asic_default_power_limit' is used uninitialized whenever '?:'=
 condition is false [-Wsometimes-uninitialized]
    1    drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1517:35: note=
: initialize the variable 'asic_default_power_limit' to silence this warnin=
g
    1    drivers/gpu/drm/amd/amdgpu/../powerplay/arcturus_ppt.c:1346:4: war=
ning: variable 'asic_default_power_limit' is used uninitialized whenever '?=
:' condition is false [-Wsometimes-uninitialized]
    1    drivers/gpu/drm/amd/amdgpu/../powerplay/arcturus_ppt.c:1329:35: no=
te: initialize the variable 'asic_default_power_limit' to silence this warn=
ing
    1    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c=
:422:14: warning: implicit conversion from enumeration type 'enum amd_pp_cl=
ock_type' to different enumeration type 'enum smu_clk_type' [-Wenum-convers=
ion]
    1    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c=
:337:8: warning: implicit conversion from enumeration type 'enum smu_clk_ty=
pe' to different enumeration type 'enum amd_pp_clock_type' [-Wenum-conversi=
on]
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
    1    /tmp/ccjju5qc.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccjju5qc.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1177:warning: override: UNWINDER_GUESS changes choice stat=
e

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
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnin=
gs, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
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
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 151 warnings, 0 secti=
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
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/arm/malidp_hw.c:387:8: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/arm/malidp_hw.c:1311:4: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:60:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:2086:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/sh_mobile_lcdcfb.c:1596:22: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 26 warnings, 0 section m=
ismatches

Errors:
    drivers/net/phy/mdio-cavium.h:111:36: error: implicit declaration of fu=
nction 'writeq'; did you mean 'writel'? [-Werror=3Dimplicit-function-declar=
ation]

Warnings:
    WARNING: unmet direct dependencies detected for MDIO_OCTEON
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/power/supply/ab8500_charger.c:738:6: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    /tmp/ccjju5qc.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/ccjju5qc.s:18191: Warning: using r15 results in unpredictable beha=
viour
    fs/f2fs/hash.c:130:7: warning: 'folded' may be used uninitialized in th=
is function [-Wmaybe-uninitialized]
    drivers/gpu/drm/arm/malidp_hw.c:387:8: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/arm/malidp_hw.c:1311:4: warning: this statement may fal=
l through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:60:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to integ=
er of different size [-Wpointer-to-int-cast]
    drivers/net/phy/mdio-cavium.h:111:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:111:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:111:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    cc1: some warnings being treated as errors

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 53 warnings, 0 sect=
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
    fs/f2fs/hash.c:128:3: warning: variable 'folded' is uninitialized when =
used here [-Wuninitialized]
    fs/f2fs/hash.c:116:21: note: initialize the variable 'folded' to silenc=
e this warning
    1 warning generated.
    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/nfs/dir.c:448:34: warning: variable 'wq' is uninitialized when used =
within its own initialization [-Wuninitialized]
    fs/nfs/dir.c:1499:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
    2 warnings generated.
    drivers/gpu/drm/amd/amdgpu/../powerplay/arcturus_ppt.c:1346:4: warning:=
 variable 'asic_default_power_limit' is used uninitialized whenever '?:' co=
ndition is false [-Wsometimes-uninitialized]
    drivers/gpu/drm/amd/amdgpu/../powerplay/arcturus_ppt.c:1329:35: note: i=
nitialize the variable 'asic_default_power_limit' to silence this warning
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1534:4: warning: v=
ariable 'asic_default_power_limit' is used uninitialized whenever '?:' cond=
ition is false [-Wsometimes-uninitialized]
    drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1517:35: note: ini=
tialize the variable 'asic_default_power_limit' to silence this warning
    1 warning generated.
    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c:337:=
8: warning: implicit conversion from enumeration type 'enum smu_clk_type' t=
o different enumeration type 'enum amd_pp_clock_type' [-Wenum-conversion]
    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c:422:=
14: warning: implicit conversion from enumeration type 'enum amd_pp_clock_t=
ype' to different enumeration type 'enum smu_clk_type' [-Wenum-conversion]
    2 warnings generated.
    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
    1 warning generated.
    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is uninitial=
ized when used within its own initialization [-Wuninitialized]
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
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .alti=
nstr_replacement+0x1c: redundant UACCESS disable
    drivers/i2c/i2c-core-acpi.c:347:12: warning: 'i2c_acpi_find_match_adapt=
er' defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section =
mismatches

Warnings:
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]

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
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    arch/x86/kernel/ptrace.c:202:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

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
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
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
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 12 warnings, 0 sec=
tion mismatches

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
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
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
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
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
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    drivers/watchdog/jz4740_wdt.c:165:6: warning: unused variable 'ret' [-W=
unused-variable]

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
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]
    drivers/mtd/nand/raw/au1550nd.c:443:57: warning: pointer type mismatch =
in conditional expression
    drivers/pcmcia/db1xxx_ss.c:257:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]
    drivers/pcmcia/db1xxx_ss.c:269:3: warning: this statement may fall thro=
ugh [-Wimplicit-fallthrough=3D]

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
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

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
    drivers/i2c/i2c-core-acpi.c:347:12: warning: unused function 'i2c_acpi_=
find_match_adapter' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 146 warnings, 0 section =
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
    drivers/i2c/i2c-core-acpi.c:347:12: warning: 'i2c_acpi_find_match_adapt=
er' defined but not used [-Wunused-function]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 145 warnings, 0 section mismatches

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
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
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
    drivers/i2c/i2c-core-acpi.c:347:12: warning: unused function 'i2c_acpi_=
find_match_adapter' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 146 warnings, 0 section mismatches

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
    drivers/i2c/i2c-core-acpi.c:347:12: warning: 'i2c_acpi_find_match_adapt=
er' defined but not used [-Wunused-function]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
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
    drivers/i2c/i2c-core-acpi.c:347:12: warning: unused function 'i2c_acpi_=
find_match_adapter' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

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
    drivers/i2c/i2c-core-acpi.c:347:12: warning: unused function 'i2c_acpi_=
find_match_adapter' [-Wunused-function]
    1 warning generated.

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 146 warnings, =
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
    drivers/i2c/i2c-core-acpi.c:347:12: warning: 'i2c_acpi_find_match_adapt=
er' defined but not used [-Wunused-function]
    drivers/iommu/arm-smmu-v3.c:1189:7: warning: this statement may fall th=
rough [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
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
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

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
haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 section=
 mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sectio=
n mismatches

Warnings:
    arch/x86/kernel/apic/probe_32.c:146:7: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/x86/kernel/cpu/mtrr/cyrix.c:99:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/x86/kernel/ptrace.c:202:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/i2c/i2c-core-acpi.c:347:12: warning: 'i2c_acpi_find_match_adapt=
er' defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings=
, 0 section mismatches

Warnings:
    arch/x86/kernel/apic/probe_32.c:146:7: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/x86/kernel/cpu/mtrr/cyrix.c:99:6: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/x86/kernel/ptrace.c:202:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    drivers/i2c/i2c-core-acpi.c:347:12: warning: 'i2c_acpi_find_match_adapt=
er' defined but not used [-Wunused-function]

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
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

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
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
loongson3_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 3 warnings, 0 se=
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
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
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
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warning=
s, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    {standard input}:131: Warning: macro instruction expanded into multiple=
 instructions
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
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
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
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
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
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this statement=
 may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 14 warnings, 0 se=
ction mismatches

Warnings:
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
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
 errors, 14 warnings, 0 section mismatches

Warnings:
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
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
=94 PASS, 0 errors, 14 warnings, 0 section mismatches

Warnings:
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
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
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 14=
 warnings, 0 section mismatches

Warnings:
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
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
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    arch/arm/include/asm/arch_gicv3.h:175:40: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may =
fall through [-Wimplicit-fallthrough=3D]
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
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sec=
tion mismatches

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
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/printk.h:309:2: warning: this statement may fall through =
[-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsim_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sect=
ion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsim_hs_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnin=
gs, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsim_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 =
section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings=
, 0 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
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
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/video/fbdev/omap/omapfb_main.c:449:23: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/omap/omapfb_main.c:1535:3: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/omap/omapfb_main.c:1538:3: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/omap/omapfb_main.c:1540:6: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/omap/omapfb_main.c:1543:3: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/omap/omapfb_main.c:1545:3: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/omap/omapfb_main.c:1547:3: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/video/fbdev/omap/omapfb_main.c:1549:6: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]

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
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
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
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 section=
 mismatches

Warnings:
    drivers/gpu/drm/msm/adreno/adreno_gpu.c:429:7: warning: this statement =
may fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a5xx_gpu.c:150:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/msm/adreno/a6xx_gpu.c:116:7: warning: this statement ma=
y fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:815:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]
    drivers/pinctrl/qcom/pinctrl-spmi-gpio.c:820:20: warning: this statemen=
t may fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
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
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
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
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
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
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
    drivers/gpu/drm/sun4i/sun4i_tcon.c:318:7: warning: this statement may f=
all through [-Wimplicit-fallthrough=3D]
    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:993:6: warning: this statement m=
ay fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    drivers/usb/gadget/udc/s3c2410_udc.c:314:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]
    drivers/usb/gadget/udc/s3c2410_udc.c:418:7: warning: this statement may=
 fall through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    arch/x86/kernel/ptrace.c:202:6: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1177:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section m=
ismatches

Warnings:
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    arch/arm64/include/asm/sysreg.h:853:2: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mism=
atches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0=
 section mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    include/linux/compiler.h:328:5: warning: this statement may fall throug=
h [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:827:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]
    arch/arc/kernel/unwind.c:836:20: warning: this statement may fall throu=
gh [-Wimplicit-fallthrough=3D]

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
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    mm/memcontrol.c:1160:11: warning: suggest parentheses around assignment=
 used as truth value [-Wparentheses]

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
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches

Warnings:
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .alti=
nstr_replacement+0x36: redundant UACCESS disable
    drivers/i2c/i2c-core-acpi.c:347:12: warning: 'i2c_acpi_find_match_adapt=
er' defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warn=
ings, 0 section mismatches

Warnings:
    drivers/i2c/i2c-core-acpi.c:347:12: warning: 'i2c_acpi_find_match_adapt=
er' defined but not used [-Wunused-function]
    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .alti=
nstr_replacement+0x36: redundant UACCESS disable

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
clang-built-linux/5d42c73a.1c69fb81.731be.1e5e%40mx.google.com.
