Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXN42LZAKGQEZ3VILLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9A616B868
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 05:11:11 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id q187sf10075515ywg.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 20:11:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582603870; cv=pass;
        d=google.com; s=arc-20160816;
        b=MwDZmlW3o9qBf8AbMcc5izP+0uHn2/FBg+/dewCY+9gooXSoxZ1v+Jbp/AChjSRZoX
         DlyShqght1AA8A9ux3nNANSF+FB15otuid3KhCVxk52wnlM04jgdxkuMj07T4nhB0l3H
         dbgZjJGGxkCp3EnSrltg3k8+sdJitnqU5Iqtvqf56G6alXy710y1Dy1mx/78mN+kcXy5
         GUN1w/6DCxaaTwRvqiu3+KzKoKeuo9RbCfRN2tnB5Nkyxe4ONU3udRydJIgb9VCP0K90
         xR2EDZDDlT+j4yi20gafLqunhDq5WS7iv2ahdDz5IvW3CPcjDKlqbt+2Aj9ix1gwAsoe
         YKYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UvZTLITqCajYk+MHKYWKMHCosrBV5dvjoHhe18wh4RU=;
        b=N8bDxZ+ieQFpNDeRh38pqPEjP01xot9bOzZa3GztlkEINhgwYyQlp/iyJAJh0dmP0g
         383gcwvKjoX0a2LMfPh4ncL0PQgcKzLsA01I8r6aP9u1P4zwjr2xQHCdjNcF/m3XgW4K
         sTft2ELdZo5eFEPKfB6N+5OL8JixqzIqeNClDIxR/CzAiYWE/5wLZWBYsPo8OQ+ECNKI
         WfqqPn1BcFHYyUZP0/Vy13UjkE7qxsicP40c/O4+ZlwuFllK23VJKD5EAh6CCISq4L+R
         rqLR7ykybfb4aigBO0fw/QHPJtYKC20ZC4Fa4l/UF3tT4Mu3C9IXjGWRkZOvtYMIm4Xe
         B1Nw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=e2D5m+55;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UvZTLITqCajYk+MHKYWKMHCosrBV5dvjoHhe18wh4RU=;
        b=MeCxzStadxR2Cu5UCELmLWPMw1WAcjGK0GIslbpRt0q4PKnBtsLh9KTm7eHZWGHXMK
         i4dR6MPIXQDxQhyZ8eD+g1AG8MWVV0fD01idf7PQhhcAWB7wSGp5VU/bYZMBcJjQnZA8
         WkUpoAH1bsAQgBC/2klJrt/YtwqvatrKwpcQjF9yQna+VE2CsC6L5QMDfMGC7Tm2Cq/s
         L50RPxGUA+P5VkeVqxsGTlM8sVUXLCcqsKurmUmyMAOuVpGWT3UQx6+HH5p5Z+ZfEV8W
         D2rvKhTUOcIS/HLIS8ccAHt+7AF8DL2jJdLkTnhOPSbo7DC+fRgC1jPDZkxwVexjwzUJ
         ZKrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UvZTLITqCajYk+MHKYWKMHCosrBV5dvjoHhe18wh4RU=;
        b=YBtwWFzh0rr76mldywCT92x+xx9zFGYocytDoCVkn22eKN+hlwVZuZB9B2MUZlKwdw
         wLzOztNG1k4b+qPWDSQp+kJu4myRNSphVVT+zzoQur6D+xRZ3d5bYMG3tIsKZlRUNFbQ
         WbkixyittjKnjTG88StD+PJX2WYjAlLowi0sKz6RhrC70rF+3UVXsKyB/FzE8/epExYC
         7VjT2gU55FMr0lJI6i7vSjuztFVIMWSD+k5KZBUHs3aortagh2U6c6EW1+JblDfsS/JK
         x+g6vT6Cp/5GSRkspj7GvMzuF5xHcEInpmXmMEPMHFQorz5m5tkTXEbAyH1QhFaSeYL1
         zmEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVH2jnuERj3WUlEtkpR0RbF11ekS+Hf1loDe+JEPHfc5InHhx4K
	HFgqofw4+Xp5b9+q1V5P/Xs=
