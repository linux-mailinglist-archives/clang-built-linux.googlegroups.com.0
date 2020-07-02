Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUEG7D3QKGQEUOLHSSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1B72128BE
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 17:54:57 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id w125sf2358841oie.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 08:54:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593705296; cv=pass;
        d=google.com; s=arc-20160816;
        b=hC0uUIDHgdlGwvlxllkrh4kE6LChPS0Bmwu3bQGxHuQPQIWBVZ6zIISmih20lumeFq
         OWW71A+BKMcThcO/gt8uKrGqWOtiJfILaJjFoFV4+Uds/ddnOxOWrn4hyznK56d3qf+s
         0odamfSUi/JRNp83Qq1cvHV8lF7TqtGFRSOK18S0xk0gEc8UyRoY5T632IHg724cCKdg
         I8mBM7iB/XlAXPVK0eHco1YESZEvQnF2LpPOXQEio7fGMvv0rR4YXnsQZyuFSiYfy8Zb
         ZpYeJ1uNqeLZboheWSbANXmFNzA0JBKFdT2y3WL0RgZojiJVlbWVxVw2bNirHIu0HZRY
         nbDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oqDgfYnRqGn788KeUOe/71Z+/+3A33XIXUEXcCs49jE=;
        b=m1kjpC4uuSinwJza4pgbiVdKDjZzE98kjc/5hw1kB/UV+SERqzpTrkrDRO72lfWlth
         vffxqhZNeo5iydLpKJJGo6eW0Be3KAYlyT651J19dE/ioNBLnY7IuIUJ/sBxfulrKt1w
         h2XNTjrhfyn+7JzIKBmx/Y78wLG1bb5XtKVTD4yBROpHIR/HErSBvwZg13FElLj18wHr
         NZ8u2wfDugCbiLK9wDjOE+6CTatXnoamYf3K3/QDHiVWHii0Kwez+aY51YCKSH9wtxB6
         xPibR7eOjiTsujDtweTHynjPK3fNV+2XVvuFel0xaN54JxAbiT+a1DyJXov5W+PBexlx
         +QyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=E231RZrQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oqDgfYnRqGn788KeUOe/71Z+/+3A33XIXUEXcCs49jE=;
        b=FT+wkhyLguM018vpMRM4AzcZtjSkGbHekiBlqKlIbvk2iv88KxRxsQgISwUk5XXDff
         s51wWQ275Lgf2yvhhpE4GqUfERjiT8trzxlOC+2ePwB0U7gwGIa7cNpOZcc1svLUDWBG
         uk+dtQs/7gpax3b5H7lJ93EXZmp1NpAAmQ/kJzQaWCf/+QTec1fVq+XdDK1U0eca/YtK
         OPNeVSz47jt4ilVSSsCmeqacJf2SDfTcApBykOkKAidmWcS9KTxX5z8kzQLTV41USuRQ
         3vDTmxPSHWQSJbThsAuOXOK3eQgBL0WG4RToN4PBMt4c9SLmWxu0vVXTogWb/dDQ2U7Z
         wwzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oqDgfYnRqGn788KeUOe/71Z+/+3A33XIXUEXcCs49jE=;
        b=n6SDw3vW7rgnJgQEERm/OibPqU8QbHA34c3Pscj43PFkW6zOPTvFs86F4JTLz50ukl
         9GQnMfNsqPzyie3u2hwdfCGBd6u1WDwVLj9XwpMrf2MN7ALYYcQ3CdWFwQCkACy+gpik
         XXeZTRSR/wQeb8BdGqjZKQeaG6uizh5Pw25JVkE86RjmW8uniz6REnhmIjsPegi6l+gC
         dDEEE6iZSrrSbRgzAQXea+2dQjPQISRXQczmXEGdbWzHDtQ8oL+xiyiEqtOBq7h5PU/l
         Az5PdkbOzjXPRzogRHalNdF3wNk2UEWmPMz+5ejoU+359PxSG8Ml485XqdyNNSV81wEv
         eFYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sBaV6CDKHMSM3OSf2+xZBNUQQTTFUSh/BMoAu3Whmj3g85xqh
	+ArNBpK+Qr/ZyXKut6bLOvg=
X-Google-Smtp-Source: ABdhPJzx4/vVZ0UhfS1AsvgNMKrNmZIvGlKyI5RhTCjYE6vk5kcg6rX6eLwKm2QJzeA0s8xifZp4OQ==
X-Received: by 2002:a4a:98c8:: with SMTP id b8mr5542931ooj.42.1593705296234;
        Thu, 02 Jul 2020 08:54:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4d14:: with SMTP id n20ls1431130otf.4.gmail; Thu, 02 Jul
 2020 08:54:55 -0700 (PDT)
