Return-Path: <clang-built-linux+bncBDT6TV45WMPRB3ODZTXQKGQE2KSMHUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD7311DDBE
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Dec 2019 06:30:22 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id r2sf2101994wrp.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Dec 2019 21:30:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576215021; cv=pass;
        d=google.com; s=arc-20160816;
        b=o6zPodo5/xKUaUvkVrJTD+oyjyllHvAXP5l9mQ7pQbsS7hXYnZr/LtTUtgGP5H6PKH
         doRxKY/tA5on4Cn1Re0MSpIvTqTJmGhnGGfkK62Gx5M8jc+NQ+TWQdstEo0caNoZ8sW8
         0BtSrzYv8Hgud4s2uKdFWK2UlfZfSIAM4Y1KjTC6QUosoWbhxJV3zCjxTcCR552eXVVi
         WyO2UATL0GYIqQJHUxwNOb3azN2aN75q/InKwlrUJ2dDtgXts7KFCdgXwAcUxt2/VY5r
         4vZKR/3hkT1eoVR2q1Ei7i/52yjaOnus+OWEl0Uka1dpP0nMfRd0f/djipf9jdFjkHHe
         eZQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=h5ROcXJh/OKO+hk3fToXGQdh3U5ioNsQhhOgIImOGAQ=;
        b=ZrmJvu+S/ajUYzhH0TXGQGCaLSq6QEPFz8Rd0jcqfTl+z1KtMlyhZuXoJHvf7kW7ry
         uMwA7zzLTm95Dm/4AEfi7K8yzKohG3hBVm7yLYiXnFX4ALSKcfOmqJo/J8jeJON9viWv
         FGMjpxzrekP+Tx4Ni+yiccddyFBEfOcvkwuZrK/Hgm3cDTGLUi0KAwiGd4bg3XL+VjU+
         RNhEOTupr/6ZKdioCWk0Y8hNXYNNYbIvyQtjtSgqVj19+XZ6JOlLmpwy8MjAKzB5+HSV
         zCtOBn3xBpSugMFGZmOJt+FxE3Mx/Md4Oy55mIxPUl2dgPJi4yX7n7gNo7cz4oku0te9
         lGHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=qkl8Rl9u;
       spf=neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h5ROcXJh/OKO+hk3fToXGQdh3U5ioNsQhhOgIImOGAQ=;
        b=EHsPi3Brte3YrLPFJk6gkUTQ+NUHlQYEmetlwOwMw8G6oJFjcon5NuUSRSQnuEUNhM
         LckbFAqHyODRACjyVrAzrIDun3ELzD8kVOmYcBdm3csxi+ZPPPmBy05Uq8FVFE+Rem0d
         KIOCMu2XEDqE2CVCrUwY4PIs8v7h2onfbpbtBKKNW+T7u7Wtb7dhjnFYt0vB+5YMvew4
         TrphBUxiBr8hBUtIE8DmAg8g10na3lXiUOvQmsCSfcS3eXXd8UsUCCbeYzYfwvrnxpSh
         soHBwe7bj+M+MocTsb355WwQ3PdiGPNokGnHYrAyIen2Dkcd8DiLlTDVE1jrY7gZkCQg
         u0fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h5ROcXJh/OKO+hk3fToXGQdh3U5ioNsQhhOgIImOGAQ=;
        b=l+M9FcvlA8udvpo5mhuPxR94VA47ch7Wk+WmdfQ+5h1eSv0IAZ6ddr6C8FDBEqnEc2
         P3sxcZbYatzikdZOr4QM/T54JFbMiQNQU/XNAzxHdsgo7teXBUK4cF/CCvZVXWlnSmE4
         Av7MRecirBlXu8sozWS80ob9xVlbphN6R2bHaKSDXjCXpzIK1heOtMwe7wIDiFIG0UMr
         K4ZPCHP1ZKQeHU5Rda1dzmAlLzN9duCzNJ1d49whvC6vWOMKFzM6n36X18ZUXp9VHuEr
         dwAQDwbqld14ASE2zmswBFVlTrZT+UhmI6b9k+lOxCer7ShXCGd+u0ENEkr0KQIxCkRn
         c68g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV69XaA3K7OoJVmfJkUWg2WEL3KflJJU0k4L2zB78cq+lgfprA9
	dEgbDaEswNDldQZbiDDwtgQ=
