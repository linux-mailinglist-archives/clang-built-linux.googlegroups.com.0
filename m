Return-Path: <clang-built-linux+bncBDD6VEWXZUOBBHGTSKDAMGQEXZQAXOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B423A4EB2
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 14:33:33 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id r15-20020a62e40f0000b02902ec871096d3sf4966125pfh.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 05:33:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623501212; cv=pass;
        d=google.com; s=arc-20160816;
        b=UotihhuTJsaj+Lq68vh59gNRiPoYRGpgXYp7+ErjVsMUY2TI4P96TAoijNslU5t85u
         X0M1ar9qh9opHCzm5+3ev6ew5GQdXPPzg8x8zRIC/yJwK2OFq18sN04bwE3hE6DYJBVt
         mvzoHLyur381oayteVZGo4TE+boFPN6NYlozBDHf7u6VUKWQ7V6rihcKi0Dv4EKDkOuo
         3GJVx8RcHSu+Y5kCoR9bY6faIeRbPiyucKzyqHpAqykCJeTpaPOOmS1PuZtCMZ6PuE5a
         vHiE++vHUTmJ2s+duMGqtPhHWl05BDLx9CCrRQUXr3utOJwG3BXKwuE5wCnHzbg2LmQR
         x4aA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=6ap3h/NYzvPeiFhUB0sR1LM1gXkdalOyldI1FTDFhVo=;
        b=m04dNUozbTCidUnJ+K1FJIQCsXlxr5YUt4Ega5GdNO/8TlvsZYes8qWKRAH8QQIrY+
         T/Xlw0iGG4/aeYy+h5qwyIFJR+b8X9RxAE9rBnsadjzVAowkYFKI9FboIUc18y+f5g46
         2OHjPxwptaRocUtMdwW0EUhrOfnkilnkqa1SO5gn+8MderFwb6jqAx2btH6abTqyViUc
         yuPXv39ViXGUR5Q3ipyjlAiWHYa2l0/VtMykSVSmPXDUNsUZ5Ku63EbXx/meqPc9zSiX
         RTok6yU1YZE6VzEegzGsZbBiMUbdLfo6CefAh/D4fD+BC/afZYeH61yhNp0XH6JZHOwD
         es3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=viqW5NaA;
       spf=pass (google.com: domain of elder@linaro.org designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=elder@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6ap3h/NYzvPeiFhUB0sR1LM1gXkdalOyldI1FTDFhVo=;
        b=bJOVEs7jC/R+nKQrfod4aBuCa2oKY9jH9anxDRf+xSnsTFj3/v0d+nfx50kAwH3B2F
         vplvAAhJapjqUS2/fDgJZZ4n9t4hPJ380z+nYo5bXy5/end+tRrdwV41ZeM3JvABQvLJ
         Ogd2EUopF3hK+/OX1sXbg62hUtszRhXOlIsrR3LGu2eLb2IcpnjEtZLCrcgMT8wsV3UZ
         36TxL3Vg/br6XKK+pr/yRF5FNwz7VF+1xbto3kBvmnomCMW0SFG/kkSkUFu/IVieQ0LE
         x1KmF3ARAipJ2vDba9+Gx0GCjGK2lRr78GWXfEYb2A6nchn77QDkwk0013cYT6iARM0M
         Ou5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6ap3h/NYzvPeiFhUB0sR1LM1gXkdalOyldI1FTDFhVo=;
        b=Z0+u/6P+c8Lhp61y22QK2Ayi1dSAp1eyPDDEO0qBBrRKyvGO6VGk8ncU/zp90pd4vx
         sFt2JTEO/r1WvXS26QvlKKUQCYlB2P6M/vcCXDKRRTGbgNTZ6F159uN7A5FDPSQQQdS3
         kj+r9YQsoZsvfULTfXn8c6p3Vc2pmpbUZyMJUFUboEmYkYM6HKbhD6eUh9hc291rXW/4
         Rud0hH012gP4UOTJs0whV85tRIXZHRuxScl0/wFqKrI24eWvUH4Rb0RV+OULXdFeFtmv
         0Oaahvkc34Ro7Lv6TY9rEq486/sOjTi6NedIAQJe4sA/kxDC9k8UhdHuqHZMxoIs6VK/
         zVHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319lhR8yYQohrbvVK5UrDyN5D7Nktf/QAcOMfJqfiojg5QyxuX3
	6QVE9mn+SgVlMhG2p/q60iI=
X-Google-Smtp-Source: ABdhPJyksWgvV8psGtNR8XGXx2LIYvCNNn7ArsIEZCJpaKwEErbmqdQ4wBReTFKgs//R2Yz1bv0DEA==
X-Received: by 2002:a17:90a:398f:: with SMTP id z15mr9304972pjb.183.1623501212131;
        Sat, 12 Jun 2021 05:33:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bb11:: with SMTP id u17ls7753139pjr.1.gmail; Sat, 12
 Jun 2021 05:33:31 -0700 (PDT)
X-Received: by 2002:a17:90b:8c4:: with SMTP id ds4mr9346448pjb.65.1623501211553;
        Sat, 12 Jun 2021 05:33:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623501211; cv=none;
        d=google.com; s=arc-20160816;
        b=0TEMaTcqnnxHRvg3qbFx0TuoRoIXePaH2kVPOfjTWh63xwB66KSuxQ2p6P/cK2LEsV
         OAtOkFRFEfkNh3TzX1lPycC3E8jbCTNaW+B6Xd2xHyDTqmVGgo0ZtzXwgycXlVt3fod8
         Qe+vSTNFkMYGkq3ixyw4nl5CDhMP76Rk6NJMFF+TWi95+YRpBzwAWScwNANEJe6ubCE3
         krClYPW+YA6YUplLPCdc09D+EVbj2IQjURHJ//wyOgHtxNIH1GJBsYnR5DpQ08QqYu7C
         Ih8GVlhdmek+1+et7SxxB88JxE2YlnBpBpCTD5kruIiB2gumGjbl0YOg6zRre4jn9Vt+
         eheQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=MkO2b+CVh7IzOgULRc164jt78wocLJqrFE5p62/XZ5U=;
        b=HwLY/2WUJdKhRfp9UgHq6N11VNbHurI76mbFWalKjKBTAMvIy8JJSfqn50lTfGmAMt
         DsbsJZ9pJZ0tliWVrTH6oagvScYRo2IVUI7plfnSxxa4J2ehZ2Cqi6LRzuEEwCHILEOT
         aLg2Ytjxa8codiXDrYZjEz0HmamSNlN2K2Eid4FsWIkHRpiSt4cMoHZkrkQ0+72JR8ZV
         MmnqfTN/vJS9d/ZrmSYrbnZeW7gIcawxXyWiudKJ/KqBqcPT+iIY7s6zVkzfAntQoPbd
         hjoPf0+O2bqhMWq8Sn+1sfZwbZoa/jDwu/k9i1z8cS/jCPlNZx2vN9N8Ey5j1jzMkNNb
         XApQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=viqW5NaA;
       spf=pass (google.com: domain of elder@linaro.org designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=elder@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com. [2607:f8b0:4864:20::d2c])
        by gmr-mx.google.com with ESMTPS id d123si810217pfa.2.2021.06.12.05.33.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Jun 2021 05:33:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of elder@linaro.org designates 2607:f8b0:4864:20::d2c as permitted sender) client-ip=2607:f8b0:4864:20::d2c;
