Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYV5R74AKGQEBUIDSNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9001D216411
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jul 2020 04:33:07 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id m64sf29263280ill.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jul 2020 19:33:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594089186; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jty8VlkBU13OAv4+A/aXHn5wHcNlv+VO0LV6zjEmGZUf/VACrztXApW26xPCVLNub5
         3gBf8ag8mD6Z6rl/djXKMyIUcNr0Jhcy0jvBOBOvFlLEyZU+6RUD1Ac5rn7vmVOOch3Q
         jSDsSIpGUJJwdqQVpmcBuJsdsytNfnG9P68780rdp3IKqzpGvE3KZ6WzQPYB1mCCwpTf
         drhb4eGyqJ5WCDMBDM/5eNDugzwaULNEV7G9ReNK9w1s/oJNiZnTjVan/Cd3P7do6JkH
         PSJpCJubjshU7JeFUmAeTGf8JdD4+joscmhooPizHZvUhcRMWcxoUWlS0SLvgMaYKLdc
         zTSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=fmC6ZttCbuUV3mQcU61eqnJXg3R8XxDS83/IAv6uMzw=;
        b=OnuJ+zJZZFPT8eg56m/lhErkTu3WRk52QfxJprZ2YQx4G/2R6BNUU+TCrfawzM9cLc
         xjK2+dL5jOUD/UYlxffu6cAEMXBYIRh/IdNpGY8JNXqOph60Nf3ohJOxWSYHZEiZz/LV
         cW8RWYzvzuHTabHnWKYkpawy64xeLl3rgiQLni6P8gF4M5y2eUutf1XvQKtBzQAjmMkP
         8t7Wqh/cn1cKDtJLaYEIcPrkchOp0/cPcGdRhy6c3YvjBr8eWqsG8lpq1g2qf5kUmYsY
         pbWsDDmtuKgfjf7pc2yQlk/0pYt80mt0Y9iMtutN1Ekdz6xcWv/UeW3yBxoV+875qFdQ
         2uuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BTZ4Del8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fmC6ZttCbuUV3mQcU61eqnJXg3R8XxDS83/IAv6uMzw=;
        b=P4PpPr+7qGY/Gtyhu+gdtzfXBbIqtbxdsD7h7puoNeKtoU8bpZ4JeA3qTdRuDXhMhY
         dG+mo7q+9MxpDbwnqVIosVorIh02N9z6NfrBG8/QqQp6V57v4VPZWYqpmrPXbIGj71CQ
         JvB+lLWcK1U6QKYJmCTTLyIC8tkiZ9AVBpezY7yVCjSKcuP2tqKRcFHJiq3VfkbSHR82
         9lFGzJeO3bgFjz9tULdUdT0pASOpmW+CXmGlJNq5+nB0OsHbchUlXlI48hv/Kv7p1T3E
         02JnvFF3cQPL18Oa1zJyheIuXLbp+GQpeXOK+U98nDCrAgO6gX6nY5c3jVgHG0lvxF+J
         FkDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fmC6ZttCbuUV3mQcU61eqnJXg3R8XxDS83/IAv6uMzw=;
        b=Uc3ZhiGPXxbv/ONvhn43rssT+K4tdj8SudL1k+PVjZP+kyxvbB+ntd1A5bsYnEZg7A
         hQxAtIYJUTsqnDWVV3rUMEbUjXuWYpleaHGW2MKhAIseHH2//8oYlocjDM66yhgqs6Ih
         Yi/MjK7m/tKHIZg0dinbpnuz0uY9ore4AVfHIFndGQkZVJI8qqlWHSAj0X38k2dWDNZ7
         pEnjvLJgYucWneNukKnWwx2iG9tnrMCaDlC57gV7TlPPaOPlO3KsETLb7KxKtQIe0+iw
         tQkY3ZOSrdIyjYlzfXSdK2/Q6HIAwgUw4toOfDr1Smlq8z5NbNS5qAoPdooHTj0jL/8Z
         OZzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fmC6ZttCbuUV3mQcU61eqnJXg3R8XxDS83/IAv6uMzw=;
        b=t8TudYiYzYgRNtaY+O3e5nbIUIMQg8C6UhEHYEjvGISpjlTGvmdC/wUE+YE6Xpr0UM
         RZDtkYx49710GEPdCmcWRCwHLY2Hc3betuMxL5SmWTz4GOuw26kmqI9KSfLNxhPGrHcB
         NNry4RA1TKVHBYrngfHmEHbELEmENE2QUL8HjkrMh/tQ4rHY1NiVgeaW+ATDSXFD2KHx
         khyV8d2UQ+2PX1fmwiQC0+TaLSgs3Y8jzQIQrVodiW7LrIf1QPQQeTIQbtcqwHnpAtqp
         lYVQMyeKCtWBILW3GiBis1ybJrBHhqMqMlw3smKjHHahry/uCi2rmUEJ/hMGb913Hbix
         mMaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336pvN4w931IdmypIdKwiR68KtepAVKEb+jr2vwp8Apx3zATxfW
	vnqtfP/6fe/cR5mdzzUsxFE=
