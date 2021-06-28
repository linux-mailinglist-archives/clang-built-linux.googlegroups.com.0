Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWMN5GDAMGQELAOBQ2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FED3B6ABC
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 00:02:01 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id u4-20020a1709061244b02904648b302151sf4887027eja.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 15:02:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624917721; cv=pass;
        d=google.com; s=arc-20160816;
        b=p4cH3MnRtco9tzhlFtzZqkVZCKf0ga0VrLBUlDv0Kimki/aySiZta3iXTvrCmbsKB9
         OWh2HZCU9lJulWHMBkOJA+a9MyQWpT09SCqv3K6ri2/xdeofF2ITwkg3D5UFMlugmPdE
         nCQVbAhgDvCrv5XVFv+EATBuC9twJY1S4L9+/SPl3KgI9tLPGiYcsUTx37CO4OLtYZnx
         dvlYe7zp9NApw/MGmm2LjoCUNzu6MQC5rud6wzRuyW77/LWNwF/c8rBK3OYI8C+eH39u
         ObITW9RnPBrqFdZv9rCd/y+0RTrhW6eZ29cn8e7f6Nd+ZKIxNWnZUlSFC/d/n0mfpW24
         PXSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sk4odjlqmq+tXci0Q9U7ih+X5xYJamw7fSVTtu0UZ3E=;
        b=zdL+OuMJj0aJU25IyOgeD9nU9Tu5pc/RQwpj/X3nvmH3u638KCmjTahzG/aM8hZP52
         t0cSXSGQ41rNrYIXiVMRUdgHwAviJv86+jAhi4xFvLLbGXkBv2HlFvNuQQCyeuc3Oy74
         1msKE70Psxte7uopbePuPLm9YhXUmyQsq9a4HUH3Dkwn715Ho51mNtjc+zmwq41H2t7t
         EYUugw5o7LbDnYBLvw6sB5vsLbsecdBDCLe/ibomZb2QNjAXIsP/KigcJtf4JIuGjDhq
         c3nSLlB1It54sbOnu3+N7MsABsqOy8W630Nc4ER0MYpJxFXQMnLiz/U1GNHwpGwPpKXt
         BC/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oXcIv1+b;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sk4odjlqmq+tXci0Q9U7ih+X5xYJamw7fSVTtu0UZ3E=;
        b=B5CKA3WRkFW+sQjpg7pbJN/DeOdS9sOfZYUsBQMcrAkLuMMtkT4xH3PLTAbRr36l+V
         ZRItdSLl3tXuGoL/EKS3ZrhcxqEzfAfKhPmsb2JYqa/3jid2VgpqUXrr95Dhfx9bxHVa
         Hx1ZwoiMxaoFNCP4RaU5dOREF3dgs5m4XCQxr0Sri59OAPL6A6lce62TI5hFu3HRWk5a
         UUBboGGu7gKv9KK/yPFg+428yWyK6Uc1IpOKkfA+sTX36sXkEVkQgRVDom25FOqEkQU9
         dLJD2az6/YDmHcXEKVfrXSdBPq1CwDuBcTkAegCERYpXkjqYPIHdJcEbSFfJmY+olglO
         Vn6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sk4odjlqmq+tXci0Q9U7ih+X5xYJamw7fSVTtu0UZ3E=;
        b=eoRN3dXw1+ybqxzi3cGrATz+LVAj9zYXpD3+9fdTURvugDZeC9PwKJWw7XTMLdy8SV
         h2DiliHCebKMnbOktvTt/CXki2HgKj+Z99dewIjZQzH0M+wOOW8mAupQJdPL0Q1dNZPQ
         OJDPZp4E+st82XUR/qy0RYvJtbJO7A6tN488BXE2QzzpXtkn4G8QwLS+tsw1tRcVTkqN
         BW9e2WaTwUL/z+ZKi2uG3hEew560Lts7AhG2FsJJryNcEH1mhsRK1vRVQtMnjRVmfxgU
         q9+CkWcafqbj4c5zxxzWHmz+YDJO6EWHYNboKJR+EoBoi8PlLltevWEjrnjtlJNUjx9v
         c49A==
X-Gm-Message-State: AOAM5323rYZnl4354mSFapaMxqPefmi7gEsu7ZbfNXWDmIrXf4lAiD6v
	3vAbCoPredcV7z5gSoybRCE=
X-Google-Smtp-Source: ABdhPJwJX9PwX6jibVs+q3bTrm3LVgm/j6IW47BZUY+T33AmE+eZKCMnvnd0cGe55mi6TLY8KwQClA==
X-Received: by 2002:a17:906:3755:: with SMTP id e21mr26640790ejc.0.1624917721627;
        Mon, 28 Jun 2021 15:02:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:3514:: with SMTP id b20ls2433626edd.1.gmail; Mon,
 28 Jun 2021 15:02:00 -0700 (PDT)
