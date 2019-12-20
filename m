Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNUR6TXQKGQE7Q5AOAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B92128197
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 18:45:28 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id b11sf4570133plx.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 09:45:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576863926; cv=pass;
        d=google.com; s=arc-20160816;
        b=eUPqUoG47rvmXCvy+Xppu1+mD2IS//v8MLdWfN0gI29k72RQjlhOMScCM68eesamEd
         0MECULO2S+kVb4z40Ai2gmV4iLEcPazQJevWjCrorlRsoj43B2tqN+32YRdnz+OrXo12
         4UZxEnKfP4Hndu5hqbQrnOmQo//S82hh1F1gjrcnpH0P33so4N+pZFsk6k2OnwgfAOjm
         snJ7hVL0LDGv35foxL9Liscfz5usp0EJm+IRPESMQ1PHTj/xRmPsPTluA4hxR56LVxwc
         A6qzcoHVpXYmLlRO7Rv9ukMujSxbzA/ncFtR13lja45vck8ETZAdsSrp/od1Pa6GVNnW
         Dtyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TcWhK/Vh10PV8UiUn3VBwjzkg8XrIw30CWbK+kfeRX8=;
        b=ixSQZDUib6T1IrYcm99N1tYsotTlWMPSKqm66LjVQQflmG6r8ZkX5NMl6aYXjOGELY
         Vn4o25jEiAyasxQV9Zh3rIgbk0LMEDFAYcPo1e6hC2YJx8QWifEqIobIMSbhptHO3Sur
         YNY0NxxLDsnHCZj9Li5+ogIReYFo80BSZccV6z0Jet8MtDptsDIGRGPNskEcvdqmj35V
         dWe/z0t8U8L/rMcqeg3aBevZwktVnLTR7GOn2Dx1+HQ+HmDr8KUwmrAKmvLxHMg5wD7U
         5phtOg8IKFIyUcecGZ+y1RfknBRgDi5yhbiprsfrI19Gt9taF/iKgleNV6frRvsBWSdt
         sG4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IjqBqlkP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=TcWhK/Vh10PV8UiUn3VBwjzkg8XrIw30CWbK+kfeRX8=;
        b=ifYZHCUSN9bM5YjKjNSaziFikvP6cEEAHdUzZM40yR7QGAvEZgUxpMbiRCjbkTNcQm
         n2h+wHq2njtBdVPhBl2wfchhQQ4ns+P2SYe2f8SEH6vHDH5HJWZCuFNf/zGCi4Yf2Grq
         xH59SzS2a8kfkluJFIygCiQc8UGNmiSj/iD0lKnTkEAaXHTpT4m2Wc+YDvIbYnv7seG2
         eU7z4E1DLu8PvOwR0Nmnx95hVvg3C+jIufRRp47rEXrCSPBmPHcYLfwhWPdq8S8iXTMy
         B2yARmq6ZRNZvV3/RnUZPwsz+zfwhAFARhor+myB5LfZPCQYaImEjvIG4rQaMWCygbpN
         IqzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TcWhK/Vh10PV8UiUn3VBwjzkg8XrIw30CWbK+kfeRX8=;
        b=hMCFbG2dA33qXXLSjXMYkGWFTL03xEgaZSdLLTgI3s/GWyxNm3tSUv6EMfIMhrPdfB
         7ncLYjh5hhrYDN+JisrYK6S7ze3RIltb6cxPqw9KpJ7usNLH3NWafN0lBnuffnyx2c2X
         XhM+ewRznjb/nIWG1NaZ0pudkiXomtS+assn7pz/7CHceuWWigTao8cwsvF/wmSOR1eZ
         ckJN/FIUjtu+8IKHwbYLfKQa5T1P2b6HNcl6+4qY+Po9OilnVNYebaYp71Zpvqi1pxHI
         uizyBXVexpnJ7Lp95i/n8ZJUOOZhNYGG74Y6Qz3B3ZdmxyaqhFBi85EVbRmc1KYYn+/6
         uI6A==
