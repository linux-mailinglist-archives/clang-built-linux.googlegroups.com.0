Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSP2TKEQMGQEVGKFLYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 6254E3F7E00
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 23:59:38 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id p10-20020a5d68ca000000b001552bf8b9dasf268748wrw.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 14:59:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629928778; cv=pass;
        d=google.com; s=arc-20160816;
        b=PhoC+w7EP/QUjlERuXOrk24XSCd7xKcwIrZIllAg/ElD6Kv8eMB5fZlr11T+1gvnhW
         nJPjpoSsL0egabM9pnjl54Gw1KAhyHPkJEJqnuB2ezokKDleD0+vCKy/5iHV7C3dui3c
         s7hOlXBU0Hpt6otdBoFjQ0Uh5s/ahNS9+rj8drBd7WdRWTYAUW3WJ0RDWf6iqogTUpCV
         7WW+qryeFb3FVJSDYF+EjKgO3YgZmF3nvESId/IRFC8tsO5glkizshJ17I/C3awhVUWW
         PUJzWSuvDIEzFVADrjQYeOxD2RdM/QnsPV+cB+cep2ayoBUp4DwnZKFA5Y9rBzqjYjqA
         pD3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2MW0LqF6mtYehFlt2j+UYP0U8P2UjhyfdnbWoqOjeJw=;
        b=lEMCoPOrNv6dUGZAig0Ow7t9JmA+fbomEMTowSqnhIBJ1J/L9rJn/APJyyE6u7RLTL
         E6zAzZvUMOnmLtAjh1Eh9daLSmY1l2SGzqyoZ3B3pk8/0erKHBBarE+rklHNw6syf8Ge
         8vz50+z2cUm/Ytf1CpOjlUBEWsk2EMNnU9fJPL9Xmr0ibNIdxT/jMWKfzU+xtprYsg7L
         jz28j87UJimmdEq+BoS1NDXvLjyBTiY/H/9U8zUhryAoa0wMXhMOibgFIjGJ2+TTfgFV
         E/FfgnrhdXjnSD5tLr3lH85Y4VXDi+TSsutq/s3RB22ZohRiyVCgD1fkXXqZKguQNukO
         RCKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Rwvd09BG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2MW0LqF6mtYehFlt2j+UYP0U8P2UjhyfdnbWoqOjeJw=;
        b=XGIvjxAQ6Zj2aN9RPBYWBTGw7VINiXrdxMLaxUJSP5cFpnv6QNffy4m22bzKtubBub
         pUju8LUz6X1jdQQLJys1BLwFpbfXoIwXtl2h5Sv7rf6L4Txr6T5YZo8zgP3BAvmaILOy
         HtaX26nVFwIAGG/vrLjhXe5NVss3ANcL5wLWeUGqA0vd8V+UqzvnZjS4EojHMADc4oNt
         NRJo/avzZayrGqf7M3QG+ElpgoCtf6sZLltVrXnrUEeoeniZD+2tIAyPrt85euqsgeoJ
         WZ4Zw0dApMK6I8Q9gMfG3a9GS22TDBb0niz3L7X+JsHL9bBbB8+t+Ws384W5kusRz1tW
         3oVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2MW0LqF6mtYehFlt2j+UYP0U8P2UjhyfdnbWoqOjeJw=;
        b=suMCIuEe4zK/kmFM+skyOvEXg0k2Iau78lPpKMCnXPHoDkH3kBf/kP5bQgdqQ2kvUs
         qrUN3pZaWzAq/uoItMxWHXWxHuXJY7Sc3ZgNU0j6SBhYsU3TcA8WCggzzquuUI9B3b/l
         GN4lV9B5YmalPpAL4di7TjZgnN+2U9AdzfKy7SDSDmVaP5H8iFcrVWZwVYrtyiCMcMI9
         etHOcJQ6x6FTUxKw2sET38CEQhr/+0AnzZnbLRRN5ICG4C8pWiDVgk0vyOoTotzGF14K
         kycUuYZhuvW61pLzI2eqzVfOQW+YuQY2I9aAXlKgTHpCo79CLF1D1+1DCpZN8NKGdOls
         kFMQ==
