Return-Path: <clang-built-linux+bncBCS7XUWOUULBBN7TS6DQMGQECZWIPZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3E33BEFF7
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Jul 2021 21:00:08 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id h7-20020a5b0a870000b029054c59edf217sf3778861ybq.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 12:00:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625684408; cv=pass;
        d=google.com; s=arc-20160816;
        b=jYt5h/uwZHeCNXUVsHKwIaDjHmNGTsed9Or9917KgHEXT/xNN+eh96Pm3dFjJaWuUu
         pbo8Il9ckaqvAcfhvEA6oVNc7VdAtt1ItCqp4ZWMUR9G7u5hJCr0hsNLPJNAUaw/ptbg
         I2axn6MDGQ1wsRgw0hH6QRJYd/W6crqJgXhjHDfPWp8vvBPZ45h0A3lnSrKIUZ0kugbR
         n8z+DEsBc3q0Gzm/u2nZ53Ggm5x8pj5QZ+BYpk8wIXhaOaHfG39bkHMV0f8/J9jvb/iU
         fC/2Kb8oXoXUZH/uzfkq9EAmvLkmoK9pWqMmcwhNguStItJFl9D+RkctsQ0GyMn6RXs2
         EkBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1Dce8dB0ZIE0j/3lajnvMgO0+wHfWemhjOLkCz+mdS4=;
        b=zvCH8q6GUEPbGRwQVzEdtcx0An7pqJesxwB4L4bek4G5gaJP4LMhEo1jZIZ2tyNm1K
         GgCWxfPWWGdLaDnqnZMl29bQIuP9m6eOZLzvle0CUicRlo7flC1kxomAZ0UFNsGvzxXL
         L/lC64QdplgUsOLQKfy3pB2DPnsR3Dtreg3K3OsmPZswTYnsx2fW2yaQYttxtNdVsOF7
         9BNabzTuDdcdYtZP8nlL+SzPt6WMrdq09fUTB3hafViarJUbeZQaEceP63HeLCgmXLvG
         tcF7dOqJfCn//vMbSZm0sfgPaZ37ApPyLLvGlxvGsnbM8JbQ8/CrfXDP2NB7tQHarbd7
         4jWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hH6hFm63;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Dce8dB0ZIE0j/3lajnvMgO0+wHfWemhjOLkCz+mdS4=;
        b=J+6tSdtqP0tBSkIlLf0OOdpezYrziWZf5fQdU8q9V2ap7Stm4vzaKwsXWidMrq1g3y
         IPN7WfKTCaiFuKdh8ihby1bXCTaDQxylc3aOgrBZi90XU++8Kkx4uIKLNT5vF+1Im57a
         Nhm7qedr2bF1kV9IxFgePQSzIyVdodX/bhoxbgUeIIe2insGDjKw/aCJEljn1Z6GhQT+
         tLCn1R5KoQnLTzqySc+A3+pHKsIrGInO5iFa6iUSpXYFTrzGnWy5uQ4U7lGNziWzJHZf
         Uj1AiAwITO3Dk2HF1z7a3XT6EyeQZ+Dod+xd2ZlSrWrgqUu7Chdyt3ialYvYYa9kgsWm
         1UYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Dce8dB0ZIE0j/3lajnvMgO0+wHfWemhjOLkCz+mdS4=;
        b=DzdGMkjPh0J0RYm+EnrRFbrW8fjSh0Wc1znzPgjzlmr781yTS1Yrs9klSBVHsddRyB
         uNXIjOakFEfwobfaYb5LB2Lh6upG13sZDdRKkOnISqIWE+orplUWAuDyTdUOrqDHPFAy
         Iw+FR4qTGaSTiK85HxyA+nMti8rJbVfcKNf3fhQXbJA5XsLn2pNec71yUTLF3K7qAihT
         D17m05sQQ0So7wiCoQ0pjuASpGQEBog5ZM0f4OQ5Ih957zoR7vRGzvI+3hanSKYMYdO4
         xkqUelk+khlCC5C7TJ0mbVhCbWrqHtVRjIvsKe80HJ/8vkJBlezW6jie5KAtdcJzG/Qa
         Wi0A==
