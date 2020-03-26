Return-Path: <clang-built-linux+bncBDT6TV45WMPRB6HC6LZQKGQEHHVG4ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B117193FFA
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 14:43:22 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id x189sf5141273pfd.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 06:43:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585230201; cv=pass;
        d=google.com; s=arc-20160816;
        b=pP0Zh2UY8s4g2gKcMObubhu5juZYDiSVfDkKmfP8BvCR/rjLym3IqeioGXiDYZs7nl
         0Y7e2QCXPhulfhukTsmRVa3Z3Xmy2lnm31bi16bp58jW0eruCJ4Nt9KxkPY2khc0++r/
         VSx8JeWh9cBDwc652z3VMGMq1fUf4Wl5rcVaDWAO3ym9Gc2OFqY4QiDYHZm6HMvDOHvL
         hxTw1OqvF5x2msNEqWlauYvxWc6rN/3E32R8SNa861vw/2mYHSA1q3NhWwxZ8NXwEGcu
         c2pzNMcpam3qL+K2uVh+DgX2fYTFpbUrfITx8iSycm1dnKpyqigwfjmAdVrnR28ZhWS3
         E20w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=xxjh2M/X7lmhEyTiKzw8RI3oCpjwPZW5kl6KKRgSNGs=;
        b=UB9KP77KdmXmGCwFGfPj3j+9NBYR1QufrRbdtfm3bcCQ7/0QeoeY2Nd4DYxNOPTJX8
         NK3JV+1ifhhOvWT+BJkqbAdZG8ItZ2rAydoVcrUPrDlSnxDTTswy/w3aYWdFtXFC5dS4
         HFO3NP+H0bMTWH899n/5JXlijBcrFFEgoVkvMu27jv+oY/TwitmwnZcUJB9rcqUKrJ1K
         QzKYAWwcCOwCOM9i7nSk5vd1Ris0ip6gW6TjjLYgSNYJDpfU6IKbsZ9zK3EGnXECLQjG
         9hRc4NOBhiVAXribuR1yMgEr1p+zHZ1djBh3wwAqeIMYUo7y6vgQS8uSTz53oQqWDs+0
         L3RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b="IwgY/mB4";
       spf=neutral (google.com: 2607:f8b0:4864:20::1042 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xxjh2M/X7lmhEyTiKzw8RI3oCpjwPZW5kl6KKRgSNGs=;
        b=SBfUJ6fppvWbtSSvOHbYaHtpMNuWBBPMbC1b2NarUTUezfBUNONWq1lRTMXMntEJpg
         v0YVhH35d+AKefEaememZg3yo5DqSj5jVHdZiYklsJcg8Xb8PDIKjN93SW6mnee5HdX5
         RLXykpWtLY/6SWl2YQtf2M+s3DNH9bAX1vFWWN+Wt0SgAPK8bJ8FqKrB3jZEAyF6us/A
         8reKlhDi5XGklas+HdRMK52lNH4Q2+AWX/rCvUre9FxwrsrJKPqSTU2NY/U9hYL3lIHr
         qErFYYlQPOSVkZlgCBw02VlSpjkZcLaQxwWY4DnqPzqQi7S5gcrenamISmMJOJYbH8mM
         ENRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xxjh2M/X7lmhEyTiKzw8RI3oCpjwPZW5kl6KKRgSNGs=;
        b=oGtUDRvxHkPkYbP5YWJtW1DmbhYIarbfYvVNfAOzkRbek9PWK9ry7hun3xmYWWnHrq
         XUcFRtVHGm1zJFFyXzucw4bM+y5PhBIvkdqmD60ZlKzAG8B2lBRPmPIGQMmt19ZN0Mjf
         4VtW9n9HqrItCOL5I+PGVhSxOHngINRMqD7qGkUYtz5vkKcsjRclRV47VQj091qCUBVQ
         Q1sWZJLPfWg70evWNXG03cbKZQbH2ZY56+kvD88gm/DymqBEIxeW5+tK1jpwLzjaPWf2
         mDdTh46WtVXGKYHzGk+or2pC92AEtrkBuvU5BjfwhMfu3m/kp9z9hz6VIHL683H309L/
         MwyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0tsYslg1vPX0OukhbOdZ0L9hClMYXQ67l0jvoJru/4n1H2Ru9a
	cYsovwzGUJsVGxFsJSNg0w8=
X-Google-Smtp-Source: ADFU+vv39+KPraBu9xQaA0PXib7VGvZ8APKf6cYBl8vtSLvsGEoSdIP3aMa9psjTxhOobML+hQWfvg==
X-Received: by 2002:a63:3583:: with SMTP id c125mr8911061pga.325.1585230200789;
        Thu, 26 Mar 2020 06:43:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:982:: with SMTP id 2ls4334229pjo.1.gmail; Thu, 26
 Mar 2020 06:43:20 -0700 (PDT)
X-Received: by 2002:a17:90a:62cb:: with SMTP id k11mr109184pjs.20.1585230200215;
        Thu, 26 Mar 2020 06:43:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585230200; cv=none;
        d=google.com; s=arc-20160816;
        b=0y/9wrLsJWOe0M1rc17T55YIQ8kNNZ1MWChEqsH+tqe02xy/Qa4ktgIsb1TSaBGMtn
         KGBaHuRtJ8ff+CqRR0AKv2AqxPSoKzASEueNlYRr5sH+FHsDWBo+O3KjhrWZ0wK6vnyh
         sCZMnSZ065lmHBSZocp77RLhZzWjVoOJrSjLiQ3iw87lROaSwARTk7dmPDE8cizueyqZ
         PXkVvog9Jnj2aa4MHa0V7YOENjM0+ZIQvGj7YPnvCD3HETKhLf5heRBklibp/m0csfsU
         Wy1/k7pf9CjW4acNCMDrWLEl5VUhZ0hASI2zgyvTDXSPA18ikg5M69971fVe5LxqGNDx
         QxWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=96VlPUi99Gv0004aevN/sfYURiGDyWXFtLowpPkIE8o=;
        b=beaHif/qGu5cqRJz0elHyDogQMq77MFWk1q67ISSQL0f1IQoDzHf0wZlfY7q/n3meX
         SOQW8hTHNh3f8SsMpLnpyRls7Ivf0xPjxZP6hgSo+nnDnL9+yu7e4KEM5cGNmE6TELbj
         D82Bn3Vu8GZeonPiKr7+HjKRlvEAv+FPi+Xhd09fFtse2VmkcxT8lUMQA82LwDCnFAhN
         rIDJtXr2iiWeyAO0fHN2cELeqf8Mwmtir4RMTQ/YEZ3XWP/bi2pSWl5ytFaLL8asXFZW
         DfAr6CXioE/DUD5pD4oTjqdwKB/6fTwmUXhJzyDs6vIHSC7c2Og9z/6qc7oC/hDnS9d1
         GfQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b="IwgY/mB4";
       spf=neutral (google.com: 2607:f8b0:4864:20::1042 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id np5si16557pjb.2.2020.03.26.06.43.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 06:43:20 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1042 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id np9so2467655pjb.4
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 06:43:20 -0700 (PDT)
X-Received: by 2002:a17:902:7003:: with SMTP id y3mr8563704plk.122.1585230198990;
        Thu, 26 Mar 2020 06:43:18 -0700 (PDT)
Received: from [10.0.9.4] ([52.250.1.28])
        by smtp.gmail.com with ESMTPSA id w205sm1741851pfc.75.2020.03.26.06.43.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 06:43:17 -0700 (PDT)
Message-ID: <5e7cb175.1c69fb81.d10e.6d4a@mx.google.com>
Date: Thu, 26 Mar 2020 06:43:17 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Kernel: next-20200326
X-Kernelci-Report-Type: build
X-Kernelci-Branch: master
X-Kernelci-Tree: next
Subject: next/master build: 227 builds: 17 failed, 210 passed, 41 errors,
 497 warnings (next-20200326)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b="IwgY/mB4";       spf=neutral (google.com: 2607:f8b0:4864:20::1042
 is neither permitted nor denied by best guess record for domain of
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

next/master build: 227 builds: 17 failed, 210 passed, 41 errors, 497 warnin=
gs (next-20200326)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200326/

Tree: next
Branch: master
Git Describe: next-20200326
Git Commit: 89295c59c1f063b533d071ca49d0fa0c0783ca6f
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
    cm_x300_defconfig: (gcc-8) FAIL
    em_x270_defconfig: (gcc-8) FAIL
    eseries_pxa_defconfig: (gcc-8) FAIL
    mmp2_defconfig: (gcc-8) FAIL
    pxa168_defconfig: (gcc-8) FAIL
    pxa910_defconfig: (gcc-8) FAIL
    pxa_defconfig: (gcc-8) FAIL
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
    allmodconfig (gcc-8): 2 errors, 18 warnings
    allmodconfig (clang-9): 2 errors, 21 warnings
    aspeed_g4_defconfig (gcc-8): 4 warnings
    aspeed_g5_defconfig (clang-9): 4 warnings
    aspeed_g5_defconfig (gcc-8): 4 warnings
    bcm2835_defconfig (gcc-8): 14 warnings
    cm_x300_defconfig (gcc-8): 1 error, 2 warnings
    em_x270_defconfig (gcc-8): 1 error, 2 warnings
    eseries_pxa_defconfig (gcc-8): 14 errors, 12 warnings
    integrator_defconfig (gcc-8): 1 warning
    mmp2_defconfig (gcc-8): 1 error
    multi_v4t_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (gcc-8): 4 warnings
    multi_v5_defconfig (clang-9): 4 warnings
    multi_v7_defconfig (gcc-8): 18 warnings
    multi_v7_defconfig (clang-9): 20 warnings
    multi_v7_defconfig (gcc-8): 18 warnings
    multi_v7_defconfig (gcc-8): 18 warnings
    multi_v7_defconfig (gcc-8): 18 warnings
    multi_v7_defconfig (gcc-8): 19 warnings
    pxa168_defconfig (gcc-8): 1 error
    pxa910_defconfig (gcc-8): 1 error
    pxa_defconfig (gcc-8): 3 errors, 6 warnings
    qcom_defconfig (gcc-8): 1 error
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

    4    ERROR: modpost: "mtk_mmsys_ddp_disconnect" [drivers/gpu/drm/mediat=
ek/mediatek-drm.ko] undefined!
    4    ERROR: modpost: "mtk_mmsys_ddp_connect" [drivers/gpu/drm/mediatek/=
mediatek-drm.ko] undefined!
    3    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.=
ko] undefined!
    2    arch/riscv/kernel/stacktrace.c:78:8: error: =E2=80=98sp_in_global=
=E2=80=99 undeclared (first use in this function); did you mean =E2=80=98sp=
in_lock=E2=80=99?
    2    /home/buildslave/workspace/kernel-build@2/linux/build/../drivers/c=
lk/mmp/clk.c:192: undefined reference to `mmp_clk_register_pll'
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
    1    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9713.=
ko] undefined!
    1    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9705.=
ko] undefined!
    1    ERROR: modpost: "rd_full" [drivers/gpu/drm/msm/msm.ko] undefined!
    1    /tmp/cpudeadline-9c7247.s:76: Error: `%ecx' not allowed with `orb'
    1    /home/buildslave/workspace/workspace/kernel-build@3/linux/build/..=
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
    8    1 warning generated.
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
    2    arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_fo=
rmat): /:dma-ranges: Root node has a "dma-ranges" property
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
    1    mm/kasan/common.o: warning: objtool: kasan_report()+0x87: call to =
__stack_chk_fail() with UACCESS enabled
    1    include/linux/kernel.h:47:25: warning: excess elements in struct i=
nitializer
    1    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%lu=E2=
=80=99 expects argument of type =E2=80=98long unsigned int=E2=80=99, but ar=
gument 2 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
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
    1    cc1: some warnings being treated as errors
    1    arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()+0=
x1fa: call to memset() with UACCESS enabled
    1    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x1=
f8: call to memset() with UACCESS enabled
    1    arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_frame=
()+0x1ef: call to memset() with UACCESS enabled
    1    arch/mips/configs/ci20_defconfig:178:warning: override: reassignin=
g to symbol LEDS_TRIGGER_ONESHOT
    1    2 warnings generated.
    1    /tmp/test-arm-e023be.s:18788: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/test-arm-e023be.s:18713: Warning: using r15 results in unpred=
ictable behaviour
    1    /tmp/ccbU4HdL.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccbU4HdL.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1161:warning: override: UNWINDER_GUESS changes choice stat=
e

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
clang-built-linux/5e7cb175.1c69fb81.d10e.6d4a%40mx.google.com.
