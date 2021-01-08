Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJUX4P7QKGQETS7U2WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F39F2EFA12
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 22:16:24 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id n8sf7410783pfa.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 13:16:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610140582; cv=pass;
        d=google.com; s=arc-20160816;
        b=FLscDBQdDS/bAsQ9BfPjXEOIQqZm+G6xUkayrW/E+C8s+l+3KmL/9gJBzJmrag/Hd+
         vR1m+XV2GBkmW1D1mwEguHnqOGmX6hLYCQut1gZgMZIPkgXJa1Z2N53HuLqRYT3CnA4/
         EzKXTuIOkr0ZMhV2qPsjj0Bp33vfH1LWl9SQsgoO3n1ojz/TFlVb7BHz8yOfMAe1SCzi
         2eIqq+hGt8Sm7YSLbov4n5iWJXiN1onW1LZSuxUJqddBtWdzbSsv5NABQF2NAUhdHyFh
         lDq1x2FJjNAVUN6nNFute1Q+LEwbyyTe1GhwwBvcb7dXQiwMJjTLXARNvrASOl11Icjb
         dutw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=7WYKT9bXAUECJf5bgfB+Pmk09C6ZzVj7dIGm5ZXNSi4=;
        b=c1nlHU6BpAzpu10YCVCdGzT+Rk7PEnv2173jyHVTwXScQuOoWE+fQI6WGhFDyv4MLC
         v/66gmjfOYKS3qm3bWlvUFMIA2BolMszgVARIRCm/I9Po/JAYVIXTwnZT2C0qNPC7rJx
         GmCBmHhcWAKHSWDuXvPQodvoceo12VMf5hcSWJzF5BINL2lmfVQkDapNgxYYnxmrsxs4
         fkJFMBCicNLduWi0zFKMLpfSs3CKbKo0T8DrsHlPPwGYdQxB91+Yaspx/KeXz1Dqohmw
         6x0ZsA1A6jHX8F5rBSMeY0VYUrcWP/mCc+RzLF59d1zcswhr2/7g91HTN9Vj1NdVnwe6
         7wwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P4EKNOU7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7WYKT9bXAUECJf5bgfB+Pmk09C6ZzVj7dIGm5ZXNSi4=;
        b=Yp/QjU5gvSNaaPvX0IHG3wkKDoJLh9+RUu95dvpO4Apr9YE7IxQRZuixM/Eqi/s+6D
         EaWaDFxmjqa2eG+Uy+VitBuJu6uDeqeULb/FqVMeXlD0aY4OHhXWkdH4kt0va1FG8YMi
         y/VPgJklxpCVr306uUzm6soYCNjuwZhmBkonRgKT6P5/wJKYp9SLWnMVhPX07EJpsa5O
         J5SWzQTwssDpHqan7xkbeK2oKKCUYFntDJsoH8v9TYaH1CVK03KhiViO3M2L8t3s1v77
         Jnde04hj5fXNyg8PwdxZxAja5l3Nr1Mwkz9EdQNTH4qTc117sCo1t2+DCdj2f7sXSLM3
         uZQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7WYKT9bXAUECJf5bgfB+Pmk09C6ZzVj7dIGm5ZXNSi4=;
        b=L49rAGPF7+razkMJTZm667/BODFTzC71e+UFib4ZLaJgKOistys1jx0pNli1xBjdYN
         rCNSwnylxaIDKMGUHdKhUWE5y0gehhHksh9Q8Hh8boR+cawUVkbT3qecTdyLmQ7zbdxi
         IWLHGbHCMBoAK77gUwnndN+wwzWY8DdCDj5EyKMVc6IXLxrTZj/+PMIcU/xvkVJVfy1U
         bwHgpcx1yF+6s4EH3B3cEZnwAM40aKQfGncXuUlM4SRMo5d9sw6qEiZBhA5VYlbwMqWF
         526yfmgU+kbzecK9kVrwXYCNzToAp0OBQNW0phtOIwI4iHUY/UzS+WjB1/1kLE0oO7Wy
         4eAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7WYKT9bXAUECJf5bgfB+Pmk09C6ZzVj7dIGm5ZXNSi4=;
        b=Y1PC7UQjmeo/10Z2ODnh9okUj7NCihL3s4NJoHYAjjMkTzrfoA/aPJUesFpSAC/IgS
         ulwklECX6zUHXdWcmaIkLpsiV25IcE+SbRZKVbZqP1TAgrEb10lEQIox/RTyCl3Y9vmC
         A/89aw7g82nYKQCXxzRpLjwgUqfeoL54G9vmvx+RRuAmdcCUJCbUJ3XVlK/GoHaL0hRb
         g/sWMl4BNZx77DH7PpHw+2SIG44zG3lZ507vKSehdo9sk24UUt8cmsYBxQXRePuwlOtf
         ZEoCC8femmsJU2osTt8L1g+6iBmBSEF8PA+JLrW6niDP1PL/y21T6CD+TnqPfDdopMfM
         9HVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ixSIKrnT+bwZXnOaKECZYPm9ZS/CKgf8w22GXaCX6Pyzu/URs
	Rd671T06y3E46hynqD9avjI=
