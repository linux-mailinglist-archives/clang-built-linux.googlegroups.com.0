Return-Path: <clang-built-linux+bncBDYJPJO25UGBBONN4DZAKGQERUPR2DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC8E17287E
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 20:21:30 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id c125sf1035782ywf.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 11:21:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582831289; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pp4A9YNssS5LMyKAu0HVN61vi6d7ak9KwbiJ7+7rb482oU9jnMoCzofsj6QYqBNwj1
         d+9Grgn8dhZZ5wGIJzKlek3JW0u2z6/v9+3HasFAlvMMo8/5MDIE9fWuTSFSbAZ/NfWs
         UtKMAsvDTehk94QVgnxMFMJP1VcRhx3Az57e5IabF7mFRY4VlDxSvbxwkvuLRlYY7BdO
         fa6+/ULVjDtaelqa2hl6y4Ng4LUEEbv/rhgXTmeyjotd7C/RaAfN+i8cS0GrHOmD4nB5
         dMlLhMfX17HbkEN4+dV72G0ox0CsD7+AhWD8i2deuBfDk1Wz0m71gC7yz4NIRUvqLXKM
         GJBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WqcVeExD9hPgy2qlFyFuziTuVGTt1tSwY8lgNOR/P3g=;
        b=1G2E5QR8Q//bWHNar7rTQZa8+nBFxr8WbzTNasbTd0gRaF3NJ26J7BrcQ8yW2aqlmh
         IgPVv4rNs/3JvGTI4oJHtVPaaX03L8lIziUyYk2nJiCBBy6oh0CJP5SJ7a6O/dixe8oB
         kYehSHI2KVRsHOQxQFs4PqvDforBTkYkAlNY8nz8dIjfQEBSNJZclV6OHwodIMyAgFX9
         teI1YwScLJjonTlvzX3CygiY1j1pqeeozTGTK6z/xES2LUK/WryOe4InJJrwCVHX6GCm
         WUoR3LRfxTH3cR08sD9O01kVNSGdsAxy7guoT60fnWDgayT67hucbBM8agIP2XHaEqRV
         Cfww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SaY7DDdo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=WqcVeExD9hPgy2qlFyFuziTuVGTt1tSwY8lgNOR/P3g=;
        b=G4OKv571yL5XCVOFS2LWyK9P7SFZX00DGb1u1zDgEoSE04KqK/zGzFa+yx5X3oKqBO
         L4upuBwz+KzNZzhEN0/8zECCLpx9tSRIYuc4nnLQnPQOOsyFNgJ5RimXVTy0LUdZEZcL
         PuqU1GAG0+V86FBChMoReDqAMVm7N70kB9aiSzHvmaxZxT4Bw8MeqQ9STMv53e/wOCkH
         d1ulHc2xEbXdqNnWFZpWme1IX/qtqla527JTVsdTRW3/HC3G3uu+yEQDJjhcL6ZkWuWc
         qM6c6BhdbRLJukj9o6PmLSwJiU1AaJgvu1gOsdqRj7L1Q4TndLnj6rNFaSEXcn/wkeJ8
         eLrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WqcVeExD9hPgy2qlFyFuziTuVGTt1tSwY8lgNOR/P3g=;
        b=oGJy9Fkhy6T4GZok+jBwSaFBXUWMnI/dckm5N4HQhqSfd/DNRCezrPX5x1a4TJZLT5
         k9NSq2yqca/B63w2MBrYXfrvj1UEiOa95mYqyHv8n59kWuKYbzASLWYk0rebtDwpDmGX
         Q+Bq3QuTx9xZufZlN2zWxq8D+mB/KKnneFo6+N5+h+kkfAiMhlEEc2d88qh9BF53b+LW
         ykwHj1Ov2BYmiMlzVLbDL+KlADuXKUpxXihcNgLRk8nSJuMO3FgQrhl1ENkPMylR6/l3
         ul8VOsfNui+Fx0gwxDhY5KvywxEJEVQ36GcyfvFMngbbdp3bc70B7kPwx1rHG8EHac6G
         90ow==
X-Gm-Message-State: APjAAAX80djj8fsirjkSuCHgatLvzwuzW8tAhkwxNEBUikR1DdXsup2H
	SSvoawH7R4Enftmp9fC52j8=
X-Google-Smtp-Source: APXvYqzGytjOF98nCEDnSw762zcoT5d6dm+0Qp2Kn0OWtIaP5yfrfJhGcIcCg7KJaOMzHsFiwwffrQ==
X-Received: by 2002:a25:3b8a:: with SMTP id i132mr181569yba.313.1582831289460;
        Thu, 27 Feb 2020 11:21:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9444:: with SMTP id l65ls27368ywg.5.gmail; Thu, 27 Feb
 2020 11:21:28 -0800 (PST)