X-Gm-Message-State: APjAAAVnPYU6H/jbUvHN/oZIOVMxoHcSXqOkFeywqcvi1fYmqHOC08QL
	MPz2cHPCubpuFnaHAkwDTww=
X-Google-Smtp-Source: APXvYqy0nWLZUFAcfSdSm8dgXq0rntBj3ptg7stYqF02VBHK537Z2CnCQotDAik0zhYCI9sqBwTC2w==
X-Received: by 2002:aa7:8d8c:: with SMTP id i12mr17841233pfr.226.1576863926277;
        Fri, 20 Dec 2019 09:45:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:22e3:: with SMTP id s90ls2171446pjc.0.canary-gmail;
 Fri, 20 Dec 2019 09:45:25 -0800 (PST)
X-Received: by 2002:a17:90a:8912:: with SMTP id u18mr16996698pjn.64.1576863925748;
        Fri, 20 Dec 2019 09:45:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576863925; cv=none;
        d=google.com; s=arc-20160816;
        b=kYuwROUnfFa23DivS9ID+zvL5qn0CykXVpyZyn8RQXmT72gcs5tUPMvXuHHyBov2TT
         cvTlDiNVdfIzDYHHRKP66UrZ4WxMShtbjAP5y5HRsGfiDXcPK72WlyFK+8ksQLdgkzEp
         w/PVKUMtYGX3XRcx5O/c5EKVgcvhURzK+NdwtpHlAQjN7HzZS5CmQbhxx5YxDa0Njq3Z
         RoeS9T8untZpmKh6UwtUIosEQ+3u+RpylqkNaW7MQNBPZL355eCFc08bXfiCZpokN72L
         k3jT7XOikyPqIjD1GPqU6NYMldkWamD80GRjVPfsFG41xpmpgiS4+MCAJYAiY/NveHuT
         Je9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=cQxstwULMziVr/O1lZRLm+GkEML3udnrDP8F9DoEoVY=;
        b=PApHLMx508QiI4ihD1r9CoyHNOQ6cJ/9IM0bVRsFZbzbUbO4NbmwNybvzSnAISjMlH
         lh1VphxMs24klW0Vkrjkt41twCiBdUXUVvAix/6oOJsspY+lWW+6zmxAzmNUM2xHQicu
         ge2xb4Wy84wv8RftIP4QGTfDstR5tvCnXEXUaRlt27zzwKKXIyza8VJWu9zvOY9KSIoO
         eRGBb5vwe8QD6jvsVgueXORtrMy6t8/aM8ioa1iXfrsftOwf60N++CLP+FfJP6bysUB/
         +mvdqMe+Jteghm/QFv9YXObDm8xmJNWEFzAoBgoj5ph02qrz9bbftUAWmT6bpPlbSbhO
         rEnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IjqBqlkP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id g17si456961plq.0.2019.12.20.09.45.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2019 09:45:25 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id t101so4434050pjb.4
        for <clang-built-linux@googlegroups.com>; Fri, 20 Dec 2019 09:45:25 -0800 (PST)
X-Received: by 2002:a17:902:bd05:: with SMTP id p5mr5640100pls.119.1576863923453;
 Fri, 20 Dec 2019 09:45:23 -0800 (PST)
MIME-Version: 1.0
References: <5dfc89e6.1c69fb81.b8ff3.e095@mx.google.com>
In-Reply-To: <5dfc89e6.1c69fb81.b8ff3.e095@mx.google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Dec 2019 09:45:12 -0800
Message-ID: <CAKwvOdnbWX-8NkA0cHGU4e05pq2vUUeKe5HXC_GMZzRu68Qppg@mail.gmail.com>
Subject: Re: next/master build: 214 builds: 3 failed, 211 passed, 7 errors,
 185 warnings (next-20191220)
To: "kernelci.org bot" <bot@kernelci.org>, Kevin Hilman <khilman@baylibre.com>, 
	Mark Brown <broonie@kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IjqBqlkP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Have the clang builds been turned off?

