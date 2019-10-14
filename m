Return-Path: <clang-built-linux+bncBDT6TV45WMPRBUE5SHWQKGQE6WBEQGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4081BD603A
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 12:32:49 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id k5sf9929624edx.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 03:32:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571049169; cv=pass;
        d=google.com; s=arc-20160816;
        b=BUDNemVOzNUo5EC73pQ3hAc+0JrfJuTBHQtMmv64tTthnUvZqRZBXZT0B4S/PlDnNv
         LYSX0aUPbfhoZp3jpfAP69PF9+E7xoJ4ZrwUcc6uKTJ0XkMPG/7W7ZKTvjg1Uxz5V8yr
         aFnWG/NMcfFSew8drbSOiG6heyHxQtBHVrM1/ocN1PCbBH7mwMjU5ycYSeAYI8rr19a2
         UBEFWSkPxLUk1kMpJMGcC2jBcFuYQ2V+AQD3DPB6UGVdQVGInp/yJo0w0yQhTurAdYbl
         Z+yQSyUX4F96RVSb5W+dUiWaRgRmXgM1BE4S+8xKGYF1DFmDDRsl4c++h70CsGuoP6UD
         VAUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=b9z3Xg/kcJIQc+P1RE5UabqCfPP7AXcDr495cW9glhc=;
        b=pmZBhK2uICRkGEvthq8R3DDwenigV7kYwm7ew/izcnWEodamynzVbvQ4uIRX8VKnib
         pxMwbvcXA+fDVQVa7fzWDMO+zXVnesR+MSZYbIBWQ1TTNEyIlGlPcpCpjM/zRnRvD8OD
         m0qsfH3WieFFXus/mGI/rL0VwEZNiuNDn8a7pyk3VqGRVk6nQolMu8rogB5kFUKQNKnL
         6lCWLeMs7xsv5Y4yw1M79bLxusm2HqDBJqTRNNB/aLTWUv8QU6/FEHVTXXxUbUGWGJWa
         uUn44+Dn5ygoLsbe//8HgO5GYTRCf44+pSYZyTg0u2qYCv2NBGu7Ddj0dCE/4Op2Ixlv
         bzNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=y306bu3B;
       spf=neutral (google.com: 2a00:1450:4864:20::343 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b9z3Xg/kcJIQc+P1RE5UabqCfPP7AXcDr495cW9glhc=;
        b=r9NdomUpPOq6hoCLfg9HsFfQmOhV2Uqz4IqLXXXi+X58D1QKUYvQ9HDoTNG+OZjunk
         MYk8+s1fK7GCLtzJGRHTC2n04277nX3PPPd+4Z4JxYbL8uAp8vWlApC6Rr60WzlAp328
         +NwPF4jXekmAeEt9Yy3amnKkd/2n+WRz0u5hnq0zZbN6sxksTToIAPpd4p8dd/5T39RL
         A+kxAN2qnmACMBWdnejEogFGmk5nd2BlKQYtph8JrUGH3iTHknFuraac5L26cynMK8OR
         xDqfnxgl2oZmfjtyLQqytIhe9L7npYpG+HuPD9XQPUBuFdY6c0ljTK5gbzNU0DQ7rAwi
         U9eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b9z3Xg/kcJIQc+P1RE5UabqCfPP7AXcDr495cW9glhc=;
        b=gHyqPxh3dxujXKJ/+1W8qeYco7N5o6A5DvveRvGqTgW5dSEQ3GQELKhW3tjJ9pqT0a
         4Cg+4YlJbg/NtrsDk/qSXwLbtRN9TRlf8jIuQvz687Xuyv5sxXP0eS30lT/MlsgEAPEJ
         yEqqnBbUEkqvLOxy5BNGM1lLiXeOMhNJkhRsMHlCvkdGS/JEg7BCmU07NbZeNpbUKRKb
         K3412oYKHX4GwP0MWntaOIIKcz0vQL8x5xgTbN1VkgXzXoZkrPp/Mj4qnEASDatShs9E
         5RBKfPOzkP9vFvgVPV/dAyorEanlpwGBi9znix/E49kOzqReLGJPIS5sl/DmhySle7Q/
         rUDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU4hVc4b/z4lqwUDQLwKN6dQ25ufArD0h6SPL04f6aabRyVG3mX
	byE+sH7B8vFqRriRWneo3RE=
X-Google-Smtp-Source: APXvYqxsA7dqfumYBUcccnO0x++fj7Vm0jqx65E6iMiqDbzPHTSe9jxJlMVatgiHcmxE/+JyVke9Mw==
X-Received: by 2002:a17:906:e8d:: with SMTP id p13mr27950200ejf.236.1571049168645;
        Mon, 14 Oct 2019 03:32:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:daca:: with SMTP id x10ls3298585eds.13.gmail; Mon, 14
 Oct 2019 03:32:48 -0700 (PDT)
X-Received: by 2002:a50:ed01:: with SMTP id j1mr27537258eds.111.1571049167974;
        Mon, 14 Oct 2019 03:32:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571049167; cv=none;
        d=google.com; s=arc-20160816;
        b=IXbtBmVNXN6q8Z1SHevAxq7BmGUSRYAD8uAU1Hudmz7oQ4ut7I9AB0hSsFbyPro563
         LyMmA4KVNmq1eLqwm7Sh1YIgCPWyGSHviPP7AB1ISpiGLAH68abnmFHrvYYBf57eepfT
         MdcMoe006gNINH8+u1r2CqXvwpeeFxCqqYcbjhnFrwL831tC0ae2BuxTDMkQXRsJ0zaz
         c0RY+Z//CBXpye4slmHisixoVMrv5BHnvhlMLk8qAJaUSNfB91xlNgTAra4I7OxOwhhG
         FamtVKHGrVhzdym04v728gX8mx5AlIKU1pstJ1p/Ts6opyHj572ryESiUMtBQuESPf0A
         FRgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=8mpuPUh1Q8RqrtWoBn/VUnJLNkT9M1YN235NmV3q6rU=;
        b=0vFXuOaUhJOp/8rR3LKvalwGSkxxG5LlFyyQVSUo8KZ/LIvI0FXATZF5QrcRfQVzLV
         Wz85AGEj/3TEEdiAl1hNUQ09/umYsrcmELdZGN80k9b1leWC2EE+9csimMoZ3eOehsJc
         v1IqMn1m7J8XbRRYTthBtJGJAhCb2nMlSvmHnQ31L/utuhM8b1lyBH6Bv+/Vwr8lOfQo
         KWFcRqhJgudhOqF23jX5UlaKgOhucqRFR9b663YIE3VRMwHog/VMMzy74nzaZfvSkITZ
         ZX/lVerjW0XsB0u++uITnf/JKApI3TmXTDvkygUPSs4u3kJu0ntsPjnzrYODHZamlAh1
         EKCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=y306bu3B;
       spf=neutral (google.com: 2a00:1450:4864:20::343 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id r3si566522eds.2.2019.10.14.03.32.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2019 03:32:47 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::343 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id y135so14181377wmc.1
        for <clang-built-linux@googlegroups.com>; Mon, 14 Oct 2019 03:32:47 -0700 (PDT)
X-Received: by 2002:a1c:cc18:: with SMTP id h24mr15143848wmb.40.1571049165513;
        Mon, 14 Oct 2019 03:32:45 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id x5sm32993304wrg.69.2019.10.14.03.32.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Oct 2019 03:32:44 -0700 (PDT)
Message-ID: <5da44ecc.1c69fb81.b7af.720b@mx.google.com>
Date: Mon, 14 Oct 2019 03:32:44 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Branch: master
X-Kernelci-Tree: next
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: next-20191014
Subject: next/master build: 218 builds: 0 failed, 218 passed,
 564 warnings (next-20191014)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=y306bu3B;       spf=neutral (google.com: 2a00:1450:4864:20::343 is
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

next/master build: 218 builds: 0 failed, 218 passed, 564 warnings (next-201=
91014)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20191014/

Tree: next
Branch: master
Git Describe: next-20191014
Git Commit: 4eeb5abd245d849a4692325339a94566953363d6
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Warnings Detected:

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
    db1xxx_defconfig (gcc-8): 1 warning
    loongson3_defconfig (gcc-8): 1 warning
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    nlm_xlr_defconfig (gcc-8): 1 warning
    qi_lb60_defconfig (gcc-8): 1 warning
    rbtx49xx_defconfig (gcc-8): 1 warning

riscv:
    defconfig (gcc-8): 1 warning
    defconfig (gcc-8): 28 warnings
    rv32_defconfig (gcc-8): 7 warnings

x86_64:
    allmodconfig (gcc-8): 1 warning
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 28 warnings
    x86_64_defconfig (gcc-8): 1 warning


Warnings summary:

    64   WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    56   drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused var=
iable 'dev' [-Wunused-variable]
    26   <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    9    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'reg=
s' [-Wunused-variable]
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    6    sound/soc/soc-pcm.c:1207:8: warning: unused variable 'name' [-Wunu=
sed-variable]
    6    include/linux/kern_levels.h:5:18: warning: format '%lu' expects ar=
gument of type 'long unsigned int', but argument 8 has type 'unsigned int' =
[-Wformat=3D]
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    2    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    2    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/uas.ko needs unknown symbol usb_stor_adjust_quirks
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:134: Warning: macro instruction expanded into mul=
tiple instructions
    1    warning: same module names found:
    1    sound/soc/txx9/txx9aclc.c:54:30: warning: unused variable 'rtd' [-=
Wunused-variable]
    1    kernel/debug/debug_core.c:470:18: warning: array subscript [0, 0] =
is outside array bounds of 'struct debuggerinfo_struct[1]' [-Warray-bounds]
    1    kernel/debug/debug_core.c:469:33: warning: array subscript [0, 0] =
is outside array bounds of 'struct debuggerinfo_struct[1]' [-Warray-bounds]
    1    kernel/debug/debug_core.c:452:17: warning: array subscript [0, 0] =
is outside array bounds of 'struct debuggerinfo_struct[1]' [-Warray-bounds]
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build=
@9/linux/build/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers=
/usb/storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    1    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build=
@9/linux/build/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers=
/usb/storage/uas.ko needs unknown symbol usb_stor_adjust_quirks
    1    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build=
@7/linux/build/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers=
/usb/storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    1    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build=
@7/linux/build/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers=
/usb/storage/uas.ko needs unknown symbol usb_stor_adjust_quirks
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build@2/linux/b=
uild/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/stora=
ge/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build@2/linux/b=
uild/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/stora=
ge/uas.ko needs unknown symbol usb_stor_adjust_quirks
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_ctrl_transfer
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_clear_halt
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_bulk_transfer_sg
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_CB_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol fill_inquiry_response
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol fill_inquiry_response
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_ctrl_transfer
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_bulk_transfer_sg
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_bulk_srb
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_CB_transport
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_CB_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol fill_inquiry_response
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_control_msg
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_Bulk_transport
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_Bulk_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_ctrl_transfer
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_Bulk_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol fill_inquiry_response
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_transparent_scsi_command
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_ctrl_transfer
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_Bulk_transport
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_control_msg
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_bulk_srb
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_bulk_transfer_sg
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_bulk_srb
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_Bulk_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol fill_inquiry_response
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_transparent_scsi_command
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_sense_invalidCDB
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_ctrl_transfer
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_Bulk_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol fill_inquiry_response
    1    1 warning generated.
    1    /tmp/ccbuCzeV.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccbuCzeV.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1167:warning: override: UNWINDER_GUESS changes choice stat=
e
    1    ./.tmp.config.vtrpOafiPx:8528:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.vtrpOafiPx:8511:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.vtrpOafiPx:8510:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.vtrpOafiPx:8506:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.vtrpOafiPx:8486:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.vtrpOafiPx:8480:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.vtrpOafiPx:8471:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.vtrpOafiPx:8469:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.vtrpOafiPx:8468:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.vtrpOafiPx:8467:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.vtrpOafiPx:8465:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.vtrpOafiPx:8464:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.vtrpOafiPx:8461:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.vtrpOafiPx:8454:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.vtrpOafiPx:8444:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.vtrpOafiPx:8433:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.vtrpOafiPx:8325:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.vtrpOafiPx:8321:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.vtrpOafiPx:8296:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.vtrpOafiPx:8275:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.vtrpOafiPx:8217:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.vtrpOafiPx:8216:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.vtrpOafiPx:8212:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.vtrpOafiPx:8211:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.vtrpOafiPx:8209:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.vtrpOafiPx:8208:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.vtrpOafiPx:8205:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.jlGVWLBxt1:3365:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.jlGVWLBxt1:3348:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.jlGVWLBxt1:3347:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.jlGVWLBxt1:3343:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.jlGVWLBxt1:3323:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.jlGVWLBxt1:3317:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.jlGVWLBxt1:3308:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.jlGVWLBxt1:3306:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.jlGVWLBxt1:3305:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.jlGVWLBxt1:3304:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.jlGVWLBxt1:3302:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.jlGVWLBxt1:3301:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.jlGVWLBxt1:3298:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.jlGVWLBxt1:3291:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.jlGVWLBxt1:3281:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.jlGVWLBxt1:3270:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.jlGVWLBxt1:3162:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.jlGVWLBxt1:3158:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.jlGVWLBxt1:3133:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.jlGVWLBxt1:3112:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.jlGVWLBxt1:3054:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.jlGVWLBxt1:3053:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.jlGVWLBxt1:3049:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.jlGVWLBxt1:3048:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.jlGVWLBxt1:3046:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.jlGVWLBxt1:3045:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.jlGVWLBxt1:3042:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.je9Y6vGP1e:4827:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.je9Y6vGP1e:4810:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.je9Y6vGP1e:4809:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.je9Y6vGP1e:4805:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.je9Y6vGP1e:4785:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.je9Y6vGP1e:4779:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.je9Y6vGP1e:4770:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.je9Y6vGP1e:4768:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.je9Y6vGP1e:4767:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.je9Y6vGP1e:4766:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.je9Y6vGP1e:4764:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.je9Y6vGP1e:4763:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.je9Y6vGP1e:4760:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.je9Y6vGP1e:4753:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.je9Y6vGP1e:4743:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.je9Y6vGP1e:4732:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.je9Y6vGP1e:4624:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.je9Y6vGP1e:4620:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.je9Y6vGP1e:4595:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.je9Y6vGP1e:4574:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.je9Y6vGP1e:4516:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.je9Y6vGP1e:4515:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.je9Y6vGP1e:4511:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.je9Y6vGP1e:4510:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.je9Y6vGP1e:4508:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.je9Y6vGP1e:4507:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.je9Y6vGP1e:4504:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.fnINoBqsv5:4888:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.fnINoBqsv5:4871:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.fnINoBqsv5:4870:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.fnINoBqsv5:4866:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.fnINoBqsv5:4846:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.fnINoBqsv5:4840:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.fnINoBqsv5:4831:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.fnINoBqsv5:4829:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.fnINoBqsv5:4828:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.fnINoBqsv5:4827:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.fnINoBqsv5:4825:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.fnINoBqsv5:4824:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.fnINoBqsv5:4821:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.fnINoBqsv5:4814:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.fnINoBqsv5:4804:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.fnINoBqsv5:4793:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.fnINoBqsv5:4685:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.fnINoBqsv5:4681:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.fnINoBqsv5:4656:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.fnINoBqsv5:4635:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.fnINoBqsv5:4577:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.fnINoBqsv5:4576:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.fnINoBqsv5:4572:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.fnINoBqsv5:4571:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.fnINoBqsv5:4569:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.fnINoBqsv5:4568:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.fnINoBqsv5:4565:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.KMRrKWvURj:1744:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.KMRrKWvURj:1727:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.KMRrKWvURj:1726:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.KMRrKWvURj:1722:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.KMRrKWvURj:1702:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.KMRrKWvURj:1696:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.KMRrKWvURj:1687:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.KMRrKWvURj:1685:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.KMRrKWvURj:1684:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.KMRrKWvURj:1683:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.KMRrKWvURj:1681:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.KMRrKWvURj:1680:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.KMRrKWvURj:1677:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.KMRrKWvURj:1670:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.KMRrKWvURj:1660:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.KMRrKWvURj:1649:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.KMRrKWvURj:1541:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.KMRrKWvURj:1537:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.KMRrKWvURj:1512:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.KMRrKWvURj:1491:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.KMRrKWvURj:1433:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.KMRrKWvURj:1432:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.KMRrKWvURj:1428:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.KMRrKWvURj:1427:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.KMRrKWvURj:1425:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.KMRrKWvURj:1424:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.KMRrKWvURj:1421:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.E8gWH0KqwV:7939:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.E8gWH0KqwV:7922:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.E8gWH0KqwV:7921:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.E8gWH0KqwV:7917:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.E8gWH0KqwV:7897:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.E8gWH0KqwV:7891:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.E8gWH0KqwV:7882:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.E8gWH0KqwV:7880:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.E8gWH0KqwV:7879:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.E8gWH0KqwV:7878:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.E8gWH0KqwV:7876:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.E8gWH0KqwV:7875:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.E8gWH0KqwV:7872:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.E8gWH0KqwV:7865:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.E8gWH0KqwV:7855:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.E8gWH0KqwV:7844:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.E8gWH0KqwV:7736:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.E8gWH0KqwV:7732:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.E8gWH0KqwV:7707:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.E8gWH0KqwV:7686:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.E8gWH0KqwV:7628:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.E8gWH0KqwV:7627:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.E8gWH0KqwV:7623:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.E8gWH0KqwV:7622:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.E8gWH0KqwV:7620:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.E8gWH0KqwV:7619:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.E8gWH0KqwV:7616:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.9gMxESCQIR:3979:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.9gMxESCQIR:3962:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.9gMxESCQIR:3961:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.9gMxESCQIR:3957:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.9gMxESCQIR:3937:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.9gMxESCQIR:3931:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.9gMxESCQIR:3922:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.9gMxESCQIR:3920:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.9gMxESCQIR:3919:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.9gMxESCQIR:3918:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.9gMxESCQIR:3916:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.9gMxESCQIR:3915:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.9gMxESCQIR:3912:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.9gMxESCQIR:3905:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.9gMxESCQIR:3895:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.9gMxESCQIR:3884:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.9gMxESCQIR:3776:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.9gMxESCQIR:3772:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.9gMxESCQIR:3747:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.9gMxESCQIR:3726:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.9gMxESCQIR:3668:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.9gMxESCQIR:3667:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.9gMxESCQIR:3663:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.9gMxESCQIR:3662:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.9gMxESCQIR:3660:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.9gMxESCQIR:3659:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.9gMxESCQIR:3656:warning: override: reassigning to sy=
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
    1    WARNING: vmlinux.o(.text.unlikely+0x3630): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()
    1    WARNING: vmlinux.o(.text.unlikely+0x3320): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()

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
    ./.tmp.config.9gMxESCQIR:3656:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.9gMxESCQIR:3659:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.9gMxESCQIR:3660:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.9gMxESCQIR:3662:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.9gMxESCQIR:3663:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.9gMxESCQIR:3667:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.9gMxESCQIR:3668:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.9gMxESCQIR:3726:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.9gMxESCQIR:3747:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.9gMxESCQIR:3772:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.9gMxESCQIR:3776:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.9gMxESCQIR:3884:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.9gMxESCQIR:3895:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.9gMxESCQIR:3905:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.9gMxESCQIR:3912:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.9gMxESCQIR:3915:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.9gMxESCQIR:3916:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.9gMxESCQIR:3918:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.9gMxESCQIR:3919:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.9gMxESCQIR:3920:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.9gMxESCQIR:3922:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.9gMxESCQIR:3931:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.9gMxESCQIR:3937:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.9gMxESCQIR:3957:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.9gMxESCQIR:3961:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.9gMxESCQIR:3962:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.9gMxESCQIR:3979:warning: override: reassigning to symbol =
USER_NS
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]

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
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 20 warnings, 0 section =
mismatches

Warnings:
    /tmp/ccbuCzeV.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/ccbuCzeV.s:18191: Warning: using r15 results in unpredictable beha=
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
allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

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
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    sound/soc/soc-pcm.c:1207:8: warning: unused variable 'name' [-Wunused-v=
ariable]

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x3630): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x3320): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

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
    ./.tmp.config.jlGVWLBxt1:3042:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.jlGVWLBxt1:3045:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.jlGVWLBxt1:3046:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.jlGVWLBxt1:3048:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.jlGVWLBxt1:3049:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.jlGVWLBxt1:3053:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.jlGVWLBxt1:3054:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.jlGVWLBxt1:3112:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.jlGVWLBxt1:3133:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.jlGVWLBxt1:3158:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.jlGVWLBxt1:3162:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.jlGVWLBxt1:3270:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.jlGVWLBxt1:3281:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.jlGVWLBxt1:3291:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.jlGVWLBxt1:3298:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.jlGVWLBxt1:3301:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.jlGVWLBxt1:3302:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.jlGVWLBxt1:3304:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.jlGVWLBxt1:3305:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.jlGVWLBxt1:3306:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.jlGVWLBxt1:3308:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.jlGVWLBxt1:3317:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.jlGVWLBxt1:3323:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.jlGVWLBxt1:3343:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.jlGVWLBxt1:3347:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.jlGVWLBxt1:3348:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.jlGVWLBxt1:3365:warning: override: reassigning to symbol =
