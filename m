Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7NE2L2AKGQEEJSL5XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E681A69D9
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 18:25:35 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id z8sf12309228ybi.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 09:25:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586795134; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z5lVnipMQ1LRTT64kRg4T7ODd0zlaWT25bREanBGtsLlnIOnAJjpYVX0vrBMwyu1be
         cyh/7pkxTrvXCvf93W/gTEvvGp/+vVYsfrsNjPIMlDzge0b48/cQ/PdSmR8PBeba0rER
         EV9PjwASSS7dGET+d5QLaoWKPMbMSpGc4FYiZPLq4pVRKi7Ha3brctMxlFshyuJIy9up
         J3RgtRAIQ8hxiDdxENe06tpohWXUuO/RaPd3t6fKRfyIbKb4sNYRSTuMPljcPY9exLI6
         p9EPCq+avGntVwxs1VKZCxeLjfqvACNy24TFfmYKZ0yq6QDoz77iGqZJqRNyL8xd2UJQ
         gFzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rbCHJLuaYpJul1yrOhI+hKfzAqNbbergDM6jHZq/ArM=;
        b=cunNaunHWE0pJGrCtJokdFo47Bozr9kOhK4b4PUFQ0kqO3/LSE+9LrFRaOTqYsglBu
         2WyDSYY2PkmHiJnjtlpxpvALl7M+inrYY6lZWAI1YqQilVYupRnXDDXwimE3HarOQ3OL
         A0VOyoPaBfLjl1ri/QcEDhd3b4e35GXoNIJLT5kvk17/39uuuy645tsvpBTVd3pGn3B9
         HBcn/PpsIpyr80zEfF+1ZmckmpyyGmcB2JXZTrv5GN28BQkNxAhN5GTZ9c1cj4wwaEOR
         3g3vuup6JhyrFtRsTAJboQwCuuR2EvsMlimKt5inPAMkfSy+6rXQiWXu9AbI1/fDTjvQ
         SJug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=U7ikXblV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rbCHJLuaYpJul1yrOhI+hKfzAqNbbergDM6jHZq/ArM=;
        b=VBp48N6zftV32MGBDaEoKusBhbeVVKfwXPeZYpUHdtueeib2RqEMjnCTHGxs/kuq0w
         p1UOepnaLY4R71xkn2DdWcwJSSKlv6it9v/zza+KufNwmyaSYWP9LzofbXAeWy2VD0K3
         8rVLjB5/Su93DqnpF1ZEhdK6I7mEhBTwszbmIMxxGrDyXCxi29ID7OZjG3nz7CScyN1A
         yRUetdjoo/EGEhM7Uas6J0Olf1DL4LhRCNOK84vXczEL4+aidvj2DwTVB0zHbNyrBzkf
         jntdXJTr6+lfczAm74++eFQerHqoq9wgOkqDZuZO33ojlERi9o6M03nbkcOzIkkXKHoQ
         bUkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rbCHJLuaYpJul1yrOhI+hKfzAqNbbergDM6jHZq/ArM=;
        b=F6k18OQUjNmbbBRiI5pUT5jCM+8WtstyetM89nNrgER7kJ0VSZzuLxwOWmZNNFV1sQ
         uldvQv+egGqP5cwmIU6TnD/g1YtYfuTydCYtbF9Qng2KqTZdKYFKVlPGdKP7X+xCyQvA
         XDoKRudbdzEJA1DKqsbT6+XxNyCW/zmht/+giHVcWcF4TuYNpP1jpd/VVq0tR5okgG6p
         IG0Ll48XzRSarLED7R3cRLsf1B9p/V0Fz1olDmZ3ianSxxzYtgs9TOqmCoMMUkcKVZpv
         QTmOuBe7BasNYoJfvDO56k/bhK6l0U6wgfUoFpYz3jrZxTyFLJhKuzL5WvwQOOOewpcz
         X7fQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYyjG/HNMt8asBZ46hLtrmb/S8tmeCUuF1czthKME+2aeShZ8Ib
	kgc7q6qQ8VGCOMoU7OjyuLU=
X-Google-Smtp-Source: APiQypJMbZpvKaZQPxxJ/JnsJ5vhwmJCiiMVoziaH6UWc260UGRqx9+WKW77EzcmOYrEdgXfusIcUw==
X-Received: by 2002:a25:9303:: with SMTP id f3mr25674530ybo.361.1586795133988;
        Mon, 13 Apr 2020 09:25:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:5cd:: with SMTP id w13ls175921ybp.10.gmail; Mon, 13 Apr
 2020 09:25:33 -0700 (PDT)
