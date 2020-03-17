Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUFPYXZQKGQERVYKORQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E5A1891C3
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 00:05:53 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id s10sf14319397oie.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 16:05:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584486352; cv=pass;
        d=google.com; s=arc-20160816;
        b=dJSnGQPW0XmPqiKblVhq/RI4It7wh4b00UtuZrQ8e4nzlVolrVSVaOprw/92lNWgyU
         TXXQ2W1Rln9l8UIKsTMyUrz8IvaLJO5rkfuTg9eURwa4jtUHKBEGHD4ZqsijduQeXBvE
         wySOpioB0yx7rUPnDfstsr4Gs34RoEoJmUR+KsEyql3JQ7/3SsLJcUqz8BVIlvOg06/B
         YBEC1urPCLKb4i7XC2dOA1QPACKMa9aA0hQO3HUNHFl69wxMwJ7jNvGNjE20GIcvZHGo
         l+7qF0YzsCczFvkz+1DAEKmMKw47mFoOBF7ROmO+/nkRoBR/ZLIZHpyobqifOa9CUkrw
         z89g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rD8x4dv2KNLCjVvHclp8e5rwUgsS5VXbqko+33vGQsE=;
        b=yNxmpLILQfEKHhKkZYehRm677tSylq1bY9tfF8mUG1OMUvxP6PvAgBFtNGmwD0kdOw
         8h7/ZDDhVB7YOGPpRbuEsCa/326WlE61pCon0ZC6/eI0JSR3j4q/fMmxlchd3ZB/116+
         n7fwrNtiFlKo6y/IZjQ3aWRAUb9vijvRwxQTqTUSL/qcHGIcVxg3d9TIp1M3USzV9+O9
         8khwIcXHnEVcarJZwSvNm+82e1/KmlilwstxAyRnE4KAHQwgkRKffGYKJwXhmJ2ZNr/q
         7UgAjeYVuhK4KfmLAmsey8bA2pkKSq3J0T54nYkFKoDTbTrqrHBUN17/cFkFB8vp96+d
         C10g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M7lbcYC2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rD8x4dv2KNLCjVvHclp8e5rwUgsS5VXbqko+33vGQsE=;
        b=qbjPIqmkZKsLlXaA7qmX0y6Y340uTA2V8WHIb6n5tsu+hSysMTRlKrh40IpstWhgH+
         G/RDVBOc6tRIiM9S6zP1W5EZ63F4pk8/rDY5/dHlEJfJN3R8dZTR2yvJ1OaKoEUy3Xit
         HgEc78Y7KiByUZ1k8oXA2f9ZCZ4sV6fZyw7icQQHzgaPXcMkzwxctg+HKgvhufknx7Zd
         nYwP52SVBu3yV8Y1S2gwOLhMPT2Dbkaz6uVuF/8p3WAzLyZQP2IG5IbhoSzGbYFzAjqK
         24W9x73ognT1tI7R5EetLqsahuUSxR6doTkBEGTYl74BaSRnDRafrMIedUj72xFer9el
         RL1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rD8x4dv2KNLCjVvHclp8e5rwUgsS5VXbqko+33vGQsE=;
        b=eO+iCbwNcZrXMXRLpKiV0dllUQ64yKemMxOYl04NfOyp4kTrLTcg0tc/gmhYTw04/O
         GDaio4dlOg0MpfsYLHnsUjVmLw1NhIHVI/BY92tv61HC5N9sh+CNJeCJ5IU3iROjd4ru
         96c2JNp6uPSl4VgvJzKbeMHXgKFGuar82EXmCTr574lhG/wRyO4cJ7KTsiCuCJP9/fVp
         HOgsTRj+kepIU7xuULuD8WJYhQMos89dr8GYMZlW2nBk7qDP0YUC4RFJj5Rg20vXmqMz
         CLxnKvBSutl3ojsObpkgIgr6vvW9pHtwXkeN6hKG04iFmfLhyIa8atbLNL8oj53yN91Q
         GOIw==
X-Gm-Message-State: ANhLgQ3m0mw10Hmf1cC+zH1U5wbhpF26A03FNp1wH1HG9a+NZVAKFGiR
	5xQZB8F6WIDqoZoTWfg9/x8=
X-Google-Smtp-Source: ADFU+vsFVxPq3k2XzxVaaP9DX4oL94i9+smAnv2AGD/vD2EGwYygbz4upl/UL3h3kaW2OC6V20nuDQ==
X-Received: by 2002:aca:a997:: with SMTP id s145mr993492oie.140.1584486352326;
        Tue, 17 Mar 2020 16:05:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3985:: with SMTP id y5ls2427918otb.7.gmail; Tue, 17 Mar
 2020 16:05:51 -0700 (PDT)
X-Received: by 2002:a9d:171e:: with SMTP id i30mr1441320ota.327.1584486351457;
        Tue, 17 Mar 2020 16:05:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584486351; cv=none;
        d=google.com; s=arc-20160816;
        b=QAYgcJbj2X4Cxdlo7NoQrp06lxUFe+Czp19YgQgaFcMizEdnGzC6IEiOCGGdGz2BYf
         mYXWkowWH+4Y72ZQQkc7lBL6Hl291umOVI8a/uNI9W2NZa/6jgi8xHlqMlLQE2IYQsHZ
         00rtRNmVzEubqT+iH2t/E51OE1Zm0DKc20OyGsBK49ah/FqmHKum0vT5tEYMHGtKaL1r
         TgooFFBT/YOW2GfeoCRQQA6LZpKRJDENUzshlBxzFUWb1QXzmXy5QuYuvEhO5Ve+vTbm
         6HvuhoE84oSkoLXvdnIzJIa9tt75vPiZ7B6fOpYlWCGaz0+CqfSI+gYH4SEiD/5Vy42a
         c/ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=c39kXAVfZoS8XFaygOCR7tSTx2qnsEy7PP7F1Vr1jqI=;
        b=ep8Q/GYMT5qMDJGspOXwsFxADYVFJECWpTU3z6GH6PDEgC1RfeR342W1ceH0FrUOJM
         /lFvFekxKcQQx8B4ze1QfXj2WLgGNfFRdSYw/me95ltl68G3uiHJzATl0caav0wXJ5x5
         tnU5oTEtRtwcRczbhHG4yjZGYzh/CWJ/xYYlY8u8FYmR9sDvz2XIz/Jp/rjXswUzbI28
         ykRw8N5PJw46mePAqpfeLvhS/15PSFiu5c0Xl1nwicR2eBjn+W9ytgzqT2NC7ey/Fwpw
         HTjCK/yyGnKvNA4yPkn7dneEQziO92Gqa3WB/RP/zo/Sbv2vRAOgQIbBcQT89v/ME3MM
         e19w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M7lbcYC2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d188si345888oig.0.2020.03.17.16.05.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 16:05:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id f206so1775906pfa.10
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 16:05:50 -0700 (PDT)
X-Received: by 2002:a63:4453:: with SMTP id t19mr1413222pgk.381.1584486347326;
 Tue, 17 Mar 2020 16:05:47 -0700 (PDT)
MIME-Version: 1.0
References: <5e70bc06.1c69fb81.5a1f8.bbb4@mx.google.com>
In-Reply-To: <5e70bc06.1c69fb81.5a1f8.bbb4@mx.google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Mar 2020 16:05:35 -0700
Message-ID: <CAKwvOd=HyT9cQ1Zco1z-1k-AL7nF5mDH53JkuajUWF_eN-BFUw@mail.gmail.com>
Subject: Re: next/master build: 329 builds: 20 failed, 309 passed, 65 errors,
 1332 warnings (next-20200317)
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: "kernelci.org bot" <bot@kernelci.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=M7lbcYC2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

Team, I'm cutting down the number of builds tested here:
https://github.com/kernelci/kernelci-core/pull/340

