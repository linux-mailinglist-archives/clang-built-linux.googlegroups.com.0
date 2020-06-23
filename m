Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBKFOZD3QKGQEHIQJECY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id D5193205522
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 16:52:25 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id f26sf5681367uaa.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 07:52:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592923945; cv=pass;
        d=google.com; s=arc-20160816;
        b=VWgl8HcUt85Qztta3KKQo+yuiVXG7hTROpcoBxeclHjxM6lakKqHf0cCj7N4YX8LQJ
         bn5LbOQJCAEVrpVVE4QMYBtrq6kiczxXr784rZPJnxiR+uwCZY6+h0Oe2L7u3Gcm4z31
         cTGViqJc47Oi3pOn+yJqdzmZoqTWgWI4ZgtQlo28hEWdUwUFlHv8pGPpKO2sRT0ZTL7p
         iwZZYQbq6WzXLMEzNV4ndx/Fg/JMyhICkW0QFNmYt0cBGw39va8wjNbvJhpeBrctdE3B
         mCpxNzglWR47B5Oxcbpc1xhl8S0aZdHYPH0R+JX/AW7Lv0z4Hm8MRrVgY0WWIwaxzY+y
         h1IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=SDtmr6FqodabVOPzmOSjoT0sYJY98y0GX1CYm1ouAlg=;
        b=A5Pexq8Xv8C81XwwutclRi2maXR+Wdu+pfnJOliFMvEY7jmr1sRwru/QYZhFL9L+1B
         PglVJ9193bW6UBN1VjMBLYIFIDkKvOfgtJy8wl41qn4FcB7KqX8PzC0cYaT/5oMQOG9x
         /NAFEIHQiw2wR9//UL14fKaa45D+2OrTESfIP4d1itrC+kB3m3LFz5KtjYc7iJ2WrDbU
         HKXvEONvIUlgI2gO4y011CVygS5PNbXt1KWIziMg6cZHabjG4EHk3eZ4VXFBZG81mFRI
         RS/Q8xeXh5nvIo8ybp0WVQsq3/A0sDWfGgX776p/m4envx13FrK/oAmUSZ0xeFF+Xt8m
         s6JA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Z6N/8+dv";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SDtmr6FqodabVOPzmOSjoT0sYJY98y0GX1CYm1ouAlg=;
        b=ESuY45fxqhHPyLVjF2kppn20zqBp/FZ8A6prXdz52SEn2je+T6LYNairmxk2zOYS3s
         XMShtic2RAK9Ce82JIR4PvoKJp2yiyV8NAxEHIWxh/92E/34SJ6vUtroiMSF7WepAHPa
         ymTmRp8n1ZForwp8Bs+rVC6UX5fmsUqsZ5zOXCn82+0WCIzfqpA6piCW4SCoxpbkqsaE
         aOGGToF1OlNS6XFv20sqMInFr5A4iVw/60sFgFUqCS9GhbsQ+zInQT0k6qTRRtwqH25n
         93MUnlyYFlgG5+fPIXz9FrEJd2kbqSv5DVKF/JMOOzMjK4m5qxirBH6PwppuI+V5m9KR
         bcYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SDtmr6FqodabVOPzmOSjoT0sYJY98y0GX1CYm1ouAlg=;
        b=pCRTK3mBL2mvzt1higX27mVbR/xq6jEkfw8a/D+rm+cnDb6zUML01STfA2hpAWy73q
         XvkGFx/Ineh5l+qlfo3eKMxaW5OaK/gIO6pPNTpwQ0uzUPHg8eBSKR9QjAkgt/XZyoTc
         UmHiGeJJaUzJXnEGQyhdoQqfU26rTx0rodAml2zVadbjqRg8FYkx+eyYJR3n32oVxxfq
         iosaG2Itpr4FarwEM0K/S67aC1U7B121UwG4n0xmQSglzuAqLUm2dmWujNMyf6M6k3Ks
         RhVdjVCI4ixRL0VHdrp1zSmXw90Jd6h3XQSLSsEJPjwt93LaxDvCwZNJ0toEOZ72Q1Iu
         446g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315E3S4fr6uZXjEloXQZaKuJsp0bfX8TYj8FURVbu5lOMoU/Z+8
	4yTONuYarv6CNth5BaXO0MY=
X-Google-Smtp-Source: ABdhPJyohULbt3nDguSkFB3C7/+VDX8vzkewmkWV423Aq3IlMgUPboDNd2Ult2wmQ5IWnSCOmsrGKA==
X-Received: by 2002:a67:7f16:: with SMTP id a22mr20472511vsd.33.1592923944952;
        Tue, 23 Jun 2020 07:52:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fdd7:: with SMTP id l23ls2417010vsq.4.gmail; Tue, 23 Jun
 2020 07:52:24 -0700 (PDT)