X-Google-Smtp-Source: APXvYqzqlMb/QKi8ud4glcXx+F225blUlDPpFm9x4R/vjiJzIvRoi4+TLLj8/VYohmtjbqohFgGESw==
X-Received: by 2002:a81:1289:: with SMTP id 131mr45668571yws.74.1582603870041;
        Mon, 24 Feb 2020 20:11:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:af05:: with SMTP id n5ls91609ywh.1.gmail; Mon, 24 Feb
 2020 20:11:09 -0800 (PST)
X-Received: by 2002:a81:5655:: with SMTP id k82mr46890045ywb.363.1582603869660;
        Mon, 24 Feb 2020 20:11:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582603869; cv=none;
        d=google.com; s=arc-20160816;
        b=ogygvsoq4qzhGIVdBf6R92iKJ6F4Br0ocl2ShrgkltIGNIi4iODMjMmU4ELH6mmA4U
         tE9aoFM4yK/CyQh/fZh1Y9qlknBHJehn75cl2wi2ETPT8D79JyB3f2O2i7mxtVL0ieia
         cJ4pO6Mum2tNy9D3HYR2eCrpOMJli1Rh4TjRBKwdUhlEUvtYd9U+jhYGQ5s3DCWvwMQH
         HkYk/jDGOWVn+ngdRgtbxBH78A5WbZxcc04tmqratalZPmMCse+RloFveQdGFj2CSVwU
         OyU2txK0GDnL0c6fQ2hPehxc00QFxNPmy+mH5/ZsMGxAmCgzvCl2942B9b8wpTOmw11r
         p/Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MkHxxhEagzR8fO3G4O/HlLJK/mMYB1QzhvsGboCFrcg=;
        b=QyGI93f9UBXjDBurcCJuoLOQCGV5+YXBd4Glvqf9VFwHovkaE+wNr3YS//pGy3tEHN
         9zcEYdTG1BaAYAwkwA7XiiUFA/Yhl/K2Kqn06n2WzTQOyBcRWe1WbHy0AiF0SCrtCKaD
         FrSd2FAPEbHn5rCugF9dK1JMABI4HD9QYcrqKjWEUdvGxUgjGmT1bzImp8RcIv0P6qjp
         TFJpeD+l4Nzglb0SlvCTEwhkg66QdDpaC0jOrC/H4rGaDAILOpFVED11+P1RqoOtTNL2
         oEolxGjwLM2qO6AJgmTmtfqXupI3y6mTg8KbIoqkeCpso1Jjc7C2Ry4Y/UafW/PaNGZ6
         8+xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=e2D5m+55;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id g27si1200278ybe.1.2020.02.24.20.11.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 20:11:09 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id u3so615014plr.9
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 20:11:09 -0800 (PST)
X-Received: by 2002:a17:90a:d585:: with SMTP id v5mr2837638pju.4.1582603868803;
        Mon, 24 Feb 2020 20:11:08 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w14sm14460628pgi.22.2020.02.24.20.11.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 20:11:08 -0800 (PST)
Date: Mon, 24 Feb 2020 20:11:07 -0800
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>, Fangrui Song <maskray@google.com>,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [PATCH v2 2/2] arch/x86: Drop unneeded linker script discard of
 .eh_frame
Message-ID: <202002242011.541C9A57@keescook>
References: <CAKwvOdn6cxm9EpB7A9kLasttPwLY2csnhqgNAdkJ6_s2DP1-HA@mail.gmail.com>
 <20200224232129.597160-3-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200224232129.597160-3-nivedita@alum.mit.edu>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=e2D5m+55;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