X-Received: by 2002:a81:460b:: with SMTP id t11mr934478ywa.446.1582831288615;
        Thu, 27 Feb 2020 11:21:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582831288; cv=none;
        d=google.com; s=arc-20160816;
        b=RgPV0hCEl2CLA75jHFK5a/L7Yx5uZYLtREVHfmLfgP25HRqRKppjhiZ0UapZ0yT4dw
         Xj0l2qPAkU9ycQPeBJV1j2ofnWekqXwWSbzzxGNUTcSvEeT40H5VmlKf82HcoBesw/zG
         2ZXsxTyb4K+ItAifm8UTODatjPeN+XDJp5AwxRm/8cORrGbV65wod1WPNINH5CubtqLk
         IF7BnZCsfbEDgXSYRWvZ5oT+euwR5NbUNNlLI9tKBL5Ep6R7PjzRK5iphived/YHMKNI
         KHuc73tODq8xhQ6g2BfoS+oG94HoGjrsqnZglYKYChWJMuq9B5jZlf8zI8SqPX/M/mBc
         Dt3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jh0NjdMuuihPN5U4v11/qAipBq1UQnc743HRSxzhIdg=;
        b=Uy1jr2qulp0bJra742Azw/MHVpjctftt7Ytv7xtI0Np8nM3nfz96lZOzc8VSiQ/Tl7
         ox2leu4QwkNQUKeTi7AVJlj11hMR8f4q9blNDL29gULGLs2hik2vw9lOPZ6CBjw3gHOZ
         IQqjIv268E/HaHTXFJ92F/0qGTA1oA38D2hU3PrAshppI1d6b3DDQvZjZRLrQKCmgjSN
         fu23HUx7hs5B//dPm6Fb/qjp2rX7uJu3eTwGtwKFiPiGthmnKUjMYhOeGMAbJ2/22lNa
         CT4eiUUiddpJpHZFtfa3ru28GOdlvGtYOtT+qxDuN4pSHHXSOA4JiqSAR1cXIn9Th8ht
         pSMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SaY7DDdo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 136si20802ybd.4.2020.02.27.11.21.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 11:21:28 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id b185so325962pfb.7
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 11:21:28 -0800 (PST)
X-Received: by 2002:a63:4d6:: with SMTP id 205mr833763pge.10.1582831284727;
 Thu, 27 Feb 2020 11:21:24 -0800 (PST)
MIME-Version: 1.0
References: <5e57d0a2.1c69fb81.b44cf.2a50@mx.google.com>
In-Reply-To: <5e57d0a2.1c69fb81.b44cf.2a50@mx.google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 27 Feb 2020 11:21:13 -0800
Message-ID: <CAKwvOdnVh0xSrrQ=RkRSYOVHYD0-i+=E=Rsg6JjdG9=4r7BN+w@mail.gmail.com>
Subject: Re: next/master build: 219 builds: 84 failed, 135 passed, 101 errors,
 267 warnings (next-20200227)
To: kernelci@groups.io
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	"kernelci.org bot" <bot@kernelci.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SaY7DDdo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

+ KernelCI

So it looks like this is the latest report we received. Any thoughts
on why clang-8 is being used in the report after
https://github.com/kernelci/kernelci-core/pull/325 was merged 2 days
ago?  Is the deployment not continuous (ie. still has to be pushed to
production)?