USER_NS
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 28 warnings, 0=
 section mismatches

Warnings:
    ./.tmp.config.E8gWH0KqwV:7616:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.E8gWH0KqwV:7619:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.E8gWH0KqwV:7620:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.E8gWH0KqwV:7622:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.E8gWH0KqwV:7623:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.E8gWH0KqwV:7627:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.E8gWH0KqwV:7628:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.E8gWH0KqwV:7686:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.E8gWH0KqwV:7707:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.E8gWH0KqwV:7732:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.E8gWH0KqwV:7736:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.E8gWH0KqwV:7844:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.E8gWH0KqwV:7855:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.E8gWH0KqwV:7865:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.E8gWH0KqwV:7872:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.E8gWH0KqwV:7875:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.E8gWH0KqwV:7876:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.E8gWH0KqwV:7878:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.E8gWH0KqwV:7879:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.E8gWH0KqwV:7880:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.E8gWH0KqwV:7882:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.E8gWH0KqwV:7891:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.E8gWH0KqwV:7897:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.E8gWH0KqwV:7917:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.E8gWH0KqwV:7921:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.E8gWH0KqwV:7922:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.E8gWH0KqwV:7939:warning: override: reassigning to symbol =
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
e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_Bulk_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_ctrl_transfer
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_transparent_scsi_command
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_Bulk_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_bulk_srb
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_bulk_transfer_sg
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_bulk_srb
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_control_msg
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_ctrl_transfer
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_transparent_scsi_command
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_Bulk_transport
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_Bulk_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_ctrl_transfer
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_Bulk_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_Bulk_transport
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_control_msg
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_bulk_srb
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_bulk_transfer_sg
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_CB_transport
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_CB_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_ctrl_transfer
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_bulk_transfer_sg
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_clear_halt
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_CB_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_ctrl_transfer
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ums-=
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
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
    ./.tmp.config.je9Y6vGP1e:4504:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.je9Y6vGP1e:4507:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.je9Y6vGP1e:4508:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.je9Y6vGP1e:4510:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.je9Y6vGP1e:4511:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.je9Y6vGP1e:4515:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.je9Y6vGP1e:4516:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.je9Y6vGP1e:4574:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.je9Y6vGP1e:4595:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.je9Y6vGP1e:4620:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.je9Y6vGP1e:4624:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.je9Y6vGP1e:4732:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.je9Y6vGP1e:4743:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.je9Y6vGP1e:4753:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.je9Y6vGP1e:4760:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.je9Y6vGP1e:4763:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.je9Y6vGP1e:4764:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.je9Y6vGP1e:4766:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.je9Y6vGP1e:4767:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.je9Y6vGP1e:4768:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.je9Y6vGP1e:4770:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.je9Y6vGP1e:4779:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.je9Y6vGP1e:4785:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.je9Y6vGP1e:4805:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.je9Y6vGP1e:4809:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.je9Y6vGP1e:4810:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.je9Y6vGP1e:4827:warning: override: reassigning to symbol =
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
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
lasat_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

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
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches

