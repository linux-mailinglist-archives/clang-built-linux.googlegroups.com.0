Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWXX2KAAMGQE2VPHJPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A61A309155
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 02:52:27 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id dj13sf7432379qvb.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 17:52:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611971546; cv=pass;
        d=google.com; s=arc-20160816;
        b=g3HaMa/pl+Lk00bhBATBlrlVqia2/fuxAIMOqwmebwwx6BTYAY7uiaGGniX6YstUC3
         hGLBdgT/a8J/gY+noRaLeXx1ZoTvXPPICNlSecIg07HQw9z/RZ0k7iWroqkuWdSrd9Aq
         JWyL9A5p3YoO+MpzuaKvrZGOW2TYqbPZ7dPYq3k0M13eOSHiT0tlTWpr1z+Z1C5ClaaF
         UoowY4SBlOZowJuSizDcUSKHc1esGPkYkRCLAGXrn4HBEb/L2yQXjKIhL0VqVeRQnW85
         WiKbyw0FPLuAG+i/FYFBIZDXzFqKeAqHu+lrhdr86Ltcx/TXsVtGjVRVgKdQVID6cuho
         Mzag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fuCbQqd28tJ+OXjXfa2j4Y6fVWS5C6PrET+vGCp5Ijw=;
        b=SCJ/3NQTf8z1jk65iqMnY2vC4qWN2pj+detiKxoFkVsHijNSz65iYS24aiWVZIJpPr
         KijlghQnyVjflQrgAxCgiPyk828sUzAzCoR/y/wPaYyQ7e5lSByjeO8lK61g0CcCi8zL
         F5aev/6wCLQcadmuEP95ReTA4R2+RxDIop7HJhKZKg7/1K8fkprUZC94UNxXF3usZ9oH
         8abMDxLz6RHSyWB7dpggO+EvGKd7sJFUcOs0u18jKXdP611Yx7K+6kd6AJRmUjmfD3s4
         Ug/C9JhSWoA4CajNx2Yi2QXQxiWWLxW/vx4XmU9qYJU9sgYdhgn1asexfK7Uza/NsvIz
         XizA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=C1JKUKDR;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fuCbQqd28tJ+OXjXfa2j4Y6fVWS5C6PrET+vGCp5Ijw=;
        b=EGSF819GKDdzFRLys8E3sVaSHjOrtntoLinxmU19+/k3WxnFLQMQZ14nmvsjnnouJD
         OYN9nMgva/sqn1u3o33YBFV2RYP6YGHgfW0aIT+7J6fR5srh8rA5zB1TJ4u/U7CF35Jx
         xMaup6WOFcKH1c3zoS4/7uh0ZPWIe2o7JI2rdOvdeMQt77huQFUrwRDvaqQkMfYwRiNt
         DMW7kkmtkXnY2oKt/32dcDPlML30+ysEFQReYSX0Lu71Rsp6XlNbfGNjpSAIlVVh8uPu
         SjrjpR7Z/deye5sMyRiBbPUvPdlXiMZatH6MzpDs9wo6pEiuA/ve6zJJlue9rUbbY3kR
         kaag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fuCbQqd28tJ+OXjXfa2j4Y6fVWS5C6PrET+vGCp5Ijw=;
        b=W9NtiWxQ7R02nKgaF/MQGaFB8j48isdoF2hvUH7p42IHhIJsShMKitnKvv/CSrhUU1
         UhQr1fhgnMZwfS+vZXHyHGNVuaEn6wElzjFlbpJ0y2yJXSSyYSj4+ut+9lpoFvVqDPoh
         WSPVCX9OBAZP5LVKhm1Q6SEuIXMmjJ6QRBAL2dHLu/KweUb+y7UAy7KMmnZwf+NE00ut
         umipRvKikK2Wl65jmgydlGuI19uFwNCHVs/OyV0St8o23Ge/CjlXJba1HD5EkSiNbJNV
         RLqo9F2gO7VBDLuxL1B4OdWiW34Aa+k3xp6Q0jlMQxuAigx4uQJilJkfATt3K1IJb9yn
         9i6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53260jjnQf4q1c1vnZSzzWqhOIVQujxQmLOJzEROXuA1e6hFqdW2
	C0wWguHm0ZPH6VsX2KM4YyI=
X-Google-Smtp-Source: ABdhPJzfCy1Kczcs7dszAuUUsZGzy7B9tpkrtSlRN1nfU3Yn1GEd/3oZBJ2rZPVTHq0MWYXsSRgCAA==
X-Received: by 2002:a37:455:: with SMTP id 82mr7081179qke.490.1611971546669;
        Fri, 29 Jan 2021 17:52:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4816:: with SMTP id g22ls4132246qtq.11.gmail; Fri, 29
 Jan 2021 17:52:26 -0800 (PST)
