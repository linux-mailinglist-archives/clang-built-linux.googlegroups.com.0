Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBW6VXGEQMGQEGTGUE6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5533FCC7A
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 19:46:12 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id c6-20020aca35060000b029025c5504f461sf4067oia.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 10:46:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630431964; cv=pass;
        d=google.com; s=arc-20160816;
        b=FZVHa5DNLd4JMbvO+CDO5iQKCuj9JL8VxYcWw8+PKmFCTK8yBgKIz3IuGayR2dqGsM
         naWEK52lhq7CtNsN8BtCpMGSzjSFeXa8yJw+gq4wu7s2VjEASo5AJXIEuQDt4/DuKgaC
         xx1njpGJqLzJ8sd+xYfDIS/tFmCAxoOr7IbyaNmLUgBDSBZNyCSHQ8nMLYmnwLSIh9fo
         5K6Cd+JfhnaTdeB3k9xNPTwUwXf3tWXtiXCq0V8AmBHDKlh9jhdKCYwO4sSkQKvvsA8V
         nJSwUsadTsLZsZDj+N0XO3BJWE63NmKOJWNS2LtPKgjX8WQwtgpmXtHZZT4Hmclkc0Lj
         GW+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=T8ZeAKMr2DywY5ctdvn65w8GNq6luEmLoU1GueQWnxg=;
        b=IlE8cIcVbFZljfu/Sx4zVpqcn3NPRm4XnoUkP70ZKGwLZLfUkhtboTD8DTihBi/89f
         qGu1B+bBKyixIgNA97+OPQqBpv2/WIFJYzawuXvTLPjjnuxNeh6FqpWnexSy1h35fTU1
         adAfXEJBlCQRQi44R/p+WpfR7O62o9dLr5W8N4B5TseVBVFAP9Qk7S7ac3taoKqbnzxu
         TJCL6VlleqPqpGFcs8RkV0osl2b4Q+Uv3F1zF/qYC+u2U13S4kfeKY4HnYEGNcka5JrH
         ARhC9s0e8Bb4RBHy6N32GegI0coBRK3jVOISYymVz/ROr8iIxpFikhz3ilMy+jORF40A
         f5jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YhuvLsEj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T8ZeAKMr2DywY5ctdvn65w8GNq6luEmLoU1GueQWnxg=;
        b=Hqr4CrZTf6/+2/uMKpcbO4Zm7JkpWQVl5bcGAglgoo7WsTzyJqx2xTF073GUyaseft
         lvulSHNUK9cPYox/Ga5qPgszfjxlu5kgsxFLWi7XJAq9B4xTjJn5aJdrQLEB75gngJ0M
         sFTCwEtlKk8Fq3fbOkoB5eXzDaFk84DPYxBDfk6onlAsbMjCiDAWJCGTeJBwPk8YZ5MS
         pHsnSxPwmuYqLH0lPHxoVhcj0JFe7H9MrUEipvo3SuzRqAMJCRbW0W6HPhMa4pTR/V92
         Cl5gcIGL8ItU6Qc43K4BOFQhFdNAdZbGknqsiej8iUpbkKPj46ewSDXtuveJXlEAaIvH
         O9rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T8ZeAKMr2DywY5ctdvn65w8GNq6luEmLoU1GueQWnxg=;
        b=L5AMgLj3X5fG6VEr/lKS8Wld7lcLs8HsUpnrCLiVZkt08Mcx0TUvIN3BAUmpdeCzSq
         XUtqusltAmqj7L45VnZYLW4IMwy8SwzXaYaFhkntb3uW7M6r+su2jMGi9+8kTHHH/hGu
         SyvXj7a2f0yO+Tteo3fjv1dGMq9PLIp3JBlzMlS/ZaV5duIX3SjAT+mSinoT2b4vAmAz
         PGC1Yc3Z07/uyRYUvO09B0PIO7uQ+igxHdda6D3QDgzexOzLPMfY0o3u0l03sHTyzWtS
         nzGchqQe22fE0f+0y0OLAVjWmkWIFD/5olCvBH5nV49OvYGpkW1tJJbW0D5HEeHd9y+y
         Dp/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kZ/BSnXxe22RU+P6YXOON4x59Adi15d6Thcc+X25NG6IxayET
	tay2Hf+IMigYIJyTb+NuQfo=
X-Google-Smtp-Source: ABdhPJyNWivr/ZyhbCMJkXSJIPgEjoh/wKf2Xi5Yg6rrT8MPPZv3lLg+r4APsWa4oSYTPGxNljEhRg==
X-Received: by 2002:a05:6830:4117:: with SMTP id w23mr24415262ott.40.1630431963937;
        Tue, 31 Aug 2021 10:46:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e87:: with SMTP id n7ls5621918otr.4.gmail; Tue, 31
 Aug 2021 10:46:03 -0700 (PDT)