Warnings:
    {standard input}:134: Warning: macro instruction expanded into multiple=
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
markeins_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

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
mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
msp71xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

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
_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ua=
s.ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/kernel-build@2/linux/build/=
_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/ua=
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
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/uas.=
ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/uas.=
ko needs unknown symbol usb_stor_adjust_quirks

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
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/uas.=
ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/storage/uas.=
ko needs unknown symbol usb_stor_adjust_quirks

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
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@7/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/=
storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@7/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/=
storage/uas.ko needs unknown symbol usb_stor_adjust_quirks

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 32 warn=
ings, 0 section mismatches

Warnings:
    ./.tmp.config.vtrpOafiPx:8205:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.vtrpOafiPx:8208:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.vtrpOafiPx:8209:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.vtrpOafiPx:8211:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.vtrpOafiPx:8212:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.vtrpOafiPx:8216:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.vtrpOafiPx:8217:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.vtrpOafiPx:8275:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.vtrpOafiPx:8296:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.vtrpOafiPx:8321:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.vtrpOafiPx:8325:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.vtrpOafiPx:8433:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.vtrpOafiPx:8444:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.vtrpOafiPx:8454:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.vtrpOafiPx:8461:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.vtrpOafiPx:8464:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.vtrpOafiPx:8465:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.vtrpOafiPx:8467:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.vtrpOafiPx:8468:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.vtrpOafiPx:8469:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.vtrpOafiPx:8471:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.vtrpOafiPx:8480:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.vtrpOafiPx:8486:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.vtrpOafiPx:8506:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.vtrpOafiPx:8510:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.vtrpOafiPx:8511:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.vtrpOafiPx:8528:warning: override: reassigning to symbol =