X-Google-Smtp-Source: ABdhPJwjp0KnVjaToUW/rUMIk2VGKXCPGAXeu8Xp2s+BmDByq6ewQG0Npsi6i4DHkCQElnqyWB+5xg==
X-Received: by 2002:a5d:8f04:: with SMTP id f4mr28562235iof.33.1594089186246;
        Mon, 06 Jul 2020 19:33:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ab10:: with SMTP id v16ls4870590ilh.10.gmail; Mon, 06
 Jul 2020 19:33:06 -0700 (PDT)
X-Received: by 2002:a05:6e02:1070:: with SMTP id q16mr31323804ilj.221.1594089185954;
        Mon, 06 Jul 2020 19:33:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594089185; cv=none;
        d=google.com; s=arc-20160816;
        b=AUg6v5YCiD5BE28C4ZG2QKvB7rUHPLD8sUMDvjgJMFCVCjUlpSPOBAq/BVp7XV0dpE
         CdcNTWAfqM6dJ/ccaZ8AlhQ2TCM9NWbUr9/5NmlFrgpXhDNuuyu+uhTlXxrzdLivL7/N
         wMz1LbQDXNPl4vX6jA/lepdi1MTTbVZlFhsQFOdQdvhHJJavXF47TI6w6LPHhVd/rPVx
         VWJe8aVwkjf+XSUX1H140+CIdaMTHNycDWxewgrYul4TkOI146m7+rDfz9r4AB4mA4h0
         Nc2kvmeMmTYnDkNexqvU8+BXTkgUdgCaqCC07HZxA3nRaQsjx3cKrSvTTm37fBmixXc+
         ukFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=55CtWUVdGXOpxwmNO8x+wiwvjEpN2NeTBWHYLjkmUhY=;
        b=nR1z2FzRCjySjMjwpXSY3HISaSKj8EWZ13094NTrMcK89Nzqz4T595Mr5WLr/PeqZ+
         RDlAEJrr/x1QkDIjw6UxU4UfKfbBgxH9hnSKHjZAJKXCMLCDK+YG3Bkq1iToMN5eUApU
         969w4A9zBFcEMe1lOGvOf3c+bEwkITnzvtSS9Wl7a9I+rI1MxyjgPhsk6X2ZeucNQj3i
         4R8QLGUd5PTObJsgD6fpd/5HyyOhzkKW0i5DNGS9SPS8Pm9qg5w3VNlpo1Yg9bdm/oh5
         LN+/s0fKOg8UXxNnDv+Q4XnUdWmmewfm/WB72+bUrp4MRVV3XDyFVkX/nsTV+Rt4L0uy
         f7hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BTZ4Del8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id q80si1282609iod.0.2020.07.06.19.33.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 19:33:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id cv18so376623pjb.1
        for <clang-built-linux@googlegroups.com>; Mon, 06 Jul 2020 19:33:05 -0700 (PDT)
X-Received: by 2002:a17:90a:f695:: with SMTP id cl21mr2081171pjb.86.1594089185353;
        Mon, 06 Jul 2020 19:33:05 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:1000:7a00::1])
        by smtp.gmail.com with ESMTPSA id kx3sm698613pjb.32.2020.07.06.19.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2020 19:33:04 -0700 (PDT)
Date: Mon, 6 Jul 2020 19:33:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>, Mans Rullgard <mans@mansr.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sasha Levin <alexander.levin@microsoft.com>,
	Wolfram Sang <wsa-dev@sang-engineering.com>
Subject: Re: [linux-stable-rc:queue/5.4 109/220] /tmp/filter-273424.s:50187:
 Error: bad expression
Message-ID: <20200707023303.GA277193@ubuntu-s3-xlarge-x86>
References: <202007061558.jOn3THo0%lkp@intel.com>
 <CAKwvOdnA27AKP4aMGWBQXdjr3wi2XtbK2rvFj2btCGq6RCqGVw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnA27AKP4aMGWBQXdjr3wi2XtbK2rvFj2btCGq6RCqGVw@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BTZ4Del8;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jul 06, 2020 at 10:01:07AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Mon, Jul 6, 2020 at 12:20 AM kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git queue/5.4
> > head:   bb26a37d5a4bf25b8377c83fa407a219b3822ed1
> > commit: 5cee9e67596f7d694e94d7def7cd9d65a7599f66 [109/220] i2c: core: check returned size of emulated smbus block read
> > config: s390-randconfig-r024-20200706 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project a378c0449507e00e96534ff9ce9034e185425182)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install s390 cross compiling tool for clang build
> >         # apt-get install binutils-s390x-linux-gnu
> >         git checkout 5cee9e67596f7d694e94d7def7cd9d65a7599f66
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > Note: the linux-stable-rc/queue/5.4 HEAD bb26a37d5a4bf25b8377c83fa407a219b3822ed1 builds fine.
> >       It only hurts bisectibility.