X-Received: by 2002:aed:3661:: with SMTP id e88mr6732424qtb.243.1611971546354;
        Fri, 29 Jan 2021 17:52:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611971546; cv=none;
        d=google.com; s=arc-20160816;
        b=VnM0wyKASqIbsGsS71oJMf1W3jG3BLOxfYIwEbtMG7Ux7L+/Y+pJHZjZX9qud7Um5o
         NIR+SPcv2ru9xuDPwkoiyDZgGU8urvIidaZLmfFyopYhZhz7g4aaenWxuGQmHspAcMYA
         Za0lO/HBFQrT8ag5H+nsyNuWmlESgMgEaAElUTTHD2PeOQ0uV+laoZ6dMucXUfJgw1Zn
         XFTkzRU65DEunF6lPXzK5sAK2/05bunCarzDLTrKj4C41z7EYCrO8ANnSxKgOjL9Vf1S
         dIojBFLBUIuflvU+0LUK/Zwtn/F90Y5XdqNLwbOfx5DVuLSDMnV9GyssYdGetNK1y3wH
         Cdlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RmkZ8qbysqQEPXI0jUHotcKQ8yyG9MSMDOBJanz9OHk=;
        b=pvplUfMDxTEaQfQG6PXOS085HDwcCpqUtQLi71uHTgYe8muFvBcnJmZkW21+wP+qgg
         7/9sJ11V163c2tsEEPNiGn2fGDMxEe8V7PnC8rX3GK+ag2yxUkkylkeKnSkeDSvT9pbL
         3UCvJ6WoqG/ozjIBge0jfyuHULArNEgdCX4P/8JHiaTTMAN0dlfinKxnttUTj3rbesGN
         i0MYNgDywddd8QkuvRI1DrnfZqUMadhuKe36S8XqTSC5g8yvkHod80iSa6Lotg45vr+j
         YnV6ENjatbheb9EHPukG0nDG8f/+5oGNhGtfgEHTAyupBlDvvrbnzcHUwtRtTFhnkb/g
         TuoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=C1JKUKDR;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q66si440171qkd.3.2021.01.29.17.52.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 17:52:26 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C79C964DA1;
	Sat, 30 Jan 2021 01:52:23 +0000 (UTC)
Date: Fri, 29 Jan 2021 18:52:22 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>,
	Fangrui Song <maskray@google.com>,
	Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
	Andrii Nakryiko <andrii@kernel.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
Message-ID: <20210130015222.GC2709570@localhost>
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-2-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210130004401.2528717-2-ndesaulniers@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=C1JKUKDR;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Jan 29, 2021 at 04:44:00PM -0800, Nick Desaulniers wrote:
> Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice which is
> the default. Does so in a way that's forward compatible with existing
> configs, and makes adding future versions more straightforward.
> 
> GCC since ~4.8 has defaulted to this DWARF version implicitly.
> 
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

One comment below:

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  Makefile          |  5 ++---
>  lib/Kconfig.debug | 16 +++++++++++-----
>  2 files changed, 13 insertions(+), 8 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 95ab9856f357..d2b4980807e0 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -830,9 +830,8 @@ ifneq ($(LLVM_IAS),1)
>  KBUILD_AFLAGS	+= -Wa,-gdwarf-2

It is probably worth a comment somewhere that assembly files will still
have DWARF v2.

>  endif
>  
> -ifdef CONFIG_DEBUG_INFO_DWARF4
> -DEBUG_CFLAGS	+= -gdwarf-4
> -endif
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> +DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
>  
>  ifdef CONFIG_DEBUG_INFO_REDUCED
>  DEBUG_CFLAGS	+= $(call cc-option, -femit-struct-debug-baseonly) \
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index e906ea906cb7..94c1a7ed6306 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -256,13 +256,19 @@ config DEBUG_INFO_SPLIT
>  	  to know about the .dwo files and include them.
>  	  Incompatible with older versions of ccache.
>  
> +choice
> +	prompt "DWARF version"
> +	help
> +	  Which version of DWARF debug info to emit.
> +
>  config DEBUG_INFO_DWARF4
> -	bool "Generate dwarf4 debuginfo"
> +	bool "Generate DWARF Version 4 debuginfo"
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
> 2.30.0.365.g02bc693789-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210130015222.GC2709570%40localhost.