On Fri, Dec 20, 2019 at 12:44 AM kernelci.org bot <bot@kernelci.org> wrote:
>
> next/master build: 214 builds: 3 failed, 211 passed, 7 errors, 185 warnin=
gs (next-20191220)
>
> Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/=
next-20191220/
>
> Tree: next
> Branch: master
> Git Describe: next-20191220
> Git Commit: 7ddd09fc4b745fb1d8942f95389583e08412e0cd
> Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
> Built: 7 unique architectures
>
> Build Failures Detected:
>
> arm64:
>     allmodconfig: (gcc-8) FAIL
>
> arm:
>     allmodconfig: (gcc-8) FAIL
>
> mips:
>     db1xxx_defconfig: (gcc-8) FAIL
>
> Errors and Warnings Detected:
>
> arc:
>     allnoconfig (gcc-8): 2 warnings
>     axs103_defconfig (gcc-8): 2 warnings
>     axs103_smp_defconfig (gcc-8): 2 warnings
>     haps_hs_defconfig (gcc-8): 2 warnings
>     haps_hs_smp_defconfig (gcc-8): 2 warnings
>     hsdk_defconfig (gcc-8): 2 warnings
>     nsimosci_hs_defconfig (gcc-8): 2 warnings
>     nsimosci_hs_smp_defconfig (gcc-8): 2 warnings
>     tinyconfig (gcc-8): 1 warning
>     vdk_hs38_defconfig (gcc-8): 1 warning
>     vdk_hs38_smp_defconfig (gcc-8): 1 warning
>
> arm64:
>     allmodconfig (gcc-8): 3 errors, 2 warnings
>     allnoconfig (gcc-8): 1 warning
>     defconfig (gcc-8): 1 warning
>     defconfig (gcc-8): 1 warning
>     defconfig (gcc-8): 1 warning
>
> arm:
>     allmodconfig (gcc-8): 3 errors, 20 warnings
>     allnoconfig (gcc-8): 1 warning
>     am200epdkit_defconfig (gcc-8): 1 warning
>     assabet_defconfig (gcc-8): 1 warning
>     axm55xx_defconfig (gcc-8): 1 warning
>     badge4_defconfig (gcc-8): 1 warning
>     cerfcube_defconfig (gcc-8): 1 warning
>     clps711x_defconfig (gcc-8): 1 warning
>     cm_x2xx_defconfig (gcc-8): 1 warning
>     cm_x300_defconfig (gcc-8): 1 warning
>     cns3420vb_defconfig (gcc-8): 1 warning
>     colibri_pxa270_defconfig (gcc-8): 1 warning
>     colibri_pxa300_defconfig (gcc-8): 1 warning
>     collie_defconfig (gcc-8): 1 warning
>     corgi_defconfig (gcc-8): 1 warning
>     davinci_all_defconfig (gcc-8): 1 warning
>     dove_defconfig (gcc-8): 1 warning
>     ebsa110_defconfig (gcc-8): 1 warning
>     em_x270_defconfig (gcc-8): 1 warning
>     ep93xx_defconfig (gcc-8): 1 warning
>     eseries_pxa_defconfig (gcc-8): 1 warning
>     footbridge_defconfig (gcc-8): 1 warning
>     gemini_defconfig (gcc-8): 1 warning
>     h3600_defconfig (gcc-8): 1 warning
>     h5000_defconfig (gcc-8): 1 warning
>     hackkit_defconfig (gcc-8): 1 warning
>     hisi_defconfig (gcc-8): 1 warning
>     integrator_defconfig (gcc-8): 1 warning
>     iop32x_defconfig (gcc-8): 1 warning
>     ixp4xx_defconfig (gcc-8): 1 warning
>     jornada720_defconfig (gcc-8): 1 warning
>     lart_defconfig (gcc-8): 1 warning
>     lpd270_defconfig (gcc-8): 1 warning
>     lubbock_defconfig (gcc-8): 1 warning
>     magician_defconfig (gcc-8): 1 warning
>     mainstone_defconfig (gcc-8): 1 warning
>     mini2440_defconfig (gcc-8): 1 warning
>     mmp2_defconfig (gcc-8): 1 warning
>     multi_v4t_defconfig (gcc-8): 1 warning
>     multi_v5_defconfig (gcc-8): 1 warning
>     mvebu_v5_defconfig (gcc-8): 1 warning
>     neponset_defconfig (gcc-8): 1 warning
>     netwinder_defconfig (gcc-8): 1 warning
>     nhk8815_defconfig (gcc-8): 1 warning
>     orion5x_defconfig (gcc-8): 1 warning
>     palmz72_defconfig (gcc-8): 1 warning
>     pcm027_defconfig (gcc-8): 1 warning
>     pleb_defconfig (gcc-8): 1 warning
>     prima2_defconfig (gcc-8): 1 warning
>     pxa168_defconfig (gcc-8): 1 warning
>     pxa255-idp_defconfig (gcc-8): 1 warning
>     pxa3xx_defconfig (gcc-8): 1 warning
>     pxa910_defconfig (gcc-8): 1 warning
>     realview_defconfig (gcc-8): 1 warning
>     rpc_defconfig (gcc-8): 1 warning
>     s3c2410_defconfig (gcc-8): 1 warning
>     s3c6400_defconfig (gcc-8): 1 warning
>     s5pv210_defconfig (gcc-8): 1 warning
>     sama5_defconfig (gcc-8): 1 warning
>     shannon_defconfig (gcc-8): 1 warning
>     simpad_defconfig (gcc-8): 1 warning
>     spear13xx_defconfig (gcc-8): 1 warning
>     spear3xx_defconfig (gcc-8): 1 warning
>     spear6xx_defconfig (gcc-8): 1 warning
>     spitz_defconfig (gcc-8): 1 warning
>     sunxi_defconfig (gcc-8): 1 warning
>     tango4_defconfig (gcc-8): 1 warning
>     tct_hammer_defconfig (gcc-8): 1 warning
>     trizeps4_defconfig (gcc-8): 1 warning
>     u300_defconfig (gcc-8): 1 warning
>     u8500_defconfig (gcc-8): 1 warning
>     versatile_defconfig (gcc-8): 1 warning
>     vf610m4_defconfig (gcc-8): 1 warning
>     viper_defconfig (gcc-8): 1 warning
>     vt8500_v6_v7_defconfig (gcc-8): 1 warning
>     xcep_defconfig (gcc-8): 1 warning
>     zeus_defconfig (gcc-8): 1 warning
>     zx_defconfig (gcc-8): 1 warning
>
> i386:
>     allnoconfig (gcc-8): 1 warning
>
> mips:
>     32r2el_defconfig (gcc-8): 2 warnings
>     allnoconfig (gcc-8): 1 warning
>     ar7_defconfig (gcc-8): 1 warning
>     ath79_defconfig (gcc-8): 1 warning
>     bcm63xx_defconfig (gcc-8): 1 warning
>     bigsur_defconfig (gcc-8): 1 warning
>     bmips_be_defconfig (gcc-8): 1 warning
>     bmips_stb_defconfig (gcc-8): 1 warning
>     capcella_defconfig (gcc-8): 1 warning
>     cavium_octeon_defconfig (gcc-8): 1 warning
>     cobalt_defconfig (gcc-8): 1 warning
>     db1xxx_defconfig (gcc-8): 1 error, 1 warning
>     decstation_64_defconfig (gcc-8): 1 warning
>     decstation_defconfig (gcc-8): 1 warning
>     decstation_r4k_defconfig (gcc-8): 1 warning
>     e55_defconfig (gcc-8): 1 warning
>     gcw0_defconfig (gcc-8): 1 warning
>     ip22_defconfig (gcc-8): 1 warning
>     ip27_defconfig (gcc-8): 1 warning
>     ip28_defconfig (gcc-8): 1 warning
>     jazz_defconfig (gcc-8): 1 warning
>     jmr3927_defconfig (gcc-8): 1 warning
>     lasat_defconfig (gcc-8): 1 warning
>     loongson3_defconfig (gcc-8): 1 warning
>     malta_defconfig (gcc-8): 1 warning
>     malta_kvm_guest_defconfig (gcc-8): 1 warning
>     malta_qemu_32r6_defconfig (gcc-8): 2 warnings
>     maltaaprp_defconfig (gcc-8): 1 warning
>     maltasmvp_defconfig (gcc-8): 1 warning
>     maltasmvp_eva_defconfig (gcc-8): 1 warning
>     maltaup_defconfig (gcc-8): 1 warning
>     maltaup_xpa_defconfig (gcc-8): 1 warning
>     markeins_defconfig (gcc-8): 1 warning
>     mips_paravirt_defconfig (gcc-8): 1 warning
>     mpc30x_defconfig (gcc-8): 1 warning
>     msp71xx_defconfig (gcc-8): 1 warning
>     pnx8335_stb225_defconfig (gcc-8): 1 warning
>     qi_lb60_defconfig (gcc-8): 1 warning
>     rb532_defconfig (gcc-8): 1 warning
>     rbtx49xx_defconfig (gcc-8): 2 warnings
>     rm200_defconfig (gcc-8): 1 warning
>     sb1250_swarm_defconfig (gcc-8): 1 warning
>     tb0219_defconfig (gcc-8): 1 warning
>     tb0226_defconfig (gcc-8): 1 warning
>     tb0287_defconfig (gcc-8): 1 warning
>     workpad_defconfig (gcc-8): 1 warning
>
> riscv:
>     allnoconfig (gcc-8): 1 warning
>     defconfig (gcc-8): 1 warning
>     rv32_defconfig (gcc-8): 7 warnings
>
> x86_64:
>     allnoconfig (gcc-8): 3 warnings
>     tinyconfig (gcc-8): 1 warning
>
> Errors summary:
>
>     2    drivers/scsi/ufs/ufs-mediatek.c:93:23: error: storage size of =
=E2=80=98res=E2=80=99 isn=E2=80=99t known
>     2    drivers/scsi/ufs/ufs-mediatek.c:21:2: error: implicit declaratio=
n of function =E2=80=98arm_smccc_smc=E2=80=99 [-Werror=3Dimplicit-function-=
declaration]
>     2    drivers/scsi/ufs/ufs-mediatek.c:21:16: error: =E2=80=98MTK_SIP_U=
FS_CONTROL=E2=80=99 undeclared (first use in this function); did you mean =
=E2=80=98TX_HIBERN8_CONTROL=E2=80=99?
>     1    file.c:(.text+0x352c): undefined reference to `__udivdi3'
>
> Warnings summary:
>
>     134  kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=
=80=99 may be used uninitialized in this function [-Wmaybe-uninitialized]
>     20   <stdin>:1511:2: warning: #warning syscall clone3 not implemented=
 [-Wcpp]
>     9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer f=
rom integer of different size [-Wint-to-pointer-cast]
>     4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer f=
rom integer of different size [-Wint-to-pointer-cast]
>     2    drivers/scsi/ufs/ufs-mediatek.c:93:23: warning: unused variable =
=E2=80=98res=E2=80=99 [-Wunused-variable]
>     2    cc1: some warnings being treated as errors
>     2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented=
 [-Wcpp]
>     2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemen=
ted [-Wcpp]
>     1    {standard input}:141: Warning: macro instruction expanded into m=
ultiple instructions
>     1    sound/soc/txx9/txx9aclc.c:54:30: warning: unused variable =E2=80=
=98rtd=E2=80=99 [-Wunused-variable]
>     1    net/netfilter/nf_flow_table_offload.c:91:21: warning: unsigned c=
onversion from =E2=80=98int=E2=80=99 to =E2=80=98__be16=E2=80=99 {aka =E2=
=80=98short unsigned int=E2=80=99} changes value from =E2=80=98327680=E2=80=
=99 to =E2=80=980=E2=80=99 [-Woverflow]
>     1    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%ld=
=E2=80=99 expects argument of type =E2=80=98long int=E2=80=99, but argument=
 5 has type =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [=
-Wformat=3D]
>     1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer t=
o integer of different size [-Wpointer-to-int-cast]
>     1    arch/x86/kernel/unwind_orc.c:210:12: warning: =E2=80=98orc_sort_=
cmp=E2=80=99 defined but not used [-Wunused-function]
>     1    arch/x86/kernel/unwind_orc.c:190:13: warning: =E2=80=98orc_sort_=
swap=E2=80=99 defined but not used [-Wunused-function]
>     1    /tmp/ccCmEjPt.s:18191: Warning: using r15 results in unpredictab=
le behaviour
>     1    /tmp/ccCmEjPt.s:18119: Warning: using r15 results in unpredictab=
le behaviour
>     1    .config:1173:warning: override: UNWINDER_GUESS changes choice st=
ate
>
> Section mismatches summary:
>
>     5    WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in re=
ference from the function free_memmap() to the function .meminit.text:membl=
ock_free()
>     3    WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in re=
ference from the function free_memmap() to the function .meminit.text:membl=
ock_free()
>     3    WARNING: vmlinux.o(.text.unlikely+0x8d8): Section mismatch in re=
ference from the function free_memmap() to the function .meminit.text:membl=
ock_free()
>     1    WARNING: vmlinux.o(.text.unlikely+0x97c): Section mismatch in re=
ference from the function free_memmap() to the function .meminit.text:membl=
ock_free()
>     1    WARNING: vmlinux.o(.text.unlikely+0x860): Section mismatch in re=
ference from the function free_memmap() to the function .meminit.text:membl=
ock_free()
>     1    WARNING: vmlinux.o(.text.unlikely+0x7a4): Section mismatch in re=
ference from the function free_memmap() to the function .meminit.text:membl=
ock_free()
>     1    WARNING: vmlinux.o(.text.unlikely+0x3a98): Section mismatch in r=
eference from the function pmax_setup_memory_region() to the function .init=
.text:add_memory_region()
>     1    WARNING: vmlinux.o(.text.unlikely+0x3740): Section mismatch in r=
eference from the function pmax_setup_memory_region() to the function .init=
.text:add_memory_region()
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>
> Detailed per-defconfig build reports:
>
> -------------------------------------------------------------------------=
-------
> 32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> 32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 3 errors, 2 warnings, 0 secti=
on mismatches
>
> Errors:
>     drivers/scsi/ufs/ufs-mediatek.c:93:23: error: storage size of =E2=80=
=98res=E2=80=99 isn=E2=80=99t known
>     drivers/scsi/ufs/ufs-mediatek.c:21:2: error: implicit declaration of =
function =E2=80=98arm_smccc_smc=E2=80=99 [-Werror=3Dimplicit-function-decla=
ration]
>     drivers/scsi/ufs/ufs-mediatek.c:21:16: error: =E2=80=98MTK_SIP_UFS_CO=
NTROL=E2=80=99 undeclared (first use in this function); did you mean =E2=80=
=98TX_HIBERN8_CONTROL=E2=80=99?
>
> Warnings:
>     drivers/scsi/ufs/ufs-mediatek.c:93:23: warning: unused variable =E2=
=80=98res=E2=80=99 [-Wunused-variable]
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 3 errors, 20 warnings, 0 sectio=
n mismatches
>
> Errors:
>     drivers/scsi/ufs/ufs-mediatek.c:93:23: error: storage size of =E2=80=
=98res=E2=80=99 isn=E2=80=99t known
>     drivers/scsi/ufs/ufs-mediatek.c:21:2: error: implicit declaration of =
function =E2=80=98arm_smccc_smc=E2=80=99 [-Werror=3Dimplicit-function-decla=
ration]
>     drivers/scsi/ufs/ufs-mediatek.c:21:16: error: =E2=80=98MTK_SIP_UFS_CO=
NTROL=E2=80=99 undeclared (first use in this function); did you mean =E2=80=
=98TX_HIBERN8_CONTROL=E2=80=99?
>
> Warnings:
>     /tmp/ccCmEjPt.s:18119: Warning: using r15 results in unpredictable be=
haviour
>     /tmp/ccCmEjPt.s:18191: Warning: using r15 results in unpredictable be=
haviour
>     net/netfilter/nf_flow_table_offload.c:91:21: warning: unsigned conver=
sion from =E2=80=98int=E2=80=99 to =E2=80=98__be16=E2=80=99 {aka =E2=80=98s=
hort unsigned int=E2=80=99} changes value from =E2=80=98327680=E2=80=99 to =
=E2=80=980=E2=80=99 [-Woverflow]
>     drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>     drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>     drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>     drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>     drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to int=
eger of different size [-Wpointer-to-int-cast]
>     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from i=
nteger of different size [-Wint-to-pointer-cast]
>     include/linux/kern_levels.h:5:18: warning: format =E2=80=98%ld=E2=80=
=99 expects argument of type =E2=80=98long int=E2=80=99, but argument 5 has=
 type =E2=80=98size_t=E2=80=99 {aka =E2=80=98unsigned int=E2=80=99} [-Wform=
at=3D]
>     drivers/scsi/ufs/ufs-mediatek.c:93:23: warning: unused variable =E2=
=80=98res=E2=80=99 [-Wunused-variable]
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>     arch/x86/kernel/unwind_orc.c:210:12: warning: =E2=80=98orc_sort_cmp=
=E2=80=99 defined but not used [-Wunused-function]
>     arch/x86/kernel/unwind_orc.c:190:13: warning: =E2=80=98orc_sort_swap=
=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section =
mismatches
>
> Warnings:
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> Section mismatches:
>     WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in referen=
ce from the function free_memmap() to the function .meminit.text:memblock_f=
ree()
>
> -------------------------------------------------------------------------=
-------
> at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>
> -------------------------------------------------------------------------=
-------
> axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches
>
> Warnings:
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>
> -------------------------------------------------------------------------=
-------
> badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> Section mismatches:
>     WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in referen=
ce from the function free_memmap() to the function .meminit.text:memblock_f=
ree()
>
> -------------------------------------------------------------------------=
-------
> bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> Section mismatches:
>     WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in referen=
ce from the function free_memmap() to the function .meminit.text:memblock_f=
ree()
>
> -------------------------------------------------------------------------=
-------
> ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> cm_x300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> Section mismatches:
>     WARNING: vmlinux.o(.text.unlikely+0x8d8): Section mismatch in referen=
ce from the function free_memmap() to the function .meminit.text:memblock_f=
ree()
>
> -------------------------------------------------------------------------=
-------
> corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> db1xxx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>
> Errors:
>     file.c:(.text+0x352c): undefined reference to `__udivdi3'
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> Section mismatches:
>     WARNING: vmlinux.o(.text.unlikely+0x3a98): Section mismatch in refere=
nce from the function pmax_setup_memory_region() to the function .init.text=
:add_memory_region()
>
> -------------------------------------------------------------------------=
-------
> decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warnin=
g, 0 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> Section mismatches:
>     WARNING: vmlinux.o(.text.unlikely+0x3740): Section mismatch in refere=
nce from the function pmax_setup_memory_region() to the function .init.text=
:add_memory_region()
>
> -------------------------------------------------------------------------=
-------
> defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 erro=
rs, 1 warning, 0 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 erro=
rs, 1 warning, 0 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> em_x270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> Section mismatches:
>     WARNING: vmlinux.o(.text.unlikely+0x7a4): Section mismatch in referen=
ce from the function free_memmap() to the function .meminit.text:memblock_f=
ree()
>
> -------------------------------------------------------------------------=
-------
> eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>
> -------------------------------------------------------------------------=
-------
> footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> Section mismatches:
>     WARNING: vmlinux.o(.text.unlikely+0x8d8): Section mismatch in referen=
ce from the function free_memmap() to the function .meminit.text:memblock_f=
ree()
>
> -------------------------------------------------------------------------=
-------
> h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> Section mismatches:
>     WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in referen=
ce from the function free_memmap() to the function .meminit.text:memblock_f=
ree()
>
> -------------------------------------------------------------------------=
-------
> haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches
>
> Warnings:
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>
> -------------------------------------------------------------------------=
-------
> haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches
>
> Warnings:
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>
> -------------------------------------------------------------------------=
-------
> hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches
>
> Warnings:
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>
> -------------------------------------------------------------------------=
-------
> i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> ip27_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> Section mismatches:
>     WARNING: vmlinux.o(.text.unlikely+0x860): Section mismatch in referen=
ce from the function free_memmap() to the function .meminit.text:memblock_f=
ree()
>
> -------------------------------------------------------------------------=
-------
> keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> Section mismatches:
>     WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in referen=
ce from the function free_memmap() to the function .meminit.text:memblock_f=
ree()
>
> -------------------------------------------------------------------------=
-------
> lasat_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warni=
ng, 0 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warni=
ngs, 0 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>     {standard input}:141: Warning: macro instruction expanded into multip=
le instructions
>
> -------------------------------------------------------------------------=
-------
> maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> markeins_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> msp71xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS,=
 0 errors, 0 warnings, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 0 warnings, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, =