Received: by mail-io1-xd2c.google.com with SMTP id 5so34387427ioe.1
        for <clang-built-linux@googlegroups.com>; Sat, 12 Jun 2021 05:33:31 -0700 (PDT)
X-Received: by 2002:a5d:8254:: with SMTP id n20mr7038908ioo.85.1623501211040;
        Sat, 12 Jun 2021 05:33:31 -0700 (PDT)
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.googlemail.com with ESMTPSA id z3sm5031782ior.14.2021.06.12.05.33.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Jun 2021 05:33:30 -0700 (PDT)
Subject: Re: [mptcp:export 1167/1239]
 drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:438:10: error: implicit
 declaration of function 'rmnet_map_ipv6_dl_csum_trailer'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 mptcp@lists.linux.dev
References: <202106121755.M0qrNujQ-lkp@intel.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <60992c8a-0c06-2d5b-78a3-1079f591e151@linaro.org>
Date: Sat, 12 Jun 2021 07:33:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <202106121755.M0qrNujQ-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: elder@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=viqW5NaA;       spf=pass
 (google.com: domain of elder@linaro.org designates 2607:f8b0:4864:20::d2c as
 permitted sender) smtp.mailfrom=elder@linaro.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=linaro.org
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

On 6/12/21 4:01 AM, kernel test robot wrote:
> tree:   https://github.com/multipath-tcp/mptcp_net-next.git export
> head:   5b5cad2a38b3527807ad9a9de3dbaeccfa7b7806
> commit: 75db5b07f8c393c216fd20f7adc9a167fc684c23 [1167/1239] net: qualcomm: rmnet: eliminate some ifdefs
> config: powerpc-randconfig-r035-20210612 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d2012d965d60c3258b3a69d024491698f8aec386)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # https://github.com/multipath-tcp/mptcp_net-next/commit/75db5b07f8c393c216fd20f7adc9a167fc684c23
>         git remote add mptcp https://github.com/multipath-tcp/mptcp_net-next.git
>         git fetch --no-tags mptcp export
>         git checkout 75db5b07f8c393c216fd20f7adc9a167fc684c23
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