X-Received: by 2002:aa7:d751:: with SMTP id a17mr1782442eds.377.1624917720735;
        Mon, 28 Jun 2021 15:02:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624917720; cv=none;
        d=google.com; s=arc-20160816;
        b=dcDWCNSZIIxMd2wl9pfezP8MpKnH1jDyxOXuDWg8O6IR/bPKmMR+PA87Mf2VtOLgiy
         JetQtuv181kME1L45j45KC/TfiAI+287Dkxn5nnitmR8TUXfHtNjTxsKQWSEFaTIjfeW
         rOJg/cQJZYQHdChG1uQdE9bB2rK3V4lAOgkPL0rqkOL86ieoiPv1kxLnChwxmb4Va0dX
         6k3L9EVZdO9A0yxj0CoJH6kU6/soqu1BYTiuKtvac4K9U3wjHLzQqpgL5RwHKKHQ/Fim
         XvTDtV73x4BbX68+1BI5SobT0JQVcEVGTNzb/2RXoM6IX3SFpHuCy5uy6eFGJyOzvTdF
         HtAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ld79rQjtbYJbqjVTRO7UGOY87DxJGaKTkW2E/mZ4R2E=;
        b=zPfWtBwy8TCi8zMm3PyFTvNZMAQYT1xmG5bFr8EbR94HnGqxVPytcDOnbLRcurjtXV
         AF71Tr5X0tieqJcRB854YTWfllEqI0HK/5tXGqwhToKcjaB/1YaFAkTQroRtdV9J+2zS
         2r5/TNpuJYI+p1LH5d3ka3wfbiG02aNsSxaPDCNLsfaWpsnQi6/vbnz8r0ffOIenLMpp
         8adNOTkGkC8wDO7Yza4+2c0nZPwSXiZroPOq765nLR7el60QOckbRC2BXM+NZEz1JV6O
         0MidlPCJeWLa0uU6M+8KCwcljGk4xICG9tmhsNYNxAUD/O+HDLnuWo6wsN/2EsJB46fi
         PHkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oXcIv1+b;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id o28si182739edi.1.2021.06.28.15.02.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 15:02:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id t17so35450465lfq.0
        for <clang-built-linux@googlegroups.com>; Mon, 28 Jun 2021 15:02:00 -0700 (PDT)
X-Received: by 2002:a05:6512:3884:: with SMTP id n4mr20321135lft.547.1624917720175;
 Mon, 28 Jun 2021 15:02:00 -0700 (PDT)
MIME-Version: 1.0
References: <a970613b-014f-be76-e342-4a51e792b56d@kernel.org>
 <20210628203109.2501792-1-ndesaulniers@google.com> <YNo8+PWPu5ssAcau@archlinux-ax161>
In-Reply-To: <YNo8+PWPu5ssAcau@archlinux-ax161>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Jun 2021 15:01:48 -0700
Message-ID: <CAKwvOdks4o8A1o7Q49Pa43ZyY5Zh6+s-u67FL-fp=16FP-Y7yw@mail.gmail.com>
Subject: Re: [PATCH v3] kallsyms: strip LTO suffixes from static functions
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>, 
	"KE . LI" <like1@oppo.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Randy Dunlap <rdunlap@infradead.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Stephen Boyd <swboyd@chromium.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oXcIv1+b;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