X-Received: by 2002:a05:6830:1be2:: with SMTP id k2mr24001359otb.199.1593705295823;
        Thu, 02 Jul 2020 08:54:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593705295; cv=none;
        d=google.com; s=arc-20160816;
        b=pW6/Frpdn8mb9YItjSM0T9dEg4YAVfDGZ/GRdrsDZKY7hMxaTwFg21hGQAQVU3QFRv
         3xh1qaV8Jxnq1/g21anmiSt1cSuWuvbR42HRNUOYXliLqK5SPnj4quPeW4L8fBAX18sg
         14eDsTMcECgDiF4b0LmU1VjNaiqqORUHQqHFpx+ZYKPaqFT4eiJVX3a2PY3KdGpIWtRc
         TwNDlxm/dE7KF22vhd7Pc0B5hhHdUM1iN79trsWBVi3mXw3NYcmhV4tFBXH2e3bTW1OP
         PMAQgGY6JLoVtExPFWCbsq82Jo6yFRFmL7imYy5dOi/dsjpDk02fVj8WK4Cwh99mO+ws
         exZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MeAooFE7BzOJmYHcj5OvJQ3TIg8iS0KIUniqk0qo5RE=;
        b=0DGyBcId2TlVwRDHY2zO6BurjLgq23Sf75u+lN+xCgSQTXLkAE+hi2tyYUrL2A9TnC
         CKjskSobRgPLeUgwUMa4NRHij7wz2ZAw7sa0+xinSrFNJkMbsuJek+jlMiE6Le4R3r0G
         EEyIwNpGwBFCNjxUJPWLQ2t2gkLtsgmYShy5VtKPdkHZ3WJhaP03XbmEjlJTgDlu/56q
         rRLqhpB04o1NdssXYGJYXoLpvcLhKwUNe8i7qTiLNT0R3Swv8mdaulAuqHdV1h4q99gz
         EEqO8LDaHnPyT1Vnitzuh1dpKbDo4+28Qj4CnTJMKsjhTy8whzRTdo2eX9MlNFyUFO8i
         kBiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=E231RZrQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id i189si50603oib.0.2020.07.02.08.54.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 08:54:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id l6so9530901pjq.1
        for <clang-built-linux@googlegroups.com>; Thu, 02 Jul 2020 08:54:55 -0700 (PDT)
X-Received: by 2002:a17:902:bb95:: with SMTP id m21mr26850948pls.111.1593705295142;
        Thu, 02 Jul 2020 08:54:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n65sm9219269pfn.17.2020.07.02.08.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 08:54:54 -0700 (PDT)
Date: Thu, 2 Jul 2020 08:54:53 -0700
From: Kees Cook <keescook@chromium.org>
To: Danny Lin <danny@kdrag0n.dev>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	stable@vger.kernel.org
Subject: Re: [PATCH] vmlinux.lds.h: Coalesce transient LLVM dead code
 elimination sections
Message-ID: <202007020853.5F15B5DDD@keescook>
References: <20200702085400.2643527-1-danny@kdrag0n.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200702085400.2643527-1-danny@kdrag0n.dev>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=E231RZrQ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
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

On Thu, Jul 02, 2020 at 01:54:00AM -0700, Danny Lin wrote:
> A recent LLVM 11 commit [1] made LLD stop implicitly coalescing some
> temporary LLVM sections, namely .{data,bss}..compoundliteral.XXX:
> 
>   [30] .data..compoundli PROGBITS         ffffffff9ac9a000  19e9a000
>        000000000000cea0  0000000000000000  WA       0     0     32
>   [31] .rela.data..compo RELA             0000000000000000  40965440
>        0000000000001d88  0000000000000018   I      2238    30     8
>   [32] .data..compoundli PROGBITS         ffffffff9aca6ea0  19ea6ea0
>        00000000000033c0  0000000000000000  WA       0     0     32
>   [33] .rela.data..compo RELA             0000000000000000  409671c8
>        0000000000000948  0000000000000018   I      2238    32     8
>   [...]
>   [2213] .bss..compoundlit NOBITS           ffffffffa3000000  1d85c000
>        00000000000000a0  0000000000000000  WA       0     0     32
>   [2214] .bss..compoundlit NOBITS           ffffffffa30000a0  1d85c000
>        0000000000000040  0000000000000000  WA       0     0     32
>   [...]
> 
> While these extra sections don't typically cause any breakage, they do
> inflate the vmlinux size due to the overhead of storing metadata for
> thousands of extra sections.
> 
> It's also worth noting that for some reason, some downstream Android
> kernels can't boot at all if these sections aren't coalesced.
> 
> This issue isn't limited to any specific architecture; it affects arm64
> and x86 if CONFIG_LD_DEAD_CODE_DATA_ELIMINATION is forced on.
> 
> Example on x86 allyesconfig:
>     Before: 2241 sections, 1170972 KiB
>     After:    56 sections, 1171169 KiB
> 
> [1] https://github.com/llvm/llvm-project/commit/9e33c096476ab5e02ab1c8442cc3cb4e32e29f17
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/958
> Cc: stable@vger.kernel.org # v4.4+
> Suggested-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Danny Lin <danny@kdrag0n.dev>
> ---
>  include/asm-generic/vmlinux.lds.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index db600ef218d7..18968cba87c7 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -94,10 +94,10 @@
>   */
>  #ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
>  #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
> -#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..LPBX*
> +#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..LPBX* .data..compoundliteral*
>  #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
>  #define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]*
> -#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]*
> +#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral*

Are there .data.. and .bss.. sections we do NOT want to collect? i.e.
why not include .data..* and .bss..* ?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007020853.5F15B5DDD%40keescook.