On Thu, Feb 27, 2020 at 6:22 AM kernelci.org bot <bot@kernelci.org> wrote:
>
> next/master build: 219 builds: 84 failed, 135 passed, 101 errors, 267 war=
nings (next-20200227)
>
> Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/=
next-20200227/
>
> Tree: next
> Branch: master
> Git Describe: next-20200227
> Git Commit: 10569a280f259f696c0b32fc1d45866d2fd33f53
> Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.gi=
t
> Built: 7 unique architectures
>
> Build Failures Detected:
>
> arc:
>     allnoconfig: (gcc-8) FAIL
>     axs103_defconfig: (gcc-8) FAIL
>     axs103_smp_defconfig: (gcc-8) FAIL
>     haps_hs_defconfig: (gcc-8) FAIL
>     haps_hs_smp_defconfig: (gcc-8) FAIL
>     haps_hs_smp_defconfig+kselftest: (gcc-8) FAIL
>     hsdk_defconfig: (gcc-8) FAIL
>     nsimosci_hs_defconfig: (gcc-8) FAIL
>     nsimosci_hs_smp_defconfig: (gcc-8) FAIL
>     tinyconfig: (gcc-8) FAIL
>     vdk_hs38_defconfig: (gcc-8) FAIL
>     vdk_hs38_smp_defconfig: (gcc-8) FAIL
>
> arm:
>     cm_x300_defconfig: (gcc-8) FAIL
>     em_x270_defconfig: (gcc-8) FAIL
>     eseries_pxa_defconfig: (gcc-8) FAIL
>     pxa_defconfig: (gcc-8) FAIL
>
> mips:
>     32r2el_defconfig: (gcc-8) FAIL
>     32r2el_defconfig+kselftest: (gcc-8) FAIL
>     allnoconfig: (gcc-8) FAIL
>     ar7_defconfig: (gcc-8) FAIL
>     ath25_defconfig: (gcc-8) FAIL
>     ath79_defconfig: (gcc-8) FAIL
>     bcm47xx_defconfig: (gcc-8) FAIL
>     bcm63xx_defconfig: (gcc-8) FAIL
>     bigsur_defconfig: (gcc-8) FAIL
>     bmips_be_defconfig: (gcc-8) FAIL
>     bmips_stb_defconfig: (gcc-8) FAIL
>     capcella_defconfig: (gcc-8) FAIL
>     cavium_octeon_defconfig: (gcc-8) FAIL
>     ci20_defconfig: (gcc-8) FAIL
>     cobalt_defconfig: (gcc-8) FAIL
>     cu1000-neo_defconfig: (gcc-8) FAIL
>     db1xxx_defconfig: (gcc-8) FAIL
>     decstation_64_defconfig: (gcc-8) FAIL
>     decstation_defconfig: (gcc-8) FAIL
>     decstation_r4k_defconfig: (gcc-8) FAIL
>     e55_defconfig: (gcc-8) FAIL
>     fuloong2e_defconfig: (gcc-8) FAIL
>     gcw0_defconfig: (gcc-8) FAIL
>     gpr_defconfig: (gcc-8) FAIL
>     ip22_defconfig: (gcc-8) FAIL
>     ip27_defconfig: (gcc-8) FAIL
>     ip28_defconfig: (gcc-8) FAIL
>     ip32_defconfig: (gcc-8) FAIL
>     jazz_defconfig: (gcc-8) FAIL
>     jmr3927_defconfig: (gcc-8) FAIL
>     lasat_defconfig: (gcc-8) FAIL
>     lemote2f_defconfig: (gcc-8) FAIL
>     loongson1b_defconfig: (gcc-8) FAIL
>     loongson1c_defconfig: (gcc-8) FAIL
>     loongson3_defconfig: (gcc-8) FAIL
>     malta_defconfig: (gcc-8) FAIL
>     malta_kvm_defconfig: (gcc-8) FAIL
>     malta_kvm_guest_defconfig: (gcc-8) FAIL
>     malta_qemu_32r6_defconfig: (gcc-8) FAIL
>     maltaaprp_defconfig: (gcc-8) FAIL
>     maltasmvp_defconfig: (gcc-8) FAIL
>     maltasmvp_eva_defconfig: (gcc-8) FAIL
>     maltaup_defconfig: (gcc-8) FAIL
>     maltaup_xpa_defconfig: (gcc-8) FAIL
>     markeins_defconfig: (gcc-8) FAIL
>     mips_paravirt_defconfig: (gcc-8) FAIL
>     mpc30x_defconfig: (gcc-8) FAIL
>     msp71xx_defconfig: (gcc-8) FAIL
>     mtx1_defconfig: (gcc-8) FAIL
>     nlm_xlp_defconfig: (gcc-8) FAIL
>     nlm_xlr_defconfig: (gcc-8) FAIL
>     omega2p_defconfig: (gcc-8) FAIL
>     pic32mzda_defconfig: (gcc-8) FAIL
>     pistachio_defconfig: (gcc-8) FAIL
>     pnx8335_stb225_defconfig: (gcc-8) FAIL
>     qi_lb60_defconfig: (gcc-8) FAIL
>     rb532_defconfig: (gcc-8) FAIL
>     rbtx49xx_defconfig: (gcc-8) FAIL
>     rm200_defconfig: (gcc-8) FAIL
>     rt305x_defconfig: (gcc-8) FAIL
>     sb1250_swarm_defconfig: (gcc-8) FAIL
>     tb0219_defconfig: (gcc-8) FAIL
>     tb0226_defconfig: (gcc-8) FAIL
>     tb0287_defconfig: (gcc-8) FAIL
>     tinyconfig: (gcc-8) FAIL
>     vocore2_defconfig: (gcc-8) FAIL
>     workpad_defconfig: (gcc-8) FAIL
>     xway_defconfig: (gcc-8) FAIL
>
> Errors and Warnings Detected:
>
> arc:
>     allnoconfig (gcc-8): 1 error, 1 warning
>     axs103_defconfig (gcc-8): 1 error, 1 warning
>     axs103_smp_defconfig (gcc-8): 1 error, 1 warning
>     haps_hs_defconfig (gcc-8): 1 error, 1 warning
>     haps_hs_smp_defconfig (gcc-8): 1 error, 1 warning
>     haps_hs_smp_defconfig (gcc-8): 1 error, 1 warning
>     hsdk_defconfig (gcc-8): 1 error, 1 warning
>     nsimosci_hs_defconfig (gcc-8): 1 error, 1 warning
>     nsimosci_hs_smp_defconfig (gcc-8): 1 error, 1 warning
>     tinyconfig (gcc-8): 1 error, 1 warning
>     vdk_hs38_defconfig (gcc-8): 1 error, 1 warning
>     vdk_hs38_smp_defconfig (gcc-8): 1 error, 1 warning
>
> arm64:
>     allmodconfig (clang-8): 81 warnings
>     defconfig (clang-8): 18 warnings
>     defconfig (gcc-8): 1 warning
>     defconfig (gcc-8): 1 warning
>     defconfig (gcc-8): 1 warning
>     defconfig (gcc-8): 1 warning
>
> arm:
>     allmodconfig (gcc-8): 21 warnings
>     aspeed_g4_defconfig (gcc-8): 4 warnings
>     aspeed_g5_defconfig (gcc-8): 4 warnings
>     cm_x300_defconfig (gcc-8): 1 error, 2 warnings
>     em_x270_defconfig (gcc-8): 1 error, 2 warnings
>     eseries_pxa_defconfig (gcc-8): 14 errors, 12 warnings
>     multi_v5_defconfig (gcc-8): 4 warnings
>     multi_v7_defconfig (gcc-8): 4 warnings
>     multi_v7_defconfig (gcc-8): 4 warnings
>     multi_v7_defconfig (gcc-8): 4 warnings
>     multi_v7_defconfig (gcc-8): 4 warnings
>     multi_v7_defconfig (gcc-8): 5 warnings
>     pxa_defconfig (gcc-8): 3 errors, 6 warnings
>
> i386:
>
> mips:
>     32r2el_defconfig (gcc-8): 1 error, 1 warning
>     32r2el_defconfig (gcc-8): 1 error, 1 warning
>     allnoconfig (gcc-8): 1 error, 1 warning
>     ar7_defconfig (gcc-8): 1 error, 1 warning
>     ath25_defconfig (gcc-8): 1 error, 1 warning
>     ath79_defconfig (gcc-8): 1 error, 1 warning
>     bcm47xx_defconfig (gcc-8): 1 error, 1 warning
>     bcm63xx_defconfig (gcc-8): 1 error, 1 warning
>     bigsur_defconfig (gcc-8): 1 error, 1 warning
>     bmips_be_defconfig (gcc-8): 1 error, 1 warning
>     bmips_stb_defconfig (gcc-8): 1 error, 1 warning
>     capcella_defconfig (gcc-8): 1 error, 1 warning
>     cavium_octeon_defconfig (gcc-8): 1 error, 1 warning
>     ci20_defconfig (gcc-8): 1 error, 1 warning
>     cobalt_defconfig (gcc-8): 1 error, 1 warning
>     cu1000-neo_defconfig (gcc-8): 1 error, 1 warning
>     db1xxx_defconfig (gcc-8): 1 error, 1 warning
>     decstation_64_defconfig (gcc-8): 1 error, 1 warning
>     decstation_defconfig (gcc-8): 1 error, 1 warning
>     decstation_r4k_defconfig (gcc-8): 1 error, 1 warning
>     e55_defconfig (gcc-8): 1 error, 1 warning
>     fuloong2e_defconfig (gcc-8): 1 error, 1 warning
>     gcw0_defconfig (gcc-8): 1 error, 1 warning
>     gpr_defconfig (gcc-8): 1 error, 1 warning
>     ip22_defconfig (gcc-8): 1 error, 1 warning
>     ip27_defconfig (gcc-8): 3 errors, 2 warnings
>     ip28_defconfig (gcc-8): 1 error, 1 warning
>     ip32_defconfig (gcc-8): 1 error, 1 warning
>     jazz_defconfig (gcc-8): 1 error, 1 warning
>     jmr3927_defconfig (gcc-8): 1 error, 1 warning
>     lasat_defconfig (gcc-8): 1 error, 1 warning
>     lemote2f_defconfig (gcc-8): 1 error, 1 warning
>     loongson1b_defconfig (gcc-8): 1 error, 1 warning
>     loongson1c_defconfig (gcc-8): 1 error, 1 warning
>     loongson3_defconfig (gcc-8): 1 error, 1 warning
>     malta_defconfig (gcc-8): 1 error, 1 warning
>     malta_kvm_defconfig (gcc-8): 1 error, 1 warning
>     malta_kvm_guest_defconfig (gcc-8): 1 error, 1 warning
>     malta_qemu_32r6_defconfig (gcc-8): 1 error, 1 warning
>     maltaaprp_defconfig (gcc-8): 1 error, 1 warning
>     maltasmvp_defconfig (gcc-8): 1 error, 1 warning
>     maltasmvp_eva_defconfig (gcc-8): 1 error, 1 warning
>     maltaup_defconfig (gcc-8): 1 error, 1 warning
>     maltaup_xpa_defconfig (gcc-8): 1 error, 1 warning
>     markeins_defconfig (gcc-8): 1 error, 1 warning
>     mips_paravirt_defconfig (gcc-8): 1 error, 1 warning
>     mpc30x_defconfig (gcc-8): 1 error, 1 warning
>     msp71xx_defconfig (gcc-8): 1 error, 1 warning
>     mtx1_defconfig (gcc-8): 1 error, 1 warning
>     nlm_xlp_defconfig (gcc-8): 1 error, 1 warning
>     nlm_xlr_defconfig (gcc-8): 1 error, 1 warning
>     omega2p_defconfig (gcc-8): 1 error, 1 warning
>     pic32mzda_defconfig (gcc-8): 1 error, 1 warning
>     pistachio_defconfig (gcc-8): 1 error, 1 warning
>     pnx8335_stb225_defconfig (gcc-8): 1 error, 1 warning
>     qi_lb60_defconfig (gcc-8): 1 error, 1 warning
>     rb532_defconfig (gcc-8): 1 error, 1 warning
>     rbtx49xx_defconfig (gcc-8): 1 error, 1 warning
>     rm200_defconfig (gcc-8): 1 error, 1 warning
>     rt305x_defconfig (gcc-8): 1 error, 1 warning
>     sb1250_swarm_defconfig (gcc-8): 1 error, 1 warning
>     tb0219_defconfig (gcc-8): 1 error, 1 warning
>     tb0226_defconfig (gcc-8): 1 error, 1 warning
>     tb0287_defconfig (gcc-8): 1 error, 1 warning
>     tinyconfig (gcc-8): 1 error, 1 warning
>     vocore2_defconfig (gcc-8): 1 error, 1 warning
>     workpad_defconfig (gcc-8): 1 error, 1 warning
>     xway_defconfig (gcc-8): 1 error, 1 warning
>
> riscv:
>     rv32_defconfig (gcc-8): 6 warnings
>
> x86_64:
>     tinyconfig (gcc-8): 1 warning
>
> Errors summary:
>
>     80   mm/memory.c:1523:41: error: implicit declaration of function =E2=
=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werr=
or=3Dimplicit-function-declaration]
>     3    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] und=
efined!
>     2    arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count =
>=3D width of type [-Werror=3Dshift-count-overflow]
>     1    sound/soc/codecs/wm9712.c:94:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98num_reg_defaults=E2=80=99
>     1    sound/soc/codecs/wm9712.c:93:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98reg_defaults=E2=80=99
>     1    sound/soc/codecs/wm9712.c:91:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98volatile_reg=E2=80=99
>     1    sound/soc/codecs/wm9712.c:89:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98cache_type=E2=80=99
>     1    sound/soc/codecs/wm9712.c:88:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98max_register=E2=80=99
>     1    sound/soc/codecs/wm9712.c:87:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98val_bits=E2=80=99
>     1    sound/soc/codecs/wm9712.c:86:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98reg_stride=E2=80=99
>     1    sound/soc/codecs/wm9712.c:85:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98reg_bits=E2=80=99
>     1    sound/soc/codecs/wm9712.c:84:35: error: storage size of =E2=80=
=98wm9712_regmap_config=E2=80=99 isn=E2=80=99t known
>     1    sound/soc/codecs/wm9712.c:84:21: error: variable =E2=80=98wm9712=
_regmap_config=E2=80=99 has initializer but incomplete type
>     1    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of =
function =E2=80=98regmap_ac97_default_volatile=E2=80=99 [-Werror=3Dimplicit=
-function-declaration]
>     1    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of =
function =E2=80=98snd_soc_component_exit_regmap=E2=80=99; did you mean =E2=
=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-decl=
aration]
>     1    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of =
function =E2=80=98snd_soc_component_init_regmap=E2=80=99; did you mean =E2=
=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-decl=
aration]
>     1    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of=
 function =E2=80=98regmap_init_ac97=E2=80=99; did you mean =E2=80=98memmap_=
