Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYNRRX4AKGQEQI6RYXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC84215C7E
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jul 2020 19:01:22 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id g12sf26730833qko.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jul 2020 10:01:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594054881; cv=pass;
        d=google.com; s=arc-20160816;
        b=mxfPvRP8WOugM92wFTnuDyjdxdLMkyCNLEGn9yskOzbCgXASjYBTBVkxy+Bl1fKKzH
         C0L6xYmpuMXosAr6CetBUCmDtYKBHeTTDAuKM3AKbO9wzHAEWoKJJPoMBBjgOeno8x7M
         LH7Y1a8c7y6yJkqLLGhFiCHPkS9meEm7MgMBxLB3kMZ6TCtBemaWRTpe4u4ww3CQHi30
         BCS4WDqYI6ckUuVzJUcjeCOogCALUYHtYrg3mZP/tVPe+yIU/Kn2w9Mp0hdqQHUmOTXV
         xExESodp/V4COaltUjuOBuEvtOcDt/5b/+DqOFScdNELO+7m4jWZHW1MY7h1qjjqGMxe
         q2aQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bhLxMgRwRS5oy3PF1CEkaBZwX8F5goy7I5F6lSug5Ow=;
        b=FBHPPE3DgpmIF+W7jPM6hm8eP+V9EetxeVYT/3Ctki37LxWkNTU4BO1pCQLKYa6nL8
         jQtPmnuGqQVlhy96rJxrJjxtx+6D94I2eIZvpMdeYASC7/6dJc2vu4QCT+jeIufGDvwY
         i+ovM5nONnElnYH1wsYln9pNPC3WsORSrDeP6xJW3DopzaB30Me7rC6dp/yneYJY4seG
         8qchwGHsWzpG2A1gUhG6D5OxKaWW+OLXRlh87myJT0fjOutFBHgNl6ohUllOpa0KXVup
         OoHB7hHol67X5CuxJiX21Nvu2ubT6tloNoM4uTAl2OUewe0UJRCmCIVkZ55VfAoaQsLD
         rZwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WJKyE2Hu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bhLxMgRwRS5oy3PF1CEkaBZwX8F5goy7I5F6lSug5Ow=;
        b=frRZZ0OLQInHt7UnYCD06AYZhsZioQrOUtNqxeOSTIWi10IW392d6C0DUCpEiqmXyf
         H2JgbEf+hi94kyUiABF6qKwm0k5rxdq5KbZYnVqS6+kApzXIwm/DWOBD4bgPSEaHkA8T
         sLkeNm4Z3tfkTSZckUD4OJHC4FTuRlS09Z3dbpFOCTVpdZKff65w/5lt5dnrh3RCFkU8
         7Q+wlpOOkRsMKaEe703Tp/0A4nsQygKXp5tyQhwtJGXT6mb0/oRbFJ6uBRWyqyE+l/sU
         OtnYRQUPp0QGqFfQRuJx1c4qcrzTOuz1yckL8zKY47Hc1AwAPranS1wpCUHbxaZ8szTV
         WZuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bhLxMgRwRS5oy3PF1CEkaBZwX8F5goy7I5F6lSug5Ow=;
        b=eAlIPculFKIIuudVsPDNsJ7LsApVJfWj5mSr6Jw16uHzJVIOJuekONOROzR7ckUuFW
         ceLadhUf2VsATjpug5LEi540Vp4xhAjf1OGX3cyvzsmcU0oAIfec4XxbXO2KvWC9k3hh
         miqRaLWLTs8F5CrC2DgIfspcSF7REtTwUki5jGPfN7SWb5nSuubpA9Ktm3Cp4/A/4XzQ
         kxlJE91xcYjBL3VrP6nDVKD2fDEf0bjbFfUmLp+Vec25qneOoin7kc4mDSx1SVQ4J1o0
         LEClL0RZaX5fLxhcQ+rIGAXLmIIA/xXA9YRVDSCLprDp0SvJGReeAC+yamO0wSCRvWMn
         PlwQ==
X-Gm-Message-State: AOAM531L88VUW4Uzi6afNYQNMjK5ncTs5Y3RpbrUj9c+iXnVxFacl/mg
	wOBDQin/zReTKDd3sbXmEY0=
X-Google-Smtp-Source: ABdhPJwR4TnVAZH3xVTuSYTuI1yQHRIA4Or6NkBkFbrylQygGa9OLf7ivYbnFIFgngQ7+/C7uktfCw==
X-Received: by 2002:a05:620a:15ab:: with SMTP id f11mr37234567qkk.199.1594054881492;
        Mon, 06 Jul 2020 10:01:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:f21:: with SMTP id e30ls6952046qtk.6.gmail; Mon, 06 Jul
 2020 10:01:20 -0700 (PDT)