X-Gm-Message-State: AOAM531S6I4LJyEXukSxRYWInCR3WI+CfMj3uETk5BdyR+IdnaD0bZ7h
	btuKllv+TQhNBeikdKJ3E30=
X-Google-Smtp-Source: ABdhPJwGvlcstxUsZTF2Y2szN6rjfCYPh7AwpApuZuvCPdDjs8lk8Nq6WlCqSsbcTGM/7UQBY5rdtQ==
X-Received: by 2002:a25:6e55:: with SMTP id j82mr33044462ybc.480.1625684408001;
        Wed, 07 Jul 2021 12:00:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a4c7:: with SMTP id g65ls7770625ybi.8.gmail; Wed, 07 Jul
 2021 12:00:07 -0700 (PDT)
X-Received: by 2002:a5b:646:: with SMTP id o6mr34024075ybq.196.1625684407550;
        Wed, 07 Jul 2021 12:00:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625684407; cv=none;
        d=google.com; s=arc-20160816;
        b=HQ2xfKz9fTzFbrbhYkQM16dEFKHH1bYrctoo+tqBG/Kg3J3nLIRVgYBJLZJD8uAJ1D
         RW1mG5fmyjVy4AS/t2hUMjw4O6QTTCEdepbBUr3EPmUIHrP7EyylRpb5zKCB8mWsbBtT
         vUcymdaU4VmOTF/Zrxr9k2IAYvsMHxa4tGAoYTwXdQ1yKGOI4ddC5hazowN7suXA0ZSl
         g1J7skav/YroTXfCF6ZIjCatzrYpizqFiYOdvIiC+4SqirTx1losRnBg+0Ql1VbmoDRf
         KiJSc0LAyRn9gmtphLjFcBcj8Pjpv/bCcn8YvFkOuWGctpbmJ8kf5M4sT7fkBOjYnF+P
         0vpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M6yCm28WnoyNx3nRePoJett8yHbUw3QYAhUOWEwm4lQ=;
        b=JRUmISjRjbVZnBECtJl5Vor4qBuWTZPIRby3R0iqDnlhCtbfbpxs80wfx7k4NgA701
         yhnh3fr3FUoic3zIYdYZi93geJCOnBY9YLY1FgnD5aFkjPUeQ0/ld+9CcTr2zurNVU5O
         NnV6kf8ypsyml+tM6Evr/pnjcoJ4UcBCSYXZPe1UfFuY+hiAhGazDk1pqwZo1J3f2hjj
         TxIiGL64dBLY0bh0Eq3N+I0zFbDoi2DldUQwHsLSmT26Pf3Ezdv/cZ3tY/xf3/12iqhw
         iu0P4oJHuJ9XqCEehTeKBATr2ZPbzVJHXBSTHKTJNbokOmsupcgX6ah6DGisqc1XX8H2
         TGyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hH6hFm63;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com. [2607:f8b0:4864:20::b36])
        by gmr-mx.google.com with ESMTPS id q62si2624078ybc.4.2021.07.07.12.00.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 12:00:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) client-ip=2607:f8b0:4864:20::b36;
Received: by mail-yb1-xb36.google.com with SMTP id r135so4869145ybc.0
        for <clang-built-linux@googlegroups.com>; Wed, 07 Jul 2021 12:00:07 -0700 (PDT)
X-Received: by 2002:a25:abcd:: with SMTP id v71mr32563199ybi.322.1625684407063;
 Wed, 07 Jul 2021 12:00:07 -0700 (PDT)
MIME-Version: 1.0
References: <08a2e179-3f5f-639e-946f-54cd07ae12fa@kernel.org>
 <20210707181814.365496-1-ndesaulniers@google.com> <1fd40e80-283f-62e9-a0fa-84ad68047a23@kernel.org>
