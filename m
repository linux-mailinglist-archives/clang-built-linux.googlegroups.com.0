Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHNBZ37QKGQEOGO3C2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EF52E9FCC
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 23:03:10 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id o8sf38537728ybq.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 14:03:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609797789; cv=pass;
        d=google.com; s=arc-20160816;
        b=XWxMss1R8zYo5baPdPjCadYac7kkgra4v0Groibu3FMZUYbYVkP3UuyEH5JmiA19Gq
         igAwtU0uo+MPcgQ/8AZURbotrEUvninITtbKdqNabYn8q7ncHHm20Jrc6cNwq7AcoQA9
         n8z+ZvseiJbXrSE6LWruec7MnVEVlTLow0q9wAFbWUoxSFuwwUjhjJP5ob/Kxeor1x0i
         Q2fjYPYLbgFr+CBKnwZJa/kJtW5gjOqU0PtcKyb4GAq2Raw9GqibJn+qQJMpRxZ6jTxZ
         Zr/gG/sBBNBz8QCaGMQKzXrv+tYnZ8ycSL92lvrvhBTZWXf7Jdl6/qCI1wp9sS3z50t4
         M/JQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=LDx1Rizruev0LIGAHsTR+j+Jj3uO9qT51NnOZlOkpBA=;
        b=k/OGOkpf+fJe5BZTzoUEN/w7AFqJDrN0OzRHOSU6wbpHeipQN9d6FBzsoVEj/dtqY1
         5ExYFsIwCsgNbv0pE+Zf4+CZRB/C/R2BTINx5Q3gXK/v0GAatx3hVirSeZ+w99MOcH2R
         WiRF3/RYsPVcR5ABUpscxv955a42M5rYvhrmnAbVy4fE0GbaR0uoj+Fjaz68i8F6obZF
         PkULM1D83R8FNaIZc268EI+BXiBlI2T2kC+2pybdVL3brCK0hd8Dy+RkmDVrPxA5E3Yh
         /YVv9AY5rMNCFhitKvaQzVI9zRpmwl2rMVYMc6azDox30jOyoBErHSKuNhKRylSuiRYF
         lAOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m9mGjmR2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LDx1Rizruev0LIGAHsTR+j+Jj3uO9qT51NnOZlOkpBA=;
        b=kZtUBGjp8W3hL1MoQaQBudbLKcxwddCZssDXDuayePcl84R2++YC3bwQMuMIRN4l2L
         Zd1bZsdoULLQ5xlW7ZzI9peh6eDMaVMuI4gUCSMaMKaTyzB/dTlXJ+/CCMK4j8kYQncH
         KM7ejKjOBPxOaTy9mjQnarQgUnr4C9OPqHofP9eF6TTxDZn26jVDTZDOVG4aobcT4/iJ
         jbZziBrS95bHZ6c6OMUdYr4QzG+OZdSlnzgSKMTQSTpVb7kMlZEUhN5SFe2xdoPPsLAH
         f49LDIwBtbHRyRCJ2Zk6tLcgx/bC4JaQIDn4N/H8a0sOCOri0RxXQrQTQnOGrvK2Jwjs
         fnLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LDx1Rizruev0LIGAHsTR+j+Jj3uO9qT51NnOZlOkpBA=;
        b=LfAhh5r1hJlqwskoS7Qdh3DgZldNhH99C+g53bMjPXTU1eq5A+SimEjFSgdRj8jBXy
         tszijp6FcLy+Mrqk4vKgs5uAfwcaFiYeRFwonNDCuLzXJBkWpPdzSq3Vl5L20hiIQs8k
         YJJGYxxFfd4Xf1DLAqmr+ksTtkP+Z7NP+yG/JARvMIuv41UJ2rACG/c4WjdQRqNbDg3T
         f6PnmBA2lStsnvtHslLiTX49pe88JfqcJE7oJLmbw0S+/fgXRUTiPwdNJQVO4+S3Yfkq
         WLoCEkBI6MYIyibBj9CXolluqVPb2zmDDU+BhrG7ZV5AhzFDLDYbvSs5GdSZLUWkDfUG
         eoEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LDx1Rizruev0LIGAHsTR+j+Jj3uO9qT51NnOZlOkpBA=;
        b=sVh3ZkGPwHiydGtFBjqM7unCsKDHM0L1qoPUbjC3VVJwtgg0yU1s5Koa3AfsgKyK7H
         fOWto6fV/MZvAg+sjO/pKcYhmFAOVgE0OeA6Y9+6ME7d5u72N4Jf7xkHVLha+aU88fmb
         jLdGwcoZqKZqzAo9j0IYzJybbiT4Z78Q2jC3bxbNRzLWcwg4gTItplkSiEh73aw3PQz2
         l1YF/aO14/Dl63fvOFFeRQl20YTO0Rx1i2TyfSCC+UBkWWm91TJRWK7REdrRF891VLgu
         w/0K4wdflZYw/wXmxvbWyPWjX8rufAN/mQhM0/8EiriaHlKzlDboJSz44GQMpQ05ViSX
         BEkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NFNEbWHxLvaBBoIqjDE+6jwkSgIVQt2Lf+RHQWZnwhsitUhRi
	16Ji+by4hdrL7IjvgqcHlmc=