X-Received: by 2002:aed:2437:: with SMTP id r52mr52671145qtc.140.1594054880909;
        Mon, 06 Jul 2020 10:01:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594054880; cv=none;
        d=google.com; s=arc-20160816;
        b=sMCMDf/SaTvdbCWZf5e5KuQNHo1MZxgh6bsOjrpFtv61t5M/HYTSYTHF0qycFAC4H0
         YF5plbecMNif8fjhu7jLw5cmSEVbsDt8rbvwrtLNHnlVRN2BRxsV8uV02SlR+8MV7Bfr
         M8NXLFclAuIQMBq2xONFEX3qLgpq06Ck0Em1Nfew6lfyjO9jJgN/k53JcY6paykXWjIV
         HJRGUfJvuq7Aaw795jz7CTQ2v0KsmZtHM/kjhJnadDvZe48Amg40mRh3biDNTST0UNnZ
         fOCN2Ij0Lv0ihXFxx6vKXSoD/EW03ZSI9WNrHmkGUbhvICkBm3eZsggXix+qVtdBfxPv
         Dc3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MhQ9hlvo8VlIOFCagrX78WFP0JTbc+LAM9aEHXkz0sw=;
        b=dIPM+35h2uIuoT88Nmsc2SoX8jnJqggPlakc+vIC5Y5EZIMzUynY+Puo4bKq+cDHeF
         m0vzqoewzH0yVF0/paZfFxjXDVdmI9RNwEimd5s8+QnlD6Kh08je1W7CewxvtgXK/pLI
         EGL1bgQ+2mCQzMRf8LNiDa2Gk9SlMDh01CDL32ACXzY1MFcUVTrmFFdxnk3DDhPDufSG
         du47MvVwQkPjirPu3vmIdwTRV5bYisFSt48etn8RV7Eifiu8tlYlacrtyQrC5d0dM82E
         JBboT+RCtTwS+4lcOv3fl998anGhwtcgYrLK9OSm9yLfnVgt1oWTe8laecdsfVXF8wTs
         PKVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WJKyE2Hu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id m1si781698qke.4.2020.07.06.10.01.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 10:01:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id u185so15175008pfu.1
        for <clang-built-linux@googlegroups.com>; Mon, 06 Jul 2020 10:01:20 -0700 (PDT)
X-Received: by 2002:a63:7e55:: with SMTP id o21mr42093606pgn.263.1594054879658;
 Mon, 06 Jul 2020 10:01:19 -0700 (PDT)
MIME-Version: 1.0
References: <202007061558.jOn3THo0%lkp@intel.com>
In-Reply-To: <202007061558.jOn3THo0%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 6 Jul 2020 10:01:07 -0700
Message-ID: <CAKwvOdnA27AKP4aMGWBQXdjr3wi2XtbK2rvFj2btCGq6RCqGVw@mail.gmail.com>
Subject: Re: [linux-stable-rc:queue/5.4 109/220] /tmp/filter-273424.s:50187:
 Error: bad expression
To: kernel test robot <lkp@intel.com>
Cc: Mans Rullgard <mans@mansr.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sasha Levin <alexander.levin@microsoft.com>, Wolfram Sang <wsa-dev@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WJKyE2Hu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Mon, Jul 6, 2020 at 12:20 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git queue/5.4
> head:   bb26a37d5a4bf25b8377c83fa407a219b3822ed1
> commit: 5cee9e67596f7d694e94d7def7cd9d65a7599f66 [109/220] i2c: core: check returned size of emulated smbus block read
> config: s390-randconfig-r024-20200706 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project a378c0449507e00e96534ff9ce9034e185425182)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         git checkout 5cee9e67596f7d694e94d7def7cd9d65a7599f66
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> Note: the linux-stable-rc/queue/5.4 HEAD bb26a37d5a4bf25b8377c83fa407a219b3822ed1 builds fine.
>       It only hurts bisectibility.
>
> All errors (new ones prefixed by >>):
>
>                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
>    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
>                                                              ^
>    include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
>            ___constant_swab32(x) :                 \
>                               ^
>    include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
>            (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
>                      ^
>    In file included from net/core/filter.c:25:
>    In file included from include/linux/sock_diag.h:5:
>    In file included from include/linux/netlink.h:7:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:11:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:76:
>    include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
>                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
>    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
>                                                              ^
>    include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
>            ___constant_swab32(x) :                 \
>                               ^
>    include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
>            (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
>                      ^
>    In file included from net/core/filter.c:25:
>    In file included from include/linux/sock_diag.h:5:
>    In file included from include/linux/netlink.h:7:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:11:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:76:
>    include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
>                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
>    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
>                                                              ^
>    include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
>            ___constant_swab32(x) :                 \
>                               ^
>    include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
>            (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
>                      ^
>    In file included from net/core/filter.c:25:
>    In file included from include/linux/sock_diag.h:5:
>    In file included from include/linux/netlink.h:7:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:11:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:76:
>    include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
>                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
>    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
>                                                              ^
>    include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
>            __fswab32(x))
>                      ^
>    In file included from net/core/filter.c:25:
>    In file included from include/linux/sock_diag.h:5:
>    In file included from include/linux/netlink.h:7:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:11:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:76:
>    include/asm-generic/io.h:503:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writeb(value, PCI_IOBASE + addr);
>                                ~~~~~~~~~~ ^
>    include/asm-generic/io.h:513:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
>                                             ~~~~~~~~~~ ^
>    include/asm-generic/io.h:523:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
>                                             ~~~~~~~~~~ ^
>    include/asm-generic/io.h:585:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsb(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:593:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsw(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:601:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsl(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:610:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesb(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    include/asm-generic/io.h:619:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesw(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    include/asm-generic/io.h:628:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesl(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    20 warnings generated.
>    /tmp/filter-273424.s: Assembler messages:
> >> /tmp/filter-273424.s:50187: Error: bad expression
> >> /tmp/filter-273424.s:50187: Error: junk at end of line, first unrecognized character is `r'

^ it looks like Clang's s390 backend is generating assembler that GNU
`as` doesn't recognize. (I've seen similar issues attempting to get
dwarf-5 working for the kernel).

>    /tmp/filter-273424.s:52249: Error: bad expression
>    /tmp/filter-273424.s:52249: Error: junk at end of line, first unrecognized character is `r'
>    clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnA27AKP4aMGWBQXdjr3wi2XtbK2rvFj2btCGq6RCqGVw%40mail.gmail.com.