On Mon, Jun 28, 2021 at 2:20 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Mon, Jun 28, 2021 at 01:31:06PM -0700, Nick Desaulniers wrote:
> > Similar to:
> > commit 8b8e6b5d3b01 ("kallsyms: strip ThinLTO hashes from static
> > functions")
> >
> > It's very common for compilers to modify the symbol name for static
> > functions as part of optimizing transformations. That makes hooking
> > static functions (that weren't inlined or DCE'd) with kprobes difficult.
> >
> > LLVM has yet another name mangling scheme used by thin LTO.  Strip off
> > these suffixes so that we can continue to hook such static functions.
> >
> > Reported-by: KE.LI(Lieke) <like1@oppo.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Changes v2 -> V3:
> > * Un-nest preprocessor checks, as per Nathan.
> >
> > Changes v1 -> v2:
> > * Both mangling schemes can occur for thinLTO + CFI, this new scheme can
> >   also occur for thinLTO without CFI. Split cleanup_symbol_name() into
> >   two function calls.
> > * Drop KE.LI's tested by tag.
> > * Do not carry Fangrui's Reviewed by tag.
> > * Drop the inline keyword; it is meaningless.
> >  kernel/kallsyms.c | 32 +++++++++++++++++++++++++++++---
> >  1 file changed, 29 insertions(+), 3 deletions(-)
> >
> > diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
> > index 4067564ec59f..143c69e7e75d 100644
> > --- a/kernel/kallsyms.c
> > +++ b/kernel/kallsyms.c
> > @@ -171,6 +171,26 @@ static unsigned long kallsyms_sym_address(int idx)
> >       return kallsyms_relative_base - 1 - kallsyms_offsets[idx];
> >  }
> >
> > +#ifdef CONFIG_LTO_CLANG_THIN
> > +/*
> > + * LLVM appends a suffix for local variables that must be promoted to global
> > + * scope as part of thin LTO. foo() becomes foo.llvm.974640843467629774. This
> > + * can break hooking of static functions with kprobes.
> > + */
> > +static bool cleanup_symbol_name_thinlto(char *s)
> > +{
> > +     char *res;
> > +
> > +     res = strstr(s, ".llvm.");
> > +     if (res)
> > +             *res = '\0';
> > +
> > +     return res != NULL;
> > +}
> > +#else
> > +static bool cleanup_symbol_name_thinlto(char *s) { return false; }
> > +#endif /* CONFIG_LTO_CLANG_THIN */
> > +
> >  #if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
> >  /*
> >   * LLVM appends a hash to static function names when ThinLTO and CFI are
> > @@ -178,7 +198,7 @@ static unsigned long kallsyms_sym_address(int idx)
> >   * This causes confusion and potentially breaks user space tools, so we
> >   * strip the suffix from expanded symbol names.
> >   */
> > -static inline bool cleanup_symbol_name(char *s)
> > +static bool cleanup_symbol_name_thinlto_cfi(char *s)
> >  {
> >       char *res;
> >
> > @@ -189,8 +209,14 @@ static inline bool cleanup_symbol_name(char *s)
> >       return res != NULL;
> >  }
> >  #else
> > -static inline bool cleanup_symbol_name(char *s) { return false; }
> > -#endif
> > +static bool cleanup_symbol_name_thinlto_cfi(char *s) { return false; }
> > +#endif /* CONFIG_CFI_CLANG && CONFIG_LTO_CLANG_THIN */
> > +
> > +static bool cleanup_symbol_name(char *s)
> > +{
> > +     return cleanup_symbol_name_thinlto(s) &&
> > +             cleanup_symbol_name_thinlto_cfi(s);
> > +}
> >
> >  /* Lookup the address for this symbol. Returns 0 if not found. */
> >  unsigned long kallsyms_lookup_name(const char *name)
> > --
> > 2.32.0.93.g670b81a890-goog
> >
>
> Is there any reason that we cannot eliminate the stubs and combine the
> functions, or am I missing something? Completely untested diff.
>
> diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
> index c851ca0ed357..014b59ad68a3 100644
> --- a/kernel/kallsyms.c
> +++ b/kernel/kallsyms.c
> @@ -161,26 +161,36 @@ static unsigned long kallsyms_sym_address(int idx)
>         return kallsyms_relative_base - 1 - kallsyms_offsets[idx];
>  }
>
> -#if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
> -/*
> - * LLVM appends a hash to static function names when ThinLTO and CFI are
> - * both enabled, i.e. foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
> - * This causes confusion and potentially breaks user space tools, so we
> - * strip the suffix from expanded symbol names.
> - */
> -static inline bool cleanup_symbol_name(char *s)
> +static inline bool cleanup_symbol_name_thinlto(char *s)

Drop inline while touching this line.

>  {
>         char *res;
>
> -       res = strrchr(s, '$');
> +       if (!IS_ENABLED(CONFIG_LTO_CLANG_THIN))
> +               return false;
> +
> +       /*
> +        * LLVM appends a suffix for local variables that must be promoted to global
> +        * scope as part of ThinLTO. foo() becomes foo.llvm.974640843467629774. This
> +        * can break hooking of static functions with kprobes.
> +        */
> +       res = strstr(s, ".llvm.");
>         if (res)
>                 *res = '\0';

Sure, this is nicer though within the true block we should `return
true;` early rather than additionally check the $ mangling, I suppose.

>
> +       /*
> +        * LLVM appends a hash to static function names when ThinLTO and CFI are
> +        * both enabled, i.e. foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
> +        * This causes confusion and potentially breaks user space tools, so we
> +        * strip the suffix from expanded symbol names.
> +        */
> +       if (IS_ENABLED(CONFIG_CFI_CLANG)) {
> +               res = strrchr(s, '$');
> +               if (res)
> +                       *res = '\0';
> +       }
> +
>         return res != NULL;
>  }
> -#else
> -static inline bool cleanup_symbol_name(char *s) { return false; }
> -#endif
>
>  /* Lookup the address for this symbol. Returns 0 if not found. */
>  unsigned long kallsyms_lookup_name(const char *name)
> @@ -195,7 +205,7 @@ unsigned long kallsyms_lookup_name(const char *name)
>                 if (strcmp(namebuf, name) == 0)
>                         return kallsyms_sym_address(i);
>
> -               if (cleanup_symbol_name(namebuf) && strcmp(namebuf, name) == 0)
> +               if (cleanup_symbol_name_thinlto(namebuf) && strcmp(namebuf, name) == 0)
>                         return kallsyms_sym_address(i);
>         }
>         return module_kallsyms_lookup_name(name);



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdks4o8A1o7Q49Pa43ZyY5Zh6%2Bs-u67FL-fp%3D16FP-Y7yw%40mail.gmail.com.
