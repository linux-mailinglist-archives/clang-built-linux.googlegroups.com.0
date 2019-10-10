Return-Path: <clang-built-linux+bncBDT6TV45WMPRBPGX7PWAKGQEHZHS4RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8A3D22BF
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 10:28:45 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id j6sf880362ljb.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 01:28:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570696125; cv=pass;
        d=google.com; s=arc-20160816;
        b=nQt4xfAVdHeXtQPVmRvj1WuWe7qwaQSIxe2w5C1DeevO1FKG0qgrQEqnII9wO1wP5S
         +nLWhqJ4EsgeXJAGwX1uHrfcTMzXSEGICacSXbyrysE68GKiBV5ODiNf/QBQr4B8TlE4
         NJYqbLQXlhKEz8sEYNmwFx6TTh7Lfzd0NMe4dL0J9AJMh6jfwrelkEpomzq2bDwOy3oE
         w16XyPaBnI2aRx2o0gTbvszKPmAa6TNpqy97TgSpaFJCW6Ws9+Mfsl1OQXnNrju05s8o
         SrQjXIFU89reHvasKa0l4IdI3HFKANmrWWCQ52Ne1b8UKLssIW2ZG1TOLFvBMfB/916v
         6owg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=i4JAVcj2r3bAMbmoWlpFY9e0BZBk/sy2uVgsPjou5xQ=;
        b=vs8pWnUnSS9xFW4pYgBZA066hiiNTJmxwa670OyC4f7r83b9dxE6O/ENFkinvUFwaK
         A4U4EIBl0pk70PDJXdge0qXwMA0cF7jtCzZsxUOWkuAQWJ+M0KygvvaOyV10oBUcLca3
         gKU1zVTRlfWcxir7oKEl592LHOfVmRT3N4Pj/RJ3rkh/iap50yOh/qckp52GRJHbSHIg
         PUhNXCp+9VpLW7sCxSH6zAq8paTlUCmVuNdMAi3XFjnqUYvIAp/at2YyInoP3ICge9w8
         BHj7Sy+KErydKEi70KRbSXGKIy7VM+5YNkMBiJ9Q0ZzwEkldbms/Fj86nkEU9S0F/+Lh
         0c8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=cOaq9cAe;
       spf=neutral (google.com: 2a00:1450:4864:20::341 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i4JAVcj2r3bAMbmoWlpFY9e0BZBk/sy2uVgsPjou5xQ=;
        b=BoSr/Hj1ha2F52qkOvg2vyevzb92fvbmxTt2AIgtN75rT7N19I8Qy47hjO0wDYupQ/
         yBxEKlh8XHP9vXyJqnA0vfRbSU4oYEsSKSlo2xtRi+ghXjrRjzcoIPYn6gj+lkv/c3dy
         s2ejimGNmkr7YUBGxAw/rTNETfS4QzbmQCHdvp/kzu5/y8VXQae+SuYVWjvGdv6/ke+P
         MOvkWLko5msx6hS0xL+RTe5f9fIt8d8K5nzmSewtfuEp651mICSqFHhp24bq+88dgeeC
         1iBuN03aBoV+Z0JHSOEAoQTjyiuiUS1QeYdo8Ee+ofKFPb0oVCRoTg99cB/7lRGTbs42
         YGEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i4JAVcj2r3bAMbmoWlpFY9e0BZBk/sy2uVgsPjou5xQ=;
        b=r7ddlk+fQZkz6hHSuYhvKchjH41MyUqPAuKXcxqaFKF3ZuKpIP73CdyBLViq1ATIY3
         tRpXjNn+Zt1vaGglDOcxBTjDgp5VnPoK3DFScsbbTuwe6XzR4ayO8gMZwitKtu12/o6v
         RdiTapmHFYUcUAqeojBREKNuUgloNucV30p0JkjpMkmowyukqmN8CUTc48Yh/zKaq46G
         UEgiApsVm0D6CIGK7lTr4ROcsAksca/I3mK4i4yje5xvvkGrnkgPA61S9ixi+McVapr1
         6ihYYegOOBpJwO5yOi+kfZ0aviFic7y7jnhv+KMfZWIf26JxtsJIOjlJmEK0jJTcezuH
         DmMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVSMQrTmVr1KyANhjvnfKbx8MXi3f/SNahmRLIQl/KLaxk1pyeU
	9K+fViHBZ/kkWsD3QDe5FIY=
X-Google-Smtp-Source: APXvYqwzG8K3JYw7BdCUtTyCN8we7bX/gywAxA3Uvl1Ow8yFoqZoBShQ6WVXdX4qn1p6MsL5/0AieA==
X-Received: by 2002:a19:ac01:: with SMTP id g1mr5237967lfc.141.1570696124925;
        Thu, 10 Oct 2019 01:28:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:651a:: with SMTP id z26ls396511ljb.2.gmail; Thu, 10 Oct
 2019 01:28:44 -0700 (PDT)
X-Received: by 2002:a2e:9707:: with SMTP id r7mr2053399lji.219.1570696124219;
        Thu, 10 Oct 2019 01:28:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570696124; cv=none;
        d=google.com; s=arc-20160816;
        b=itDXL5pYqyslMIYq5h5+ju32b5NwaKlDpSvgJWQJAawAsWjWnM+Gs2w9P0nOsqIF3c
         AjTl7JO1nsLcaQMUzsiqGq17C2VJQ6ONcVUkJMhrJmmapO3L29MDASPbo8UUIW35RDIB
         Qa7m5gdFq0izl5RTL28gFAfIDSPHkPt6M1RtjSoP5vi5hzNfYJjAJOShCFlErtFQFjtF
         6L+S0wF4jP0zxBlSj8hWliLSeg+DwkTz6pvAH90I/RHKndfxTaVT/rTGVi93CEDIyhSq
         VO6tc1d8hylw1DZej3a96p6FkNwSIBhlYnHEMuRxv3DgXMkkqI5yldly5+6LKeDDGyNO
         8CPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=hg6G4m91mUTvWm0RBa+6nPTT5mryLXHIKdMgkejZvNw=;
        b=rM62xk8UpNpM8qj+8llYdKUqK4W+EGLuW/YMtjY+Yv3uqP8LAXfCOwDdJuZOsGzW4I
         9+afxC31RBniDJmhV5x3wvc8rncIMSDyAELohuJwsf/c/j++1PeK66Ay2G9wk44IS8Ua
         CxwNqvfm5sqBxlY+BEOVsYbyfpxEQlHSFti50WKUKyvaiwnoBBzFGufhMipTMkCD7baD
         CPxL8FPEFwvbapWSr/MLQrCS/RKI4fMbhz/UC0m/QTHkyGReQZ33ibpjunYPlf2cjvvA
         tcdXL/C4ZB/ZncBccyzD81Qwt1l6euxVw0XtW+S1zp5VcZZl+98a0gJWxtOztz8LOh23
         FYKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=cOaq9cAe;
       spf=neutral (google.com: 2a00:1450:4864:20::341 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id y6si144971lji.0.2019.10.10.01.28.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 01:28:44 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::341 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id b24so5745986wmj.5
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 01:28:43 -0700 (PDT)
X-Received: by 2002:a1c:7c13:: with SMTP id x19mr6538980wmc.80.1570696121075;
        Thu, 10 Oct 2019 01:28:41 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id c18sm5492075wrv.10.2019.10.10.01.28.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Oct 2019 01:28:40 -0700 (PDT)
Message-ID: <5d9eebb8.1c69fb81.ed07a.a8fd@mx.google.com>
Date: Thu, 10 Oct 2019 01:28:40 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Report-Type: build
X-Kernelci-Kernel: next-20191010
X-Kernelci-Tree: next
X-Kernelci-Branch: master
Subject: next/master build: 218 builds: 2 failed, 216 passed, 2 errors,
 550 warnings (next-20191010)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=cOaq9cAe;       spf=neutral (google.com: 2a00:1450:4864:20::341 is
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

next/master build: 218 builds: 2 failed, 216 passed, 2 errors, 550 warnings=
 (next-20191010)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20191010/

Tree: next
Branch: master
Git Describe: next-20191010
Git Commit: 4a9e93dbc796654e6b141897452993da2e61799f
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Build Failures Detected:

riscv:
    allnoconfig: (gcc-8) FAIL
    tinyconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    allnoconfig (gcc-8): 1 warning
    axs103_defconfig (gcc-8): 2 warnings
    axs103_smp_defconfig (gcc-8): 2 warnings
    haps_hs_defconfig (gcc-8): 2 warnings
    haps_hs_smp_defconfig (gcc-8): 2 warnings
    hsdk_defconfig (gcc-8): 2 warnings
    nsim_hs_defconfig (gcc-8): 2 warnings
    nsim_hs_defconfig (gcc-8): 30 warnings
    nsim_hs_smp_defconfig (gcc-8): 2 warnings
    nsimosci_hs_defconfig (gcc-8): 2 warnings
    nsimosci_hs_smp_defconfig (gcc-8): 2 warnings
    tinyconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 1 warning
    vdk_hs38_smp_defconfig (gcc-8): 1 warning

arm64:
    allmodconfig (clang-8): 44 warnings
    defconfig (gcc-8): 27 warnings

arm:
    allmodconfig (gcc-8): 19 warnings
    am200epdkit_defconfig (gcc-8): 1 warning
    at91_dt_defconfig (gcc-8): 2 warnings
    axm55xx_defconfig (gcc-8): 1 warning
    cm_x2xx_defconfig (gcc-8): 1 warning
    cm_x300_defconfig (gcc-8): 1 warning
    cns3420vb_defconfig (gcc-8): 1 warning
    colibri_pxa270_defconfig (gcc-8): 1 warning
    colibri_pxa300_defconfig (gcc-8): 1 warning
    davinci_all_defconfig (gcc-8): 1 warning
    dove_defconfig (gcc-8): 1 warning
    em_x270_defconfig (gcc-8): 1 warning
    ep93xx_defconfig (gcc-8): 1 warning
    eseries_pxa_defconfig (gcc-8): 2 warnings
    exynos_defconfig (gcc-8): 171 warnings
    ezx_defconfig (gcc-8): 1 warning
    h5000_defconfig (gcc-8): 1 warning
    imote2_defconfig (gcc-8): 1 warning
    imx_v4_v5_defconfig (gcc-8): 1 warning
    imx_v6_v7_defconfig (gcc-8): 1 warning
    integrator_defconfig (gcc-8): 1 warning
    ixp4xx_defconfig (gcc-8): 1 warning
    keystone_defconfig (gcc-8): 1 warning
    lpc32xx_defconfig (gcc-8): 1 warning
    magician_defconfig (gcc-8): 2 warnings
    milbeaut_m10v_defconfig (gcc-8): 1 warning
    mini2440_defconfig (gcc-8): 1 warning
    mmp2_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (gcc-8): 2 warnings
    multi_v7_defconfig (gcc-8): 4 warnings
    multi_v7_defconfig (gcc-8): 4 warnings
    multi_v7_defconfig (gcc-8): 4 warnings
    multi_v7_defconfig (gcc-8): 4 warnings
    multi_v7_defconfig (gcc-8): 31 warnings
    mv78xx0_defconfig (gcc-8): 1 warning
    mvebu_v5_defconfig (gcc-8): 1 warning
    mvebu_v7_defconfig (gcc-8): 1 warning
    mxs_defconfig (gcc-8): 1 warning
    nhk8815_defconfig (gcc-8): 1 warning
    omap1_defconfig (gcc-8): 1 warning
    omap2plus_defconfig (gcc-8): 1 warning
    orion5x_defconfig (gcc-8): 1 warning
    oxnas_v6_defconfig (gcc-8): 1 warning
    palmz72_defconfig (gcc-8): 1 warning
    pcm027_defconfig (gcc-8): 1 warning
    prima2_defconfig (gcc-8): 1 warning
    pxa168_defconfig (gcc-8): 1 warning
    pxa3xx_defconfig (gcc-8): 1 warning
    pxa910_defconfig (gcc-8): 1 warning
    qcom_defconfig (gcc-8): 1 warning
    realview_defconfig (gcc-8): 1 warning
    s3c2410_defconfig (gcc-8): 1 warning
    s3c6400_defconfig (gcc-8): 2 warnings
    s5pv210_defconfig (gcc-8): 1 warning
    sama5_defconfig (gcc-8): 2 warnings
    spear13xx_defconfig (gcc-8): 1 warning
    sunxi_defconfig (gcc-8): 1 warning
    tango4_defconfig (gcc-8): 1 warning
    tegra_defconfig (gcc-8): 1 warning
    trizeps4_defconfig (gcc-8): 1 warning
    u300_defconfig (gcc-8): 1 warning
    u8500_defconfig (gcc-8): 1 warning
    versatile_defconfig (gcc-8): 1 warning
    vexpress_defconfig (gcc-8): 1 warning
    viper_defconfig (gcc-8): 1 warning
    xcep_defconfig (gcc-8): 1 warning
    zeus_defconfig (gcc-8): 2 warnings

i386:
    i386_defconfig (gcc-8): 28 warnings

mips:
    32r2el_defconfig (gcc-8): 28 warnings
    db1xxx_defconfig (gcc-8): 1 warning
    malta_qemu_32r6_defconfig (gcc-8): 1 warning
    nlm_xlr_defconfig (gcc-8): 1 warning
    rbtx49xx_defconfig (gcc-8): 1 warning

riscv:
    allnoconfig (gcc-8): 1 error, 1 warning
    defconfig (gcc-8): 27 warnings
    rv32_defconfig (gcc-8): 6 warnings
    tinyconfig (gcc-8): 1 error, 1 warning

x86_64:
    tinyconfig (gcc-8): 1 warning
    x86_64_defconfig (gcc-8): 27 warnings

Errors summary:

    2    arch/riscv/kernel/traps.c:130:17: error: implicit declaration of f=
unction 'get_break_insn_length' [-Werror=3Dimplicit-function-declaration]

Warnings summary:

    64   WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    26   <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    16   1 warning generated.
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
    4    2 warnings generated.
    2    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build=
@8/linux/build/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers=
/usb/storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    2    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build=
@8/linux/build/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers=
/usb/storage/uas.ko needs unknown symbol usb_stor_adjust_quirks
    2    cc1: some warnings being treated as errors
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:134: Warning: macro instruction expanded into mul=
tiple instructions
    1    warning: same module names found:
    1    sound/soc/txx9/txx9aclc.c:54:30: warning: unused variable 'rtd' [-=
Wunused-variable]
    1    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is =
uninitialized when used within its own initialization [-Wuninitialized]
    1    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
    1    mm/shmem.c:2737:35: warning: variable 'shmem_falloc_waitq' is unin=
itialized when used within its own initialization [-Wuninitialized]
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
    1    drivers/staging/wfx/debug.c:229:25: warning: setting buffer to a '=
sizeof' expression; did you mean to transpose the last two arguments? [-Wme=
mset-transposed-args]
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
@5/linux/build/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers=
/usb/storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    1    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build=
@5/linux/build/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers=
/usb/storage/uas.ko needs unknown symbol usb_stor_adjust_quirks
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build@2/linux/b=
uild/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/stora=
ge/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build@2/linux/b=
uild/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/stora=
ge/uas.ko needs unknown symbol usb_stor_adjust_quirks
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_ctrl_transfer
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_clear_halt
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_bulk_transfer_sg
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol usb_stor_CB_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-usbat.ko needs unknown symbol fill_inquiry_response
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr55.ko needs unknown symbol fill_inquiry_response
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_ctrl_transfer
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_bulk_transfer_sg
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_bulk_srb
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_CB_transport
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol usb_stor_CB_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-sddr09.ko needs unknown symbol fill_inquiry_response
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_control_msg
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-realtek.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-onetouch.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_Bulk_transport
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-karma.ko needs unknown symbol usb_stor_Bulk_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_ctrl_transfer
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol usb_stor_Bulk_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-jumpshot.ko needs unknown symbol fill_inquiry_response
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_transparent_scsi_command
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_ctrl_transfer
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-isd200.ko needs unknown symbol usb_stor_Bulk_transport
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_control_msg
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-freecom.ko needs unknown symbol usb_stor_bulk_srb
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_bulk_transfer_sg
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_bulk_srb
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-eneub6250.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol usb_stor_Bulk_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-datafab.ko needs unknown symbol fill_inquiry_response
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_transparent_scsi_command
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_sense_invalidCDB
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-cypress.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_suspend
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_set_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_reset_resume
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_probe2
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_probe1
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_pre_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_post_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_host_template_init
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_disconnect
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_ctrl_transfer
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_bulk_transfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_access_xfer_buf
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol usb_stor_Bulk_reset
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/ums-alauda.ko needs unknown symbol fill_inquiry_response
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    1    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/bui=
ld/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage=
/uas.ko needs unknown symbol usb_stor_adjust_quirks
    1    /tmp/ccCi0FH1.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccCi0FH1.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1199:warning: override: UNWINDER_GUESS changes choice stat=
e
    1    ./.tmp.config.pyECzwON6k:3397:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.pyECzwON6k:3380:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.pyECzwON6k:3379:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.pyECzwON6k:3375:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.pyECzwON6k:3355:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.pyECzwON6k:3349:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.pyECzwON6k:3340:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.pyECzwON6k:3338:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.pyECzwON6k:3337:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.pyECzwON6k:3336:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.pyECzwON6k:3334:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.pyECzwON6k:3333:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.pyECzwON6k:3330:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.pyECzwON6k:3323:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.pyECzwON6k:3313:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.pyECzwON6k:3302:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.pyECzwON6k:3194:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.pyECzwON6k:3190:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.pyECzwON6k:3165:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.pyECzwON6k:3144:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.pyECzwON6k:3086:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.pyECzwON6k:3085:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.pyECzwON6k:3081:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.pyECzwON6k:3080:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.pyECzwON6k:3078:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.pyECzwON6k:3077:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.pyECzwON6k:3074:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.TvhQAdJyIC:4920:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.TvhQAdJyIC:4903:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.TvhQAdJyIC:4902:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.TvhQAdJyIC:4898:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.TvhQAdJyIC:4878:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.TvhQAdJyIC:4872:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.TvhQAdJyIC:4863:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.TvhQAdJyIC:4861:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.TvhQAdJyIC:4860:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.TvhQAdJyIC:4859:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.TvhQAdJyIC:4857:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.TvhQAdJyIC:4856:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.TvhQAdJyIC:4853:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.TvhQAdJyIC:4846:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.TvhQAdJyIC:4836:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.TvhQAdJyIC:4825:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.TvhQAdJyIC:4717:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.TvhQAdJyIC:4713:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.TvhQAdJyIC:4688:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.TvhQAdJyIC:4667:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.TvhQAdJyIC:4609:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.TvhQAdJyIC:4608:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.TvhQAdJyIC:4604:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.TvhQAdJyIC:4603:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.TvhQAdJyIC:4601:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.TvhQAdJyIC:4600:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.TvhQAdJyIC:4597:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.POtdXmoSVa:4012:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.POtdXmoSVa:3995:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.POtdXmoSVa:3994:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.POtdXmoSVa:3990:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.POtdXmoSVa:3970:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.POtdXmoSVa:3964:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.POtdXmoSVa:3955:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.POtdXmoSVa:3953:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.POtdXmoSVa:3952:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.POtdXmoSVa:3951:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.POtdXmoSVa:3949:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.POtdXmoSVa:3948:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.POtdXmoSVa:3945:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.POtdXmoSVa:3938:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.POtdXmoSVa:3928:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.POtdXmoSVa:3917:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.POtdXmoSVa:3809:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.POtdXmoSVa:3805:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.POtdXmoSVa:3780:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.POtdXmoSVa:3759:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.POtdXmoSVa:3701:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.POtdXmoSVa:3700:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.POtdXmoSVa:3696:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.POtdXmoSVa:3695:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.POtdXmoSVa:3693:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.POtdXmoSVa:3692:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.POtdXmoSVa:3689:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.JfNujKvJqc:4859:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.JfNujKvJqc:4842:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.JfNujKvJqc:4841:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.JfNujKvJqc:4837:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.JfNujKvJqc:4817:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.JfNujKvJqc:4811:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.JfNujKvJqc:4802:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.JfNujKvJqc:4800:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.JfNujKvJqc:4799:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.JfNujKvJqc:4798:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.JfNujKvJqc:4796:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.JfNujKvJqc:4795:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.JfNujKvJqc:4792:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.JfNujKvJqc:4785:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.JfNujKvJqc:4775:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.JfNujKvJqc:4764:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.JfNujKvJqc:4656:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.JfNujKvJqc:4652:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.JfNujKvJqc:4627:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.JfNujKvJqc:4606:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.JfNujKvJqc:4548:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.JfNujKvJqc:4547:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.JfNujKvJqc:4543:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.JfNujKvJqc:4542:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.JfNujKvJqc:4540:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.JfNujKvJqc:4539:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.JfNujKvJqc:4536:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.DIjeZrd8DI:1776:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.DIjeZrd8DI:1759:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.DIjeZrd8DI:1758:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.DIjeZrd8DI:1754:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.DIjeZrd8DI:1734:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.DIjeZrd8DI:1728:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.DIjeZrd8DI:1719:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.DIjeZrd8DI:1717:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.DIjeZrd8DI:1716:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.DIjeZrd8DI:1715:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.DIjeZrd8DI:1713:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.DIjeZrd8DI:1712:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.DIjeZrd8DI:1709:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.DIjeZrd8DI:1702:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.DIjeZrd8DI:1692:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.DIjeZrd8DI:1681:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.DIjeZrd8DI:1573:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.DIjeZrd8DI:1569:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.DIjeZrd8DI:1544:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.DIjeZrd8DI:1523:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.DIjeZrd8DI:1465:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.DIjeZrd8DI:1464:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.DIjeZrd8DI:1460:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.DIjeZrd8DI:1459:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.DIjeZrd8DI:1457:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.DIjeZrd8DI:1456:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.DIjeZrd8DI:1453:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.5Vcil3gCdZ:8558:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.5Vcil3gCdZ:8541:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.5Vcil3gCdZ:8540:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.5Vcil3gCdZ:8536:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.5Vcil3gCdZ:8516:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.5Vcil3gCdZ:8510:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.5Vcil3gCdZ:8501:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.5Vcil3gCdZ:8499:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.5Vcil3gCdZ:8498:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.5Vcil3gCdZ:8497:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.5Vcil3gCdZ:8495:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.5Vcil3gCdZ:8494:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.5Vcil3gCdZ:8491:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.5Vcil3gCdZ:8484:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.5Vcil3gCdZ:8474:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.5Vcil3gCdZ:8463:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.5Vcil3gCdZ:8355:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.5Vcil3gCdZ:8351:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.5Vcil3gCdZ:8326:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.5Vcil3gCdZ:8305:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.5Vcil3gCdZ:8247:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.5Vcil3gCdZ:8246:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.5Vcil3gCdZ:8242:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.5Vcil3gCdZ:8241:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.5Vcil3gCdZ:8239:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.5Vcil3gCdZ:8238:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.5Vcil3gCdZ:8235:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.5Qg2ZdbJ8Y:7967:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.5Qg2ZdbJ8Y:7950:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.5Qg2ZdbJ8Y:7949:warning: override: reassigning to sy=
mbol STAGING
    1    ./.tmp.config.5Qg2ZdbJ8Y:7945:warning: override: reassigning to sy=
mbol SECURITYFS
    1    ./.tmp.config.5Qg2ZdbJ8Y:7925:warning: override: reassigning to sy=
mbol IPV6_GRE
    1    ./.tmp.config.5Qg2ZdbJ8Y:7919:warning: override: reassigning to sy=
mbol NET_CLS_FLOWER
    1    ./.tmp.config.5Qg2ZdbJ8Y:7910:warning: override: reassigning to sy=
mbol IPV6
    1    ./.tmp.config.5Qg2ZdbJ8Y:7908:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.5Qg2ZdbJ8Y:7907:warning: override: reassigning to sy=
mbol NET_SCHED
    1    ./.tmp.config.5Qg2ZdbJ8Y:7906:warning: override: reassigning to sy=
mbol NET_CLS_ACT
    1    ./.tmp.config.5Qg2ZdbJ8Y:7904:warning: override: reassigning to sy=
mbol CGROUP_BPF
    1    ./.tmp.config.5Qg2ZdbJ8Y:7903:warning: override: reassigning to sy=
mbol TEST_BPF
    1    ./.tmp.config.5Qg2ZdbJ8Y:7900:warning: override: reassigning to sy=
mbol BPF_SYSCALL
    1    ./.tmp.config.5Qg2ZdbJ8Y:7893:warning: override: reassigning to sy=
mbol ANDROID
    1    ./.tmp.config.5Qg2ZdbJ8Y:7883:warning: override: reassigning to sy=
mbol NOTIFIER_ERROR_INJECTION
    1    ./.tmp.config.5Qg2ZdbJ8Y:7872:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.5Qg2ZdbJ8Y:7764:warning: override: reassigning to sy=
mbol NET_NS
    1    ./.tmp.config.5Qg2ZdbJ8Y:7760:warning: override: reassigning to sy=
mbol USER_NS
    1    ./.tmp.config.5Qg2ZdbJ8Y:7735:warning: override: reassigning to sy=
mbol NET_ACT_GACT
    1    ./.tmp.config.5Qg2ZdbJ8Y:7714:warning: override: reassigning to sy=
mbol NET_SCH_INGRESS
    1    ./.tmp.config.5Qg2ZdbJ8Y:7656:warning: override: reassigning to sy=
mbol VLAN_8021Q
    1    ./.tmp.config.5Qg2ZdbJ8Y:7655:warning: override: reassigning to sy=
mbol BRIDGE
    1    ./.tmp.config.5Qg2ZdbJ8Y:7651:warning: override: reassigning to sy=
mbol VETH
    1    ./.tmp.config.5Qg2ZdbJ8Y:7650:warning: override: reassigning to sy=
mbol IPV6_MULTIPLE_TABLES
    1    ./.tmp.config.5Qg2ZdbJ8Y:7648:warning: override: reassigning to sy=
mbol NET_L3_MASTER_DEV
    1    ./.tmp.config.5Qg2ZdbJ8Y:7647:warning: override: reassigning to sy=
mbol NET_VRF
    1    ./.tmp.config.5Qg2ZdbJ8Y:7644:warning: override: reassigning to sy=
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
    1    WARNING: vmlinux.o(.text.unlikely+0x364c): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()
    1    WARNING: vmlinux.o(.text.unlikely+0x333c): Section mismatch in ref=
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
    ./.tmp.config.POtdXmoSVa:3689:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.POtdXmoSVa:3692:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.POtdXmoSVa:3693:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.POtdXmoSVa:3695:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.POtdXmoSVa:3696:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.POtdXmoSVa:3700:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.POtdXmoSVa:3701:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.POtdXmoSVa:3759:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.POtdXmoSVa:3780:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.POtdXmoSVa:3805:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.POtdXmoSVa:3809:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.POtdXmoSVa:3917:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.POtdXmoSVa:3928:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.POtdXmoSVa:3938:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.POtdXmoSVa:3945:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.POtdXmoSVa:3948:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.POtdXmoSVa:3949:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.POtdXmoSVa:3951:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.POtdXmoSVa:3952:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.POtdXmoSVa:3953:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.POtdXmoSVa:3955:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.POtdXmoSVa:3964:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.POtdXmoSVa:3970:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.POtdXmoSVa:3990:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.POtdXmoSVa:3994:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.POtdXmoSVa:3995:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.POtdXmoSVa:4012:warning: override: reassigning to symbol =
USER_NS
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is unini=
tialized when used within its own initialization [-Wuninitialized]
    1 warning generated.
    fs/cifs/readdir.c:83:34: warning: variable 'wq' is uninitialized when u=
sed within its own initialization [-Wuninitialized]
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
    drivers/staging/wfx/debug.c:229:25: warning: setting buffer to a 'sizeo=
f' expression; did you mean to transpose the last two arguments? [-Wmemset-=
transposed-args]
    1 warning generated.

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 19 warnings, 0 section =
mismatches

Warnings:
    /tmp/ccCi0FH1.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/ccCi0FH1.s:18191: Warning: using r15 results in unpredictable beha=
viour
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
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
    warning: same module names found:

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

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
allnoconfig (riscv, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section mi=
smatches

Errors:
    arch/riscv/kernel/traps.c:130:17: error: implicit declaration of functi=
on 'get_break_insn_length' [-Werror=3Dimplicit-function-declaration]

Warnings:
    cc1: some warnings being treated as errors

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
allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

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
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

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
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
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
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches

Warnings:
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

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
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

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
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
    WARNING: vmlinux.o(.text.unlikely+0x364c): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x333c): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 27 warnings, 0=
 section mismatches

Warnings:
    ./.tmp.config.pyECzwON6k:3074:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.pyECzwON6k:3077:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.pyECzwON6k:3078:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.pyECzwON6k:3080:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.pyECzwON6k:3081:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.pyECzwON6k:3085:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.pyECzwON6k:3086:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.pyECzwON6k:3144:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.pyECzwON6k:3165:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.pyECzwON6k:3190:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.pyECzwON6k:3194:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.pyECzwON6k:3302:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.pyECzwON6k:3313:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.pyECzwON6k:3323:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.pyECzwON6k:3330:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.pyECzwON6k:3333:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.pyECzwON6k:3334:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.pyECzwON6k:3336:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.pyECzwON6k:3337:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.pyECzwON6k:3338:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.pyECzwON6k:3340:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.pyECzwON6k:3349:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.pyECzwON6k:3355:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.pyECzwON6k:3375:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.pyECzwON6k:3379:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.pyECzwON6k:3380:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.pyECzwON6k:3397:warning: override: reassigning to symbol =
USER_NS

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 27 warnings, 0=
 section mismatches

Warnings:
    ./.tmp.config.5Qg2ZdbJ8Y:7644:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.5Qg2ZdbJ8Y:7647:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.5Qg2ZdbJ8Y:7648:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.5Qg2ZdbJ8Y:7650:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.5Qg2ZdbJ8Y:7651:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.5Qg2ZdbJ8Y:7655:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.5Qg2ZdbJ8Y:7656:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.5Qg2ZdbJ8Y:7714:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.5Qg2ZdbJ8Y:7735:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.5Qg2ZdbJ8Y:7760:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.5Qg2ZdbJ8Y:7764:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.5Qg2ZdbJ8Y:7872:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.5Qg2ZdbJ8Y:7883:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.5Qg2ZdbJ8Y:7893:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.5Qg2ZdbJ8Y:7900:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.5Qg2ZdbJ8Y:7903:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.5Qg2ZdbJ8Y:7904:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.5Qg2ZdbJ8Y:7906:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.5Qg2ZdbJ8Y:7907:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.5Qg2ZdbJ8Y:7908:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.5Qg2ZdbJ8Y:7910:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.5Qg2ZdbJ8Y:7919:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.5Qg2ZdbJ8Y:7925:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.5Qg2ZdbJ8Y:7945:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.5Qg2ZdbJ8Y:7949:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.5Qg2ZdbJ8Y:7950:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.5Qg2ZdbJ8Y:7967:warning: override: reassigning to symbol =
USER_NS

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
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 171 warnings, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_Bulk_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_ctrl_transfer
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
alauda.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_transparent_scsi_command
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
cypress.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_Bulk_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
datafab.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_bulk_srb
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_bulk_transfer_sg
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
eneub6250.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_bulk_srb
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_control_msg
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
freecom.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_ctrl_transfer
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_transparent_scsi_command
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_Bulk_transport
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
isd200.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_Bulk_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_ctrl_transfer
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
jumpshot.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_Bulk_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_Bulk_transport
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
karma.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
onetouch.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_control_msg
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
realtek.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_bulk_srb
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_bulk_transfer_sg
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_CB_transport
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_CB_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_ctrl_transfer
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr09.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_bulk_transfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
sddr55.ko needs unknown symbol usb_stor_set_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_bulk_transfer_sg
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_probe1
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_clear_halt
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_CB_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_suspend
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_ctrl_transfer
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_reset_resume
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_pre_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_host_template_init
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol fill_inquiry_response
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_probe2
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_disconnect
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_post_reset
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
usbat.ko needs unknown symbol usb_stor_access_xfer_buf
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ums-=
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
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

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
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

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
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 28 warning=
s, 0 section mismatches

Warnings:
    ./.tmp.config.JfNujKvJqc:4536:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.JfNujKvJqc:4539:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.JfNujKvJqc:4540:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.JfNujKvJqc:4542:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.JfNujKvJqc:4543:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.JfNujKvJqc:4547:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.JfNujKvJqc:4548:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.JfNujKvJqc:4606:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.JfNujKvJqc:4627:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.JfNujKvJqc:4652:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.JfNujKvJqc:4656:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.JfNujKvJqc:4764:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.JfNujKvJqc:4775:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.JfNujKvJqc:4785:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.JfNujKvJqc:4792:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.JfNujKvJqc:4795:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.JfNujKvJqc:4796:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.JfNujKvJqc:4798:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.JfNujKvJqc:4799:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.JfNujKvJqc:4800:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.JfNujKvJqc:4802:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.JfNujKvJqc:4811:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.JfNujKvJqc:4817:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.JfNujKvJqc:4837:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.JfNujKvJqc:4841:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.JfNujKvJqc:4842:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.JfNujKvJqc:4859:warning: override: reassigning to symbol =
USER_NS
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]

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
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
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
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
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
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sec=
tion mismatches