X-Google-Smtp-Source: APXvYqwDVh+mZmFDEkQInFRPHtgePA48tEdDTJIa3YMrZiJgBDRQZXbp3jwu4b2f1XQNjBvRReej0w==
X-Received: by 2002:adf:d0c1:: with SMTP id z1mr10750865wrh.371.1576215021423;
        Thu, 12 Dec 2019 21:30:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9ed2:: with SMTP id h201ls4365043wme.3.canary-gmail;
 Thu, 12 Dec 2019 21:30:20 -0800 (PST)
X-Received: by 2002:a1c:e909:: with SMTP id q9mr11393180wmc.30.1576215020795;
        Thu, 12 Dec 2019 21:30:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576215020; cv=none;
        d=google.com; s=arc-20160816;
        b=w9SgRVx6Ik4BrvvIIh2D88gxLv+W1MfNdeRBkxsoK7ciyNX+FElHTzc2FlN7cGkbRI
         bCfrmdD+HFBKoxp9m8aCg+VyViFxKm0zfrvnPtNAYrink2UOkZRPULM2MlUrugBPIBlZ
         0e+77gfUJelTwkYz5CKlvT3jWDKVpWFZr/H/R6gFnY2GTkUYwwOhm/4xczxqyhTlmsxF
         cLbU+GIZcHG5OplMkVaS7CMj5iE6hipeEXa51ABvZej4vuNlIZWV3qtrJiqWhk2lnTb+
         kRuiofQydsR1y4qWhohY+/+OtFX6w4mgpgkIQ4V7d8nD/jkJgEw+YD3PCbwuP/LeBn1G
         +tdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=wsh98Flh2gI7YlppEIJLL0UIp/JxWc80FwkLVEK3ibY=;
        b=EJuwp3K3/HwiJRlE4BdNQxmAabBJ8yrlbwJ15UNlglObxBGiJDN4zTOzQq0PDhulKf
         wedP4a7ftxHazeYKMNEJvAWgCjrz6U/z552YEBuOrvGED7CneqmZugnbqOpNKqUC431Z
         WBDMvNDTdabcy+1yy6mj5SVyRXDp62WxMRjvvgT/Vjb0OaGtUjWBKWBg+ylI+zWYJK+f
         PbLkklQ2PcOxBj9o+QGY6hvRlVxSfPjS6K9rgORSO+t5VQtZAaHYIfYSAJGP7Ih5XSJR
         iH7uOJHPuopH4xb1tQQ8Zy2WMRo4CqV4EKr957+zcIjjflczZZmWKspl7mBdcWeQcyr+
         KAjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=qkl8Rl9u;
       spf=neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id m2si312317wmi.3.2019.12.12.21.30.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2019 21:30:20 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id b19so703606wmj.4
        for <clang-built-linux@googlegroups.com>; Thu, 12 Dec 2019 21:30:20 -0800 (PST)
X-Received: by 2002:a05:600c:305:: with SMTP id q5mr11229072wmd.167.1576215018648;
        Thu, 12 Dec 2019 21:30:18 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id h2sm8850941wrt.45.2019.12.12.21.30.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2019 21:30:18 -0800 (PST)
