Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBROZ6L7QKGQEBTAKYHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 499B02F1FE9
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 20:53:43 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id w9sf197178pjh.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 11:53:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610394822; cv=pass;
        d=google.com; s=arc-20160816;
        b=UIk/6atKag68TC7qGPK0HH7GpAh1X56jpXi+MjnmTAWWPBWieNXb+Ksgg3rwun8yXb
         J1PSea9KWfvz+OZ9SeCSa0ANVsxs3qFdDCCQxHeiS1sMinFq/ONPJzMDmoRMMhMflGpc
         bTCDbVql8QrTFEgTmGICKLSutv/wORmzxrp+1OTHQyeHjzRIb54EXnnEV17/3PbmnzTm
         AysidK30EYW19GbTUVNAyrBvJmu8Fwn2z0l7X0Petiuu19zHI6ulSVpKGKhf1OxmGOkq
         RAb3K2lTTDqkipaCqqpuQKtYR/Qam16X4MMiw5sS9yyLO6LxotYgWrye3O+NCvynbwnY
         iJ8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mfBh77nHUFiNKYOBnmcvD3gdSTeaf6a8T5Aw2oHH2fw=;
        b=M5hLHyuZJiJ83cekKPqUa3sjrX98XqkJt1Xa6s1uYyfs2pLCYPIHxlC9mlisqzi9zP
         /G7Qv9KQRjfIhIn9jzIxN3FyhtzNx0dly1P6XhK9Naydjth+jveh1OM0pmHTykynx86+
         X+/4/5w6UVzMfJ/Xe/XUsjpJrAAyoxKJcyUxfaWcSooxMCfZD+7qz1BnejDUPfKhFp6U
         p7trsXvhbUyhLUJT9hummE5xmcLp9Ft7crvqSlujCTs0Jxxr0prFwfpKf23rNUd6DRb1
         SkN6ZZwpYpn6RYIdiXo3cOXdd0mBUOfttQ441EGR3PjYMPj+dEcABkjp6BWB9LTLJwpQ
         mEmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nXAUtCl5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mfBh77nHUFiNKYOBnmcvD3gdSTeaf6a8T5Aw2oHH2fw=;
        b=iJm7Q1uEfpzKw3JR3+gKg7EyWh1ZKJIYuA6QdM3Mnelq4cORHklPceJBbiWSpdb5SX
         d0Pg62+b3hZBjHnhos1mNJUY46bMTQDaFyXSLsIutL7Kh7Ecqntl2sSqWlFzCrKZ62M4
         Bj+MhPH5eVFEapBTrYj4VAcLRZcL8Zwf7ol9R7H3GU5X33sDLe3LD+wft4UHa0jjNL6/
         OX7reYIO/5K+ZPLi78EcgmH5KW+LfQwHyOYNAJlTDWOFfZtGIM0iRVjNkoWZS956aeED
         RVDU+tVw10OhmbsUhlu10RGxqadRdI70uK7urmnjugxc6+1nwf6WSahgoyvxPDHeSrHp
         OKzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mfBh77nHUFiNKYOBnmcvD3gdSTeaf6a8T5Aw2oHH2fw=;
        b=r7K9K2xvpgpYUgtYFEhjMQiF8d7sASzQFslW2jtrctHU8qjyzNNz0rNenwfR7pTmM2
         O1ulxdEqwTxel8VemF6+o7OafJ5/xl8BZSgrP6DJLe5JmSCBQ8c6dN5CX6Cyjxjt/BJT
         zaC+MWFp+OTNOky5d+ZOmEO5zPWVZof6oezMt3kGrz8Mw7Zqh2DAcuKHGTYuylYxPd8g
         XKj167qWfEFs4/ChvOlMo8gcvlGNQ2KxzckvcCjnrUKlg9naCMAbwBFCcfUrgMKem3aX
         JbPz2slQYz/LWUM+0JcBK0jr410izr1F2cC0AUyXfFZpqcGQ2uxgsFzR3Nk2+ykxDruj
         LfOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335gbbMp1ERGK1AhTwXNk3bIb/pFu9AaIvLXsEd3NsHxQE+wfqE
	4fnJHWEilXIThmrCb2BmvEc=
X-Google-Smtp-Source: ABdhPJywZ3H3VR/f2Zv/NK2G+tYM8MaCzQFanJj8x56Y3PmvaFU4asbIeR2M2SHGvVqRa0hJWMBFOg==
X-Received: by 2002:a17:90a:8b08:: with SMTP id y8mr524797pjn.42.1610394822024;
        Mon, 11 Jan 2021 11:53:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cd46:: with SMTP id a6ls230140pgj.2.gmail; Mon, 11 Jan
 2021 11:53:41 -0800 (PST)
