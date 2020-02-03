Return-Path: <clang-built-linux+bncBDT6TV45WMPRB3GT33YQKGQEMFDSHAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDA0150118
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Feb 2020 06:04:45 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id x15sf7589071wrl.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Feb 2020 21:04:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580706284; cv=pass;
        d=google.com; s=arc-20160816;
        b=hs1gnBRSWL+NWzjyxjSoR67KlfOOf+sMvHll3EGU06mxY/hlJQoBlItFXcxDD2gQkG
         Pv959tnv06wwtf6cE+0j99SqOhy6rHIE29WPSYjB98OCo3+q/qfh15IurMhquHMIr9Rg
         57yaiXpvGiBtRmF6hQ0LQLZ+ce98+WpMrrFTVYpES74fIjMdGiQRkHfXtjM5/gq8Fpp2
         ybR+APS3EnOsZvIlhst9gjoLrkUrSsbcsYJRiPPAI58ahItrajFW7CmRBuwf/iTG/VjM
         I1+92F+eaFan8dmfD3s3DAWGZ4ABpKmkGRPiN+kUSKzhZmCrgeAV8xpfBaSnjDuiVKsD
         epLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=2wTOeSIwiRdbVWMy1Mt0vChrWE6E21AnV5duzrvWSZo=;
        b=iXV7pqkk+AhkNH3suJ0mpdSzpFeFKRneLlwjn0o/8Qg5w0SwXxb81XGnbreSNYNnwH
         Wff/GR0pCw56cOcCb0LazL3fSkwmBnqDeogDihLuxugx7yUbSZEnh+hf4hgS6O/UN+mx
         l9IZDV9mA8K+lPFK8Zbz4mnVTqqyhrWUYTphBvpM0vNywPYvJQ9omEtSDCbteJ1aJUTu
         GwVrigUJWnjPD67Xuqni0Zn+o3UUTpa9/05mKtbn8l/IQxZS0t1VaiECAnpYklKxSywH
         ubfXb37QlleOj0HJ4IcMe+ceapvLOxFWZvA6Fcv6PEn65eXlA1o7OqC12GHsRJEkL5hL
         cI3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=own6VjHS;
       spf=neutral (google.com: 2a00:1450:4864:20::343 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2wTOeSIwiRdbVWMy1Mt0vChrWE6E21AnV5duzrvWSZo=;
        b=oDwZ0FXpStUKjw4s7AmLoCgi1yxrmfq+5LGWR9WgqflXuF2wNZCAHsDudAT3BZWJb4
         W6kAF9j1jEhJSV66N0DLg0Fl1w07KRw60IFvF3laH+pbGINWaeTS4ydqNrFQ2ppDMVbm
         yfDlmBcLiVzBRTjuVXq25x4w5k9Bxv0L48CmNwDq12JqbgR86X3Trw6utPNqPZVVUcfs
         nRynpXRHCt3VdTltQEF9eR/c2MHn9U4NfQa0DcxX8k3s7GLTrmXWHkUPYmhoe5kpHh7t
         oTxQcl9e+DZJKuP73A5Kmuz2L0OL1vti5VaVXr42VYkcY3vMQgkdcPqZ9ZJiEYWx+vAr
         ECeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2wTOeSIwiRdbVWMy1Mt0vChrWE6E21AnV5duzrvWSZo=;
        b=F89RmCF70HvDgne4UcEWUzt7lWnBgjZvHboWllgQNLYg9H5bt8MBncfWfbmB3XE4G3
         9X0D8CPW3hDdR8WVSgL2h+Bk13zpm0kka1s6R8Duoap43id+oGUOEB+1sZ4NPxl8cLI6
         TTcYOrepSkNz9PQAom0KPC9e71asz2csrvkwGGWX8Xnrn+3VIDDwzJ4N+VZmC/XTHLT/
         YTWBlJmc31LPB0zLLbSwVQAnc5www0FN20Qdj+CLC207LNlBd2TjDbJk8PYUJf7uU4Rt
         g2+euxFqti0r8rv22PmF6tUQFA7lLXdADY7k3c7UVOaJNeu4ZWEjWjcT0ALkPi/r3DRj
         SjuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVgmtKMQvJ3k5bPshffC1bG95wM5J8O6Bu69ikLw7oZcNgQ7gCx
	szLnrlyK7VjJALDpityV2Zo=
X-Google-Smtp-Source: APXvYqwmHSQNk4bFSlCeTel5wmPYLA7rnwqZohH0vKxOzjCAdxwYO22LkKCyjuASlGHiVRTHNY0cHQ==
X-Received: by 2002:a5d:6692:: with SMTP id l18mr12282457wru.382.1580706284681;
        Sun, 02 Feb 2020 21:04:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ebc5:: with SMTP id v5ls8361317wrn.8.gmail; Sun, 02 Feb
 2020 21:04:44 -0800 (PST)
X-Received: by 2002:a5d:5148:: with SMTP id u8mr13478725wrt.132.1580706284081;
        Sun, 02 Feb 2020 21:04:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580706284; cv=none;
        d=google.com; s=arc-20160816;
        b=x1WyE5FcvaTLbhDMYx55aGpaOD0YGQBPo+Lz+7PPE3S7WXrJk3GU6uBatVQOb/mOlj
         EDQVeYQtbRlOKM9Sw+s/BRpGnNPpqEq0YlnCiZgCs6jY9fbteUREJaEp9yLqFCtkcJFE
         A6WAQ/s+VwlDUJs9T62IWTZbss2aGsrrdxN/inWO8IatcXj4zAIwTDoGDpwo4ejZI+o4
         0B18iUj2IkNgjtyN85qWvS0tJq19Cnh9FwR1qX5V1YK4zd4ulLfzgyMjR4RzJKeZ/Ji8
         u/8fAWuCnBtbx6BleDejhCWwLK9NdRoodlexSEV3KxpAhL1K2LfeQEMh7i/GEcsv/UCt
         MmCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=4ph/lyHf/b6+UuUHhHhTNckiBo5fhMpubZoDiELL6O8=;
        b=MFxKuFeceSWVeOm+6TDSuj/sUU1qqJjQzYZ3opJy/WmFa6/E6ul1FlNY0ifjCnZwa4
         ZE89G5eWcs5T0J/6iGOHGc3/OJCoRqcwQoBnwtylyIcavV1NcwlLV6+Aus+2mN6ziSmf
         l/mc5ISm7rOWpc/K9Wqk1XQzGLirzpTwhJcGy9QKCD4mzhndDCzqIRIU2qknaDONUMzq
         TfRLGehhhDi6kgdJt7P6Xe7V6o56O4Y4hcp7ilA8ckyUkoVdEUOHjO2i6Qpn5QH8Iqm6
         NMFppdazEU8mO+prx8tmuEzEMS91nreRp5e3cyVsR3m6llBkM819UNsdsXC7E/WzUAHB
         BT5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=own6VjHS;
       spf=neutral (google.com: 2a00:1450:4864:20::343 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id m2si1115670wmi.3.2020.02.02.21.04.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Feb 2020 21:04:44 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::343 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id a9so15366600wmj.3
        for <clang-built-linux@googlegroups.com>; Sun, 02 Feb 2020 21:04:43 -0800 (PST)
X-Received: by 2002:a1c:7203:: with SMTP id n3mr26247852wmc.119.1580706281839;
        Sun, 02 Feb 2020 21:04:41 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id y20sm21056314wmi.25.2020.02.02.21.04.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Feb 2020 21:04:40 -0800 (PST)
Message-ID: <5e37a9e8.1c69fb81.59bc7.ac60@mx.google.com>
Date: Sun, 02 Feb 2020 21:04:40 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Tree: next
X-Kernelci-Branch: master
X-Kernelci-Kernel: next-20200203
X-Kernelci-Report-Type: build
Subject: next/master build: 202 builds: 1 failed, 201 passed, 2 errors,
 316 warnings (next-20200203)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=own6VjHS;       spf=neutral (google.com: 2a00:1450:4864:20::343 is
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

next/master build: 202 builds: 1 failed, 201 passed, 2 errors, 316 warnings=
 (next-20200203)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200203/

Tree: next
Branch: master
Git Describe: next-20200203
Git Commit: cee5a42837d4a6c4189f06f7bf355b97a24c3c93
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 7 unique architectures

Build Failure Detected:

mips:
    malta_kvm_defconfig: (gcc-8) FAIL

Errors and Warnings Detected:

arc:
    axs103_defconfig (gcc-8): 1 warning
    haps_hs_defconfig (gcc-8): 1 warning
    haps_hs_smp_defconfig (gcc-8): 1 warning
    hsdk_defconfig (gcc-8): 1 warning
    nsimosci_hs_defconfig (gcc-8): 1 warning
    nsimosci_hs_smp_defconfig (gcc-8): 1 warning
    vdk_hs38_defconfig (gcc-8): 1 warning
    vdk_hs38_smp_defconfig (gcc-8): 1 warning

arm64:
    allmodconfig (gcc-8): 14 warnings
    defconfig (gcc-8): 14 warnings
    defconfig (gcc-8): 14 warnings
    defconfig (gcc-8): 14 warnings

arm:
    allmodconfig (gcc-8): 31 warnings
    am200epdkit_defconfig (gcc-8): 1 warning
    aspeed_g4_defconfig (gcc-8): 1 warning
    aspeed_g5_defconfig (gcc-8): 1 warning
    assabet_defconfig (gcc-8): 1 warning
    at91_dt_defconfig (gcc-8): 1 warning
    axm55xx_defconfig (gcc-8): 1 warning
    badge4_defconfig (gcc-8): 1 warning
    bcm2835_defconfig (gcc-8): 1 warning
    cerfcube_defconfig (gcc-8): 1 warning
    clps711x_defconfig (gcc-8): 1 warning
    cm_x2xx_defconfig (gcc-8): 1 warning
    cm_x300_defconfig (gcc-8): 2 warnings
    cns3420vb_defconfig (gcc-8): 1 warning
    colibri_pxa270_defconfig (gcc-8): 1 warning
    colibri_pxa300_defconfig (gcc-8): 1 warning
    collie_defconfig (gcc-8): 1 warning
    corgi_defconfig (gcc-8): 1 warning
    davinci_all_defconfig (gcc-8): 1 warning
    dove_defconfig (gcc-8): 1 warning
    ebsa110_defconfig (gcc-8): 1 warning
    efm32_defconfig (gcc-8): 1 warning
    em_x270_defconfig (gcc-8): 1 warning
    ep93xx_defconfig (gcc-8): 1 warning
    eseries_pxa_defconfig (gcc-8): 1 warning
    exynos_defconfig (gcc-8): 1 warning
    ezx_defconfig (gcc-8): 1 warning
    footbridge_defconfig (gcc-8): 1 warning
    gemini_defconfig (gcc-8): 1 warning
    h3600_defconfig (gcc-8): 1 warning
    h5000_defconfig (gcc-8): 1 warning
    hackkit_defconfig (gcc-8): 1 warning
    hisi_defconfig (gcc-8): 1 warning
    imote2_defconfig (gcc-8): 1 warning
    imx_v6_v7_defconfig (gcc-8): 1 warning
    integrator_defconfig (gcc-8): 1 warning
    iop32x_defconfig (gcc-8): 1 warning
    ixp4xx_defconfig (gcc-8): 1 warning
    jornada720_defconfig (gcc-8): 1 warning
    keystone_defconfig (gcc-8): 1 warning
    lart_defconfig (gcc-8): 1 warning
    lpc18xx_defconfig (gcc-8): 1 warning
    lpc32xx_defconfig (gcc-8): 3 warnings
    lpd270_defconfig (gcc-8): 1 warning
    lubbock_defconfig (gcc-8): 1 warning
    magician_defconfig (gcc-8): 1 warning
    mainstone_defconfig (gcc-8): 1 warning
    milbeaut_m10v_defconfig (gcc-8): 2 warnings
    mini2440_defconfig (gcc-8): 3 warnings
    mmp2_defconfig (gcc-8): 1 warning
    moxart_defconfig (gcc-8): 1 warning
    mps2_defconfig (gcc-8): 1 warning
    multi_v4t_defconfig (gcc-8): 1 warning
    multi_v5_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    multi_v7_defconfig (gcc-8): 1 warning
    mv78xx0_defconfig (gcc-8): 2 warnings
    mvebu_v5_defconfig (gcc-8): 5 warnings
    mvebu_v7_defconfig (gcc-8): 1 warning
    mxs_defconfig (gcc-8): 4 warnings
    neponset_defconfig (gcc-8): 1 warning
    netwinder_defconfig (gcc-8): 1 warning
    nhk8815_defconfig (gcc-8): 1 warning
    omap1_defconfig (gcc-8): 1 warning
    omap2plus_defconfig (gcc-8): 1 warning
    orion5x_defconfig (gcc-8): 4 warnings
    oxnas_v6_defconfig (gcc-8): 1 warning
    palmz72_defconfig (gcc-8): 1 warning
    pcm027_defconfig (gcc-8): 1 warning
    pleb_defconfig (gcc-8): 1 warning
    prima2_defconfig (gcc-8): 1 warning
    pxa168_defconfig (gcc-8): 1 warning
    pxa255-idp_defconfig (gcc-8): 1 warning
    pxa3xx_defconfig (gcc-8): 2 warnings
    pxa910_defconfig (gcc-8): 1 warning
    pxa_defconfig (gcc-8): 1 warning
    qcom_defconfig (gcc-8): 1 warning
    realview_defconfig (gcc-8): 1 warning
    rpc_defconfig (gcc-8): 1 warning
    s3c2410_defconfig (gcc-8): 3 warnings
    s3c6400_defconfig (gcc-8): 2 warnings
    s5pv210_defconfig (gcc-8): 1 warning
    sama5_defconfig (gcc-8): 1 warning
    shannon_defconfig (gcc-8): 1 warning
    shmobile_defconfig (gcc-8): 1 warning
    simpad_defconfig (gcc-8): 1 warning
    socfpga_defconfig (gcc-8): 1 warning
    spear13xx_defconfig (gcc-8): 1 warning
    spear3xx_defconfig (gcc-8): 1 warning
    spitz_defconfig (gcc-8): 1 warning
    stm32_defconfig (gcc-8): 1 warning
    sunxi_defconfig (gcc-8): 1 warning
    tegra_defconfig (gcc-8): 3 warnings
    trizeps4_defconfig (gcc-8): 1 warning
    u300_defconfig (gcc-8): 1 warning
    u8500_defconfig (gcc-8): 1 warning
    versatile_defconfig (gcc-8): 1 warning
    vexpress_defconfig (gcc-8): 1 warning
    vf610m4_defconfig (gcc-8): 1 warning
    viper_defconfig (gcc-8): 1 warning
    vt8500_v6_v7_defconfig (gcc-8): 1 warning
    xcep_defconfig (gcc-8): 1 warning
    zeus_defconfig (gcc-8): 1 warning
    zx_defconfig (gcc-8): 1 warning

i386:
    i386_defconfig (gcc-8): 17 warnings

mips:
    32r2el_defconfig (gcc-8): 1 warning
    32r2el_defconfig (gcc-8): 1 warning
    ar7_defconfig (gcc-8): 1 warning
    ath25_defconfig (gcc-8): 1 warning
    bcm47xx_defconfig (gcc-8): 1 warning
    bcm63xx_defconfig (gcc-8): 1 warning
    bmips_be_defconfig (gcc-8): 1 warning
    bmips_stb_defconfig (gcc-8): 1 warning
    capcella_defconfig (gcc-8): 1 warning
    ci20_defconfig (gcc-8): 1 warning
    cobalt_defconfig (gcc-8): 1 warning
    cu1000-neo_defconfig (gcc-8): 1 warning
    db1xxx_defconfig (gcc-8): 1 warning
    decstation_defconfig (gcc-8): 1 warning
    decstation_r4k_defconfig (gcc-8): 1 warning
    e55_defconfig (gcc-8): 1 warning
    gcw0_defconfig (gcc-8): 1 warning
    gpr_defconfig (gcc-8): 1 warning
    ip22_defconfig (gcc-8): 1 warning
    jazz_defconfig (gcc-8): 1 warning
    jmr3927_defconfig (gcc-8): 1 warning
    lasat_defconfig (gcc-8): 1 warning
    loongson1c_defconfig (gcc-8): 1 warning
    malta_defconfig (gcc-8): 1 warning
    malta_kvm_defconfig (gcc-8): 2 errors, 1 warning
    malta_kvm_guest_defconfig (gcc-8): 1 warning
    malta_qemu_32r6_defconfig (gcc-8): 2 warnings
    maltaaprp_defconfig (gcc-8): 1 warning
    maltasmvp_defconfig (gcc-8): 1 warning
    maltasmvp_eva_defconfig (gcc-8): 1 warning
    maltaup_defconfig (gcc-8): 1 warning
    maltaup_xpa_defconfig (gcc-8): 1 warning
    markeins_defconfig (gcc-8): 1 warning
    mpc30x_defconfig (gcc-8): 1 warning
    msp71xx_defconfig (gcc-8): 1 warning
    mtx1_defconfig (gcc-8): 1 warning
    nlm_xlr_defconfig (gcc-8): 1 warning
    omega2p_defconfig (gcc-8): 1 warning
    pic32mzda_defconfig (gcc-8): 1 warning
    pistachio_defconfig (gcc-8): 1 warning
    pnx8335_stb225_defconfig (gcc-8): 1 warning
    qi_lb60_defconfig (gcc-8): 1 warning
    rb532_defconfig (gcc-8): 1 warning
    rbtx49xx_defconfig (gcc-8): 1 warning
    rm200_defconfig (gcc-8): 1 warning
    rt305x_defconfig (gcc-8): 1 warning
    tb0219_defconfig (gcc-8): 1 warning
    tb0226_defconfig (gcc-8): 1 warning
    tb0287_defconfig (gcc-8): 1 warning
    vocore2_defconfig (gcc-8): 1 warning
    workpad_defconfig (gcc-8): 1 warning
    xway_defconfig (gcc-8): 1 warning

riscv:
    rv32_defconfig (gcc-8): 7 warnings

x86_64:
    allmodconfig (gcc-8): 14 warnings
    tinyconfig (gcc-8): 1 warning

Errors summary:

    1    arch/mips/kvm/mips.c:303:43: error: =E2=80=98kvm_mips_comparecount=
_wakeup=E2=80=99 undeclared (first use in this function); did you mean =E2=
=80=98kvm_mips_count_timeout=E2=80=99?
    1    arch/mips/kvm/mips.c:1224:29: error: =E2=80=98kvm_mips_comparecoun=
t_wakeup=E2=80=99 defined but not used [-Werror=3Dunused-function]

Warnings summary:

    168  fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expec=
ts argument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has=
 type =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wform=
at=3D]
    84   include/linux/kernel.h:835:29: warning: comparison of distinct poi=
nter types lacks a cast
    23   include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_=
lookup_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    16   arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width o=
f type [-Wshift-count-overflow]
    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [=
-Wcpp]
    2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [=
-Wcpp]
    2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemente=
d [-Wcpp]
    1    {standard input}:141: Warning: macro instruction expanded into mul=
tiple instructions
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    cc1: all warnings being treated as errors
    1    /tmp/cciUI6tz.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/cciUI6tz.s:18119: Warning: using r15 results in unpredictable=
 behaviour
    1    .config:1162:warning: override: UNWINDER_GUESS changes choice stat=
e

Section mismatches summary:

    1    WARNING: vmlinux.o(.text.unlikely+0x3a78): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()
    1    WARNING: vmlinux.o(.text.unlikely+0x3718): Section mismatch in ref=
erence from the function pmax_setup_memory_region() to the function .init.t=
ext:add_memory_region()

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
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warnin=
g, 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 14 warnings, 0 sectio=
n mismatches

Warnings:
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 31 warnings, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    /tmp/cciUI6tz.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/cciUI6tz.s:18191: Warning: using r15 results in unpredictable beha=
viour
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
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

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 14 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast

---------------------------------------------------------------------------=
-----
allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

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
allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x3a78): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

Section mismatches:
    WARNING: vmlinux.o(.text.unlikely+0x3718): Section mismatch in referenc=
e from the function pmax_setup_memory_region() to the function .init.text:a=
dd_memory_region()

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 14 warnings, 0 section m=
ismatches

Warnings:
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast

---------------------------------------------------------------------------=
-----
defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 14 warnings, 0 section mismatches

Warnings:
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 14 warnings, 0 section mismatches

Warnings:
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast
    include/linux/kernel.h:835:29: warning: comparison of distinct pointer =
types lacks a cast

---------------------------------------------------------------------------=
-----
defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
em_x270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 17 warning=
s, 0 section mismatches

Warnings:
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    arch/x86/kvm/x86.h:363:16: warning: right shift count >=3D width of typ=
e [-Wshift-count-overflow]
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

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
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
lasat_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
malta_kvm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 1 warning, 0 se=
ction mismatches

Errors:
    arch/mips/kvm/mips.c:303:43: error: =E2=80=98kvm_mips_comparecount_wake=
up=E2=80=99 undeclared (first use in this function); did you mean =E2=80=98=
kvm_mips_count_timeout=E2=80=99?
    arch/mips/kvm/mips.c:1224:29: error: =E2=80=98kvm_mips_comparecount_wak=
eup=E2=80=99 defined but not used [-Werror=3Dunused-function]

Warnings:
    cc1: all warnings being treated as errors

---------------------------------------------------------------------------=
-----
malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warning=
s, 0 section mismatches

Warnings:
    {standard input}:141: Warning: macro instruction expanded into multiple=
 instructions
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
markeins_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches

Warnings:
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches

---------------------------------------------------------------------------=
-----
mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
msp71xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS, 0=
 errors, 1 warning, 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 1 warning, 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 =
warning, 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warni=
ng, 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 sec=
tion mismatches

Warnings:
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches

Warnings:
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches

Warnings:
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
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
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wcpp=
]
    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [-W=
cpp]
    <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp=
]

---------------------------------------------------------------------------=
-----
s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches

---------------------------------------------------------------------------=
-----
shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sectio=
n mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]
    include/linux/mfd/syscon.h:54:23: warning: =E2=80=98syscon_regmap_looku=
p_by_phandle_args=E2=80=99 defined but not used [-Wunused-function]

---------------------------------------------------------------------------=
-----
tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mis=
matches

---------------------------------------------------------------------------=
-----
tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches

Warnings:
    .config:1162:warning: override: UNWINDER_GUESS changes choice state

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
tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches

---------------------------------------------------------------------------=
-----
trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches

---------------------------------------------------------------------------=
-----
xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---------------------------------------------------------------------------=
-----
zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches

Warnings:
    fs/io_uring.c:6558:32: warning: format =E2=80=98%lu=E2=80=99 expects ar=
gument of type =E2=80=98long unsigned int=E2=80=99, but argument 5 has type=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wformat=3D=
]

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5e37a9e8.1c69fb81.59bc7.ac60%40mx.google.com.