X-Google-Smtp-Source: ABdhPJzBenfnwMRlyDvjllEI0CQK5LKBez1xoTrFZ+c8i+RWZosMSEoWKZKZOecDo9EZpZ6G1y5Bmw==
X-Received: by 2002:a62:8c97:0:b029:19e:56cc:b025 with SMTP id m145-20020a628c970000b029019e56ccb025mr8740708pfd.77.1610140582580;
        Fri, 08 Jan 2021 13:16:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b782:: with SMTP id e2ls5332451pls.10.gmail; Fri, 08
 Jan 2021 13:16:22 -0800 (PST)
X-Received: by 2002:a17:902:ee82:b029:dc:78e:6905 with SMTP id a2-20020a170902ee82b02900dc078e6905mr5683598pld.48.1610140581969;
        Fri, 08 Jan 2021 13:16:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610140581; cv=none;
        d=google.com; s=arc-20160816;
        b=uZY5nQ16AT2+bUbm9n6IYb2nBkAJTMarjG5+ymsq13tnU2uMpk+uPD/lOdZGzvKLi4
         J4ahLYqXUQVNtOfG1IwZPJ3BsXu/85XMDdt7Jxuak4I955lhXjQJ3RvUkz2EJ0grSR7A
         gcYsz6vO8M7BMLr4swzNQ/Dntp0daxFWw7ZqoXLP4g4aAU4dyz3akTi2rw3Fqq65TOxR
         tLNkaQCKVqKf8dT0M+H4HVcPeJiIRAouZJz7AdPzwK61i1cm1zLiIS8zNxU99cGxWFcB
         nol2Na12yqm6wOVeTFBMqWAdupPt5M7TCau59G5gw2FZx57WPBmWhyTl2bMK0Wr2WJVX
         IKTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HMTP4DMZypyBbg2Z/QgoI6zKf6gSO7jQrH+KkN6+xjM=;
        b=tuIyVOyNFd2Hnpea+f5Gb79RKNYMelsTD0bpIasX/vVSTD7ZEuTEgpudh/RsYHwc80
         j7ZGUg2SW4s0OXBT+r9envHrwvGi5Tcvc43cU7iOsD3WVnIf0yXC1fWtYHJkxF56AL1t
         S7VLk/c+QqAUUGjE8IkmqTc0PJgs70uPzUHME8Tb5LKRrrNkThqM1MmzdAVNCxS0uTDO
         Ji5GNLdW3DKWzJLfhprsEAm/geoCLsv6wScSmPkMbXVIBebHywPcPzbcUrIFmjrrQe7I
         IlImd4lAcG9B6B8uzWhtUffjR0EHbYsZR6LLhBatpNfnursdXUidD0pBVS639aDDB0hH
         gTIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P4EKNOU7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com. [2607:f8b0:4864:20::729])
        by gmr-mx.google.com with ESMTPS id w6si886517pjr.2.2021.01.08.13.16.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 13:16:21 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) client-ip=2607:f8b0:4864:20::729;