X-Received: by 2002:a63:da17:: with SMTP id c23mr1122186pgh.348.1610394821350;
        Mon, 11 Jan 2021 11:53:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610394821; cv=none;
        d=google.com; s=arc-20160816;
        b=wZDlNdBBCjquqtQjflOyvhta9+w5YnT+KB59LtbYlzV1+G0cjAwsgGrUQew1nsEsBP
         dnUQdtD/aqLQEEVMgmbTdEmYEPHsvUnwjAmNbtwNvnrWis8Jhmd9Ovq5gwKE4+L4BLiz
         QgGmLs3TOn5cD2KtTZlIezjbV305ZlFRLZZrmPoVGUnyvqIoUHOU2xIbeSyEasUrs1mH
         q61EgV9WG+ALtb2ejY5WoUUMaOXzoeumA53W8haje1NiXr7TGZiPNTyJ17nJSHvHyZNm
         H7tvZl/t+xNwUg6G7cxBA9e9e/g4QBf6aTNH0BpTFkU96hChWnW7QETtg0sLWAM99uqX
         OstQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kqzAS7vv3isJxvxaKX99/4deyJqxK70Am6O+u1zhufI=;
        b=rzjWgFQrU4xD1mgu3RXy6Hm1WzxPzbkCmvCbCoDdPDg/1MRP3JnrKUZpATqelwDEfq
         ls7xljBjFN9q7qOHtcsv2G/dIC4IBXs+i5rdRB/4o5cqPB4EF/EhagD+rxpxKj6ZEWgV
         ybUwQ40W4/ok8Iqj7E68Ii8EkS8oXMHUra9z0E8lkDfN+1rpixIzNIUaGL2RfOhLINn2
         uPaGevhtRe9HGla6ArV+n67byTS+c05RpA+Y8FkDEXSEUlJI5NfBgi6av/t8qRcwKen6
         aOTJg2kzreejdYUwfaB0f+tOcR14UJ3zecEjzaCEJnBNVWBV5HMOnf0HipQxy4QzQZ3z
         Qv0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nXAUtCl5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id c2si71602pls.4.2021.01.11.11.53.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 11:53:41 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id iq13so178179pjb.3
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 11:53:41 -0800 (PST)
X-Received: by 2002:a17:902:eb53:b029:da:da92:c187 with SMTP id i19-20020a170902eb53b02900dada92c187mr1378702pli.34.1610394821104;
        Mon, 11 Jan 2021 11:53:41 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a23sm214136pjh.19.2021.01.11.11.53.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 11:53:40 -0800 (PST)
Date: Mon, 11 Jan 2021 11:53:39 -0800
From: Kees Cook <keescook@chromium.org>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>, Fangrui Song <maskray@google.com>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	stable@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 mips-next 0/9] MIPS: vmlinux.lds.S sections fixes &
 cleanup
Message-ID: <202101111153.AE5123B6@keescook>
References: <20210110115245.30762-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210110115245.30762-1-alobakin@pm.me>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=nXAUtCl5;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035
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

On Sun, Jan 10, 2021 at 11:53:50AM +0000, Alexander Lobakin wrote:
> This series hunts the problems discovered after manual enabling of
> ARCH_WANT_LD_ORPHAN_WARN. Notably:
>  - adds the missing PAGE_ALIGNED_DATA() section affecting VDSO
>    placement (marked for stable);
>  - stops blind catching of orphan text sections with .text.*
>    directive;
>  - properly stops .eh_frame section generation.
> 
> Compile and runtime tested on MIPS32R2 CPS board with no issues
> using two different toolkits:
>  - Binutils 2.35.1, GCC 10.2.1 (with Alpine patches);
>  - LLVM stack: 11.0.0 and from latest Git snapshot.
> 
> Since v4 [3]:
>  - new: drop redundant .text.cps-vec creation and blind inclusion
>    of orphan text sections via .text.* directive in vmlinux.lds.S;
>  - don't assert SIZEOF(.rel.dyn) as it's reported that it may be not
>    empty on certain machines and compilers (Thomas);
>  - align GOT table like it's done for ARM64;
>  - new: catch UBSAN's "unnamed data" sections in generic definitions
>    when building with LD_DEAD_CODE_DATA_ELIMINATION;
>  - collect Reviewed-bys (Kees, Nathan).

Looks good; which tree will this land through?

-Kees

> 
> Since v3 [2]:
>  - fix the third patch as GNU stack emits .rel.dyn into VDSO for
>    some reason if .cfi_sections is specified.
> 
> Since v2 [1]:
>  - stop discarding .eh_frame and just prevent it from generating
>    (Kees);
>  - drop redundant sections assertions (Fangrui);
>  - place GOT table in .text instead of asserting as it's not empty
>    when building with LLVM (Nathan);
>  - catch compound literals in generic definitions when building with
>    LD_DEAD_CODE_DATA_ELIMINATION (Kees);
>  - collect two Reviewed-bys (Kees).
> 
> Since v1 [0]:
>  - catch .got entries too as LLD may produce it (Nathan);
>  - check for unwanted sections to be zero-sized instead of
>    discarding (Fangrui).
> 
> [0] https://lore.kernel.org/linux-mips/20210104121729.46981-1-alobakin@pm.me
> [1] https://lore.kernel.org/linux-mips/20210106200713.31840-1-alobakin@pm.me
> [2] https://lore.kernel.org/linux-mips/20210107115120.281008-1-alobakin@pm.me
> [3] https://lore.kernel.org/linux-mips/20210107123331.354075-1-alobakin@pm.me
> 
> Alexander Lobakin (9):
>   MIPS: vmlinux.lds.S: add missing PAGE_ALIGNED_DATA() section
>   MIPS: CPS: don't create redundant .text.cps-vec section
>   MIPS: vmlinux.lds.S: add ".gnu.attributes" to DISCARDS
>   MIPS: properly stop .eh_frame generation
>   MIPS: vmlinux.lds.S: explicitly catch .rel.dyn symbols
>   MIPS: vmlinux.lds.S: explicitly declare .got table
>   vmlinux.lds.h: catch compound literals into data and BSS
>   vmlinux.lds.h: catch UBSAN's "unnamed data" into data
>   MIPS: select ARCH_WANT_LD_ORPHAN_WARN
> 
>  arch/mips/Kconfig                 |  1 +
>  arch/mips/include/asm/asm.h       | 18 ++++++++++++++++++
>  arch/mips/kernel/cps-vec.S        |  1 -
>  arch/mips/kernel/vmlinux.lds.S    | 11 +++++++++--
>  include/asm-generic/vmlinux.lds.h |  6 +++---
>  5 files changed, 31 insertions(+), 6 deletions(-)
> 
> -- 
> 2.30.0
> 
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101111153.AE5123B6%40keescook.