Message-ID: <5df321ea.1c69fb81.7f345.cea2@mx.google.com>
Date: Thu, 12 Dec 2019 21:30:18 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: next-20191213
X-Kernelci-Tree: next
X-Kernelci-Branch: master
Subject: next/master build: 214 builds: 1 failed, 213 passed, 1 error,
 190 warnings (next-20191213)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=qkl8Rl9u;       spf=neutral (google.com: 2a00:1450:4864:20::342 is
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

next/master build: 214 builds: 1 failed, 213 passed, 1 error, 190 warnings =
(next-20191213)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20191213/

Tree: next
Branch: master
Git Describe: next-20191213
Git Commit: 32b8acf85223448973ca0bf0ee8149a01410f3a0
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
    allnoconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 1 warning

arm:
    allmodconfig (gcc-8): 1 error, 20 warnings
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
    mvebu_v5_defconfig (gcc-8): 1 warning
    neponset_defconfig (gcc-8): 1 warning
    netwinder_defconfig (gcc-8): 1 warning
    nhk8815_defconfig (gcc-8): 1 warning
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
    i386_defconfig (gcc-8): 1 warning

mips:
    32r2el_defconfig (gcc-8): 2 warnings
    32r2el_defconfig (gcc-8): 3 warnings
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
    nlm_xlr_defconfig (gcc-8): 1 warning
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
    defconfig (gcc-8): 2 warnings
    defconfig (gcc-8): 1 warning
    rv32_defconfig (gcc-8): 8 warnings

x86_64:
    allnoconfig (gcc-8): 1 warning
    tinyconfig (gcc-8): 1 warning

Errors summary:

    1    ERROR: "__bad_udelay" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undef=
ined!

Warnings summary:

    134  kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=
=99 may be used uninitialized in this function [-Wmaybe-uninitialized]
    20   <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    5    fs/btrfs/tree-checker.c:230:43: warning: format =E2=80=98%lu=E2=80=
=99 expects argument of type =E2=80=98long unsigned int=E2=80=99, but argum=
ent 5 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    3    drivers/usb/host/xhci-pci.c:524:13: warning: =E2=80=98xhci_pci_shu=
tdown=E2=80=99 defined but not used [-Wunused-function]
    2    net/core/sysctl_net_core.c:292:1: warning: =E2=80=98proc_dointvec_=
minmax_bpf_restricted=E2=80=99 defined but not used [-Wunused-function]
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:134: Warning: macro instruction expanded into mul=
tiple instructions
    1    sound/soc/txx9/txx9aclc.c:54:30: warning: unused variable =E2=80=
=98rtd=E2=80=99 [-Wunused-variable]
    1    net/netfilter/nf_flow_table_offload.c:91:21: warning: unsigned con=
version from =E2=80=98int=E2=80=99 to =E2=80=98__be16=E2=80=99 {aka =E2=80=
=98short unsigned int=E2=80=99} changes value from =E2=80=98327680=E2=80=99=
 to =E2=80=980=E2=80=99 [-Woverflow]
    1    include/linux/kernel.h:844:29: warning: comparison of distinct poi=
nter types lacks a cast
    1    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%ld=E2=
=80=99 expects argument of type =E2=80=98long int=E2=80=99, but argument 5 =
has type =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wf=
ormat=3D]
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    /tmp/cc20p0Ml.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/cc20p0Ml.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1172:warning: override: UNWINDER_GUESS changes choice stat=
e

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
    2    WARNING: drivers/isdn/capi/kernelcapi.o(.text+0x203b): Section mis=
match in reference from the function kcapi_exit() to the function .exit.tex=
t:kcapi_proc_exit()
    1    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x7c8): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x710): Section mismatch in refe=
rence from the function free_memmap() to the function .meminit.text:membloc=
k_free()
    1    WARNING: vmlinux.o(.text.unlikely+0x399c): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()
    1    WARNING: vmlinux.o(.text.unlikely+0x3680): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()
    1    WARNING: drivers/isdn/capi/kernelcapi.o(.text+0x265c): Section mis=
match in reference from the function kcapi_exit() to the function .exit.tex=
t:kcapi_proc_exit()
    1    WARNING: drivers/isdn/capi/kernelcapi.o(.text+0x1be0): Section mis=
match in reference from the function kcapi_exit() to the function .exit.tex=
t:kcapi_proc_exit()

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
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnin=
gs, 0 section mismatches

Warnings:
    fs/btrfs/tree-checker.c:230:43: warning: format =E2=80=98%lu=E2=80=99 e=
xpects argument of type =E2=80=98long unsigned int=E2=80=99, but argument 5=
 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
    net/core/sysctl_net_core.c:292:1: warning: =E2=80=98proc_dointvec_minma=
x_bpf_restricted=E2=80=99 defined but not used [-Wunused-function]
    net/core/sysctl_net_core.c:292:1: warning: =E2=80=98proc_dointvec_minma=
x_bpf_restricted=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

Section mismatches:
    WARNING: drivers/isdn/capi/kernelcapi.o(.text+0x265c): Section mismatch=
 in reference from the function kcapi_exit() to the function .exit.text:kca=
pi_proc_exit()

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 20 warnings, 0 section m=
ismatches

Errors:
    ERROR: "__bad_udelay" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!