init_zone=E2=80=99? [-Werror=3Dimplicit-function-declaration]
>     1    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9713.ko] und=
efined!
>     1    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9705.ko] und=
efined!
>
> Warnings summary:
>
>     81   cc1: some warnings being treated as errors
>     36   1 warning generated.
>     14   drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: war=
ning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #defi=
ne of a different macro [-Wheader-guard]
>     9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer f=
rom integer of different size [-Wint-to-pointer-cast]
>     9    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Wa=
rning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C ad=
dress must be less than 10-bits, got "0x40000010"
>     9    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4=
: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bu=
s unit address format error, expected "40000010"
>     9    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Wa=
rning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C ad=
dress must be less than 10-bits, got "0x40000010"
>     9    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4=
: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bu=
s unit address format error, expected "40000010"
>     8    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     6    2 warnings generated.
>     4    kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=
=E2=80=99 declared =E2=80=98static=E2=80=99 but never defined [-Wunused-fun=
ction]
>     4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer f=
rom integer of different size [-Wint-to-pointer-cast]
>     2    fs/btrfs/backref.c:394:30: warning: suggest braces around initia=
lization of subobject [-Wmissing-braces]
>     2    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest =
braces around initialization of subobject [-Wmissing-braces]
>     2    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2692:=
80: warning: suggest braces around initialization of subobject [-Wmissing-b=
races]
>     2    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
>     2    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
>     2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented=
 [-Wcpp]