On Mon, Feb 24, 2020 at 06:21:29PM -0500, Arvind Sankar wrote:
> Now that we don't generate .eh_frame sections for the files in setup.elf
> and realmode.elf, the linker scripts don't need the /DISCARD/ any more.
> 
> Remove the one in the main kernel linker script as well, since there are
> no .eh_frame sections already, and fix up a comment referencing .eh_frame.
> 
> Update the comment in asm/dwarf2.h referring to .eh_frame so it continues
> to make sense, as well as being more specific.
> 
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/x86/boot/compressed/vmlinux.lds.S | 5 -----
>  arch/x86/boot/setup.ld                 | 1 -
>  arch/x86/include/asm/dwarf2.h          | 4 ++--
>  arch/x86/kernel/vmlinux.lds.S          | 7 ++-----
>  arch/x86/realmode/rm/realmode.lds.S    | 1 -
>  5 files changed, 4 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> index 469dcf800a2c..508cfa6828c5 100644
> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> @@ -73,9 +73,4 @@ SECTIONS
>  #endif
>  	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
>  	_end = .;
> -
> -	/* Discard .eh_frame to save some space */
> -	/DISCARD/ : {
> -		*(.eh_frame)
> -	}
>  }
> diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
> index 3da1c37c6dd5..24c95522f231 100644
> --- a/arch/x86/boot/setup.ld
> +++ b/arch/x86/boot/setup.ld
> @@ -52,7 +52,6 @@ SECTIONS
>  	_end = .;
>  
>  	/DISCARD/	: {
> -		*(.eh_frame)
>  		*(.note*)
>  	}
>  
> diff --git a/arch/x86/include/asm/dwarf2.h b/arch/x86/include/asm/dwarf2.h
> index ae391f609840..f71a0cce9373 100644
> --- a/arch/x86/include/asm/dwarf2.h
> +++ b/arch/x86/include/asm/dwarf2.h
> @@ -42,8 +42,8 @@
>  	 * Emit CFI data in .debug_frame sections, not .eh_frame sections.
>  	 * The latter we currently just discard since we don't do DWARF
>  	 * unwinding at runtime.  So only the offline DWARF information is
> -	 * useful to anyone.  Note we should not use this directive if
> -	 * vmlinux.lds.S gets changed so it doesn't discard .eh_frame.
> +	 * useful to anyone.  Note we should not use this directive if we
> +	 * ever decide to enable DWARF unwinding at runtime.
>  	 */
>  	.cfi_sections .debug_frame
>  #else
> diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
> index e3296aa028fe..5cab3a29adcb 100644
> --- a/arch/x86/kernel/vmlinux.lds.S
> +++ b/arch/x86/kernel/vmlinux.lds.S
> @@ -313,8 +313,8 @@ SECTIONS
>  
>  	. = ALIGN(8);
>  	/*
> -	 * .exit.text is discard at runtime, not link time, to deal with
> -	 *  references from .altinstructions and .eh_frame
> +	 * .exit.text is discarded at runtime, not link time, to deal with
> +	 *  references from .altinstructions
>  	 */
>  	.exit.text : AT(ADDR(.exit.text) - LOAD_OFFSET) {
>  		EXIT_TEXT
> @@ -412,9 +412,6 @@ SECTIONS
>  	DWARF_DEBUG
>  
>  	DISCARDS
> -	/DISCARD/ : {
> -		*(.eh_frame)
> -	}
>  }
>  
>  
> diff --git a/arch/x86/realmode/rm/realmode.lds.S b/arch/x86/realmode/rm/realmode.lds.S
> index 64d135d1ee63..63aa51875ba0 100644
> --- a/arch/x86/realmode/rm/realmode.lds.S
> +++ b/arch/x86/realmode/rm/realmode.lds.S
> @@ -71,7 +71,6 @@ SECTIONS
>  	/DISCARD/ : {
>  		*(.note*)
>  		*(.debug*)
> -		*(.eh_frame*)
>  	}
>  
>  #include "pasyms.h"
> -- 
> 2.24.1
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002242011.541C9A57%40keescook.