Warnings:
    include/linux/kernel.h:844:29: warning: comparison of distinct pointer =
types lacks a cast
    /tmp/cc20p0Ml.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/cc20p0Ml.s:18191: Warning: using r15 results in unpredictable beha=
viour
    fs/btrfs/tree-checker.c:230:43: warning: format =E2=80=98%lu=E2=80=99 e=
xpects argument of type =E2=80=98long unsigned int=E2=80=99, but argument 5=
 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
    net/netfilter/nf_flow_table_offload.c:91:21: warning: unsigned conversi=
on from =E2=80=98int=E2=80=99 to =E2=80=98__be16=E2=80=99 {aka =E2=80=98sho=
rt unsigned int=E2=80=99} changes value from =E2=80=98327680=E2=80=99 to =
=E2=80=980=E2=80=99 [-Woverflow]
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
    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%ld=E2=80=99=
 expects argument of type =E2=80=98long int=E2=80=99, but argument 5 has ty=
pe =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=
=3D]

Section mismatches:
    WARNING: drivers/isdn/capi/kernelcapi.o(.text+0x1be0): Section mismatch=
 in reference from the function kcapi_exit() to the function .exit.text:kca=
pi_proc_exit()

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

Section mismatches:
    WARNING: drivers/isdn/capi/kernelcapi.o(.text+0x203b): Section mismatch=
 in reference from the function kcapi_exit() to the function .exit.text:kca=
pi_proc_exit()
    WARNING: drivers/isdn/capi/kernelcapi.o(.text+0x203b): Section mismatch=
 in reference from the function kcapi_exit() to the function .exit.text:kca=
pi_proc_exit()

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
matches

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
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]

---------------------------------------------------------------------------=
-----
allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

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
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
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
    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in reference=
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
    WARNING: vmlinux.o(.text.unlikely+0x84c): Section mismatch in reference=
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
    WARNING: vmlinux.o(.text.unlikely+0x840): Section mismatch in reference=
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
    WARNING: vmlinux.o(.text.unlikely+0x399c): Section mismatch in referenc=
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
    WARNING: vmlinux.o(.text.unlikely+0x3680): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section mi=
smatches

Warnings:
    kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 ma=
y be used uninitialized in this function [-Wmaybe-uninitialized]
    drivers/usb/host/xhci-pci.c:524:13: warning: =E2=80=98xhci_pci_shutdown=
=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mis=
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
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    drivers/usb/host/xhci-pci.c:524:13: warning: =E2=80=98xhci_pci_shutdown=
=E2=80=99 defined but not used [-Wunused-function]

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
    WARNING: vmlinux.o(.text.unlikely+0x710): Section mismatch in reference=
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
    WARNING: vmlinux.o(.text.unlikely+0x840): Section mismatch in reference=
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
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    fs/btrfs/tree-checker.c:230:43: warning: format =E2=80=98%lu=E2=80=99 e=
xpects argument of type =E2=80=98long unsigned int=E2=80=99, but argument 5=
 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]

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
    WARNING: vmlinux.o(.text.unlikely+0x7c8): Section mismatch in reference=
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
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
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
    {standard input}:134: Warning: macro instruction expanded into multiple=
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
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 =
warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warni=
ng, 0 section mismatches

Warnings:
    fs/btrfs/tree-checker.c:230:43: warning: format =E2=80=98%lu=E2=80=99 e=
xpects argument of type =E2=80=98long unsigned int=E2=80=99, but argument 5=
 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]

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
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
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
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/btrfs/tree-checker.c:230:43: warning: format =E2=80=98%lu=E2=80=99 e=
xpects argument of type =E2=80=98long unsigned int=E2=80=99, but argument 5=
 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]

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
    WARNING: vmlinux.o(.text.unlikely+0x840): Section mismatch in reference=
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
    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 8 warnings, 0 secti=
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
    drivers/usb/host/xhci-pci.c:524:13: warning: =E2=80=98xhci_pci_shutdown=
=E2=80=99 defined but not used [-Wunused-function]
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
    WARNING: vmlinux.o(.text.unlikely+0x8c4): Section mismatch in reference=
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
tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mism=
atches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1172:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

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
clang-built-linux/5df321ea.1c69fb81.7f345.cea2%40mx.google.com.
