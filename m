Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJG4W36QKGQE5WWMXZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA022B10A7
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 22:50:29 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id l188sf4905601pfl.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 13:50:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605217828; cv=pass;
        d=google.com; s=arc-20160816;
        b=NCzu4+QfNVkC2IjjrQlC0RHA0xGezEhtDDr25lOdh4AXJW+18iUeMVo3em/3FbPOZn
         bftwEOl+89Sr56fsZtpqsIciuEVYfC37g1VDHJG48YnbZcJLtJP123q8G456lYWylwtT
         ytsRSKqM3lb4z1T0i8ygmTFlHoawzVSulm35AK0l940M76MNp/1f/UeM8EqikXuAnEID
         dErfh5FpOUXj3rEMmZu6Lgv2HY0DGhVN69QBQh3M1gINyqk4g3EH3LwvbQD0M3mXpYPd
         /It8woOBkY2gwFpBaJEiVAW1xygqQgnqvJrs4SVJ873csYGO2bF7b9eRfYXJwXqm8wlV
         2yRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=T2tScU2WiH8hh+hFSWeDQOmU1Cp0S6SHKli+XKtlyLI=;
        b=TzzhaY/Cld77RW7JP8h67YJCrBOUOIIzENZIpbBDp2f4Qbp9fs09kqKe9SdzRkjTaU
         Y7eZ0+oNfezREVDFlQUMAWDN4VGW/5hVaRdAkNS0NRY6j6jyqj8kBT2rErg5D+zgh2K2
         YsG13x8oyzrbmn/3qpRTiIOYs0KeYgSLNCD3t83mxw4sT6LxtVfpm/hRy+WO8uwiFx47
         d/3d9b1/iWgDFei2tS5EOj2t4xHPHaHBZidAT9eSyEO4uhCAkG1s5XOoWBuaLD+kLeeF
         VnSmnTp3/BsTwVOKHcmNZNf2l4bKu7SgTtR9ci/6r/5FnF9urqhkhLop3pPXoYgQMk9E
         YqGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VyGxocSm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T2tScU2WiH8hh+hFSWeDQOmU1Cp0S6SHKli+XKtlyLI=;
        b=CA9O/cz//V6+7qslHylUMU8bgMhGA6BGpBWZPGqux2cRxMUGU9FrwpdUAnSoKju6Kx
         Np0+615lzhlC+Sqj9OrhckLtqNTYoO29B/TQp5sB0065Y5QIa14ZAaX6/nPm5C0tfR9X
         J933/kLg18bbFNzKcDzNSYFRnF3uyhcnyLsYdPUtG2uYW1cCO+e3pQTqI3cskatgJRKI
         Gzk7l5UUVOho9omEvKrWkN+teOVX50k26BsESwLwU85CVImRDO5p1ztNuwX319/tC+xa
         f3DHnkpan3PLRuKoYk7WflqGE1KU2kKvy6T5MYOVPtWRxf7ushraUqfuuzAqYiwAx8Em
         qcfw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T2tScU2WiH8hh+hFSWeDQOmU1Cp0S6SHKli+XKtlyLI=;
        b=J2M2GZGN7/Vq3sKwbTnK7Me4PFqq66gBcC+qObGemSvsJegw7o3KT5APAj0mBSJwJ1
         eNrI8oM0gPoM8LqLQNqMmuZdh5N+rGciwlpXiCyzwghRR16WGgEm3OzVu2Q/VJJminXh
         R/F4A4Mru2XQEnOGFKeg2bjou8FS2WjM99loZQMANDAdCu7i3QuXgjOtONLBLZSDswR1
         flh60s7j5WlP1heDd+hz/aBhkRoe6K+OUJvsINpRzn7fqnV9iWt5Z1vBQji/L1yx1Yxo
         yP7SjC5Y6ygOddH+/+hxBWCY/vKTQXOqRm8VZWVrGiPHNOH51ZNsGva8NydoxuCeKWkj
         MY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T2tScU2WiH8hh+hFSWeDQOmU1Cp0S6SHKli+XKtlyLI=;
        b=QOeUHRAE5SqWrPkTjj7Dq8YqY1Ce1l5cfe/tFCyOkKexjyqRES9gs2b256586fnUUP
         HDPUVT/WJtC/EuLnZ4uLxxYeDVQkfQN7Zm9CCDR+nfU63leQRxxg5162pfKbZq9+tISe
         RFdKJN69qfTTSDyJpXg0qTtoh3kM7ibjxSkcrEwTucigDAVSrOFuv17I7TtKzyD+z9va
         ywwjVnHNLQDjBOKPszOTbYM6058zomuywO5eugHiwzf3r+zLw6lXN2ffYsPPrMiiGKyd
         1AxkCtq5Wevmn7oyyiwMpaguuV0GA/VN+42TG3YJK2hH1OnxY7eTXIo89xUdp60qN3NE
         6Eow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531eIBjLhv0PcJjfFlqwq4K52yZU3h2EfdcusICc7mQ9ubJTy477
	rHQinp2bZuCk8+D5/V1LWw4=
X-Google-Smtp-Source: ABdhPJxslqn73cwV4V5mD7nNYjuEu8SwaKwHHCKwRSAlWIt3fPL+JUyhNz4CZRI7E9rarclRXToXbg==
X-Received: by 2002:a17:902:b90c:b029:d6:868d:f566 with SMTP id bf12-20020a170902b90cb02900d6868df566mr1256013plb.2.1605217828629;
        Thu, 12 Nov 2020 13:50:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8cc4:: with SMTP id m187ls1440086pfd.4.gmail; Thu, 12
 Nov 2020 13:50:28 -0800 (PST)