X-Google-Smtp-Source: ABdhPJyFbM3G24KpJFg32oethM0dyqpU5eWsTQ+zYUozqiITRQ8akUOLoR2eT3VysApgE3YH3n+TUQ==
X-Received: by 2002:a25:2301:: with SMTP id j1mr114862772ybj.151.1609797789228;
        Mon, 04 Jan 2021 14:03:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:f80c:: with SMTP id u12ls32844517ybd.4.gmail; Mon, 04
 Jan 2021 14:03:08 -0800 (PST)
X-Received: by 2002:a25:afd1:: with SMTP id d17mr100601377ybj.6.1609797788841;
        Mon, 04 Jan 2021 14:03:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609797788; cv=none;
        d=google.com; s=arc-20160816;
        b=ebxUcvXoW2C0uI92y8SYRSl+8DHlZvF/T3SNk5+OrAeNl8R6P6h2+Tkvs2XvRiBrPz
         axK1SJfS034bBAWj+7bmjmrYxygQ8WIG29OHTE2IVdkW5ND8RJp1cxRvlNH8Fj7vpIVB
         p6YTHJ9I3yyn8VQKq2LuvSYx6N/euAZGmNYnWXJmoVG1mVZark30CKb3q7hgqb6t0Rdn
         bgS9eAb55altAMBn32PEXU/uv5Ke7dcWxQmpPfX3MaQSUiuHxwlG0ZdsfiwkaWnKPNEX
         Zvj9T9zNAKQpYqfrDlu53Ld/NzuaWcmsB9QKkHGhp86JyE4EPJ6BiQ9L4/Pml2/IMdAg
         RqWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vJ3RfD8rR9bTAqytKoHNwBuoJEeDfrDCx0M5UaMLsiY=;
        b=vi3inODARLsQciiQ/GGXz7wb1abVTGfYmyYHQVrOZ67oO3RoPTEIXTa9trJBvIvEZy
         h6r8t3/QIERhqwWT8htXJ2vFlz9t8AFqsJ0MTbo6TthknYJHM0OORyS/9gaOi9wC/psM
         C5SIwgx4s13sd+eQz7y2nRr3HmqSNHV7AqGIqA2eMn4xIXTL+8rBOeERh/UODvW37U8M
         6fCo7ptvPit/cyO+nStF0t1ek9dPfB9MgYIvL/WMThfT3B3PfgYAdAaZKMuff5aKNLeT
         Au5pHkfMuRUcwk6sR1VqAsq7liOofLyutgfCj0XXr7EmbdnifVdFscUhgFTQSBNln4Wl
         +4zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m9mGjmR2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com. [2607:f8b0:4864:20::82e])
        by gmr-mx.google.com with ESMTPS id s187si5520855ybc.2.2021.01.04.14.03.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 14:03:08 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) client-ip=2607:f8b0:4864:20::82e;