0 warnings, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 war=
nings, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>
> -------------------------------------------------------------------------=
-------
> neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> Section mismatches:
>     WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in referen=
ce from the function free_memmap() to the function .meminit.text:memblock_f=
ree()
>
> -------------------------------------------------------------------------=
-------
> netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches
>
> Warnings:
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>
> -------------------------------------------------------------------------=
-------
> nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnin=
gs, 0 section mismatches
>
> Warnings:
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>
> -------------------------------------------------------------------------=
-------
> omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> Section mismatches:
>     WARNING: vmlinux.o(.text.unlikely+0x8d8): Section mismatch in referen=
ce from the function free_memmap() to the function .meminit.text:memblock_f=
ree()
>
> -------------------------------------------------------------------------=
-------
> pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warnin=
g, 0 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> pxa_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>
> -------------------------------------------------------------------------=
-------
> qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>     sound/soc/txx9/txx9aclc.c:54:30: warning: unused variable =E2=80=98rt=
d=E2=80=99 [-Wunused-variable]
>
> -------------------------------------------------------------------------=
-------
> realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> Section mismatches:
>     WARNING: vmlinux.o(.text.unlikely+0x97c): Section mismatch in referen=
ce from the function free_memmap() to the function .meminit.text:memblock_f=
ree()
>
> -------------------------------------------------------------------------=
-------
> rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 7 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wc=
pp]
>     <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [=
-Wcpp]
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>     <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wc=
pp]
>     <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [=
-Wcpp]
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>
> -------------------------------------------------------------------------=
-------
> s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> Section mismatches:
>     WARNING: vmlinux.o(.text.unlikely+0x95c): Section mismatch in referen=
ce from the function free_memmap() to the function .meminit.text:memblock_f=
ree()
>
> -------------------------------------------------------------------------=
-------
> shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> Section mismatches:
>     WARNING: vmlinux.o(.text.unlikely+0x8e4): Section mismatch in referen=
ce from the function free_memmap() to the function .meminit.text:memblock_f=
ree()
>
> -------------------------------------------------------------------------=
-------
> socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches
>
> Warnings:
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches
>
> Warnings:
>     .config:1173:warning: override: UNWINDER_GUESS changes choice state
>
> -------------------------------------------------------------------------=
-------
> trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>
> -------------------------------------------------------------------------=
-------
> vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches
>
> Warnings:
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>
> -------------------------------------------------------------------------=
-------
> versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 wa=
rnings, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 wa=
rnings, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches
>
> Warnings:
>     kernel/time/timer.c:969:20: warning: =E2=80=98timer.expires=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> ---
> For more info write to <info@kernelci.org>
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/5dfc89e6.1c69fb81.b8ff3.e095%40mx.google.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnbWX-8NkA0cHGU4e05pq2vUUeKe5HXC_GMZzRu68Qppg%40mai=
l.gmail.com.