On Tue, Mar 17, 2020 at 5:01 AM kernelci.org bot <bot@kernelci.org> wrote:
>
> next/master build: 329 builds: 20 failed, 309 passed, 65 errors, 1332 war=
nings (next-20200317)
>
> Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/=
next-20200317/
>
> Tree: next
> Branch: master
> Git Describe: next-20200317
> Git Commit: ec947d0be5f959fff44d59161401515a98a837f3
> Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.=
git
> Built: 7 unique architectures
>
> Build Failures Detected:
>
> arm64:
>     allmodconfig: (clang-9) FAIL
>     allmodconfig: (gcc-8) FAIL
>
> arm:
>     allmodconfig: (clang-9) FAIL
>     cm_x300_defconfig: (clang-9) FAIL
>     em_x270_defconfig: (clang-9) FAIL
>     eseries_pxa_defconfig: (clang-9) FAIL
>     pxa_defconfig: (clang-9) FAIL
>     rpc_defconfig: (clang-9) FAIL
>     vf610m4_defconfig: (clang-9) FAIL
>     allmodconfig: (gcc-8) FAIL
>     cm_x300_defconfig: (gcc-8) FAIL
>     em_x270_defconfig: (gcc-8) FAIL
>     eseries_pxa_defconfig: (gcc-8) FAIL
>     pxa_defconfig: (gcc-8) FAIL
>     vf610m4_defconfig: (gcc-8) FAIL
>
> mips:
>     ip27_defconfig: (gcc-8) FAIL
>     mtx1_defconfig: (gcc-8) FAIL
>
> riscv:
>     allnoconfig: (gcc-8) FAIL
>     tinyconfig: (gcc-8) FAIL
>
> x86_64:
>     x86_64_defconfig+kvm_guest: (clang-9) FAIL
>
> Errors and Warnings Detected:
>
> arc:
>     allnoconfig (gcc-8): 1 warning
>     axs103_defconfig (gcc-8): 1 warning
>     axs103_smp_defconfig (gcc-8): 1 warning
>     haps_hs_defconfig (gcc-8): 1 warning
>     haps_hs_smp_defconfig (gcc-8): 1 warning
>     haps_hs_smp_defconfig (gcc-8): 1 warning
>     hsdk_defconfig (gcc-8): 1 warning
>     nsimosci_hs_defconfig (gcc-8): 1 warning
>     nsimosci_hs_smp_defconfig (gcc-8): 1 warning
>     tinyconfig (gcc-8): 1 warning
>     vdk_hs38_defconfig (gcc-8): 1 warning
>     vdk_hs38_smp_defconfig (gcc-8): 1 warning
>
> arm64:
>     allmodconfig (clang-9): 4 errors, 11 warnings
>     allmodconfig (gcc-8): 4 errors, 2 warnings
>     allnoconfig (gcc-8): 1 warning
>     defconfig (clang-9): 36 warnings
>     defconfig (gcc-8): 36 warnings
>     defconfig (gcc-8): 36 warnings
>     defconfig (gcc-8): 36 warnings
>     defconfig (gcc-8): 37 warnings
>     tinyconfig (gcc-8): 1 warning
>
> arm:
>     allmodconfig (gcc-8): 4 errors, 20 warnings
>     allmodconfig (clang-9): 4 errors, 37 warnings
>     allnoconfig (gcc-8): 1 warning
>     am200epdkit_defconfig (clang-9): 2 warnings
>     am200epdkit_defconfig (gcc-8): 1 warning
>     aspeed_g4_defconfig (gcc-8): 5 warnings
>     aspeed_g4_defconfig (clang-9): 7 warnings
>     aspeed_g5_defconfig (gcc-8): 5 warnings
>     aspeed_g5_defconfig (clang-9): 6 warnings
>     assabet_defconfig (clang-9): 3 warnings
>     assabet_defconfig (gcc-8): 1 warning
>     at91_dt_defconfig (gcc-8): 1 warning
>     at91_dt_defconfig (clang-9): 2 warnings
>     axm55xx_defconfig (gcc-8): 1 warning
>     axm55xx_defconfig (clang-9): 2 warnings
>     badge4_defconfig (gcc-8): 1 warning
>     badge4_defconfig (clang-9): 3 warnings
>     bcm2835_defconfig (gcc-8): 1 warning
>     bcm2835_defconfig (clang-9): 2 warnings
>     cerfcube_defconfig (clang-9): 3 warnings
>     cerfcube_defconfig (gcc-8): 1 warning
>     clps711x_defconfig (clang-9): 2 warnings
>     clps711x_defconfig (gcc-8): 1 warning
>     cm_x2xx_defconfig (gcc-8): 1 warning
>     cm_x2xx_defconfig (clang-9): 3 warnings
>     cm_x300_defconfig (clang-9): 1 error, 5 warnings
>     cm_x300_defconfig (gcc-8): 1 error, 3 warnings
>     cns3420vb_defconfig (gcc-8): 1 warning
>     cns3420vb_defconfig (clang-9): 2 warnings
>     colibri_pxa270_defconfig (clang-9): 2 warnings
>     colibri_pxa270_defconfig (gcc-8): 1 warning
>     colibri_pxa300_defconfig (gcc-8): 1 warning
>     colibri_pxa300_defconfig (clang-9): 3 warnings
>     collie_defconfig (clang-9): 3 warnings
>     collie_defconfig (gcc-8): 1 warning
>     corgi_defconfig (gcc-8): 1 warning
>     corgi_defconfig (clang-9): 2 warnings
>     davinci_all_defconfig (gcc-8): 1 warning
>     davinci_all_defconfig (clang-9): 2 warnings
>     dove_defconfig (clang-9): 2 warnings
>     dove_defconfig (gcc-8): 1 warning
>     ebsa110_defconfig (gcc-8): 1 warning
>     ebsa110_defconfig (clang-9): 3 warnings
>     efm32_defconfig (clang-9): 2 warnings
>     efm32_defconfig (gcc-8): 1 warning
>     em_x270_defconfig (gcc-8): 1 error, 3 warnings
>     em_x270_defconfig (clang-9): 1 error, 5 warnings
>     ep93xx_defconfig (gcc-8): 1 warning
>     ep93xx_defconfig (clang-9): 3 warnings
>     eseries_pxa_defconfig (gcc-8): 14 errors, 13 warnings
>     eseries_pxa_defconfig (clang-9): 5 errors, 5 warnings
>     exynos_defconfig (clang-9): 2 warnings
>     exynos_defconfig (gcc-8): 1 warning
>     ezx_defconfig (gcc-8): 1 warning
>     ezx_defconfig (clang-9): 2 warnings
>     footbridge_defconfig (clang-9): 3 warnings
>     footbridge_defconfig (gcc-8): 1 warning
>     gemini_defconfig (clang-9): 2 warnings
>     gemini_defconfig (gcc-8): 1 warning
>     h3600_defconfig (clang-9): 2 warnings
>     h3600_defconfig (gcc-8): 1 warning
>     h5000_defconfig (gcc-8): 1 warning
>     h5000_defconfig (clang-9): 3 warnings
>     hackkit_defconfig (clang-9): 3 warnings
>     hackkit_defconfig (gcc-8): 1 warning
>     hisi_defconfig (gcc-8): 1 warning
>     hisi_defconfig (clang-9): 2 warnings
>     imote2_defconfig (clang-9): 2 warnings
>     imote2_defconfig (gcc-8): 1 warning
>     imx_v4_v5_defconfig (clang-9): 2 warnings
>     imx_v4_v5_defconfig (gcc-8): 1 warning
>     imx_v6_v7_defconfig (clang-9): 2 warnings
>     imx_v6_v7_defconfig (gcc-8): 1 warning
>     integrator_defconfig (gcc-8): 2 warnings
>     integrator_defconfig (clang-9): 3 warnings
>     iop32x_defconfig (gcc-8): 1 warning
>     iop32x_defconfig (clang-9): 3 warnings
>     ixp4xx_defconfig (clang-9): 3 warnings
>     ixp4xx_defconfig (gcc-8): 1 warning
>     jornada720_defconfig (gcc-8): 1 warning
>     jornada720_defconfig (clang-9): 3 warnings
>     keystone_defconfig (gcc-8): 1 warning
>     keystone_defconfig (clang-9): 2 warnings
>     lart_defconfig (clang-9): 3 warnings
>     lart_defconfig (gcc-8): 1 warning
>     lpc18xx_defconfig (clang-9): 2 warnings
>     lpc18xx_defconfig (gcc-8): 1 warning
>     lpc32xx_defconfig (gcc-8): 1 warning
>     lpc32xx_defconfig (clang-9): 2 warnings
>     lpd270_defconfig (clang-9): 3 warnings
>     lpd270_defconfig (gcc-8): 1 warning
>     lubbock_defconfig (gcc-8): 1 warning
>     lubbock_defconfig (clang-9): 3 warnings
>     magician_defconfig (gcc-8): 1 warning
>     magician_defconfig (clang-9): 2 warnings
>     mainstone_defconfig (gcc-8): 1 warning
>     mainstone_defconfig (clang-9): 3 warnings
>     milbeaut_m10v_defconfig (gcc-8): 1 warning
>     milbeaut_m10v_defconfig (clang-9): 4 warnings
>     mini2440_defconfig (gcc-8): 1 warning
>     mini2440_defconfig (clang-9): 3 warnings
>     mmp2_defconfig (gcc-8): 1 warning
>     mmp2_defconfig (clang-9): 2 warnings
>     moxart_defconfig (clang-9): 2 warnings
>     moxart_defconfig (gcc-8): 1 warning
>     mps2_defconfig (clang-9): 2 warnings
>     mps2_defconfig (gcc-8): 1 warning
>     multi_v4t_defconfig (gcc-8): 2 warnings
>     multi_v4t_defconfig (clang-9): 4 warnings
>     multi_v5_defconfig (clang-9): 6 warnings
>     multi_v5_defconfig (gcc-8): 5 warnings
>     multi_v7_defconfig (clang-9): 55 warnings
>     multi_v7_defconfig (gcc-8): 52 warnings
>     multi_v7_defconfig (gcc-8): 52 warnings
>     multi_v7_defconfig (gcc-8): 52 warnings
>     multi_v7_defconfig (gcc-8): 52 warnings
>     multi_v7_defconfig (gcc-8): 53 warnings
>     mv78xx0_defconfig (clang-9): 2 warnings
>     mv78xx0_defconfig (gcc-8): 1 warning
>     mvebu_v5_defconfig (gcc-8): 1 warning
>     mvebu_v5_defconfig (clang-9): 2 warnings
>     mvebu_v7_defconfig (gcc-8): 1 warning
>     mvebu_v7_defconfig (clang-9): 2 warnings
>     mxs_defconfig (gcc-8): 1 warning
>     mxs_defconfig (clang-9): 3 warnings
>     neponset_defconfig (gcc-8): 1 warning
>     neponset_defconfig (clang-9): 3 warnings
>     netwinder_defconfig (clang-9): 3 warnings
>     netwinder_defconfig (gcc-8): 1 warning
>     nhk8815_defconfig (gcc-8): 1 warning
>     nhk8815_defconfig (clang-9): 2 warnings
>     omap1_defconfig (clang-9): 5 warnings
>     omap1_defconfig (gcc-8): 1 warning
>     omap2plus_defconfig (gcc-8): 1 warning
>     omap2plus_defconfig (clang-9): 2 warnings
>     orion5x_defconfig (clang-9): 2 warnings
>     orion5x_defconfig (gcc-8): 1 warning
>     oxnas_v6_defconfig (clang-9): 4 warnings
>     oxnas_v6_defconfig (gcc-8): 1 warning
>     palmz72_defconfig (clang-9): 2 warnings
>     palmz72_defconfig (gcc-8): 1 warning
>     pcm027_defconfig (clang-9): 2 warnings
>     pcm027_defconfig (gcc-8): 1 warning
>     pleb_defconfig (clang-9): 3 warnings
>     pleb_defconfig (gcc-8): 1 warning
>     prima2_defconfig (clang-9): 2 warnings
>     prima2_defconfig (gcc-8): 1 warning
>     pxa168_defconfig (clang-9): 2 warnings
>     pxa168_defconfig (gcc-8): 1 warning
>     pxa255-idp_defconfig (clang-9): 3 warnings
>     pxa255-idp_defconfig (gcc-8): 1 warning
>     pxa3xx_defconfig (clang-9): 2 warnings
>     pxa3xx_defconfig (gcc-8): 1 warning
>     pxa910_defconfig (clang-9): 2 warnings
>     pxa910_defconfig (gcc-8): 1 warning
>     pxa_defconfig (clang-9): 1 error, 8 warnings
>     pxa_defconfig (gcc-8): 3 errors, 7 warnings
>     qcom_defconfig (clang-9): 2 warnings
>     qcom_defconfig (gcc-8): 1 warning
>     realview_defconfig (clang-9): 2 warnings
>     realview_defconfig (gcc-8): 1 warning
>     rpc_defconfig (gcc-8): 1 warning
>     rpc_defconfig (clang-9): 10 errors
>     s3c2410_defconfig (clang-9): 3 warnings
>     s3c2410_defconfig (gcc-8): 1 warning
>     s3c6400_defconfig (gcc-8): 1 warning
>     s3c6400_defconfig (clang-9): 2 warnings
>     s5pv210_defconfig (gcc-8): 1 warning
>     s5pv210_defconfig (clang-9): 2 warnings
>     sama5_defconfig (gcc-8): 1 warning
>     sama5_defconfig (clang-9): 2 warnings
>     shannon_defconfig (gcc-8): 1 warning
>     shannon_defconfig (clang-9): 3 warnings
>     shmobile_defconfig (gcc-8): 1 warning
>     shmobile_defconfig (clang-9): 2 warnings
>     simpad_defconfig (gcc-8): 1 warning
>     simpad_defconfig (clang-9): 2 warnings
>     socfpga_defconfig (gcc-8): 1 warning
>     socfpga_defconfig (clang-9): 2 warnings
>     spear13xx_defconfig (gcc-8): 1 warning
>     spear13xx_defconfig (clang-9): 2 warnings
>     spear3xx_defconfig (clang-9): 3 warnings
>     spear3xx_defconfig (gcc-8): 1 warning
>     spear6xx_defconfig (gcc-8): 1 warning
>     spear6xx_defconfig (clang-9): 3 warnings
>     spitz_defconfig (clang-9): 2 warnings
>     spitz_defconfig (gcc-8): 1 warning
>     stm32_defconfig (gcc-8): 1 warning
>     stm32_defconfig (clang-9): 2 warnings
>     sunxi_defconfig (clang-9): 49 warnings
>     sunxi_defconfig (gcc-8): 48 warnings
>     tango4_defconfig (gcc-8): 1 warning
>     tango4_defconfig (clang-9): 2 warnings
>     tct_hammer_defconfig (clang-9): 3 warnings
>     tct_hammer_defconfig (gcc-8): 1 warning
>     tegra_defconfig (gcc-8): 1 warning
>     tegra_defconfig (clang-9): 2 warnings
>     tinyconfig (gcc-8): 1 warning
>     trizeps4_defconfig (clang-9): 2 warnings
>     trizeps4_defconfig (gcc-8): 1 warning
>     u300_defconfig (clang-9): 2 warnings
>     u300_defconfig (gcc-8): 1 warning
>     u8500_defconfig (clang-9): 2 warnings
>     u8500_defconfig (gcc-8): 1 warning
>     versatile_defconfig (clang-9): 3 warnings
>     versatile_defconfig (gcc-8): 1 warning
>     vexpress_defconfig (gcc-8): 1 warning
>     vexpress_defconfig (clang-9): 2 warnings
>     vf610m4_defconfig (gcc-8): 4 errors, 6 warnings
>     vf610m4_defconfig (clang-9): 2 errors, 2 warnings
>     viper_defconfig (gcc-8): 1 warning
>     viper_defconfig (clang-9): 3 warnings
>     vt8500_v6_v7_defconfig (gcc-8): 1 warning
>     vt8500_v6_v7_defconfig (clang-9): 2 warnings
>     xcep_defconfig (clang-9): 3 warnings
>     xcep_defconfig (gcc-8): 1 warning
>     zeus_defconfig (clang-9): 3 warnings
>     zeus_defconfig (gcc-8): 1 warning
>     zx_defconfig (gcc-8): 1 warning
>     zx_defconfig (clang-9): 2 warnings
>
> i386:
>     allnoconfig (gcc-8): 1 warning
>     i386_defconfig (gcc-8): 1 warning
>     i386_defconfig (gcc-8): 1 warning
>     tinyconfig (gcc-8): 1 warning
>
> mips:
>     32r2el_defconfig (gcc-8): 4 warnings
>     32r2el_defconfig (gcc-8): 5 warnings
>     allnoconfig (gcc-8): 2 warnings
>     ar7_defconfig (gcc-8): 3 warnings
>     ath25_defconfig (gcc-8): 3 warnings
>     ath79_defconfig (gcc-8): 3 warnings
>     bcm47xx_defconfig (gcc-8): 3 warnings
>     bcm63xx_defconfig (gcc-8): 2 warnings
>     bigsur_defconfig (gcc-8): 3 warnings
>     bmips_be_defconfig (gcc-8): 2 warnings
>     bmips_stb_defconfig (gcc-8): 2 warnings
>     capcella_defconfig (gcc-8): 3 warnings
>     cavium_octeon_defconfig (gcc-8): 3 warnings
>     ci20_defconfig (gcc-8): 2 warnings
>     cobalt_defconfig (gcc-8): 3 warnings
>     cu1000-neo_defconfig (gcc-8): 2 warnings
>     db1xxx_defconfig (gcc-8): 2 warnings
>     decstation_64_defconfig (gcc-8): 3 warnings
>     decstation_defconfig (gcc-8): 3 warnings
>     decstation_r4k_defconfig (gcc-8): 3 warnings
>     e55_defconfig (gcc-8): 3 warnings
>     fuloong2e_defconfig (gcc-8): 3 warnings
>     gcw0_defconfig (gcc-8): 2 warnings
>     gpr_defconfig (gcc-8): 3 warnings
>     ip22_defconfig (gcc-8): 3 warnings
>     ip27_defconfig (gcc-8): 2 errors, 2 warnings
>     ip28_defconfig (gcc-8): 3 warnings
>     ip32_defconfig (gcc-8): 3 warnings
>     jazz_defconfig (gcc-8): 3 warnings
>     jmr3927_defconfig (gcc-8): 2 warnings
>     lasat_defconfig (gcc-8): 2 warnings
>     lemote2f_defconfig (gcc-8): 3 warnings
>     loongson1b_defconfig (gcc-8): 3 warnings
>     loongson1c_defconfig (gcc-8): 3 warnings
>     loongson3_defconfig (gcc-8): 2 warnings
>     malta_defconfig (gcc-8): 3 warnings
>     malta_kvm_defconfig (gcc-8): 3 warnings
>     malta_kvm_guest_defconfig (gcc-8): 3 warnings
>     malta_qemu_32r6_defconfig (gcc-8): 4 warnings
>     maltaaprp_defconfig (gcc-8): 3 warnings
>     maltasmvp_defconfig (gcc-8): 3 warnings
>     maltasmvp_eva_defconfig (gcc-8): 3 warnings
>     maltaup_defconfig (gcc-8): 3 warnings
>     maltaup_xpa_defconfig (gcc-8): 3 warnings
>     markeins_defconfig (gcc-8): 3 warnings
>     mips_paravirt_defconfig (gcc-8): 3 warnings
>     mpc30x_defconfig (gcc-8): 3 warnings
>     msp71xx_defconfig (gcc-8): 3 warnings
>     mtx1_defconfig (gcc-8): 2 errors, 2 warnings
>     nlm_xlp_defconfig (gcc-8): 3 warnings
>     nlm_xlr_defconfig (gcc-8): 3 warnings
>     omega2p_defconfig (gcc-8): 2 warnings
>     pic32mzda_defconfig (gcc-8): 3 warnings
>     pistachio_defconfig (gcc-8): 3 warnings
>     pnx8335_stb225_defconfig (gcc-8): 3 warnings
>     qi_lb60_defconfig (gcc-8): 3 warnings
>     rb532_defconfig (gcc-8): 3 warnings
>     rbtx49xx_defconfig (gcc-8): 3 warnings
>     rm200_defconfig (gcc-8): 3 warnings
>     rt305x_defconfig (gcc-8): 3 warnings
>     sb1250_swarm_defconfig (gcc-8): 3 warnings
>     tb0219_defconfig (gcc-8): 3 warnings
>     tb0226_defconfig (gcc-8): 3 warnings
>     tb0287_defconfig (gcc-8): 3 warnings
>     tinyconfig (gcc-8): 2 warnings
>     vocore2_defconfig (gcc-8): 2 warnings
>     workpad_defconfig (gcc-8): 3 warnings
>     xway_defconfig (gcc-8): 3 warnings
>
> riscv:
>     allnoconfig (gcc-8): 1 error
>     defconfig (gcc-8): 1 warning
>     defconfig (gcc-8): 1 warning
>     nommu_virt_defconfig (gcc-8): 1 warning
>     rv32_defconfig (gcc-8): 7 warnings
>     tinyconfig (gcc-8): 1 error
>
> x86_64:
>     allmodconfig (gcc-8): 4 warnings
>     allmodconfig (clang-9): 15 warnings
>     allnoconfig (gcc-8): 1 warning
>     allnoconfig (clang-9): 2 warnings
>     tinyconfig (gcc-8): 2 warnings
>
> Errors summary:
>
>     5    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm971=
2.ko] undefined!
>     4    ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/=
pcie-tegra194.ko] undefined!
>     4    ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller=
/dwc/pcie-tegra194.ko] undefined!
>     4    ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controll=
er/dwc/pcie-tegra194.ko] undefined!
>     4    ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pc=
ie-tegra194.ko] undefined!
>     3    clang: error: assembler command failed with exit code 1 (use -v =
to see invocation)
>     2    arch/riscv/kernel/stacktrace.c:78:8: error: =E2=80=98sp_in_globa=
l=E2=80=99 undeclared (first use in this function); did you mean =E2=80=98s=
pin_lock=E2=80=99?
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
>     1    sound/soc/codecs/wm9712.c:84:35: error: variable has incomplete =
type 'const struct regmap_config'
>     1    sound/soc/codecs/wm9712.c:84:35: error: storage size of =E2=80=
=98wm9712_regmap_config=E2=80=99 isn=E2=80=99t known
>     1    sound/soc/codecs/wm9712.c:84:21: error: variable =E2=80=98wm9712=
_regmap_config=E2=80=99 has initializer but incomplete type
>     1    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of =
function =E2=80=98regmap_ac97_default_volatile=E2=80=99 [-Werror=3Dimplicit=
-function-declaration]
>     1    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of =
function 'regmap_ac97_default_volatile' [-Werror,-Wimplicit-function-declar=
ation]
>     1    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of =
function =E2=80=98snd_soc_component_exit_regmap=E2=80=99; did you mean =E2=
=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-decl=
aration]
>     1    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of =
function 'snd_soc_component_exit_regmap' [-Werror,-Wimplicit-function-decla=
ration]
>     1    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of =
function =E2=80=98snd_soc_component_init_regmap=E2=80=99; did you mean =E2=
=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-decl=
aration]
>     1    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of =
function 'snd_soc_component_init_regmap' [-Werror,-Wimplicit-function-decla=
ration]
>     1    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of=
 function =E2=80=98regmap_init_ac97=E2=80=99; did you mean =E2=80=98memmap_=