X-Gm-Message-State: AOAM532ybiP+peeMCYGtpCJdp70mnAInfi9LjYNhpBAK7YQQtk7qEOdm
	eNJO+gHGay8Zt2jIgzkKX7k=
X-Google-Smtp-Source: ABdhPJycoKAwthndJqgTflta19+UgdsbgEUPseNyAQCUN3IBGLvtf/90FDw3gYXVHKr2YLBg3ZEvMA==
X-Received: by 2002:adf:f143:: with SMTP id y3mr316391wro.168.1629928777918;
        Wed, 25 Aug 2021 14:59:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ef0d:: with SMTP id e13ls4607652wro.3.gmail; Wed, 25 Aug
 2021 14:59:37 -0700 (PDT)
X-Received: by 2002:a05:6000:1569:: with SMTP id 9mr265103wrz.343.1629928777085;
        Wed, 25 Aug 2021 14:59:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629928777; cv=none;
        d=google.com; s=arc-20160816;
        b=GXlaegN3yb44z7Een7ZBtZBG9mqNUiaJ2XTnbVVVp5v6J2VVIvAURBuZkQ108PBd0V
         5CwZwccVvQ5QPg5Z7a9D26iPZLXIui2jaGXo/hAqk29lJfEiH45MW4oTEnt2kRjFJtgm
         wOS/FrM70Vt80oIEbHRmd80CYd58n3nyzVDBWlkd6t8JR6YWWVxyQ548BgfIAE7JZDks
         OymyNQex2f1I7dEQhnOgE4py4ISH9B51eQqu0pJM6ll+qwQgTcbZWH1P2EUG9LNcI6So
         GIZY8M5v/NdbKGG8K66RzFKMtwrdn/z5ZyeuvCL4XZviNIpGztx/meUCW2tZhjSpwLGD
         uCWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jEQgN0abaaOBlYJk9+kTEjTwkKHPtenNKxBXd/YeuFg=;
        b=Yi0LPoAC7j7ClE4IuhqPdxc2WWCogSCgmwzvizuE47IouNy1WIQ/s2RwLFwzzkROeC
         tLbzLMbfBbW+lNZ/BiaCnfQPl3+JOnwkPjiyy60rfKRemJM3TUxFSldYcxxoU5JmAUId
         1HLIowli51nfIOuCuAPS1vLT5gjlVL+inPTZigVJ+Va+sYa+xd+8423FpvlwQkyCfmqF
         GFllMZfzS3xYmTCoyjlRnQJd9GqbBoc8g9W1L1nRzmoUjhI0DZfNJEGV16vyssHEgEbq
         WmzuFP+kr5bxeqK5jDRpc1LZZt6tA/TpnEEkV7PQnKeDS9GVCaS/vg4FmboYEp5C63TY
         i/wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Rwvd09BG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id a1si72937wrp.1.2021.08.25.14.59.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 14:59:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id j4so1953412lfg.9
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 14:59:37 -0700 (PDT)
X-Received: by 2002:a05:6512:3a84:: with SMTP id q4mr182701lfu.543.1629928776388;
 Wed, 25 Aug 2021 14:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210822075122.864511-1-keescook@chromium.org> <20210822075122.864511-16-keescook@chromium.org>