Warnings:
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@5/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/=
storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@5/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/=
storage/uas.ko needs unknown symbol usb_stor_adjust_quirks

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 4 warnings, 0 section mismatches

Warnings:
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    depmod: WARNING: /home/buildslave/workspace/kernel-build@2/linux/build/=
_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ua=
s.ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/kernel-build@2/linux/build/=
_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/ua=
s.ko needs unknown symbol usb_stor_adjust_quirks

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 4 warnings, 0 section mismatches

Warnings:
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@8/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/=
storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@8/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/=
storage/uas.ko needs unknown symbol usb_stor_adjust_quirks

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 =
warnings, 0 section mismatches

Warnings:
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/uas.=
ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/kernel-build/linux/build/_m=
odules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/storage/uas.=
ko needs unknown symbol usb_stor_adjust_quirks

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 31 warn=
ings, 0 section mismatches

Warnings:
    ./.tmp.config.5Vcil3gCdZ:8235:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.5Vcil3gCdZ:8238:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.5Vcil3gCdZ:8239:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.5Vcil3gCdZ:8241:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.5Vcil3gCdZ:8242:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.5Vcil3gCdZ:8246:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.5Vcil3gCdZ:8247:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.5Vcil3gCdZ:8305:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.5Vcil3gCdZ:8326:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.5Vcil3gCdZ:8351:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.5Vcil3gCdZ:8355:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.5Vcil3gCdZ:8463:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.5Vcil3gCdZ:8474:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.5Vcil3gCdZ:8484:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.5Vcil3gCdZ:8491:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.5Vcil3gCdZ:8494:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.5Vcil3gCdZ:8495:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.5Vcil3gCdZ:8497:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.5Vcil3gCdZ:8498:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.5Vcil3gCdZ:8499:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.5Vcil3gCdZ:8501:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.5Vcil3gCdZ:8510:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.5Vcil3gCdZ:8516:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.5Vcil3gCdZ:8536:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.5Vcil3gCdZ:8540:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.5Vcil3gCdZ:8541:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.5Vcil3gCdZ:8558:warning: override: reassigning to symbol =