And now I know that IPv6 is not enabled for the PowerPC build.
Thanks kernel test robot!

Working on a fix now.

					-Alex

> All errors (new ones prefixed by >>):
> 
>    __do_insb
>    ^
>    arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
>    #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:7:
>    In file included from include/linux/netdevice.h:37:
>    In file included from include/net/net_namespace.h:38:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:85:1: note: expanded from here
>    __do_insw
>    ^
>    arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
>    #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:7:
>    In file included from include/linux/netdevice.h:37:
>    In file included from include/net/net_namespace.h:38:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:87:1: note: expanded from here
>    __do_insl
>    ^
>    arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
>    #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:7:
>    In file included from include/linux/netdevice.h:37:
>    In file included from include/net/net_namespace.h:38:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:89:1: note: expanded from here
>    __do_outsb
>    ^
>    arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
>    #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:7:
>    In file included from include/linux/netdevice.h:37:
>    In file included from include/net/net_namespace.h:38:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:91:1: note: expanded from here
>    __do_outsw
>    ^
>    arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
>    #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:7:
>    In file included from include/linux/netdevice.h:37:
>    In file included from include/net/net_namespace.h:38:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:93:1: note: expanded from here
>    __do_outsl
>    ^
>    arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
>    #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>> drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:438:10: error: implicit declaration of function 'rmnet_map_ipv6_dl_csum_trailer' [-Werror,-Wimplicit-function-declaration]
>                    return rmnet_map_ipv6_dl_csum_trailer(skb, csum_trailer, priv);
>                           ^
>    drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:438:10: note: did you mean 'rmnet_map_ipv4_dl_csum_trailer'?
>    drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:42:1: note: 'rmnet_map_ipv4_dl_csum_trailer' declared here
>    rmnet_map_ipv4_dl_csum_trailer(struct sk_buff *skb,
>    ^
>>> drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:472:3: error: implicit declaration of function 'rmnet_map_ipv6_ul_csum_header' [-Werror,-Wimplicit-function-declaration]
>                    rmnet_map_ipv6_ul_csum_header(iphdr, ul_header, skb);
>                    ^
>    drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:472:3: note: did you mean 'rmnet_map_ipv4_ul_csum_header'?
>    drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:198:1: note: 'rmnet_map_ipv4_ul_csum_header' declared here
>    rmnet_map_ipv4_ul_csum_header(void *iphdr,
>    ^
>    7 warnings and 2 errors generated.
> 
> 
> vim +/rmnet_map_ipv6_dl_csum_trailer +438 drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c
> 
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  410  
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  411  /* Validates packet checksums. Function takes a pointer to
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  412   * the beginning of a buffer which contains the IP payload +
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  413   * padding + checksum trailer.
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  414   * Only IPv4 and IPv6 are supported along with TCP & UDP.
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  415   * Fragmented or tunneled packets are not supported.
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  416   */
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  417  int rmnet_map_checksum_downlink_packet(struct sk_buff *skb, u16 len)
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  418  {
> bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  419  	struct rmnet_priv *priv = netdev_priv(skb->dev);
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  420  	struct rmnet_map_dl_csum_trailer *csum_trailer;
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  421  
> bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  422  	if (unlikely(!(skb->dev->features & NETIF_F_RXCSUM))) {
> bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  423  		priv->stats.csum_sw++;
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  424  		return -EOPNOTSUPP;
> bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  425  	}
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  426  
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  427  	csum_trailer = (struct rmnet_map_dl_csum_trailer *)(skb->data + len);
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  428  
> cc1b21ba6251c8 Alex Elder                     2021-03-15  429  	if (!(csum_trailer->flags & MAP_CSUM_DL_VALID_FLAG)) {
> bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  430  		priv->stats.csum_valid_unset++;
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  431  		return -EINVAL;
> bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  432  	}
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  433  
> 75db5b07f8c393 Alex Elder                     2021-06-11  434  	if (skb->protocol == htons(ETH_P_IP))
> bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  435  		return rmnet_map_ipv4_dl_csum_trailer(skb, csum_trailer, priv);
> 75db5b07f8c393 Alex Elder                     2021-06-11  436  
> 75db5b07f8c393 Alex Elder                     2021-06-11  437  	if (IS_ENABLED(CONFIG_IPV6) && skb->protocol == htons(ETH_P_IPV6))
> bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15 @438  		return rmnet_map_ipv6_dl_csum_trailer(skb, csum_trailer, priv);
> 75db5b07f8c393 Alex Elder                     2021-06-11  439  
> bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  440  	priv->stats.csum_err_invalid_ip_version++;
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  441  
> 75db5b07f8c393 Alex Elder                     2021-06-11  442  	return -EPROTONOSUPPORT;
> bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  443  }
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  444  
> b6e5d27e32ef60 Sharath Chandra Vurukala       2021-06-02  445  static void rmnet_map_v4_checksum_uplink_packet(struct sk_buff *skb,
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  446  						struct net_device *orig_dev)
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  447  {
> bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  448  	struct rmnet_priv *priv = netdev_priv(orig_dev);
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  449  	struct rmnet_map_ul_csum_header *ul_header;
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  450  	void *iphdr;
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  451  
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  452  	ul_header = (struct rmnet_map_ul_csum_header *)
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  453  		    skb_push(skb, sizeof(struct rmnet_map_ul_csum_header));
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  454  
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  455  	if (unlikely(!(orig_dev->features &
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  456  		     (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM))))
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  457  		goto sw_csum;
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  458  
> 75db5b07f8c393 Alex Elder                     2021-06-11  459  	if (skb->ip_summed != CHECKSUM_PARTIAL)
> 75db5b07f8c393 Alex Elder                     2021-06-11  460  		goto sw_csum;
> 75db5b07f8c393 Alex Elder                     2021-06-11  461  
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  462  	iphdr = (char *)ul_header +
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  463  		sizeof(struct rmnet_map_ul_csum_header);
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  464  
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  465  	if (skb->protocol == htons(ETH_P_IP)) {
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  466  		rmnet_map_ipv4_ul_csum_header(iphdr, ul_header, skb);
> b6e5d27e32ef60 Sharath Chandra Vurukala       2021-06-02  467  		priv->stats.csum_hw++;
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  468  		return;
> 75db5b07f8c393 Alex Elder                     2021-06-11  469  	}
> 75db5b07f8c393 Alex Elder                     2021-06-11  470  
> 75db5b07f8c393 Alex Elder                     2021-06-11  471  	if (IS_ENABLED(CONFIG_IPV6) && skb->protocol == htons(ETH_P_IPV6)) {
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07 @472  		rmnet_map_ipv6_ul_csum_header(iphdr, ul_header, skb);
> b6e5d27e32ef60 Sharath Chandra Vurukala       2021-06-02  473  		priv->stats.csum_hw++;
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  474  		return;
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  475  	}
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  476  
> 75db5b07f8c393 Alex Elder                     2021-06-11  477  	priv->stats.csum_err_invalid_ip_version++;
> 75db5b07f8c393 Alex Elder                     2021-06-11  478  
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  479  sw_csum:
> 86ca860e12ec0f Alex Elder                     2021-03-15  480  	memset(ul_header, 0, sizeof(*ul_header));
> bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  481  
> bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  482  	priv->stats.csum_sw++;
> 5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  483  }
> e1d9a90a9bfdb0 Sharath Chandra Vurukala       2021-06-02  484  
> 
> :::::: The code at line 438 was first introduced by commit
> :::::: bbde32d38bfbbc4a6970498c7470a8a817122735 net: qualcomm: rmnet: Add support for ethtool private stats
> 
> :::::: TO: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
> :::::: CC: David S. Miller <davem@davemloft.net>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/60992c8a-0c06-2d5b-78a3-1079f591e151%40linaro.org.
