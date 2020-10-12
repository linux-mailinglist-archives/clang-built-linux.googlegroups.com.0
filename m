Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK6ZSL6AKGQEC3ITJLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F5828C15F
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 21:21:17 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id v196sf8064721oia.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 12:21:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602530475; cv=pass;
        d=google.com; s=arc-20160816;
        b=aQiTpDptcHkzf6k9tnb4/fUNNZMjoFyZIDV8G7Wm86VKnHRZEFzZKzYIfTKzlw3oMQ
         eIaKPmHcg+KYNE2DnDSSpcWDJS2JF2TnMgxDkqf7EKd68V16wAkeAhGMkvWmFrprT/FK
         44E2lgj1TwxMv4OKPbfqinhYgMCzosmdhMwebgRJkgfVeOBn3EzEipCmAeg0uEXlbT7W
         BGkGCYi1eXy4NxSHCRn0EMgdheUBt2sv7U3hc8nwY2ebkT/alrbAghi0C8jI2zJMl3qv
         kepoawHKl4o1TO70GJzsfluuB/vczSaZCnerCM/IDF2Ekfq16VHruQ8kCGHTiW7lM1pR
         awsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sWN6NfeYVndwTMoPlDaRnNLXGVqhSMw0TG679wBsDFo=;
        b=ABbm+uRfn3USa99cSnJFdWRPXHSsduMmcyKt2NgIgAknEvUzBW060uuJNKZHztja9/
         GhOoNZYOPwZJ6GfRM1EUPIzpSGpgslw00JZPNFhNhGJjwbWcr2rx8RKhj3H0gqgM1XAU
         GOuXoeXu3hjnuneJrf5Iohi2xh1NO0chUFqArD6nXuFXyTx3T129SsX89pteABvWqq1E
         +VQ+Nr8acwFJybIBOyQ7a3k9rP0LdE/YTTOBZbArjQ1UkylXiGDXOQef/7yqoOUXnR51
         AwlsXehWKIgdTWMSY87Npq4eUxIYfHGEz12WSJTMQ5JhBAk0TNb9g3Va4394q+cFLSw6
         o3AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q77HI+zS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sWN6NfeYVndwTMoPlDaRnNLXGVqhSMw0TG679wBsDFo=;
        b=DDQI1/Tw4ea0oqlc3PP9ORGhh3otungmMNiKQeLxmgT4nvQSYMtAa2z1kDOSocF70x
         selWkcZgnHKXuWOMGCxNHHIM5B6zFFdVwukp8+6jNgx5u7FQoR7yQT9D68FSn0PstvUx
         eGbVcuKj+JsDOZ3AKa+tIVJTHz+LTZ85/Jh5e+3ZHJKf7Ybf5XQioo/zpL+pCPkSPywi
         FnmPPzFmH5B/qZ12O/JXNvB6xrX2Woi40fKGieyw/rejElykp4J94QRffdU9Z4ScEnMT
         uKLajmKlJ6WsV8WhuMfVoKgvbVmlqy+E9KS4NIE22BJXEBz5P/640eek1g1zSRoUlY+Q
         kj0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sWN6NfeYVndwTMoPlDaRnNLXGVqhSMw0TG679wBsDFo=;
        b=XRtPa/WbLcsSlmqSrEi2qoQZtTcztovoqdsLHlfbici3+MaAiKqJse1w5WTH2X/fnr
         EWUR+ocEBjvwgJ2MWg7UZx7G95157/T3qaiwvnBFw/G1pSTVs+oIZhCcSYCx1rXvQpv7
         jSk1OK2oB4SgWqZcSoTD80KtSzPdn6rteWcRuYEtJYidk8kEybFhcLSbn3I6Jl32gtGi
         F6E7C/L4t7oVys2YwITcWWZZdW8t5llPvsT3/xTVIYZuOsiOjvPB+dBzXl8noE1myZJ5
         do4Nveo50SQOiZsy1zpFY0e7KQdxjZjA/rLspVX0/8Nv1xa4Gdr2auXMczdfVkKJERXr
         eUWA==
X-Gm-Message-State: AOAM533XcGEnrA/eSOH6zLivbiU1hchYm1ro7ruCAMeHyQ/TzAZxDVsn
	BWPnYPVJmp19nBEtGhiK1iU=