init_zone=E2=80=99? [-Werror=3Dimplicit-function-declaration]
>     1    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of=
 function 'regmap_init_ac97' [-Werror,-Wimplicit-function-declaration]
>     1    drivers/usb/gadget/udc/pxa25x_udc.c:2328:11: error: invalid % es=
cape in inline assembly string
>     1    drivers/clocksource/timer-vf-pit.c:194:58: error: expected '}'
>     1    drivers/clocksource/timer-vf-pit.c:194: error: unterminated argu=
ment list invoking macro "BUG_ON"
>     1    drivers/clocksource/timer-vf-pit.c:131:8: error: expected =E2=80=
=98;=E2=80=99 at end of input
>     1    drivers/clocksource/timer-vf-pit.c:131:2: error: =E2=80=98BUG_ON=
=E2=80=99 undeclared (first use in this function)
>     1    drivers/clocksource/timer-vf-pit.c:131:2: error: unterminated fu=
nction-like macro invocation
>     1    drivers/clocksource/timer-vf-pit.c:131:2: error: expected declar=
ation or statement at end of input
>     1    ERROR: modpost: "sysrq_toggle_support" [drivers/tty/serial/seria=
l_core.ko] undefined!
>     1    ERROR: modpost: "sysrq_mask" [drivers/tty/serial/serial_core.ko]=
 undefined!