X-Received: by 2002:a05:6830:3114:: with SMTP id b20mr25434867ots.17.1630431963604;
        Tue, 31 Aug 2021 10:46:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630431963; cv=none;
        d=google.com; s=arc-20160816;
        b=OOo87lBp9GxCO606oE/TBvyiWjk5/EIPFmNfyhP7/N8FShbWGoculqPdwnsvMU8DKu
         uBgKr3qygfVk6DhOfk45oBd1RPmoFSMcQgV8XhcRy9NFEdPHqd12MpasGEgWVouKxsQs
         f30hmqMVdbGvWgl2RIx9nnYTEbJZv+mn1cOXkW+yRa8xHsfpZ92RyP8v3//HddxblaYa
         AqJt8O4hghtnskS0omMXAataIycKCqzRiNphAz0MVlR1uYkLUBGRLa6urZnwVirvcBBf
         vWSCGe6wc1j1GanKLqmAmkJAvzOStI/GiISq9Z1Y9l+P+K39zeq2VJTgaugkrV6C091b
         RFCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=f7VtopklDkVx9rWQ7VmtX224wBeDKumuy7TD9fs5BoM=;
        b=fTHEzg64Z3IgDWJHjc3W2XvgowlEEiB/ElpCbaaKWkXHMjJa3qS8+52KjoC2akrigx
         Xa95AaHNGg5pEjZJBL8wiPuiXRrKzTOc0DgGrYjp1EaLb49RBEb28aBq+26HhsQnjadF
         K8phZK65dSdnsOlYuoPo92cz/dYBPHlf9EZW13YeAyDqwPcqfAfkGtxWlfYwF5byp/YA
         GHek7c+FYr43xamo9F5nxAd7nOk2lF20pDXSKY2ZJ9NE1oKv6MRooFS8fyEH3ReuiuEe
         H7TzVh8vTfoB7E55Ye6ybP2PFiS5GLz30f0PQWhI+ABebpoiuQxW4irAthwPLf+evNrJ
         yw5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YhuvLsEj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id bg35si311327oib.3.2021.08.31.10.46.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Aug 2021 10:46:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id m17so11095987plc.6
        for <clang-built-linux@googlegroups.com>; Tue, 31 Aug 2021 10:46:03 -0700 (PDT)
X-Received: by 2002:a17:90b:2212:: with SMTP id kw18mr6716149pjb.59.1630431963219;
        Tue, 31 Aug 2021 10:46:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b69sm2927963pfb.64.2021.08.31.10.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Aug 2021 10:46:02 -0700 (PDT)
Date: Tue, 31 Aug 2021 10:46:01 -0700
From: Kees Cook <keescook@chromium.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v3 4/5] Makefile: Enable -Warray-bounds
Message-ID: <202108311042.FFE1818D@keescook>
References: <20210827163015.3141722-1-keescook@chromium.org>
 <20210827163015.3141722-5-keescook@chromium.org>
 <20210831043128.GA2749311@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210831043128.GA2749311@roeck-us.net>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=YhuvLsEj;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62d
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Aug 30, 2021 at 09:31:28PM -0700, Guenter Roeck wrote:
> On Fri, Aug 27, 2021 at 09:30:14AM -0700, Kees Cook wrote:
> > With the recent fixes for flexible arrays and expanded FORTIFY_SOURCE
> > coverage, it is now possible to enable -Warray-bounds. Since both
> > GCC and Clang include -Warray-bounds in -Wall, we just need to stop
> > disabling it.
> > 
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: Masahiro Yamada <masahiroy@kernel.org>
> > Cc: linux-kbuild@vger.kernel.org
> > Co-developed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> > Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  Makefile | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/Makefile b/Makefile
> > index e4f5895badb5..8e7e73a642e2 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -995,7 +995,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
> >  
> >  # We'll want to enable this eventually, but it's not going away for 5.7 at least
> >  KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
> > -KBUILD_CFLAGS += $(call cc-disable-warning, array-bounds)
> >  KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
> >  
> 
> This patch causes 'alpha' builds to fail when trying to build an image with
> gcc 11.2.
> 
> In file included from include/linux/string.h:20,
>                  from include/linux/bitmap.h:11,
>                  from include/linux/cpumask.h:12,
>                  from include/linux/smp.h:13,
>                  from include/linux/lockdep.h:14,
>                  from include/linux/spinlock.h:63,
>                  from include/linux/mmzone.h:8,
>                  from include/linux/gfp.h:6,
>                  from include/linux/mm.h:10,
>                  from include/linux/pagemap.h:8,
>                  from arch/alpha/mm/init.c:10:
> In function '__memset',
>     inlined from '__bad_pagetable' at arch/alpha/mm/init.c:79:2:
> arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
>    37 |                         return __builtin_memset(s, c, n);
>       |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
> In function '__memset',
>     inlined from '__bad_page' at arch/alpha/mm/init.c:86:2:
> arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
>    37 |                         return __builtin_memset(s, c, n);
>       |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
> In function '__memset',
>     inlined from 'paging_init' at arch/alpha/mm/init.c:256:2:
> arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
>    37 |                         return __builtin_memset(s, c, n);
> 
> Seen in next-20210830.

Ah-ha, thanks for the report! I didn't see this in my builds -- what
config target did you use for this?

Looks like GCC isn't happy about an unsigned long->void * conversion
here...

include/asm/page.h:#define PAGE_OFFSET          0xfffffc0000000000UL
...
include/uapi/asm/setup.h:#define KERNEL_START_PHYS      0x1000000 /* required: Wildfire/Titan/Marvel */
include/uapi/asm/setup.h:#define EMPTY_PGT (PAGE_OFFSET+KERNEL_START_PHYS+0x04000)
...
mm/init.c:      memset((void *) EMPTY_PGT, 0, PAGE_SIZE);

I'll try to figure out the right annotations to fix this...

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108311042.FFE1818D%40keescook.