USER_NS
    drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs' [-=
Wunused-variable]
    include/linux/kern_levels.h:5:18: warning: format '%lu' expects argumen=
t of type 'long unsigned int', but argument 8 has type 'unsigned int' [-Wfo=
rmat=3D]
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@8/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/=
storage/uas.ko needs unknown symbol usb_stor_sense_invalidCDB
    depmod: WARNING: /home/buildslave/workspace/workspace/kernel-build@8/li=
nux/build/_modules_/lib/modules/5.4.0-rc2-next-20191010/kernel/drivers/usb/=
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
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
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
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
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
    ./.tmp.config.DIjeZrd8DI:1453:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.DIjeZrd8DI:1456:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.DIjeZrd8DI:1457:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.DIjeZrd8DI:1459:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.DIjeZrd8DI:1460:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.DIjeZrd8DI:1464:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.DIjeZrd8DI:1465:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.DIjeZrd8DI:1523:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.DIjeZrd8DI:1544:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.DIjeZrd8DI:1569:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.DIjeZrd8DI:1573:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.DIjeZrd8DI:1681:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.DIjeZrd8DI:1692:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.DIjeZrd8DI:1702:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.DIjeZrd8DI:1709:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.DIjeZrd8DI:1712:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.DIjeZrd8DI:1713:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.DIjeZrd8DI:1715:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.DIjeZrd8DI:1716:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.DIjeZrd8DI:1717:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.DIjeZrd8DI:1719:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.DIjeZrd8DI:1728:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.DIjeZrd8DI:1734:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.DIjeZrd8DI:1754:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.DIjeZrd8DI:1758:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.DIjeZrd8DI:1759:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.DIjeZrd8DI:1776:warning: override: reassigning to symbol =
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
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

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
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
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
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches

Warnings:
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
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

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
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
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
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1199:warning: override: UNWINDER_GUESS changes choice state

---------------------------------------------------------------------------=
-----
tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

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
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
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
    WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
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
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 27 war=
nings, 0 section mismatches

Warnings:
    ./.tmp.config.TvhQAdJyIC:4597:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.TvhQAdJyIC:4600:warning: override: reassigning to symbol =
NET_VRF
    ./.tmp.config.TvhQAdJyIC:4601:warning: override: reassigning to symbol =
NET_L3_MASTER_DEV
    ./.tmp.config.TvhQAdJyIC:4603:warning: override: reassigning to symbol =
IPV6_MULTIPLE_TABLES
    ./.tmp.config.TvhQAdJyIC:4604:warning: override: reassigning to symbol =
VETH
    ./.tmp.config.TvhQAdJyIC:4608:warning: override: reassigning to symbol =
BRIDGE
    ./.tmp.config.TvhQAdJyIC:4609:warning: override: reassigning to symbol =
VLAN_8021Q
    ./.tmp.config.TvhQAdJyIC:4667:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.TvhQAdJyIC:4688:warning: override: reassigning to symbol =
NET_ACT_GACT
    ./.tmp.config.TvhQAdJyIC:4713:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.TvhQAdJyIC:4717:warning: override: reassigning to symbol =