>     2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented=
 [-Wcpp]
>     2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemen=
ted [-Wcpp]
>     2    3 warnings generated.
>     1    sound/soc/codecs/wm9712.c:93:18: warning: excess elements in str=
uct initializer
>     1    sound/soc/codecs/wm9712.c:91:18: warning: excess elements in str=
uct initializer
>     1    sound/soc/codecs/wm9712.c:89:16: warning: excess elements in str=
uct initializer
>     1    sound/soc/codecs/wm9712.c:88:18: warning: excess elements in str=
uct initializer
>     1    sound/soc/codecs/wm9712.c:87:14: warning: excess elements in str=
uct initializer
>     1    sound/soc/codecs/wm9712.c:86:16: warning: excess elements in str=
uct initializer
>     1    sound/soc/codecs/wm9712.c:85:14: warning: excess elements in str=
uct initializer
>     1    sound/soc/codecs/wm9712.c:653:10: warning: assignment to =E2=80=
=98struct regmap *=E2=80=99 from =E2=80=98int=E2=80=99 makes pointer from i=
nteger without a cast [-Wint-conversion]
>     1    net/sched/cls_flower.c:331:1: warning: the frame size of 1032 by=
tes is larger than 1024 bytes [-Wframe-larger-than=3D]
>     1    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' i=
s uninitialized when used within its own initialization [-Wuninitialized]
>     1    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninit=
ialized when used within its own initialization [-Wuninitialized]
>     1    mm/shmem.c:2745:35: warning: variable 'shmem_falloc_waitq' is un=
initialized when used within its own initialization [-Wuninitialized]
>     1    include/linux/kernel.h:47:25: warning: excess elements in struct=
 initializer
>     1    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
>     1    fs/proc/base.c:1985:35: warning: variable 'wq' is uninitialized =
when used within its own initialization [-Wuninitialized]
>     1    fs/nfs/dir.c:464:34: warning: variable 'wq' is uninitialized whe=
n used within its own initialization [-Wuninitialized]
>     1    fs/nfs/dir.c:1638:34: warning: variable 'wq' is uninitialized wh=
en used within its own initialization [-Wuninitialized]
>     1    fs/namei.c:3213:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
>     1    fs/namei.c:1736:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
>     1    fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialize=
d when used within its own initialization [-Wuninitialized]
>     1    fs/cifs/readdir.c:84:34: warning: variable 'wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
>     1    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitializ=
ed when used within its own initialization [-Wuninitialized]
>     1    drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning: cast from p=
ointer to integer of different size [-Wpointer-to-int-cast]
>     1    drivers/scsi/lpfc/lpfc_sli.c:11910:34: warning: variable 'done_q=
' is uninitialized when used within its own initialization [-Wuninitialized=
]
>     1    drivers/scsi/lpfc/lpfc_scsi.c:4728:34: warning: variable 'waitq'=
 is uninitialized when used within its own initialization [-Wuninitialized]