Received: by mail-qk1-x729.google.com with SMTP id d14so9725983qkc.13
        for <clang-built-linux@googlegroups.com>; Fri, 08 Jan 2021 13:16:21 -0800 (PST)
X-Received: by 2002:a37:c92:: with SMTP id 140mr5886796qkm.152.1610140581536;
        Fri, 08 Jan 2021 13:16:21 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id s14sm5598438qke.45.2021.01.08.13.16.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 13:16:20 -0800 (PST)
Date: Fri, 8 Jan 2021 14:16:19 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	stable@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 mips-next 3/7] MIPS: properly stop .eh_frame generation
Message-ID: <20210108211619.GC2547542@ubuntu-m3-large-x86>
References: <20210107123331.354075-1-alobakin@pm.me>
 <20210107123428.354231-1-alobakin@pm.me>
 <20210107123428.354231-3-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107123428.354231-3-alobakin@pm.me>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=P4EKNOU7;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jan 07, 2021 at 12:35:01PM +0000, Alexander Lobakin wrote:
> Commit 866b6a89c6d1 ("MIPS: Add DWARF unwinding to assembly") added
> -fno-asynchronous-unwind-tables to KBUILD_CFLAGS to prevent compiler
> from emitting .eh_frame symbols.
> However, as MIPS heavily uses CFI, that's not enough. Use the
> approach taken for x86 (as it also uses CFI) and explicitly put CFI
> symbols into the .debug_frame section (except for VDSO).
> This allows us to drop .eh_frame from DISCARDS as it's no longer
> being generated.
> 
> Fixes: 866b6a89c6d1 ("MIPS: Add DWARF unwinding to assembly")
> Suggested-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/mips/include/asm/asm.h    | 18 ++++++++++++++++++
>  arch/mips/kernel/vmlinux.lds.S |  1 -
>  2 files changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
> index 3682d1a0bb80..908f6d6ae24b 100644
> --- a/arch/mips/include/asm/asm.h
> +++ b/arch/mips/include/asm/asm.h
> @@ -20,10 +20,27 @@
>  #include <asm/sgidefs.h>
>  #include <asm/asm-eva.h>
>  
> +#ifndef __VDSO__
> +/*
> + * Emit CFI data in .debug_frame sections, not .eh_frame sections.
> + * We don't do DWARF unwinding at runtime, so only the offline DWARF
> + * information is useful to anyone. Note we should change this if we
> + * ever decide to enable DWARF unwinding at runtime.
> + */
> +#define CFI_SECTIONS	.cfi_sections .debug_frame
> +#else
> + /*
> +  * For the vDSO, emit both runtime unwind information and debug
> +  * symbols for the .dbg file.
> +  */
> +#define CFI_SECTIONS
> +#endif
> +
>  /*
>   * LEAF - declare leaf routine
>   */
>  #define LEAF(symbol)					\
> +		CFI_SECTIONS;				\
>  		.globl	symbol;				\
>  		.align	2;				\
>  		.type	symbol, @function;		\
> @@ -36,6 +53,7 @@ symbol:		.frame	sp, 0, ra;			\
>   * NESTED - declare nested routine entry point
>   */
>  #define NESTED(symbol, framesize, rpc)			\
> +		CFI_SECTIONS;				\
>  		.globl	symbol;				\
>  		.align	2;				\
>  		.type	symbol, @function;		\
> diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
> index 16468957cba2..0f4e46ea4458 100644
> --- a/arch/mips/kernel/vmlinux.lds.S
> +++ b/arch/mips/kernel/vmlinux.lds.S
> @@ -225,6 +225,5 @@ SECTIONS
>  		*(.options)
>  		*(.pdr)
>  		*(.reginfo)
> -		*(.eh_frame)
>  	}
>  }
> -- 
> 2.30.0
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210108211619.GC2547542%40ubuntu-m3-large-x86.