X-Received: by 2002:a05:6a00:845:b029:18c:37ef:de76 with SMTP id q5-20020a056a000845b029018c37efde76mr1327981pfk.80.1605217828043;
        Thu, 12 Nov 2020 13:50:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605217828; cv=none;
        d=google.com; s=arc-20160816;
        b=U6DFyoKbUpALdeW34VGJGli16ja7E2o6B6MccrSWVGa8rSnuM6E3X6gJJDGnnlJds9
         c/vQhV+f+QHEDLnUPfPMdONUjlf3FYX+UUT7MG4FTab0/r25tETvsMyxgb3S9KCxtg0a
         +lx/3cIl71nVcRI3brDC4bLwLaTb/5jw5X6Xq48Wo1Us/8NXo49RIKDJiXxquRYCnI4m
         X+oKmtCVfRfQNvVIGwncwENPFHvnBcDtqYHZSBi4rNFuEF4PEefZShVOiwAJgMMmOBc/
         XwRPk+Ua/tySGV4X2yCDVa3C4ooNhIIrotkBbzLoM3fvQNOnAjq1JUijWa/Ch6CESEdL
         /V0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=t9uXZCibzviLXlkgFY4GlBUcWyC+ILxJ08Y+bCgohJU=;
        b=t6U29W1jmO4eebtX7PogjcvEPLGZJ12e4tdL5ksyVMasOzrAoVl1j/yXVZ5YC8pj3J
         bUzowyH/+JizPF/VENDuBBeFsCeB9rIBBFYLQcF8oJ7yaEI4JuT3FJ0zj0LexOcEzZac
         7oyFZOu+pxRGJQCaLK2yemXj4oNGhm0P+BokE4BnbkdM3IS6pM5kJ5UYjDsEkAXZKBgk
         LmRa2yED6vzQUZZPEWFKTllXGsdwdWO617Ph/ay4Os1l4aqRmL9xwsUI4emLRqUimufn
         dLj03MY8xPBAqhnNpW3Th7Bves6jIrH7B3c6tLW8AZpkF+q8LcIyIMbPxVAMbzvXU2oj
         mxeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VyGxocSm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id s9si346054pfm.1.2020.11.12.13.50.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 13:50:28 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id e5so3630643qvs.1
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 13:50:28 -0800 (PST)
X-Received: by 2002:a0c:b65b:: with SMTP id q27mr1836700qvf.8.1605217827183;
        Thu, 12 Nov 2020 13:50:27 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id l3sm6045092qkj.114.2020.11.12.13.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 13:50:26 -0800 (PST)
Date: Thu, 12 Nov 2020 14:50:25 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>, kernel@collabora.com,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/2] arm: lib: xor-neon: move pragma options to
 makefile
Message-ID: <20201112215025.GA55620@ubuntu-m3-large-x86>
References: <20201112212457.2042105-1-adrian.ratiu@collabora.com>
 <20201112212457.2042105-3-adrian.ratiu@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201112212457.2042105-3-adrian.ratiu@collabora.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VyGxocSm;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Nov 12, 2020 at 11:24:57PM +0200, Adrian Ratiu wrote:
> Using a pragma like GCC optimize is a bad idea because it tags
> all functions with an __attribute__((optimize)) which replaces
> optimization options rather than appending so could result in
> dropping important flags. Not recommended for production use.
> 
> Because these options should always be enabled for this file,
> it's better to set them via command line. tree-vectorize is on
> by default in Clang, but it doesn't hurt to make it explicit.
> 
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/arm/lib/Makefile   |  2 +-
>  arch/arm/lib/xor-neon.c | 10 ----------
>  2 files changed, 1 insertion(+), 11 deletions(-)
> 
> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> index 6d2ba454f25b..12d31d1a7630 100644
> --- a/arch/arm/lib/Makefile
> +++ b/arch/arm/lib/Makefile
> @@ -45,6 +45,6 @@ $(obj)/csumpartialcopyuser.o:	$(obj)/csumpartialcopygeneric.S
>  
>  ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
>    NEON_FLAGS			:= -march=armv7-a -mfloat-abi=softfp -mfpu=neon
> -  CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
> +  CFLAGS_xor-neon.o		+= $(NEON_FLAGS) -ftree-vectorize -Wno-unused-variable
>    obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
>  endif
> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> index e1e76186ec23..62b493e386c4 100644
> --- a/arch/arm/lib/xor-neon.c
> +++ b/arch/arm/lib/xor-neon.c
> @@ -14,16 +14,6 @@ MODULE_LICENSE("GPL");
>  #error You should compile this file with '-march=armv7-a -mfloat-abi=softfp -mfpu=neon'
>  #endif
>  
> -/*
> - * Pull in the reference implementations while instructing GCC (through
> - * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
> - * NEON instructions.
> - */
> -#ifdef CONFIG_CC_IS_GCC
> -#pragma GCC optimize "tree-vectorize"
> -#endif
> -
> -#pragma GCC diagnostic ignored "-Wunused-variable"
>  #include <asm-generic/xor.h>
>  
>  struct xor_block_template const xor_block_neon_inner = {
> -- 
> 2.29.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112215025.GA55620%40ubuntu-m3-large-x86.