In-Reply-To: <20210822075122.864511-16-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 14:59:24 -0700
Message-ID: <CAKwvOdk0TC_D3ZOQF38=hqH3JRJ608HfzcnczmDunEF5_t0Buw@mail.gmail.com>
Subject: Re: [PATCH for-next 15/25] fortify: Move remaining fortify helpers
 into fortify-string.h
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, 
	Francis Laniel <laniel_francis@privacyrequired.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Daniel Micay <danielmicay@gmail.com>, 
	Bart Van Assche <bvanassche@acm.org>, David Gow <davidgow@google.com>, linux-mm@kvack.org, 
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Rwvd09BG;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Sun, Aug 22, 2021 at 12:57 AM Kees Cook <keescook@chromium.org> wrote:
>
> When commit a28a6e860c6c ("string.h: move fortified functions definitions
> in a dedicated header.") moved the fortify-specific code, some helpers
> were left behind. Move the remaining fortify-specific helpers into
> fortify-string.h so they're together where they're used. This requires
> that any FORTIFY helper function prototypes be conditionally built to
> avoid "no prototype" warnings. Additionally removes unused helpers.
>
> Acked-by: Francis Laniel <laniel_francis@privacyrequired.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  include/linux/fortify-string.h | 7 +++++++
>  include/linux/string.h         | 9 ---------
>  lib/string_helpers.c           | 2 ++
>  3 files changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
> index c1be37437e77..7e67d02764db 100644
> --- a/include/linux/fortify-string.h
> +++ b/include/linux/fortify-string.h
> @@ -2,6 +2,13 @@
>  #ifndef _LINUX_FORTIFY_STRING_H_
>  #define _LINUX_FORTIFY_STRING_H_
>
> +#define __FORTIFY_INLINE extern __always_inline __attribute__((gnu_inline))
> +#define __RENAME(x) __asm__(#x)
> +
> +void fortify_panic(const char *name) __noreturn __cold;
> +void __read_overflow(void) __compiletime_error("detected read beyond size of object (1st parameter)");
> +void __read_overflow2(void) __compiletime_error("detected read beyond size of object (2nd parameter)");
> +void __write_overflow(void) __compiletime_error("detected write beyond size of object (1st parameter)");
>
>  #if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KASAN_SW_TAGS)
>  extern void *__underlying_memchr(const void *p, int c, __kernel_size_t size) __RENAME(memchr);
> diff --git a/include/linux/string.h b/include/linux/string.h
> index b48d2d28e0b1..9473f81b9db2 100644
> --- a/include/linux/string.h
> +++ b/include/linux/string.h
> @@ -249,15 +249,6 @@ static inline const char *kbasename(const char *path)
>         return tail ? tail + 1 : path;
>  }
>
> -#define __FORTIFY_INLINE extern __always_inline __attribute__((gnu_inline))
> -#define __RENAME(x) __asm__(#x)
> -
> -void fortify_panic(const char *name) __noreturn __cold;
> -void __read_overflow(void) __compiletime_error("detected read beyond size of object passed as 1st parameter");
> -void __read_overflow2(void) __compiletime_error("detected read beyond size of object passed as 2nd parameter");
> -void __read_overflow3(void) __compiletime_error("detected read beyond size of object passed as 3rd parameter");
> -void __write_overflow(void) __compiletime_error("detected write beyond size of object passed as 1st parameter");
> -
>  #if !defined(__NO_FORTIFY) && defined(__OPTIMIZE__) && defined(CONFIG_FORTIFY_SOURCE)
>  #include <linux/fortify-string.h>
>  #endif
> diff --git a/lib/string_helpers.c b/lib/string_helpers.c
> index e9433caab217..1274f45ffaf4 100644
> --- a/lib/string_helpers.c
> +++ b/lib/string_helpers.c
> @@ -879,9 +879,11 @@ char *strreplace(char *s, char old, char new)
>  }
>  EXPORT_SYMBOL(strreplace);
>
> +#ifdef CONFIG_FORTIFY_SOURCE
>  void fortify_panic(const char *name)
>  {
>         pr_emerg("detected buffer overflow in %s\n", name);
>         BUG();
>  }
>  EXPORT_SYMBOL(fortify_panic);
> +#endif /* CONFIG_FORTIFY_SOURCE */
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-16-keescook%40chromium.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk0TC_D3ZOQF38%3DhqH3JRJ608HfzcnczmDunEF5_t0Buw%40mail.gmail.com.