X-Received: by 2002:a25:c104:: with SMTP id r4mr30813924ybf.330.1586795133644;
        Mon, 13 Apr 2020 09:25:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586795133; cv=none;
        d=google.com; s=arc-20160816;
        b=ENeUCSjHVRxbWL9uFf3xapRelvSYbHxgMceyRPvmVySqZANlksDw4BVcFhONW+5mpO
         nVup5zlngvb571DOJzZzZKgk8muDOucpDEFXCOCvFGieoj8PHFzOjGmlfrx+NewtC23S
         EHhxrZ6zzhJoLouffPVp9IXIFFzfgG8gQhyJnnhGmhxnca+ahU/hSQqnhdz0cywXxqmn
         bBCYZKEFnS4LRI/3fIJ1G3mJ2fLqvJZ0yXb2+EdOhGC7Ucw/1z//a4Q0gjq6YnIVdCSo
         E5jIlaOJrMBQRGSaMq8mtkHKP0Yym7w4VP4GBTZ8ThtKLt/+X9rP6ECK/hbBQ/SBGy2N
         LI9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JwAO8xsQIwVha/87e1cz/mK2hxAGtEnUvhnRC7uNihg=;
        b=B2vUzx1n5/zY4TArjYePiOV8L8V8eLgQ1FsdCndHshhcvOeloGfxOmXJc3kmlBgf8Y
         tSTXXWPOnS7k3dJNfGzILzMlbuyNcMLfLpOH6+PoXIL9dbZ5k3CXcyKQPdovlPtPvfbp
         59aZMHyvQC0Wzrr4JsDAL3ruGx++c0GwWXS3zaha+osIuQgilUsdUREbo9p8a9GMqwi/
         NPNqi8lmEpUQzpbJF4lfK2v0jCdEHY3Zxap6gBxdc+mQsY7m9Jdk2gCyqN/1bwRp8zCb
         NS6ENBTe5acNejnmZppirEJmuMUv/+3EU9cpVhprifgxis+r/hzJf0ic/GnMNOF0tx8M
         WZ2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=U7ikXblV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id d72si668785ybh.5.2020.04.13.09.25.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 09:25:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id a32so4016947pje.5
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 09:25:33 -0700 (PDT)
X-Received: by 2002:a17:90a:757:: with SMTP id s23mr22619308pje.166.1586795132812;
        Mon, 13 Apr 2020 09:25:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 71sm9372363pfw.180.2020.04.13.09.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Apr 2020 09:25:32 -0700 (PDT)
Date: Mon, 13 Apr 2020 09:25:31 -0700
From: Kees Cook <keescook@chromium.org>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: linux-mips@vger.kernel.org, macro@linux-mips.org,
	clang-built-linux@googlegroups.com,
	Fangrui Song <maskray@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Borislav Petkov <bp@suse.de>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] MIPS: Truncate link address into 32bit for 32bit
 kernel
Message-ID: <202004130925.F1B57BC7@keescook>
References: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=U7ikXblV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
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

On Mon, Apr 13, 2020 at 02:26:49PM +0800, Jiaxun Yang wrote:
> LLD failed to link vmlinux with 64bit load address for 32bit ELF
> while bfd will strip 64bit address into 32bit silently.
> To fix LLD build, we should truncate load address provided by platform
> into 32bit for 32bit kernel.
> 
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Link: https://github.com/ClangBuiltLinux/linux/issues/786
> Link: https://sourceware.org/bugzilla/show_bug.cgi?id=25784
> Cc: Fangrui Song <maskray@google.com>
> Cc: Nathan Chancellor <natechancellor@gmail.com>
> --
> V2: Take MaskRay's shell magic.
> 
> V3: After spent an hour on dealing with special character issue in
> Makefile, I gave up to do shell hacks and write a util in C instead.
> Thanks Maciej for pointing out Makefile variable problem.
> 
> v4: Finally we managed to find a Makefile method to do it properly
> thanks to Kees. As it's too far from the initial version, I removed
> Review & Test tag from Nick and Fangrui and Cc instead.
> ---
>  arch/mips/Makefile             | 12 +++++++++++-
>  arch/mips/kernel/vmlinux.lds.S |  2 +-
>  2 files changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index e1c44aed8156..18495568f03e 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -288,9 +288,19 @@ ifdef CONFIG_64BIT
>    endif
>  endif
>  
> +# When linking a 32-bit executable the LLVM linker cannot cope with a
> +# 32-bit load address that has been sign-extended to 64 bits.  Simply
> +# remove the upper 32 bits then, as it is safe to do so with other
> +# linkers.
> +ifdef CONFIG_64BIT
> +	load-ld			= $(load-y)
> +else
> +	load-ld			= $(subst 0xffffffff,0x,$(load-y))
> +endif
> +
>  KBUILD_AFLAGS	+= $(cflags-y)
>  KBUILD_CFLAGS	+= $(cflags-y)
> -KBUILD_CPPFLAGS += -DVMLINUX_LOAD_ADDRESS=$(load-y)
> +KBUILD_CPPFLAGS += -DVMLINUX_LOAD_ADDRESS=$(load-y) -DVMLINUX_LINK_ADDRESS=$(load-ld)
>  KBUILD_CPPFLAGS += -DDATAOFFSET=$(if $(dataoffset-y),$(dataoffset-y),0)
>  
>  bootvars-y	= VMLINUX_LOAD_ADDRESS=$(load-y) \
> diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
> index a5f00ec73ea6..5226cd8e4bee 100644
> --- a/arch/mips/kernel/vmlinux.lds.S
> +++ b/arch/mips/kernel/vmlinux.lds.S
> @@ -55,7 +55,7 @@ SECTIONS
>  	/* . = 0xa800000000300000; */
>  	. = 0xffffffff80300000;
>  #endif
> -	. = VMLINUX_LOAD_ADDRESS;
> +	. = VMLINUX_LINK_ADDRESS;
>  	/* read-only */
>  	_text = .;	/* Text and read-only data */
>  	.text : {
> -- 
> 2.26.0.rc2
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004130925.F1B57BC7%40keescook.