USER_NS
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@9/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/=
storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@9/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191014/kernel/drivers/usb/=
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
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]

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
    ./.tmp.config.KMRrKWvURj:1421:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.KMRrKWvURj:1424:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.KMRrKWvURj:1425:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.KMRrKWvURj:1427:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.KMRrKWvURj:1428:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.KMRrKWvURj:1432:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.KMRrKWvURj:1433:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.KMRrKWvURj:1491:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.KMRrKWvURj:1512:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.KMRrKWvURj:1537:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.KMRrKWvURj:1541:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.KMRrKWvURj:1649:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.KMRrKWvURj:1660:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.KMRrKWvURj:1670:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.KMRrKWvURj:1677:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.KMRrKWvURj:1680:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.KMRrKWvURj:1681:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.KMRrKWvURj:1683:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.KMRrKWvURj:1684:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.KMRrKWvURj:1685:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.KMRrKWvURj:1687:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.KMRrKWvURj:1696:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.KMRrKWvURj:1702:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.KMRrKWvURj:1722:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.KMRrKWvURj:1726:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.KMRrKWvURj:1727:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.KMRrKWvURj:1744:warning: override: reassigning to symbol =
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
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x840): Section mismatch in reference=
 from the function free_memmap() to the function .meminit.text:memblock_fre=