Received: by mail-qt1-x82e.google.com with SMTP id j26so19585459qtq.8
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 14:03:08 -0800 (PST)
X-Received: by 2002:ac8:6f4f:: with SMTP id n15mr73864340qtv.216.1609797788503;
        Mon, 04 Jan 2021 14:03:08 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id i4sm36389618qti.78.2021.01.04.14.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 14:03:07 -0800 (PST)
Date: Mon, 4 Jan 2021 15:03:06 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
	Caroline Tice <cmtice@google.com>,
	clang-built-linux@googlegroups.com, Nick Clifton <nickc@redhat.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Andrew Morton <akpm@linux-foundation.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	"peterz@infradead.org" <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk@kernel.org>, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] Kbuild: make DWARF version a choice
Message-ID: <20210104220306.GA1405526@ubuntu-m3-large-x86>
References: <20201204011129.2493105-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201204011129.2493105-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=m9mGjmR2;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Dec 03, 2020 at 05:11:26PM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
> explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
> way that's forward compatible with existing configs, and makes adding
> future versions more straightforward.
> 
> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  Makefile          | 14 ++++++++------
>  lib/Kconfig.debug | 21 ++++++++++++++++-----
>  2 files changed, 24 insertions(+), 11 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index a2ded5029084..2430e1ee7c44 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -826,12 +826,14 @@ else
>  DEBUG_CFLAGS	+= -g
>  endif
>  
> -ifneq ($(LLVM_IAS),1)
> -KBUILD_AFLAGS	+= -Wa,-gdwarf-2
> -endif
> -
> -ifdef CONFIG_DEBUG_INFO_DWARF4
> -DEBUG_CFLAGS	+= -gdwarf-4
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> +DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
> +ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
> +# Binutils 2.35+ required for -gdwarf-4+ support.
> +dwarf-aflag	:= $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
> +DEBUG_CFLAGS	+= $(dwarf-aflag)
> +KBUILD_AFLAGS	+= $(dwarf-aflag)
>  endif
>  
>  ifdef CONFIG_DEBUG_INFO_REDUCED
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 0c7380e36370..04719294a7a3 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -256,14 +256,25 @@ config DEBUG_INFO_SPLIT
>  	  to know about the .dwo files and include them.
>  	  Incompatible with older versions of ccache.
>  
> +choice
> +	prompt "DWARF version"
> +	help
> +	  Which version of DWARF debug info to emit.
> +
> +config DEBUG_INFO_DWARF2
> +	bool "Generate DWARF Version 2 debuginfo"
> +	help
> +	  Generate DWARF v2 debug info.
> +
>  config DEBUG_INFO_DWARF4
> -	bool "Generate dwarf4 debuginfo"
> +	bool "Generate DWARF Version 4 debuginfo"
>  	depends on $(cc-option,-gdwarf-4)
>  	help
> -	  Generate dwarf4 debug info. This requires recent versions
> -	  of gcc and gdb. It makes the debug information larger.
> -	  But it significantly improves the success of resolving
> -	  variables in gdb on optimized code.
> +	  Generate DWARF v4 debug info. This requires gcc 4.5+ and gdb 7.0+.
> +	  It makes the debug information larger, but it significantly
> +	  improves the success of resolving variables in gdb on optimized code.
> +
> +endchoice # "DWARF version"
>  
>  config DEBUG_INFO_BTF
>  	bool "Generate BTF typeinfo"
> -- 
> 2.29.2.576.ga3fc446d84-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210104220306.GA1405526%40ubuntu-m3-large-x86.