NET_NS
    ./.tmp.config.TvhQAdJyIC:4825:warning: override: reassigning to symbol =
USER_NS
    ./.tmp.config.TvhQAdJyIC:4836:warning: override: reassigning to symbol =
NOTIFIER_ERROR_INJECTION
    ./.tmp.config.TvhQAdJyIC:4846:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.TvhQAdJyIC:4853:warning: override: reassigning to symbol =
BPF_SYSCALL
    ./.tmp.config.TvhQAdJyIC:4856:warning: override: reassigning to symbol =
TEST_BPF
    ./.tmp.config.TvhQAdJyIC:4857:warning: override: reassigning to symbol =
CGROUP_BPF
    ./.tmp.config.TvhQAdJyIC:4859:warning: override: reassigning to symbol =
NET_CLS_ACT
    ./.tmp.config.TvhQAdJyIC:4860:warning: override: reassigning to symbol =
NET_SCHED
    ./.tmp.config.TvhQAdJyIC:4861:warning: override: reassigning to symbol =
NET_SCH_INGRESS
    ./.tmp.config.TvhQAdJyIC:4863:warning: override: reassigning to symbol =
IPV6
    ./.tmp.config.TvhQAdJyIC:4872:warning: override: reassigning to symbol =
NET_CLS_FLOWER
    ./.tmp.config.TvhQAdJyIC:4878:warning: override: reassigning to symbol =
IPV6_GRE
    ./.tmp.config.TvhQAdJyIC:4898:warning: override: reassigning to symbol =
SECURITYFS
    ./.tmp.config.TvhQAdJyIC:4902:warning: override: reassigning to symbol =
STAGING
    ./.tmp.config.TvhQAdJyIC:4903:warning: override: reassigning to symbol =
ANDROID
    ./.tmp.config.TvhQAdJyIC:4920:warning: override: reassigning to symbol =
USER_NS

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
clang-built-linux/5d9eebb8.1c69fb81.ed07a.a8fd%40mx.google.com.