X-Received: by 2002:a67:e341:: with SMTP id s1mr20886711vsm.41.1592923944569;
        Tue, 23 Jun 2020 07:52:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592923944; cv=none;
        d=google.com; s=arc-20160816;
        b=eA+0FxbLc61xcIRE2N/O9QFhDvdVM2oaEjuOmjZG5suFQ4ubh7dhwQdNT6FzZ/m151
         vaxLxYzqKPvqvM4DOmJ6JbCLI1sNORtFHPuLF8ysCEkXZnN9F8keBW4wu0JBlq063hWr
         6DmWYOZhtYeWsHI1u0TvCkGAtwGsyC84hNZa9HzGjw3RjFPmgVBi3uWfBSOTfKU0YCcg
         qBPFHoX4uYQsXiSl+UBkl38DjgelDTVGlcXYhCwi+Vb/gTbuK9lv6J98UOfu1Zv3bavO
         dt7q9Kq6vcqLvUn5Xz23uXa+X1agwCtKGXImRKM/IglDMlXgtv28tZTShBp+tAV7GsbU
         S1og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=AnvJMLdeDWiMFpCCGaBNicBmccuKkYZJ2VHgvhK+8V4=;
        b=S8TeZ1XwndWuREk5Ep2EPlDkPNL1fFSXlNGWW6+RYAuXj6S5ppU9s/+1vSTRqmke3v
         TICzKyeksY3CC7KwFqLa+7UPSk0ENjUMBpU1ip0wZBJrbUUDuujXMNxAL9GJ3/UmFcyC
         Xtzq8iiLD6fKPErGPaxRNxTmC8tFROrZqU6wcbFPCe5UD701VXTzqsPUugsll63CyPBp
         XEnqAR1UybrlemLPhrl1ERe6RAf0zkh+Bl3LKdQo+meahEASLGJV2ECxY3uOxH3BaBNn
         MJmEVFH7zMmKwQ6B4Fvs70NyyKrDiZrKqPew8T1T8cCYmYRHRqfZEDnTpLr79Ay9XsDf
         9zgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Z6N/8+dv";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a68si453347vke.1.2020.06.23.07.52.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 07:52:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C590020723;
	Tue, 23 Jun 2020 14:52:21 +0000 (UTC)
Date: Tue, 23 Jun 2020 15:52:18 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64/build: Warn on orphan section placement
Message-ID: <20200623145218.GC4336@willie-the-truck>
References: <20200622205815.2988115-1-keescook@chromium.org>
 <20200622205815.2988115-3-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200622205815.2988115-3-keescook@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Z6N/8+dv";       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Jun 22, 2020 at 01:58:15PM -0700, Kees Cook wrote:
> We don't want to depend on the linker's orphan section placement
> heuristics as these can vary between linkers, and may change between
> versions. All sections need to be explicitly named in the linker
> script.
> 
> Explicitly include debug sections when they're present. Add .eh_frame*
> to discard as it seems that these are still generated even though
> -fno-asynchronous-unwind-tables is being specified. Add .plt and
> .data.rel.ro to discards as they are not actually used. Add .got.plt
> to the image as it does appear to be mapped near .data. Finally enable
> orphan section warnings.

Can you elaborate a bit on what .got.plt is being used for, please? I
wonder if there's an interaction with an erratum workaround in the linker
or something.

> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index a0d94d063fa8..3e628983445a 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -29,6 +29,10 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
>    endif
>  endif
>  
> +# We never want expected sections to be placed heuristically by the
> +# linker. All sections should be explicitly named in the linker script.
> +LDFLAGS_vmlinux += --orphan-handling=warn
> +
>  ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
>    ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
>  $(warning LSE atomics not supported by binutils)
> diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> index 5427f502c3a6..c9ecb3b2007d 100644
> --- a/arch/arm64/kernel/vmlinux.lds.S
> +++ b/arch/arm64/kernel/vmlinux.lds.S
> @@ -94,7 +94,8 @@ SECTIONS
>  	/DISCARD/ : {
>  		*(.interp .dynamic)
>  		*(.dynsym .dynstr .hash .gnu.hash)
> -		*(.eh_frame)
> +		*(.plt) *(.data.rel.ro)
> +		*(.eh_frame) *(.init.eh_frame)

Do we need to include .eh_frame_hdr here too?

>  	}
>  
>  	. = KIMAGE_VADDR + TEXT_OFFSET;
> @@ -209,6 +210,7 @@ SECTIONS
>  	_data = .;
>  	_sdata = .;
>  	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_ALIGN)
> +	.got.plt : ALIGN(8) { *(.got.plt) }
>  
>  	/*
>  	 * Data written with the MMU off but read with the MMU on requires
> @@ -244,6 +246,7 @@ SECTIONS
>  	_end = .;
>  
>  	STABS_DEBUG
> +	DWARF_DEBUG

I know you didn't add it, but do we _really_ care about stabs debug? Who
generates that for arm64?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623145218.GC4336%40willie-the-truck.