>     1    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm971=
3.ko] undefined!
>     1    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm970=
5.ko] undefined!
>     1    /tmp/main-32bcf2.s:1469: Error: selected processor does not supp=
ort `strh r0,[r1]' in ARM mode
>     1    /tmp/main-32bcf2.s:1466: Error: selected processor does not supp=
ort `ldrh r0,[r0]' in ARM mode
>     1    /tmp/elf-5932ff.s:49: Error: selected processor does not support=
 `ldrh r2,[r0,#18]' in ARM mode
>     1    /tmp/do_mounts_rd-f0bf4b.s:529: Error: selected processor does n=
ot support `ldrh r0,[r5,#56]' in ARM mode
>     1    /tmp/do_mounts_rd-f0bf4b.s:525: Error: selected processor does n=
ot support `ldrh r1,[r5,#2]' in ARM mode
>     1    /tmp/do_mounts_rd-f0bf4b.s:524: Error: selected processor does n=
ot support `ldrh r0,[r5,#10]' in ARM mode
>     1    /tmp/do_mounts_rd-f0bf4b.s:510: Error: selected processor does n=
ot support `ldrh r0,[r5,#16]' in ARM mode
>
> Warnings summary:
>
>     204  drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_=
secondary=E2=80=99 defined but not used [-Wunused-function]
>     192  arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges=
_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property ha=
s invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #address=
-cells =3D=3D 2, #size-cells =3D=3D 1)
>     160  arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_forma=
t): /soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has inva=
lid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells=
 =3D=3D 2, #size-cells =3D=3D 1)
>     127  1 warning generated.
>     123  <stdin>:1520:2: warning: #warning syscall process_madvise not im=
plemented [-Wcpp]
>     107  drivers/char/random.c:820:13: warning: unused function 'crng_ini=
tialize_secondary' [-Wunused-function]
>     80   arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning=
 (dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges"=
 property has invalid length (12 bytes) (parent #address-cells =3D=3D 1, ch=
ild #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     60   scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warn=
ing (dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-rang=
es" property has invalid length (12 bytes) (parent #address-cells =3D=3D 1,=
 child #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     24   arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_f=
ormat): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has =
invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-c=
ells =3D=3D 2, #size-cells =3D=3D 1)
>     16   WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     15   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: =
Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property b=
ut its #size-cells (1) differs from / (2)
>     15   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: =
Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property b=
ut its #address-cells (1) differs from / (2)
>     12   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Wa=
rning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C ad=
dress must be less than 10-bits, got "0x40000010"
>     12   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4=
: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bu=
s unit address format error, expected "40000010"
>     12   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Wa=
rning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C ad=
dress must be less than 10-bits, got "0x40000010"
>     12   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4=
: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bu=
s unit address format error, expected "40000010"
>     9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer f=
rom integer of different size [-Wint-to-pointer-cast]
>     5    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ran=
ges_format): /soc:dma-ranges: empty "dma-ranges" property but its #size-cel=
ls (1) differs from / (2)
>     5    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ran=
ges_format): /soc:dma-ranges: empty "dma-ranges" property but its #address-=
cells (1) differs from / (2)
>     5    2 warnings generated.
>     4    include/linux/dynamic_debug.h:157:25: warning: =E2=80=98key=E2=
=80=99 may be used uninitialized in this function [-Wmaybe-uninitialized]
>     4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer f=
rom integer of different size [-Wint-to-pointer-cast]
>     4    arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_=
format): /:dma-ranges: Root node has a "dma-ranges" property
>     4    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
>     4    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
>     3    drivers/rtc/rtc-mt2712.c:235:6: warning: unused variable =E2=80=
=98irqen=E2=80=99 [-Wunused-variable]
>     3    drivers/rtc/rtc-mt2712.c:235:6: warning: unused variable 'irqen'=
 [-Wunused-variable]
>     3    drivers/net/ethernet/mellanox/mlx5/core/mr.c:63:21: warning: var=
iable 'key' is uninitialized when used here [-Wuninitialized]
>     3    drivers/net/ethernet/mellanox/mlx5/core/mr.c:47:8: note: initial=
ize the variable 'key' to silence this warning
>     3    drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:6: warning: variable '=
shadow' is used uninitialized whenever 'if' condition is false [-Wsometimes=
-uninitialized]
>     3    drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:738:13: note: initialize t=
he variable 'shadow' to silence this warning
>     3    ./usr/include/linux/usb/raw_gadget.h:74:12: warning: unused func=
tion 'usb_raw_io_flags_zero' [-Wunused-function]
>     3    ./usr/include/linux/usb/raw_gadget.h:69:12: warning: unused func=
tion 'usb_raw_io_flags_valid' [-Wunused-function]
>     2    drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame=
 size of 1232 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=
=3D]
>     2    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at lea=
st version 4.6 of GCC [-W#warnings]
>     2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented=
 [-Wcpp]
>     2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented=
 [-Wcpp]
>     2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemen=
ted [-Wcpp]
>     2    #warning This code requires at least version 4.6 of GCC
>     1    {standard input}:141: Warning: macro instruction expanded into m=
ultiple instructions
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
>     1    sound/soc/codecs/cros_ec_codec.c:776:12: warning: stack frame si=
ze of 1152 bytes in function 'wov_hotword_model_put' [-Wframe-larger-than=
=3D]
>     1    security/integrity/ima/ima_crypto.c:512:5: warning: stack frame =
size of 1152 bytes in function 'ima_calc_field_array_hash' [-Wframe-larger-=
than=3D]
>     1    net/sched/cls_flower.c:331:1: warning: the frame size of 1032 by=
tes is larger than 1024 bytes [-Wframe-larger-than=3D]
>     1    include/linux/kernel.h:47:25: warning: excess elements in struct=
 initializer
>     1    drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning: cast from p=
ointer to integer of different size [-Wpointer-to-int-cast]
>     1    drivers/soc/fsl/dpio/dpio-service.c:476:5: warning: stack frame =
size of 1072 bytes in function 'dpaa2_io_service_enqueue_multiple_desc_fq' =
[-Wframe-larger-than=3D]
>     1    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame si=
ze of 1824 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-=
larger-than=3D]
>     1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer t=
o integer of different size [-Wpointer-to-int-cast]
>     1    drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c:879:1: warnin=
g: stack frame size of 1168 bytes in function '__mlx5_tc_ct_flow_offload' [=
-Wframe-larger-than=3D]
>     1    drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c:479:1: warnin=
g: stack frame size of 1128 bytes in function 'mlx5_tc_ct_entry_add_rule' [=
-Wframe-larger-than=3D]
>     1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13=
: warning: stack frame size of 5648 bytes in function 'calculate_bandwidth'=
 [-Wframe-larger-than=3D]
>     1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3014:=
6: warning: stack frame size of 1376 bytes in function 'bw_calcs' [-Wframe-=
larger-than=3D]
>     1    drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame=
 size of 1224 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=
=3D]
>     1    drivers/crypto/inside-secure/safexcel_cipher.c:404:12: warning: =
stack frame size of 1136 bytes in function 'safexcel_aead_setkey' [-Wframe-=
larger-than=3D]
>     1    drivers/clocksource/timer-vf-pit.c:97:20: warning: =E2=80=98pit_=
timer_interrupt=E2=80=99 defined but not used [-Wunused-function]
>     1    drivers/clocksource/timer-vf-pit.c:56:19: warning: =E2=80=98pit_=
clocksource_init=E2=80=99 defined but not used [-Wunused-function]
>     1    drivers/clocksource/timer-vf-pit.c:131:2: warning: no return sta=
tement in function returning non-void [-Wreturn-type]
>     1    drivers/clocksource/timer-vf-pit.c:126:19: warning: =E2=80=98pit=
_clockevent_init=E2=80=99 defined but not used [-Wunused-function]
>     1    drivers/clocksource/timer-vf-pit.c:117:34: warning: =E2=80=98clo=
ckevent_pit=E2=80=99 defined but not used [-Wunused-variable]
>     1    cc1: some warnings being treated as errors
>     1    cc1: all warnings being treated as errors
>     1    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0=
x1f8: call to memset() with UACCESS enabled
>     1    arch/arm/mach-omap1/pm.c:656:11: warning: variable 'irq' is used=
 uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>     1    arch/arm/mach-omap1/pm.c:611:9: note: initialize the variable 'i=
rq' to silence this warning
>     1    /tmp/test-arm-23d565.s:18788: Warning: using r15 results in unpr=
edictable behaviour
>     1    /tmp/test-arm-23d565.s:18713: Warning: using r15 results in unpr=
edictable behaviour
>     1    /tmp/futex-fbc742.s:23104: Warning: source register same as writ=
e-back base
>     1    /tmp/futex-f68be1.s:23064: Warning: source register same as writ=
e-back base
>     1    /tmp/futex-f51df9.s:7504: Warning: source register same as write=
-back base
>     1    /tmp/futex-f48d58.s:7483: Warning: source register same as write=
-back base
>     1    /tmp/futex-f0d561.s:23064: Warning: source register same as writ=
e-back base
>     1    /tmp/futex-ec9b3d.s:7499: Warning: source register same as write=
-back base
>     1    /tmp/futex-eb429c.s:7476: Warning: source register same as write=
-back base
>     1    /tmp/futex-e9c6c5.s:7504: Warning: source register same as write=
-back base
>     1    /tmp/futex-e93ba9.s:7446: Warning: source register same as write=
-back base
>     1    /tmp/futex-e1476f.s:23245: Warning: source register same as writ=
e-back base
>     1    /tmp/futex-dfaf02.s:7504: Warning: source register same as write=
-back base
>     1    /tmp/futex-df8a33.s:22782: Warning: source register same as writ=
e-back base
>     1    /tmp/futex-dba44a.s:7637: Warning: source register same as write=
-back base
>     1    /tmp/futex-cba44d.s:7504: Warning: source register same as write=
-back base
>     1    /tmp/futex-c781ba.s:7433: Warning: source register same as write=
-back base
>     1    /tmp/futex-baeadb.s:23546: Warning: source register same as writ=
e-back base
>     1    /tmp/futex-a91254.s:7474: Warning: source register same as write=
-back base
>     1    /tmp/futex-9ddb7d.s:7434: Warning: source register same as write=
-back base
>     1    /tmp/futex-959b93.s:23064: Warning: source register same as writ=
e-back base
>     1    /tmp/futex-923551.s:23004: Warning: source register same as writ=
e-back base
>     1    /tmp/futex-84286d.s:7455: Warning: source register same as write=
-back base
>     1    /tmp/futex-7c9d30.s:23064: Warning: source register same as writ=
e-back base
>     1    /tmp/futex-725f7d.s:7475: Warning: source register same as write=
-back base
>     1    /tmp/futex-6da7c9.s:23137: Warning: source register same as writ=
e-back base
>     1    /tmp/futex-693722.s:7474: Warning: source register same as write=
-back base
>     1    /tmp/futex-65afa6.s:7424: Warning: source register same as write=
-back base
>     1    /tmp/futex-6356da.s:7446: Warning: source register same as write=
-back base
>     1    /tmp/futex-43fb54.s:7458: Warning: source register same as write=
-back base
>     1    /tmp/futex-37865a.s:7476: Warning: source register same as write=
-back base
>     1    /tmp/futex-35f2f5.s:7474: Warning: source register same as write=
-back base
>     1    /tmp/futex-2d3439.s:7504: Warning: source register same as write=
-back base
>     1    /tmp/futex-24f675.s:7488: Warning: source register same as write=
-back base
>     1    /tmp/futex-209bf6.s:7474: Warning: source register same as write=
-back base
>     1    /tmp/futex-1204fb.s:22782: Warning: source register same as writ=
e-back base
>     1    /tmp/futex-0b21ce.s:7504: Warning: source register same as write=
-back base
>     1    /tmp/futex-08ddb2.s:7476: Warning: source register same as write=
-back base
>     1    /tmp/futex-05adb2.s:7446: Warning: source register same as write=
-back base
>     1    /tmp/futex-04e753.s:23137: Warning: source register same as writ=
e-back base
>     1    /tmp/ccIx05kz.s:18191: Warning: using r15 results in unpredictab=
le behaviour
>     1    /tmp/ccIx05kz.s:18119: Warning: using r15 results in unpredictab=
le behaviour
>     1    .config:1161:warning: override: UNWINDER_GUESS changes choice st=
ate
>     1    .arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame(=
)+0x1fa: call to memset() with UACCESS enabled
>     1    .arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_fr=
ame()+0x1ef: call to memset() with UACCESS enabled
>     1    ./usr/include/linux/usb/raw_gadget.h:74:12: warning: =E2=80=98us=
b_raw_io_flags_zero=E2=80=99 defined but not used [-Wunused-function]
>     1    ./usr/include/linux/usb/raw_gadget.h:69:12: warning: =E2=80=98us=
b_raw_io_flags_valid=E2=80=99 defined but not used [-Wunused-function]
>     1    .............mm/kasan/common.o: warning: objtool: kasan_report()=
+0x87: call to __stack_chk_fail() with UACCESS enabled
>
> Section mismatches summary:
>
>     1    WARNING: modpost: vmlinux.o(.text.unlikely+0x39dc): Section mism=
atch in reference from the function pmax_setup_memory_region() to the funct=
ion .init.text:add_memory_region()
>     1    WARNING: modpost: vmlinux.o(.text.unlikely+0x3684): Section mism=
atch in reference from the function pmax_setup_memory_region() to the funct=
ion .init.text:add_memory_region()
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
> 32r2el_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 se=
ction mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> 32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 PASS, 0 errors, 5 warn=
ings, 0 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0 sect=
ion mismatches
>
> Warnings:
>     ./usr/include/linux/usb/raw_gadget.h:74:12: warning: =E2=80=98usb_raw=
_io_flags_zero=E2=80=99 defined but not used [-Wunused-function]
>     ./usr/include/linux/usb/raw_gadget.h:69:12: warning: =E2=80=98usb_raw=
_io_flags_valid=E2=80=99 defined but not used [-Wunused-function]
>     drivers/rtc/rtc-mt2712.c:235:6: warning: unused variable =E2=80=98irq=
en=E2=80=99 [-Wunused-variable]
>     include/linux/dynamic_debug.h:157:25: warning: =E2=80=98key=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (arm64, clang-9) =E2=80=94 FAIL, 4 errors, 11 warnings, 0 se=
ction mismatches
>
> Errors:
>     ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller/dwc/=
pcie-tegra194.ko] undefined!
>     ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controller/dw=
c/pcie-tegra194.ko] undefined!
>     ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/pcie-=
tegra194.ko] undefined!
>     ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pcie-te=
gra194.ko] undefined!
>
> Warnings:
>     ./usr/include/linux/usb/raw_gadget.h:69:12: warning: unused function =
'usb_raw_io_flags_valid' [-Wunused-function]
>     ./usr/include/linux/usb/raw_gadget.h:74:12: warning: unused function =
'usb_raw_io_flags_zero' [-Wunused-function]
>     2 warnings generated.
>     drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:6: warning: variable 'shado=
w' is used uninitialized whenever 'if' condition is false [-Wsometimes-unin=
itialized]
>     drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:738:13: note: initialize the va=
riable 'shadow' to silence this warning
>     1 warning generated.
>     drivers/rtc/rtc-mt2712.c:235:6: warning: unused variable 'irqen' [-Wu=
nused-variable]
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/mr.c:63:21: warning: variable=
 'key' is uninitialized when used here [-Wuninitialized]
>     drivers/net/ethernet/mellanox/mlx5/core/mr.c:47:8: note: initialize t=
he variable 'key' to silence this warning
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 4 errors, 20 warnings, 0 sectio=
n mismatches
>
> Errors:
>     ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pcie-te=
gra194.ko] undefined!
>     ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller/dwc/=
pcie-tegra194.ko] undefined!
>     ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controller/dw=
c/pcie-tegra194.ko] undefined!
>     ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/pcie-=
tegra194.ko] undefined!
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     /tmp/ccIx05kz.s:18119: Warning: using r15 results in unpredictable be=
haviour
>     /tmp/ccIx05kz.s:18191: Warning: using r15 results in unpredictable be=
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
>     include/linux/dynamic_debug.h:157:25: warning: =E2=80=98key=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>     drivers/rtc/rtc-mt2712.c:235:6: warning: unused variable =E2=80=98irq=
en=E2=80=99 [-Wunused-variable]
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (arm, clang-9) =E2=80=94 FAIL, 4 errors, 37 warnings, 0 sect=
ion mismatches
>
> Errors:
>     ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller/dwc/=
pcie-tegra194.ko] undefined!
>     ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controller/dw=
c/pcie-tegra194.ko] undefined!
>     ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/pcie-=
tegra194.ko] undefined!
>     ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pcie-te=
gra194.ko] undefined!
>
> Warnings:
>     security/integrity/ima/ima_crypto.c:512:5: warning: stack frame size =
of 1152 bytes in function 'ima_calc_field_array_hash' [-Wframe-larger-than=
=3D]
>     1 warning generated.
>     ./usr/include/linux/usb/raw_gadget.h:69:12: warning: unused function =
'usb_raw_io_flags_valid' [-Wunused-function]
>     ./usr/include/linux/usb/raw_gadget.h:74:12: warning: unused function =
'usb_raw_io_flags_zero' [-Wunused-function]
>     2 warnings generated.
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>     arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least ve=
rsion 4.6 of GCC [-W#warnings]
>     #warning This code requires at least version 4.6 of GCC
>     1 warning generated.
>     arch/arm/lib/xor-neon.c:30:2: warning: This code requires at least ve=
rsion 4.6 of GCC [-W#warnings]
>     #warning This code requires at least version 4.6 of GCC
>     1 warning generated.
>     /tmp/test-arm-23d565.s:18713: Warning: using r15 results in unpredict=
able behaviour
>     /tmp/test-arm-23d565.s:18788: Warning: using r15 results in unpredict=
able behaviour
>     drivers/crypto/inside-secure/safexcel_cipher.c:404:12: warning: stack=
 frame size of 1136 bytes in function 'safexcel_aead_setkey' [-Wframe-large=
r-than=3D]
>     1 warning generated.
>     sound/soc/codecs/cros_ec_codec.c:776:12: warning: stack frame size of=
 1152 bytes in function 'wov_hotword_model_put' [-Wframe-larger-than=3D]
>     1 warning generated.
>     drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:6: warning: variable 'shado=
w' is used uninitialized whenever 'if' condition is false [-Wsometimes-unin=
itialized]
>     drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:738:13: note: initialize the va=
riable 'shadow' to silence this warning
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/mr.c:63:21: warning: variable=
 'key' is uninitialized when used here [-Wuninitialized]
>     drivers/net/ethernet/mellanox/mlx5/core/mr.c:47:8: note: initialize t=
he variable 'key' to silence this warning
>     1 warning generated.
>     drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3014:6: wa=
rning: stack frame size of 1376 bytes in function 'bw_calcs' [-Wframe-large=
r-than=3D]
>     drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13: war=
ning: stack frame size of 5648 bytes in function 'calculate_bandwidth' [-Wf=
rame-larger-than=3D]
>     2 warnings generated.
>     drivers/soc/fsl/dpio/dpio-service.c:476:5: warning: stack frame size =
of 1072 bytes in function 'dpaa2_io_service_enqueue_multiple_desc_fq' [-Wfr=
ame-larger-than=3D]
>     1 warning generated.
>     drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame size of=
 1824 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-large=
r-than=3D]
>     1 warning generated.
>     drivers/rtc/rtc-mt2712.c:235:6: warning: unused variable 'irqen' [-Wu=
nused-variable]
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c:879:1: warning: st=
ack frame size of 1168 bytes in function '__mlx5_tc_ct_flow_offload' [-Wfra=
me-larger-than=3D]
>     drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c:479:1: warning: st=
ack frame size of 1128 bytes in function 'mlx5_tc_ct_entry_add_rule' [-Wfra=
me-larger-than=3D]
>     2 warnings generated.
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (arm64, gcc-8) =E2=80=94 FAIL, 4 errors, 2 warnings, 0 secti=
on mismatches
>
> Errors:
>     ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pcie-te=
gra194.ko] undefined!
>     ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/pcie-=
tegra194.ko] undefined!
>     ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller/dwc/=
pcie-tegra194.ko] undefined!
>     ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controller/dw=
c/pcie-tegra194.ko] undefined!
>
> Warnings:
>     include/linux/dynamic_debug.h:157:25: warning: =E2=80=98key=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>     drivers/rtc/rtc-mt2712.c:235:6: warning: unused variable =E2=80=98irq=
en=E2=80=99 [-Wunused-variable]
>
> -------------------------------------------------------------------------=
-------
> allmodconfig (x86_64, clang-9) =E2=80=94 PASS, 0 errors, 15 warnings, 0 s=
ection mismatches
>
> Warnings:
>     .arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_frame()=
+0x1ef: call to memset() with UACCESS enabled
>     .............mm/kasan/common.o: warning: objtool: kasan_report()+0x87=
: call to __stack_chk_fail() with UACCESS enabled
>     .arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()+0x1=
fa: call to memset() with UACCESS enabled
>     arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x1f8:=
 call to memset() with UACCESS enabled
>     ./usr/include/linux/usb/raw_gadget.h:69:12: warning: unused function =
'usb_raw_io_flags_valid' [-Wunused-function]
>     ./usr/include/linux/usb/raw_gadget.h:74:12: warning: unused function =
'usb_raw_io_flags_zero' [-Wunused-function]
>     2 warnings generated.
>     drivers/rtc/rtc-mt2712.c:235:6: warning: unused variable 'irqen' [-Wu=
nused-variable]
>     1 warning generated.
>     drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:6: warning: variable 'shado=
w' is used uninitialized whenever 'if' condition is false [-Wsometimes-unin=
itialized]
>     drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:738:13: note: initialize the va=
riable 'shadow' to silence this warning
>     1 warning generated.
>     drivers/net/ethernet/mellanox/mlx5/core/mr.c:63:21: warning: variable=
 'key' is uninitialized when used here [-Wuninitialized]
>     drivers/net/ethernet/mellanox/mlx5/core/mr.c:47:8: note: initialize t=
he variable 'key' to silence this warning
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section=
 mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (riscv, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section=
 mismatches
>
> Errors:
>     arch/riscv/kernel/stacktrace.c:78:8: error: =E2=80=98sp_in_global=E2=
=80=99 undeclared (first use in this function); did you mean =E2=80=98spin_=
lock=E2=80=99?
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (x86_64, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> allnoconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> am200epdkit_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings=
, 0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> ar7_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
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
> aspeed_g4_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 7 warnings, =
0 section mismatches
>
> Warnings:
>     /tmp/futex-923551.s:23004: Warning: source register same as write-bac=
k base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
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
> aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
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
> aspeed_g5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 6 warnings, =
0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
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
> assabet_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches
>
> Warnings:
>     /tmp/futex-2d3439.s:7504: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> at91_dt_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> ath25_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> axm55xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> axs103_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> badge4_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches
>
> Warnings:
>     /tmp/futex-fbc742.s:23104: Warning: source register same as write-bac=
k base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> bcm2835_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> bcm47xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> bcm63xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> bigsur_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> bmips_be_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> capcella_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warning=
s, 0 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> cerfcube_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches
>
> Warnings:
>     /tmp/futex-e9c6c5.s:7504: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> clps711x_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> cm_x2xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches
>
> Warnings:
>     /tmp/futex-e93ba9.s:7446: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> cm_x300_defconfig (arm, clang-9) =E2=80=94 FAIL, 1 error, 5 warnings, 0 s=
ection mismatches
>
> Errors:
>     ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko]=
 undefined!
>
> Warnings:
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     /tmp/futex-dba44a.s:7637: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> cm_x300_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 3 warnings, 0 sec=
tion mismatches
>
> Errors:
>     ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko]=
 undefined!
>
> Warnings:
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> cns3420vb_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> cobalt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> colibri_pxa270_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warni=
ngs, 0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> colibri_pxa300_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warni=
ngs, 0 section mismatches
>
> Warnings:
>     /tmp/futex-e1476f.s:23245: Warning: source register same as write-bac=
k base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> collie_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>     /tmp/futex-84286d.s:7455: Warning: source register same as write-back=
 base
>
> -------------------------------------------------------------------------=
-------
> collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> corgi_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> davinci_all_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings=
, 0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> db1xxx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> decstation_64_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warning=
s, 0 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> decstation_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, =
0 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> Section mismatches:
>     WARNING: modpost: vmlinux.o(.text.unlikely+0x39dc): Section mismatch =
in reference from the function pmax_setup_memory_region() to the function .=
init.text:add_memory_region()
>
> -------------------------------------------------------------------------=
-------
> decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnin=
gs, 0 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> Section mismatches:
>     WARNING: modpost: vmlinux.o(.text.unlikely+0x3684): Section mismatch =
in reference from the function pmax_setup_memory_region() to the function .=
init.text:add_memory_region()
>
> -------------------------------------------------------------------------=
-------
> defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> defconfig (arm64, clang-9) =E2=80=94 PASS, 0 errors, 36 warnings, 0 secti=
on mismatches
>
> Warnings:
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #address-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #size-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #address-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #size-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #address-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #size-cells (1) differs from / (2)
>     arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_f=
ormat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells=
 (1) differs from / (2)
>     arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_f=
ormat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1=
) differs from / (2)
>
> -------------------------------------------------------------------------=
-------
> defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 36 warnings, 0 section=
 mismatches
>
> Warnings:
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #address-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #size-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #address-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #size-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #address-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #size-cells (1) differs from / (2)
>     arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_f=
ormat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells=
 (1) differs from / (2)
>     arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_f=
ormat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1=
) differs from / (2)
>
> -------------------------------------------------------------------------=
-------
> defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 erro=
rs, 36 warnings, 0 section mismatches
>
> Warnings:
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #address-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #size-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #address-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #size-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #address-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #size-cells (1) differs from / (2)
>     arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_f=
ormat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells=
 (1) differs from / (2)
>     arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_f=
ormat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1=
) differs from / (2)
>
> -------------------------------------------------------------------------=
-------
> defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 erro=
rs, 36 warnings, 0 section mismatches
>
> Warnings:
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #address-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #size-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #address-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #size-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #address-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #size-cells (1) differs from / (2)
>     arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_f=
ormat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells=
 (1) differs from / (2)
>     arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_f=
ormat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1=
) differs from / (2)
>
> -------------------------------------------------------------------------=
-------
> defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 37 warnings,=
 0 section mismatches
>
> Warnings:
>     include/linux/dynamic_debug.h:157:25: warning: =E2=80=98key=E2=80=99 =
may be used uninitialized in this function [-Wmaybe-uninitialized]
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning (dma=
_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" prop=
erty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, child #=
address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     scripts/dtc/include-prefixes/arm/sunxi-h3-h5.dtsi:563.4-52: Warning (=
dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" p=
roperty has invalid length (12 bytes) (parent #address-cells =3D=3D 1, chil=
d #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #address-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #size-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #address-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #size-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #address-cells (1) differs from / (2)
>     arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: Warni=
ng (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property but it=
s #size-cells (1) differs from / (2)
>     arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_f=
ormat): /soc:dma-ranges: empty "dma-ranges" property but its #address-cells=
 (1) differs from / (2)
>     arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ranges_f=
ormat): /soc:dma-ranges: empty "dma-ranges" property but its #size-cells (1=
) differs from / (2)
>
> -------------------------------------------------------------------------=
-------
> dove_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> e55_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> ebsa110_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches
>
> Warnings:
>     /tmp/futex-37865a.s:7476: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> efm32_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> em_x270_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 3 warnings, 0 sec=
tion mismatches
>
> Errors:
>     ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko]=
 undefined!
>
> Warnings:
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> em_x270_defconfig (arm, clang-9) =E2=80=94 FAIL, 1 error, 5 warnings, 0 s=
ection mismatches
>
> Errors:
>     ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko]=
 undefined!
>
> Warnings:
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     /tmp/futex-6356da.s:7446: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> ep93xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches
>
> Warnings:
>     /tmp/futex-9ddb7d.s:7434: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 14 errors, 13 warnings=
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
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
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
> eseries_pxa_defconfig (arm, clang-9) =E2=80=94 FAIL, 5 errors, 5 warnings=
, 0 section mismatches
>
> Errors:
>     sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of funct=
ion 'regmap_ac97_default_volatile' [-Werror,-Wimplicit-function-declaration=
]
>     sound/soc/codecs/wm9712.c:84:35: error: variable has incomplete type =
'const struct regmap_config'
>     sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of func=
tion 'regmap_init_ac97' [-Werror,-Wimplicit-function-declaration]
>     sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of funct=
ion 'snd_soc_component_init_regmap' [-Werror,-Wimplicit-function-declaratio=
n]
>     sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of funct=
ion 'snd_soc_component_exit_regmap' [-Werror,-Wimplicit-function-declaratio=
n]
>
> Warnings:
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     /tmp/futex-693722.s:7474: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> exynos_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> ezx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> footbridge_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings,=
 0 section mismatches
>
> Warnings:
>     /tmp/futex-eb429c.s:7476: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> fuloong2e_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> gcw0_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sect=
ion mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> gemini_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 secti=
on mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> h3600_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> h5000_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches
>
> Warnings:
>     /tmp/futex-05adb2.s:7446: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> hackkit_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches
>
> Warnings:
>     /tmp/futex-c781ba.s:7433: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> haps_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 =
warning, 0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> hisi_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> hsdk_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warnin=
g, 0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> imote2_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> imx_v4_v5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> imx_v6_v7_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_forma=
t): /:dma-ranges: Root node has a "dma-ranges" property
>
> -------------------------------------------------------------------------=
-------
> integrator_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings,=
 0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>     arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_forma=
t): /:dma-ranges: Root node has a "dma-ranges" property
>
> -------------------------------------------------------------------------=
-------
> iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> iop32x_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches
>
> Warnings:
>     /tmp/futex-209bf6.s:7474: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> ip22_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> ip27_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 2 warnings, 0 sect=
ion mismatches
>
> Errors:
>     arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=3D =
width of type [-Werror=3Dshift-count-overflow]
>     arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=3D =
width of type [-Werror=3Dshift-count-overflow]
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     cc1: all warnings being treated as errors
>
> -------------------------------------------------------------------------=
-------
> ip28_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> ip32_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> ixp4xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches
>
> Warnings:
>     /tmp/futex-725f7d.s:7475: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> jazz_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> jmr3927_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> jornada720_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings,=
 0 section mismatches
>
> Warnings:
>     /tmp/futex-0b21ce.s:7504: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> keystone_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> lart_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     /tmp/futex-cba44d.s:7504: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> lasat_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> lemote2f_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> loongson1b_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, =
0 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> loongson1c_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, =
0 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> loongson3_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> lpc18xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> lpc32xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> lpd270_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches
>
> Warnings:
>     /tmp/futex-7c9d30.s:23064: Warning: source register same as write-bac=
k base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> lubbock_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches
>
> Warnings:
>     /tmp/futex-f0d561.s:23064: Warning: source register same as write-bac=
k base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> magician_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> mainstone_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, =
0 section mismatches
>
> Warnings:
>     /tmp/futex-959b93.s:23064: Warning: source register same as write-bac=
k base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> malta_kvm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warni=
ngs, 0 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 4 warni=
ngs, 0 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     {standard input}:141: Warning: macro instruction expanded into multip=
le instructions
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> maltaaprp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> maltasmvp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warning=
s, 0 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> maltaup_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings,=
 0 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> markeins_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> milbeaut_m10v_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 4 warnin=
gs, 0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>     drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame size=
 of 1224 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=3D]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> mini2440_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches
>
> Warnings:
>     /tmp/futex-6da7c9.s:23137: Warning: source register same as write-bac=
k base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warning=
s, 0 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> mmp2_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> moxart_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> mpc30x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> mps2_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> msp71xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> mtx1_defconfig (mips, gcc-8) =E2=80=94 FAIL, 2 errors, 2 warnings, 0 sect=
ion mismatches
>
> Errors:
>     ERROR: modpost: "sysrq_toggle_support" [drivers/tty/serial/serial_cor=
e.ko] undefined!
>     ERROR: modpost: "sysrq_mask" [drivers/tty/serial/serial_core.ko] unde=
fined!
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_forma=
t): /:dma-ranges: Root node has a "dma-ranges" property
>
> -------------------------------------------------------------------------=
-------
> multi_v4t_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 4 warnings, =
0 section mismatches
>
> Warnings:
>     /tmp/futex-ec9b3d.s:7499: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>     arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_forma=
t): /:dma-ranges: Root node has a "dma-ranges" property
>
> -------------------------------------------------------------------------=
-------
> multi_v5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 6 warnings, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
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
> multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 warnings, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
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
> multi_v7_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 55 warnings, =
0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>     drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame size=
 of 1232 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=3D]
>     1 warning generated.
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
> multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 52 warnings, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
 0 errors, 52 warnings, 0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
=94 PASS, 0 errors, 52 warnings, 0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
52 warnings, 0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
> multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 53 wa=
rnings, 0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     net/sched/cls_flower.c:331:1: warning: the frame size of 1032 bytes i=
s larger than 1024 bytes [-Wframe-larger-than=3D]
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
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
> mv78xx0_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> mvebu_v5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> mvebu_v7_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> mxs_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches
>
> Warnings:
>     /tmp/futex-baeadb.s:23546: Warning: source register same as write-bac=
k base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> neponset_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches
>
> Warnings:
>     /tmp/futex-f51df9.s:7504: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> netwinder_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, =
0 section mismatches
>
> Warnings:
>     /tmp/futex-08ddb2.s:7476: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> nhk8815_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warnin=
g, 0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> omap1_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 5 warnings, 0 se=
ction mismatches
>
> Warnings:
>     arch/arm/mach-omap1/pm.c:656:11: warning: variable 'irq' is used unin=
itialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>     arch/arm/mach-omap1/pm.c:611:9: note: initialize the variable 'irq' t=
o silence this warning
>     1 warning generated.
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> omap2plus_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> omega2p_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> orion5x_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> oxnas_v6_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 4 warnings, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>     drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame size=
 of 1232 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=3D]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> palmz72_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> pcm027_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> pic32mzda_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> pistachio_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> pleb_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     /tmp/futex-24f675.s:7488: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnin=
gs, 0 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> prima2_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> pxa168_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> pxa255-idp_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings,=
 0 section mismatches
>
> Warnings:
>     /tmp/futex-f68be1.s:23064: Warning: source register same as write-bac=
k base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> pxa3xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> pxa910_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> pxa_defconfig (arm, clang-9) =E2=80=94 FAIL, 1 error, 8 warnings, 0 secti=
on mismatches
>
> Errors:
>     drivers/usb/gadget/udc/pxa25x_udc.c:2328:11: error: invalid % escape =
in inline assembly string
>
> Warnings:
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9705
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9713
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9705
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9713
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 3 errors, 7 warnings, 0 sectio=
n mismatches
>
> Errors:
>     ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9713.ko]=
 undefined!
>     ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko]=
 undefined!
>     ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9705.ko]=
 undefined!
>
> Warnings:
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9705
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9713
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9705
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     WARNING: unmet direct dependencies detected for SND_SOC_WM9713
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> qcom_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> qi_lb60_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> rb532_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> realview_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> rm200_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section=
 mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> rpc_defconfig (arm, clang-9) =E2=80=94 FAIL, 10 errors, 0 warnings, 0 sec=
tion mismatches
>
> Errors:
>     /tmp/elf-5932ff.s:49: Error: selected processor does not support `ldr=
h r2,[r0,#18]' in ARM mode
>     clang: error: assembler command failed with exit code 1 (use -v to se=
e invocation)
>     /tmp/main-32bcf2.s:1466: Error: selected processor does not support `=
ldrh r0,[r0]' in ARM mode
>     /tmp/main-32bcf2.s:1469: Error: selected processor does not support `=
strh r0,[r1]' in ARM mode
>     clang: error: assembler command failed with exit code 1 (use -v to se=
e invocation)
>     /tmp/do_mounts_rd-f0bf4b.s:510: Error: selected processor does not su=
pport `ldrh r0,[r5,#16]' in ARM mode
>     /tmp/do_mounts_rd-f0bf4b.s:524: Error: selected processor does not su=
pport `ldrh r0,[r5,#10]' in ARM mode
>     /tmp/do_mounts_rd-f0bf4b.s:525: Error: selected processor does not su=
pport `ldrh r1,[r5,#2]' in ARM mode
>     /tmp/do_mounts_rd-f0bf4b.s:529: Error: selected processor does not su=
pport `ldrh r0,[r5,#56]' in ARM mode
>     clang: error: assembler command failed with exit code 1 (use -v to se=
e invocation)
>
> -------------------------------------------------------------------------=
-------
> rt305x_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
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
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:830:2: warning: #warning syscall fstat64 not implemented [-Wc=
pp]
>     <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented [=
-Wcpp]
>     <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wc=
pp]
>
> -------------------------------------------------------------------------=
-------
> s3c2410_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches
>
> Warnings:
>     /tmp/futex-04e753.s:23137: Warning: source register same as write-bac=
k base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> s3c6400_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> s5pv210_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> sama5_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings=
, 0 section mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> shannon_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 =
section mismatches
>
> Warnings:
>     /tmp/futex-dfaf02.s:7504: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> shmobile_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> simpad_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> socfpga_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> spear13xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, =
0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> spear3xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches
>
> Warnings:
>     /tmp/futex-1204fb.s:22782: Warning: source register same as write-bac=
k base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> spear6xx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0=
 section mismatches
>
> Warnings:
>     /tmp/futex-df8a33.s:22782: Warning: source register same as write-bac=
k base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> spitz_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> stm32_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> sunxi_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 49 warnings, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>
> -------------------------------------------------------------------------=
-------
> sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 48 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun5i.dtsi:189.4-52: Warning (dma_ranges_format): /=
soc/dram-controller@1c01000:dma-ranges: "dma-ranges" property has invalid l=
ength (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =3D=
=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sunxi-h3-h5.dtsi:563.4-52: Warning (dma_ranges_form=
at): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inv=
alid length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cell=
s =3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>     arch/arm/boot/dts/sun8i-r40.dtsi:769.4-52: Warning (dma_ranges_format=
): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges" property has inval=
id length (12 bytes) (parent #address-cells =3D=3D 1, child #address-cells =
=3D=3D 2, #size-cells =3D=3D 1)
>
> -------------------------------------------------------------------------=
-------
> tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> tango4_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> tb0287_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> tct_hammer_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings,=
 0 section mismatches
>
> Warnings:
>     /tmp/futex-f48d58.s:7483: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 =
section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> tegra_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sectio=
n mismatches
>
> Warnings:
>     .config:1161:warning: override: UNWINDER_GUESS changes choice state
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (riscv, gcc-8) =E2=80=94 FAIL, 1 error, 0 warnings, 0 section =
mismatches
>
> Errors:
>     arch/riscv/kernel/stacktrace.c:78:8: error: =E2=80=98sp_in_global=E2=
=80=99 undeclared (first use in this function); did you mean =E2=80=98spin_=
lock=E2=80=99?
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section mi=
smatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section m=
ismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> tinyconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 section =
mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> trizeps4_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> u300_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> u8500_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> versatile_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, =
0 section mismatches
>
> Warnings:
>     /tmp/futex-a91254.s:7474: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 s=
ection mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 se=
ction mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> vexpress_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0=
 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> vf610m4_defconfig (arm, gcc-8) =E2=80=94 FAIL, 4 errors, 6 warnings, 0 se=
ction mismatches
>
> Errors:
>     drivers/clocksource/timer-vf-pit.c:194: error: unterminated argument =
list invoking macro "BUG_ON"
>     drivers/clocksource/timer-vf-pit.c:131:2: error: =E2=80=98BUG_ON=E2=
=80=99 undeclared (first use in this function)
>     drivers/clocksource/timer-vf-pit.c:131:8: error: expected =E2=80=98;=
=E2=80=99 at end of input
>     drivers/clocksource/timer-vf-pit.c:131:2: error: expected declaration=
 or statement at end of input
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     drivers/clocksource/timer-vf-pit.c:131:2: warning: no return statemen=
t in function returning non-void [-Wreturn-type]
>     drivers/clocksource/timer-vf-pit.c:126:19: warning: =E2=80=98pit_cloc=
kevent_init=E2=80=99 defined but not used [-Wunused-function]
>     drivers/clocksource/timer-vf-pit.c:117:34: warning: =E2=80=98clockeve=
nt_pit=E2=80=99 defined but not used [-Wunused-variable]
>     drivers/clocksource/timer-vf-pit.c:97:20: warning: =E2=80=98pit_timer=
_interrupt=E2=80=99 defined but not used [-Wunused-function]
>     drivers/clocksource/timer-vf-pit.c:56:19: warning: =E2=80=98pit_clock=
source_init=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> vf610m4_defconfig (arm, clang-9) =E2=80=94 FAIL, 2 errors, 2 warnings, 0 =
section mismatches
>
> Errors:
>     drivers/clocksource/timer-vf-pit.c:131:2: error: unterminated functio=
n-like macro invocation
>     drivers/clocksource/timer-vf-pit.c:194:58: error: expected '}'
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> viper_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 se=
ction mismatches
>
> Warnings:
>     /tmp/futex-43fb54.s:7458: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> vocore2_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 2 warnings, 0 s=
ection mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, =
0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> vt8500_v6_v7_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warning=
s, 0 section mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> workpad_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 s=
ection mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches
>
> -------------------------------------------------------------------------=
-------
> x86_64_defconfig (x86_64, clang-9) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 wa=
rnings, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> x86_64_defconfig+kvm_guest (x86_64, clang-9) =E2=80=94 FAIL, 0 errors, 0 =
warnings, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 wa=
rnings, 0 section mismatches
>
> -------------------------------------------------------------------------=
-------
> xcep_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     /tmp/futex-65afa6.s:7424: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> xway_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sect=
ion mismatches
>
> Warnings:
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>     <stdin>:1520:2: warning: #warning syscall process_madvise not impleme=
nted [-Wcpp]
>
> -------------------------------------------------------------------------=
-------
> zeus_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 3 warnings, 0 sec=
tion mismatches
>
> Warnings:
>     /tmp/futex-35f2f5.s:7474: Warning: source register same as write-back=
 base
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
>
> -------------------------------------------------------------------------=
-------
> zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section =
mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: =E2=80=98crng_initialize_secon=
dary=E2=80=99 defined but not used [-Wunused-function]
>
> -------------------------------------------------------------------------=
-------
> zx_defconfig (arm, clang-9) =E2=80=94 PASS, 0 errors, 2 warnings, 0 secti=
on mismatches
>
> Warnings:
>     drivers/char/random.c:820:13: warning: unused function 'crng_initiali=
ze_secondary' [-Wunused-function]
>     1 warning generated.
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
d/clang-built-linux/5e70bc06.1c69fb81.5a1f8.bbb4%40mx.google.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DHyT9cQ1Zco1z-1k-AL7nF5mDH53JkuajUWF_eN-BFUw%40m=
ail.gmail.com.