e()

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

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
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    sound/soc/txx9/txx9aclc.c:54:30: warning: unused variable 'rtd' [-Wunus=
ed-variable]

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
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

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
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
    .config:1167:warning: override: UNWINDER_GUESS changes choice state

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
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 28 war=
nings, 0 section mismatches

Warnings:
    ./.tmp.config.fnINoBqsv5:4565:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.fnINoBqsv5:4568:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.fnINoBqsv5:4569:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.fnINoBqsv5:4571:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.fnINoBqsv5:4572:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.fnINoBqsv5:4576:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.fnINoBqsv5:4577:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.fnINoBqsv5:4635:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.fnINoBqsv5:4656:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.fnINoBqsv5:4681:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.fnINoBqsv5:4685:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.fnINoBqsv5:4793:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.fnINoBqsv5:4804:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.fnINoBqsv5:4814:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.fnINoBqsv5:4821:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.fnINoBqsv5:4824:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.fnINoBqsv5:4825:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.fnINoBqsv5:4827:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.fnINoBqsv5:4828:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.fnINoBqsv5:4829:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.fnINoBqsv5:4831:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.fnINoBqsv5:4840:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.fnINoBqsv5:4846:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.fnINoBqsv5:4866:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.fnINoBqsv5:4870:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.fnINoBqsv5:4871:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.fnINoBqsv5:4888:warning: override: reassigning to symbol =
USER_NS
    drivers/gpu/drm/drm_dp_mst_topology.c:4187:21: warning: unused variable=
 'dev' [-Wunused-variable]

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warn=
ing, 0 section mismatches

Warnings:
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
clang-built-linux/5da44ecc.1c69fb81.b7af.720b%40mx.google.com.