>     1    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
>     1    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
>     1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7: warning: va=
riable 'rate_idx' is used uninitialized whenever 'if' condition is false [-=
Wsometimes-uninitialized]
>     1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:184:13: warning: v=
ariable 'rate_idx' is used uninitialized whenever 'if' condition is false [=
-Wsometimes-uninitialized]
>     1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:175:7: warning: va=
riable 'rate_idx' is used uninitialized whenever 'if' condition is false [-=
Wsometimes-uninitialized]
>     1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:139:13: note: init=
ialize the variable 'rate_idx' to silence this warning
>     1    drivers/net/usb/lan78xx.c:2659:34: warning: variable 'unlink_wak=
eup' is uninitialized when used within its own initialization [-Wuninitiali=
zed]
>     1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer t=
o integer of different size [-Wpointer-to-int-cast]
>     1    drivers/net/ethernet/amazon/ena/ena_netdev.c:310:38: warning: su=
ggest braces around initialization of subobject [-Wmissing-braces]
>     1    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wak=
e' is uninitialized when used within its own initialization [-Wuninitialize=
d]
>     1    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wak=
e' is uninitialized when used within its own initialization [-Wuninitialize=
d]
>     1    drivers/hwtracing/coresight/coresight-cti-sysfs.c:948:11: warnin=
g: address of array 'grp->sig_types' will always evaluate to 'true' [-Wpoin=
ter-bool-conversion]
>     1    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is un=
initialized when used within its own initialization [-Wuninitialized]
>     1    drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:56: =
warning: address of 'pipe_ctx->stream_res' will always evaluate to 'true' [=
-Wpointer-bool-conversion]
>     1    drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:31: =
warning: address of 'pipe_ctx->plane_res' will always evaluate to 'true' [-=
Wpointer-bool-conversion]
>     1    drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2690:=
53: warning: suggest braces around initialization of subobject [-Wmissing-b=
races]
>     1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:3=
42:53: warning: suggest braces around initialization of subobject [-Wmissin=
g-braces]
>     1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:1=
16:62: warning: suggest braces around initialization of subobject [-Wmissin=
g-braces]
>     1    drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:297=
:41: warning: suggest braces around initialization of subobject [-Wmissing-=
braces]
>     1    drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8558=
:43: warning: suggest braces around initialization of subobject [-Wmissing-=
braces]
>     1    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' i=
s uninitialized when used within its own initialization [-Wuninitialized]
>     1    drivers/android/binderfs.c:657:41: warning: suggest braces aroun=
d initialization of subobject [-Wmissing-braces]
>     1    cc1: all warnings being treated as errors
>     1    /tmp/ccgeLqJj.s:18191: Warning: using r15 results in unpredictab=
le behaviour
>     1    /tmp/ccgeLqJj.s:18119: Warning: using r15 results in unpredictab=
le behaviour
>     1    .config:1167:warning: override: UNWINDER_GUESS changes choice st=
ate
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
> 32r2el_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> 32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warni=
ng, 0 section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 21 warnings, 0 sectio=
n mismatches
>
> Warnings:
>     /tmp/ccgeLqJj.s:18119: Warning: using r15 results in unpredictable be=
haviour
>     /tmp/ccgeLqJj.s:18191: Warning: using r15 results in unpredictable be=
haviour
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
>     drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning: cast from pointe=
r to integer of different size [-Wpointer-to-int-cast]
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 81 warnings, 0 se=
ction mismatches
>
> Warnings:
>     fs/proc/base.c:1985:35: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     mm/shmem.c:2745:35: warning: variable 'shmem_falloc_waitq' is uniniti=
alized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/namei.c:1736:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
>     fs/namei.c:3213:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
>     2 warnings generated.
>     drivers/android/binderfs.c:657:41: warning: suggest braces around ini=
tialization of subobject [-Wmissing-braces]
>     1 warning generated.
>     drivers/hwtracing/coresight/coresight-cti-sysfs.c:948:11: warning: ad=
dress of array 'grp->sig_types' will always evaluate to 'true' [-Wpointer-b=
ool-conversion]
>     1 warning generated.
>     fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized wh=
en used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/cifs/readdir.c:84:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is uniniti=
alized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitializ=
ed when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/btrfs/backref.c:394:30: warning: suggest braces around initializat=
ion of subobject [-Wmissing-braces]
>     1 warning generated.
>     net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized whe=
n used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/nfs/dir.c:464:34: warning: variable 'wq' is uninitialized when use=
d within its own initialization [-Wuninitialized]
>     fs/nfs/dir.c:1638:34: warning: variable 'wq' is uninitialized when us=
ed within its own initialization [-Wuninitialized]
>     2 warnings generated.
>     drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest brace=
s around initialization of subobject [-Wmissing-braces]
>     1 warning generated.
>     drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake' is=
 uninitialized when used within its own initialization [-Wuninitialized]
>     drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake' is=
 uninitialized when used within its own initialization [-Wuninitialized]
>     2 warnings generated.
>     drivers/net/ethernet/amazon/ena/ena_netdev.c:310:38: warning: suggest=
 braces around initialization of subobject [-Wmissing-braces]