In-Reply-To: <1fd40e80-283f-62e9-a0fa-84ad68047a23@kernel.org>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Wed, 7 Jul 2021 11:59:55 -0700
Message-ID: <CAFP8O3JvFO-T1z94Y6271gKW111oFg45+F0u4TChDpxdh3Gg2Q@mail.gmail.com>
Subject: Re: [PATCH v4] kallsyms: strip LTO suffixes from static functions
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>, "KE . LI" <like1@oppo.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Andrew Morton <akpm@linux-foundation.org>, 
	Miroslav Benes <mbenes@suse.cz>, Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>, 
	Stephen Boyd <swboyd@chromium.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Randy Dunlap <rdunlap@infradead.org>, Sami Tolvanen <samitolvanen@google.com>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hH6hFm63;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b36
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Wed, Jul 7, 2021 at 11:34 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 7/7/2021 11:18 AM, Nick Desaulniers wrote:
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
> > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Code looks fine, small comment about a comment below.
>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>
> > ---
> > Changes v3 -> v4:
> > * Convert this function to use IS_ENABLED rather than provide multiple
> >    definitions based on preprocessor checks.
> > * Add Nathan's suggested-by.
> >
> > Changes v2 -> v3:
> > * Un-nest preprocessor checks, as per Nathan.
> >
> > Changes v1 -> v2:
> > * Both mangling schemes can occur for thinLTO + CFI, this new scheme can
> >    also occur for thinLTO without CFI. Split cleanup_symbol_name() into
> >    two function calls.
> > * Drop KE.LI's tested by tag.
> > * Do not carry Fangrui's Reviewed by tag.
> > * Drop the inline keyword; it is meaningless.
> >
> >   kernel/kallsyms.c | 43 ++++++++++++++++++++++++++++++-------------
> >   1 file changed, 30 insertions(+), 13 deletions(-)
> >
> > diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
> > index 4067564ec59f..a10dab216f4f 100644
> > --- a/kernel/kallsyms.c
> > +++ b/kernel/kallsyms.c
> > @@ -171,26 +171,43 @@ static unsigned long kallsyms_sym_address(int idx)
> >       return kallsyms_relative_base - 1 - kallsyms_offsets[idx];
> >   }
> >
> > -#if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
> > -/*
> > - * LLVM appends a hash to static function names when ThinLTO and CFI are
> > - * both enabled, i.e. foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
> > - * This causes confusion and potentially breaks user space tools, so we
> > - * strip the suffix from expanded symbol names.
> > - */
> > -static inline bool cleanup_symbol_name(char *s)
> > +static bool cleanup_symbol_name(char *s)
> >   {
> >       char *res;
> >
> > +     /*
> > +      * LLVM appends a suffix for local variables that must be promoted to
>
> This says local variables but the example uses a function? Is that correct?

local functions/variables.

Both functions and variables can have a .llvm.[0-9]+ suffix.


Aside from this, the updated description looks good to me

Reviewed-by: Fangrui Song <maskray@google.com>

> > +      * global scope as part of ThinLTO. foo() becomes
> > +      * foo.llvm.974640843467629774. This can break hooking of static
> > +      * functions with kprobes.
> > +      */
> > +     if (!IS_ENABLED(CONFIG_LTO_CLANG_THIN))
> > +             return false;
> > +
> > +     res = strstr(s, ".llvm.");
> > +     if (res) {
> > +             *res = '\0';
> > +             return true;
> > +     }
> > +
> > +     /*
> > +      * LLVM appends a hash to static function names when ThinLTO and CFI
> > +      * are both enabled, i.e. foo() becomes
> > +      * foo$707af9a22804d33c81801f27dcfe489b. This causes confusion and
> > +      * potentially breaks user space tools, so we strip the suffix from
> > +      * expanded symbol names.
> > +      */
> > +     if (!IS_ENABLED(CONFIG_CFI_CLANG))
> > +             return false;
> > +
> >       res = strrchr(s, '$');
> > -     if (res)
> > +     if (res) {
> >               *res = '\0';
> > +             return true;
> > +     }
> >
> > -     return res != NULL;
> > +     return false;
> >   }
> > -#else
> > -static inline bool cleanup_symbol_name(char *s) { return false; }
> > -#endif
> >
> >   /* Lookup the address for this symbol. Returns 0 if not found. */
> >   unsigned long kallsyms_lookup_name(const char *name)
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3JvFO-T1z94Y6271gKW111oFg45%2BF0u4TChDpxdh3Gg2Q%40mail.gmail.com.