X-Google-Smtp-Source: ABdhPJzDLThqS434CUpapIdBWWl9coy0g3jQ0ZL1Hzst8Vd4zb/rBJEOjFRvoK/9nGgkFF0xE5RTWQ==
X-Received: by 2002:a9d:7b59:: with SMTP id f25mr19026766oto.306.1602530475728;
        Mon, 12 Oct 2020 12:21:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:53cc:: with SMTP id i12ls4182697oth.7.gmail; Mon, 12 Oct
 2020 12:21:15 -0700 (PDT)
X-Received: by 2002:a05:6830:1347:: with SMTP id r7mr12821502otq.203.1602530475316;
        Mon, 12 Oct 2020 12:21:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602530475; cv=none;
        d=google.com; s=arc-20160816;
        b=XQeDZNddwnfDo4Gu/fspSIpuR1VSunWSQVthQQPuuR3/WiS2G8HC3SERcOfYPeybwM
         dYqarpKGE9Gu6mtSmOYGM0X1sAIMyVNSK+SkwaYEpj7wLcJYc50nyfbo17YI46FfLp6V
         6/t2KvQw0mlf34vChe2rKXG/BXvB8i9cwrrvQz6O9EAgWujO2rFbkESIV56SFKusrUbd
         1AioUyUACB13sW4cWT60ztM6rwXb4/mTX/HKfqsjhgXbAHmULStkvVwlnZ6m7c2Zo1ha
         9DpkCAIgBXm4LA6M0IjqF1Pf6NhfdPKPTt7XJkpWPE0ugmLAvrrMJGZXbBzKGdTGODY5
         h8zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0Y0yp2OO1VleYBanGo/syTSROw5WTuT9Zf4T2od4GH8=;
        b=pn8MWXMB7lB3DMqFjMCIpPST6bbeGo1vHEPNFF14OZ/Sb3eWEQtonMpBNKmUyjhS9N
         CirMLdB3h1PiNRgw8W04/LqrDa+Cef5wBGoEZou9SeWOQ2vqlamuM46gLvR6eBYKlgk4
         yCjc0shLhKZTMU+b6d7WsM/3m/LD+OPXPTY/ZTXjIN/dz9YfKorsxXaHgPJEM2ivZ42Y
         RoTwnAjxeEHGD6bev6DQKhdjKaSWoRBetcpqWm2/VuJ6AFd9idemJ0ldWZAP60V2GNVK
         7v9UkK95bRLQO2ByLseNWJxyDdEmEglw58sABjD1BaYVaUrYdLiqby2vKackodo4CXKH
         sNYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q77HI+zS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id n7si1299344oij.0.2020.10.12.12.21.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 12:21:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id j18so1891228pfa.0
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 12:21:15 -0700 (PDT)
X-Received: by 2002:a62:cd85:0:b029:152:6881:5e2c with SMTP id
 o127-20020a62cd850000b029015268815e2cmr24293425pfg.36.1602530474178; Mon, 12
 Oct 2020 12:21:14 -0700 (PDT)
MIME-Version: 1.0
References: <202010110430.aoU5Kjsn-lkp@intel.com>
In-Reply-To: <202010110430.aoU5Kjsn-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Oct 2020 12:21:03 -0700
Message-ID: <CAKwvOd=jm7x2+yFtqUmSWXXcuGjqyGR1cbf40tMJPCkunv0Uzg@mail.gmail.com>
Subject: Re: clang-12: error: assembler command failed with exit code 1 (use
 -v to see invocation)
To: Ulrich Weigand <Ulrich.Weigand@de.ibm.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Q77HI+zS;       spf=pass
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

I don't think the bisection was quite right, but possibly an
interesting case in compatibility between clang and GNU binutils.
Looks like clang is generating operands that are too large to be
encoded.