>     1 warning generated.
>     drivers/net/usb/lan78xx.c:2659:34: warning: variable 'unlink_wakeup' =
is uninitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7: warning: variabl=
e 'rate_idx' is used uninitialized whenever 'if' condition is false [-Wsome=
times-uninitialized]
>     drivers/net/wireless/ath/ath11k/debugfs_sta.c:184:13: warning: variab=
le 'rate_idx' is used uninitialized whenever 'if' condition is false [-Wsom=
etimes-uninitialized]
>     drivers/net/wireless/ath/ath11k/debugfs_sta.c:175:7: warning: variabl=
e 'rate_idx' is used uninitialized whenever 'if' condition is false [-Wsome=
times-uninitialized]
>     drivers/net/wireless/ath/ath11k/debugfs_sta.c:139:13: note: initializ=
e the variable 'rate_idx' to silence this warning
>     3 warnings generated.
>     drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
>     drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
>     2 warnings generated.
>     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>     1 warning generated.
>     drivers/scsi/lpfc/lpfc_sli.c:11910:34: warning: variable 'done_q' is =
uninitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/scsi/lpfc/lpfc_scsi.c:4728:34: warning: variable 'waitq' is u=
ninitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>     1 warning generated.
>     drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8558:43: =
warning: suggest braces around initialization of subobject [-Wmissing-brace=
s]
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>     1 warning generated.
>     drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:116:62=
: warning: suggest braces around initialization of subobject [-Wmissing-bra=
ces]
>     drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:342:53=
: warning: suggest braces around initialization of subobject [-Wmissing-bra=
ces]
>     2 warnings generated.
>     drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:297:41: =
warning: suggest braces around initialization of subobject [-Wmissing-brace=
s]
>     1 warning generated.
>     drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:31: warni=
ng: address of 'pipe_ctx->plane_res' will always evaluate to 'true' [-Wpoin=
ter-bool-conversion]
>     drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:56: warni=
ng: address of 'pipe_ctx->stream_res' will always evaluate to 'true' [-Wpoi=
nter-bool-conversion]
>     2 warnings generated.
>     drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2690:53: w=
arning: suggest braces around initialization of subobject [-Wmissing-braces=
]
>     drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2692:80: w=
arning: suggest braces around initialization of subobject [-Wmissing-braces=
]
>     drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2692:80: w=
arning: suggest braces around initialization of subobject [-Wmissing-braces=
]
>     3 warnings generated.
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section mi=
smatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section m=
ismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> ar7_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section=
 mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches
>
> Warnings:
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>
> -------------------------------------------------------------------------=
-------
> aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 =
section mismatches
>
> Warnings:
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>
> -------------------------------------------------------------------------=
-------
> assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> ath25_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> ath79_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> axs103_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> axs103_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> bcm47xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> bcm63xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> bigsur_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> bmips_be_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> bmips_stb_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> capcella_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning,=
 0 section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> ci20_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> cm_x300_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 sec=
tion mismatches
>
> Errors:
>     ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] undefine=
d!
>
> Warnings:
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>
> -------------------------------------------------------------------------=
-------
> cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> cobalt_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> db1xxx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> decstation_64_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning,=
 0 section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> decstation_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning=
, 0 section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 18 warnings, 0 secti=
on mismatches
>
> Warnings:
>     fs/btrfs/backref.c:394:30: warning: suggest braces around initializat=
ion of subobject [-Wmissing-braces]
>     1 warning generated.
>     drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest brace=
s around initialization of subobject [-Wmissing-braces]
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:=
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define of=
 a different macro [-Wheader-guard]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches
>
> -------------------------------------------------------------------------=
-------
> defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches
>
> Warnings:
>     kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=80=
=99 declared =E2=80=98static=E2=80=99 but never defined [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 erro=
rs, 1 warning, 0 section mismatches
>
> Warnings:
>     kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=80=
=99 declared =E2=80=98static=E2=80=99 but never defined [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 erro=
rs, 1 warning, 0 section mismatches
>
> Warnings:
>     kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=80=
=99 declared =E2=80=98static=E2=80=99 but never defined [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches
>
> Warnings:
>     kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=80=
=99 declared =E2=80=98static=E2=80=99 but never defined [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> e55_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section=
 mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> em_x270_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 sec=
tion mismatches
>
> Errors:
>     ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] undefine=
d!
>
> Warnings:
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>
> -------------------------------------------------------------------------=
-------
> ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 14 errors, 12 warnings=
, 0 section mismatches
>
> Errors:
>     sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of funct=
ion =E2=80=98regmap_ac97_default_volatile=E2=80=99 [-Werror=3Dimplicit-func=
tion-declaration]
>     sound/soc/codecs/wm9712.c:84:21: error: variable =E2=80=98wm9712_regm=
ap_config=E2=80=99 has initializer but incomplete type
>     sound/soc/codecs/wm9712.c:85:3: error: =E2=80=98const struct regmap_c=
onfig=E2=80=99 has no member named =E2=80=98reg_bits=E2=80=99
>     sound/soc/codecs/wm9712.c:86:3: error: =E2=80=98const struct regmap_c=
onfig=E2=80=99 has no member named =E2=80=98reg_stride=E2=80=99
>     sound/soc/codecs/wm9712.c:87:3: error: =E2=80=98const struct regmap_c=
onfig=E2=80=99 has no member named =E2=80=98val_bits=E2=80=99
>     sound/soc/codecs/wm9712.c:88:3: error: =E2=80=98const struct regmap_c=
onfig=E2=80=99 has no member named =E2=80=98max_register=E2=80=99
>     sound/soc/codecs/wm9712.c:89:3: error: =E2=80=98const struct regmap_c=
onfig=E2=80=99 has no member named =E2=80=98cache_type=E2=80=99
>     sound/soc/codecs/wm9712.c:91:3: error: =E2=80=98const struct regmap_c=
onfig=E2=80=99 has no member named =E2=80=98volatile_reg=E2=80=99
>     sound/soc/codecs/wm9712.c:93:3: error: =E2=80=98const struct regmap_c=
onfig=E2=80=99 has no member named =E2=80=98reg_defaults=E2=80=99
>     sound/soc/codecs/wm9712.c:94:3: error: =E2=80=98const struct regmap_c=
onfig=E2=80=99 has no member named =E2=80=98num_reg_defaults=E2=80=99
>     sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of func=
tion =E2=80=98regmap_init_ac97=E2=80=99; did you mean =E2=80=98memmap_init_=
zone=E2=80=99? [-Werror=3Dimplicit-function-declaration]
>     sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of funct=
ion =E2=80=98snd_soc_component_init_regmap=E2=80=99; did you mean =E2=80=98=
snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-declaratio=
n]
>     sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of funct=
ion =E2=80=98snd_soc_component_exit_regmap=E2=80=99; did you mean =E2=80=98=
snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-declaratio=
n]
>     sound/soc/codecs/wm9712.c:84:35: error: storage size of =E2=80=98wm97=
12_regmap_config=E2=80=99 isn=E2=80=99t known
>
> Warnings:
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     sound/soc/codecs/wm9712.c:85:14: warning: excess elements in struct i=
nitializer
>     sound/soc/codecs/wm9712.c:86:16: warning: excess elements in struct i=
nitializer
>     sound/soc/codecs/wm9712.c:87:14: warning: excess elements in struct i=
nitializer
>     sound/soc/codecs/wm9712.c:88:18: warning: excess elements in struct i=
nitializer
>     sound/soc/codecs/wm9712.c:89:16: warning: excess elements in struct i=
nitializer
>     sound/soc/codecs/wm9712.c:91:18: warning: excess elements in struct i=
nitializer
>     sound/soc/codecs/wm9712.c:93:18: warning: excess elements in struct i=
nitializer
>     include/linux/kernel.h:47:25: warning: excess elements in struct init=
ializer
>     sound/soc/codecs/wm9712.c:653:10: warning: assignment to =E2=80=98str=
uct regmap *=E2=80=99 from =E2=80=98int=E2=80=99 makes pointer from integer=
 without a cast [-Wint-conversion]
>     cc1: some warnings being treated as errors
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
> footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> fuloong2e_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> gcw0_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> gpr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section=
 mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> haps_hs_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 w=
arning, 0 section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> hsdk_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section=
 mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
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
> integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> ip22_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> ip27_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 2 warnings, 0 sect=
ion mismatches
>
> Errors:
>     arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=3D =
width of type [-Werror=3Dshift-count-overflow]
>     arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=3D =
width of type [-Werror=3Dshift-count-overflow]
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: all warnings being treated as errors
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> ip28_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> ip32_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> jazz_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> jmr3927_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> lasat_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> lemote2f_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> loongson1b_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> loongson1c_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> loongson3_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
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
> lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> malta_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> malta_kvm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warnin=
g, 0 section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warnin=
g, 0 section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> maltaaprp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> maltasmvp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning,=
 0 section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> maltaup_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> markeins_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning,=
 0 section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> mpc30x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> msp71xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> mtx1_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 s=
ection mismatches
>
> Warnings:
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>
> -------------------------------------------------------------------------=
-------
> multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 s=
ection mismatches
>
> Warnings:
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>
> -------------------------------------------------------------------------=
-------
> multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PASS,=
 0 errors, 4 warnings, 0 section mismatches
>
> Warnings:
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>
> -------------------------------------------------------------------------=
-------
> multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=80=
=94 PASS, 0 errors, 4 warnings, 0 section mismatches
>
> Warnings:
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>
> -------------------------------------------------------------------------=
-------
> multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors, =
4 warnings, 0 section mismatches
>
> Warnings:
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>
> -------------------------------------------------------------------------=
-------
> multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 war=
nings, 0 section mismatches
>
> Warnings:
>     net/sched/cls_flower.c:331:1: warning: the frame size of 1032 bytes i=
s larger than 1024 bytes [-Wframe-larger-than=3D]
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: War=
ning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus uni=
t address format error, expected "40000010"
>     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Warning=
 (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C address=
 must be less than 10-bits, got "0x40000010"
>
> -------------------------------------------------------------------------=
-------
> mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
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
> neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning=
, 0 section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
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
> omega2p_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> pic32mzda_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> pistachio_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning=
, 0 section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 3 errors, 6 warnings, 0 sectio=
n mismatches
>
> Errors:
>     ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9713.ko] undefine=
d!
>     ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko] undefine=
d!
>     ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9705.ko] undefine=
d!
>
> Warnings:
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9705
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9713
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9705
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9713
>
> -------------------------------------------------------------------------=
-------
> qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> qi_lb60_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> rb532_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> rm200_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches
>
> -------------------------------------------------------------------------=
-------
> rt305x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wc=
pp]
>     <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [=
-Wcpp]
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>     <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wc=
pp]
>     <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [=
-Wcpp]
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>
> -------------------------------------------------------------------------=
-------
> s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches
>
> -------------------------------------------------------------------------=
-------
> tb0219_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> tb0226_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> tb0287_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches
>
> -------------------------------------------------------------------------=
-------
> tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section mi=
smatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section =
mismatches
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section mis=
matches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches
>
> Warnings:
>     .config:1167:warning: override: UNWINDER_GUESS changes choice state
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section m=
ismatches
>
> -------------------------------------------------------------------------=
-------
> trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches
>
> -------------------------------------------------------------------------=
-------
> vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches
>
> -------------------------------------------------------------------------=
-------
> viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches
>
> -------------------------------------------------------------------------=
-------
> vocore2_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> workpad_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
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
> xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> xway_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches
>
> Errors:
>     mm/memory.c:1523:41: error: implicit declaration of function =E2=80=
=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99? [-Werror=
=3Dimplicit-function-declaration]
>
> Warnings:
>     cc1: some warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches
>
> -------------------------------------------------------------------------=
-------
> zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches
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
d/clang-built-linux/5e57d0a2.1c69fb81.b44cf.2a50%40mx.google.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnVh0xSrrQ%3DRkRSYOVHYD0-i%2B%3DE%3DRsg6JjdG9%3D4r7=
BN%2Bw%40mail.gmail.com.