Is this note talking about the config in general? Because that config
does not build at all... I see this over and over, even on mainline
(note that this report is initially against 5.4, which does not build
with versions of clang that support asm goto):

./arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi        $0,${1:b}'
                        "oi     %0,%b1\n"
                        ^
./arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni        $0,${1:b}'
                        "ni     %0,%b1\n"
                        ^

> > All errors (new ones prefixed by >>):
> >
> >                                            ~~~~~~~~~~ ^
> >    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
> >    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
> >                                                              ^
> >    include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
> >            ___constant_swab32(x) :                 \
> >                               ^
> >    include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
> >            (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
> >                      ^
> >    In file included from net/core/filter.c:25:
> >    In file included from include/linux/sock_diag.h:5:
> >    In file included from include/linux/netlink.h:7:
> >    In file included from include/linux/skbuff.h:31:
> >    In file included from include/linux/dma-mapping.h:11:
> >    In file included from include/linux/scatterlist.h:9:
> >    In file included from arch/s390/include/asm/io.h:76:
> >    include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
> >                                            ~~~~~~~~~~ ^
> >    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
> >    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
> >                                                              ^
> >    include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
> >            ___constant_swab32(x) :                 \
> >                               ^
> >    include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
> >            (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
> >                      ^
> >    In file included from net/core/filter.c:25:
> >    In file included from include/linux/sock_diag.h:5:
> >    In file included from include/linux/netlink.h:7:
> >    In file included from include/linux/skbuff.h:31:
> >    In file included from include/linux/dma-mapping.h:11:
> >    In file included from include/linux/scatterlist.h:9:
> >    In file included from arch/s390/include/asm/io.h:76:
> >    include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
> >                                            ~~~~~~~~~~ ^
> >    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
> >    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
> >                                                              ^
> >    include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
> >            ___constant_swab32(x) :                 \
> >                               ^
> >    include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
> >            (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
> >                      ^
> >    In file included from net/core/filter.c:25:
> >    In file included from include/linux/sock_diag.h:5:
> >    In file included from include/linux/netlink.h:7:
> >    In file included from include/linux/skbuff.h:31:
> >    In file included from include/linux/dma-mapping.h:11:
> >    In file included from include/linux/scatterlist.h:9:
> >    In file included from arch/s390/include/asm/io.h:76:
> >    include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
> >                                            ~~~~~~~~~~ ^
> >    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
> >    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
> >                                                              ^
> >    include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
> >            __fswab32(x))
> >                      ^
> >    In file included from net/core/filter.c:25:
> >    In file included from include/linux/sock_diag.h:5:
> >    In file included from include/linux/netlink.h:7:
> >    In file included from include/linux/skbuff.h:31:
> >    In file included from include/linux/dma-mapping.h:11:
> >    In file included from include/linux/scatterlist.h:9:
> >    In file included from arch/s390/include/asm/io.h:76:
> >    include/asm-generic/io.h:503:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            __raw_writeb(value, PCI_IOBASE + addr);
> >                                ~~~~~~~~~~ ^
> >    include/asm-generic/io.h:513:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
> >                                             ~~~~~~~~~~ ^
> >    include/asm-generic/io.h:523:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
> >                                             ~~~~~~~~~~ ^
> >    include/asm-generic/io.h:585:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            readsb(PCI_IOBASE + addr, buffer, count);
> >                   ~~~~~~~~~~ ^
> >    include/asm-generic/io.h:593:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            readsw(PCI_IOBASE + addr, buffer, count);
> >                   ~~~~~~~~~~ ^
> >    include/asm-generic/io.h:601:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            readsl(PCI_IOBASE + addr, buffer, count);
> >                   ~~~~~~~~~~ ^
> >    include/asm-generic/io.h:610:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            writesb(PCI_IOBASE + addr, buffer, count);
> >                    ~~~~~~~~~~ ^
> >    include/asm-generic/io.h:619:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            writesw(PCI_IOBASE + addr, buffer, count);
> >                    ~~~~~~~~~~ ^
> >    include/asm-generic/io.h:628:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            writesl(PCI_IOBASE + addr, buffer, count);
> >                    ~~~~~~~~~~ ^
> >    20 warnings generated.
> >    /tmp/filter-273424.s: Assembler messages:
> > >> /tmp/filter-273424.s:50187: Error: bad expression
> > >> /tmp/filter-273424.s:50187: Error: junk at end of line, first unrecognized character is `r'
> 
> ^ it looks like Clang's s390 backend is generating assembler that GNU
> `as` doesn't recognize. (I've seen similar issues attempting to get
> dwarf-5 working for the kernel).

This might be solved with commit c4e5c229b610 ("s390/jump_label: use "i"
constraint for clang").

> >    /tmp/filter-273424.s:52249: Error: bad expression
> >    /tmp/filter-273424.s:52249: Error: junk at end of line, first unrecognized character is `r'
> >    clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200707023303.GA277193%40ubuntu-s3-xlarge-x86.