On Sat, Oct 10, 2020 at 1:49 PM kernel test robot <lkp@intel.com> wrote:
>
> CC: linux-kernel@vger.kernel.org
> TO: Marc Zyngier <maz@kernel.org>
> CC: Benjamin Tissoires <benjamin.tissoires@gmail.com>
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   6f2f486d57c4d562cdf4932320b66fbb878ab1c4
> commit: 35556bed836f8dc07ac55f69c8d17dce3e7f0e25 HID: core: Sanitize event code and type when mapping input
> date:   6 weeks ago
> config: s390-randconfig-r023-20201011 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9b5b3050237db3642ed7ab1bdb3ffa2202511b99)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=35556bed836f8dc07ac55f69c8d17dce3e7f0e25
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 35556bed836f8dc07ac55f69c8d17dce3e7f0e25
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
>    In file included from drivers/hid/hid-input.c:21:
>    In file included from include/linux/hid-debug.h:14:
>    In file included from include/linux/kfifo.h:42:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:72:
>    include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
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
>    In file included from drivers/hid/hid-input.c:21:
>    In file included from include/linux/hid-debug.h:14:
>    In file included from include/linux/kfifo.h:42:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:72:
>    include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
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
>    In file included from drivers/hid/hid-input.c:21:
>    In file included from include/linux/hid-debug.h:14:
>    In file included from include/linux/kfifo.h:42:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:72:
>    include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
>                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
>    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
>                                                              ^
>    include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
>            __fswab32(x))
>                      ^
>    In file included from drivers/hid/hid-input.c:21:
>    In file included from include/linux/hid-debug.h:14:
>    In file included from include/linux/kfifo.h:42:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:72:
>    include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writeb(value, PCI_IOBASE + addr);
>                                ~~~~~~~~~~ ^
>    include/asm-generic/io.h:511:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
>                                             ~~~~~~~~~~ ^
>    include/asm-generic/io.h:521:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
>                                             ~~~~~~~~~~ ^
>    include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsb(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsw(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsl(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesb(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesw(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesl(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    20 warnings generated.
>    /tmp/hid-input-85a7dd.s: Assembler messages:
>    /tmp/hid-input-85a7dd.s:177577: Error: operand out of range (-65572 not between 4294901760 and 65534)
>    /tmp/hid-input-85a7dd.s:177606: Error: operand out of range (-65584 not between 4294901760 and 65534)
>    /tmp/hid-input-85a7dd.s:177635: Error: operand out of range (-65560 not between 4294901760 and 65534)
>    /tmp/hid-input-85a7dd.s:177665: Error: operand out of range (-65576 not between 4294901760 and 65534)
>    /tmp/hid-input-85a7dd.s:177695: Error: operand out of range (-65554 not between 4294901760 and 65534)
>    /tmp/hid-input-85a7dd.s:177725: Error: operand out of range (-65570 not between 4294901760 and 65534)
> >> clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> --
>    include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
>    In file included from drivers/hid/hid-input.c:21:
>    In file included from include/linux/hid-debug.h:14:
>    In file included from include/linux/kfifo.h:42:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:72:
>    include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
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
>    In file included from drivers/hid/hid-input.c:21:
>    In file included from include/linux/hid-debug.h:14:
>    In file included from include/linux/kfifo.h:42:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:72:
>    include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
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
>    In file included from drivers/hid/hid-input.c:21:
>    In file included from include/linux/hid-debug.h:14:
>    In file included from include/linux/kfifo.h:42:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:72:
>    include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
>                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
>    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
>                                                              ^
>    include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
>            __fswab32(x))
>                      ^
>    In file included from drivers/hid/hid-input.c:21:
>    In file included from include/linux/hid-debug.h:14:
>    In file included from include/linux/kfifo.h:42:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:72:
>    include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writeb(value, PCI_IOBASE + addr);
>                                ~~~~~~~~~~ ^
>    include/asm-generic/io.h:511:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
>                                             ~~~~~~~~~~ ^
>    include/asm-generic/io.h:521:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
>                                             ~~~~~~~~~~ ^
>    include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsb(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsw(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsl(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesb(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesw(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesl(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    20 warnings generated.
>    /tmp/hid-input-0ec629.s: Assembler messages:
>    /tmp/hid-input-0ec629.s:177577: Error: operand out of range (-65572 not between 4294901760 and 65534)
>    /tmp/hid-input-0ec629.s:177606: Error: operand out of range (-65584 not between 4294901760 and 65534)
>    /tmp/hid-input-0ec629.s:177635: Error: operand out of range (-65560 not between 4294901760 and 65534)
>    /tmp/hid-input-0ec629.s:177665: Error: operand out of range (-65576 not between 4294901760 and 65534)
>    /tmp/hid-input-0ec629.s:177695: Error: operand out of range (-65554 not between 4294901760 and 65534)
>    /tmp/hid-input-0ec629.s:177725: Error: operand out of range (-65570 not between 4294901760 and 65534)
> >> clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010110430.aoU5Kjsn-lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Djm7x2%2ByFtqUmSWXXcuGjqyGR1cbf40tMJPCkunv0Uzg%40mail.gmail.com.
