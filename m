Return-Path: <clang-built-linux+bncBDEPT3NHSUCBBAG25WBQMGQEKYQKSEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2F53632A3
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Apr 2021 01:19:29 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id o94-20020a17090a0a67b029014e11affd68sf14535556pjo.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 16:19:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618701568; cv=pass;
        d=google.com; s=arc-20160816;
        b=edvSua2dydIS5nrMAUFPIdEGLO0hnQr3G4a0gy7XvkvW+tWpge1wPlo5HlMRihZhY0
         8PHkJeWltNqEyeQA6egAcbvMB4Uh7bqB6PM5BZnb/ywCtlqWaj7kGVb3Vb/PYUY9fR5f
         NXd0gJ4vNJ2TQyKVZp70jWj5IAVyC5MoCOLokrci+AfS4peIwWkersma86tdBKBcxbVP
         TDuOvTEpAwcQjCWvPwwte4EewADBeY+oe6rbP5Mw0EAbFOljDjpmT72zU3kA+H2R8vhM
         Y4jdHBoKZGoDiBh7zEGCIFNUawYb2ki75XumRY3OwuhhYWvAxSIRPZD/9DrkfSfJo5qd
         6D9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ZCpDYcKCyPK48fHeDtcGKOEL0F2gq/GGYrQzHQs2iaE=;
        b=sPSESmtC7M7+fxcQxZwG1MhK+aSOuT1YBnYowVJFT9UmWGB7KcHQrGWDXLuWMs2kr6
         C4vX+C3SMEehsAa8Zqc5A36PdzXJsbD+1VXEj1q9g09WLP6b8/qyhul/u+0vr8jPbjjr
         rhn5n3p9+VPhS096lya0diHU+Ws0mGVxhF3tASBhBKe70NCePt3BJR6y4zDyaJpxShR7
         Ay+SMCmz9Zz1M91VvPdUUFhRPaYpeUQSrwxcQHXWRxE8kKSxsoyoYnqWegEIn3XoCX2H
         I4rZp7OwD+lGBQiaEsgxmKMEGsxSyOjHlavAtMeYSCKtuJdoR6jiIf5t6hLGJ3/HE+sh
         BobA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GFpv32NX;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZCpDYcKCyPK48fHeDtcGKOEL0F2gq/GGYrQzHQs2iaE=;
        b=gAbA8lDC5Yb+s292bEwP4LP/5zL9byrpZh0/yql+T5up8z8zQp/Oh9bwlJF/SENclp
         d5Gh1Wrnooy8ZhWlOPTbqx6doiKVgzAiaHCbmHYrdS/CdgigZYDK8jy2TtECiuD3t1JQ
         KOl1iMUKzDVMrMc+049NAtnDiyUF5lquvZUK6sSlXil2nT3jjJP93ebQ2kH8dKbveEp/
         Afmt2OGoOt4N665U4xFQrUjH/NmN/FH2KneWu6tKADGpdeEQtgh2fdmoVw/MtwaBHFMA
         seDo3r86Y/cPh/JEDsywVdJ9Sy6fXAcIJJAgOsRcqJoOVfgx2v6BBw1Priqq9ucC5DIC
         iLDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZCpDYcKCyPK48fHeDtcGKOEL0F2gq/GGYrQzHQs2iaE=;
        b=QlCou5kpr0O5hAErCqieAeRHgDdqrL5uvwrdHtiynrRHeNJCRsidznFgPkFRugx6rd
         c5eSuavDA3C+IgmgJrbQIhZFAiZyN7S28OohcYCd3EO1nqZslDD7K4wG7+97Sf44LNnl
         pmqj6zcR6AreSyaWLsVdZxtnnVd2oPVSE5EAw5iC2MA6eOpxEIL0VGHjeQs0WlPE8qnq
         7lupfTPSQ376qGPFogAjMEWkXgfgnap1eDELqYcZKO64PjRJxu5Yx446K36dsN5ZTJVk
         VLPOA9QrJFuKwyJTDNyWmkve3eKk9JTl00lB4GuSeYE3lm+R8omDVLGpm2AfN+AjEChj
         52UA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nESVMoV95Olgtcsissj8doFgfHoJHB7HmRS3u5IKyQodDiGso
	UYUx+L14TfUMpmoHpDY/eAQ=
X-Google-Smtp-Source: ABdhPJyjAcN+wrWcaNUHUgTzo1bbi9y2h0jZ4FRqlseuUUwz0VVdTJtq8Y1TjfIwPZ5zRBTmiQPFRw==
X-Received: by 2002:a05:6a00:22d6:b029:247:9c54:de70 with SMTP id f22-20020a056a0022d6b02902479c54de70mr13756974pfj.1.1618701568149;
        Sat, 17 Apr 2021 16:19:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b942:: with SMTP id h2ls6853888pls.8.gmail; Sat, 17
 Apr 2021 16:19:27 -0700 (PDT)
X-Received: by 2002:a17:90b:1b07:: with SMTP id nu7mr5530069pjb.170.1618701567706;
        Sat, 17 Apr 2021 16:19:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618701567; cv=none;
        d=google.com; s=arc-20160816;
        b=hVEY5Iy/6GIsiBQgw+VeY/pBbUYTkUDKzqN7+ThKDxREB2rbYd++6D41CjAYD33EUX
         lur6nzgiZWb1GRu5azKfZ/pKuaLbEizmOyTlOLaMX3Bv2ISz8N1TcQokKRbCSSIIwfEG
         cfWkuoZ6CI07VHRpjFE2UeVXGQYZykr7+LvFm6rb4xMTDDjQ0jiEB9lxmQDy3uR5EQ/6
         XISQP2zoLs5Y/gDhfiUIQ2cTB8hekiEIA0j9AnqkRK9gs0kk9aeYCw7rzqaTDpDj7czD
         Vy5Y7HPUeqfitjjBPyjvNv4uMkjPBi9/F+s78aKJVWHRN3ISvfwV3h0iyhsgq5m8RjHa
         9CBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yn1CF2tZfpqOaBIxP9knHtXUaBdcimw6VKH3NHcX8eg=;
        b=HVsni0KbvZhO2dsRIJzmSBSodkAKQF6Mejrg08B99o2AY1NWw4iOPT9xZXN2eJTpNs
         ZKRGuMvH4zW/HdJUObrS2umHXHMLWmQS2GxfRDVn5SjGh+VyCzmRgua2Wu7YdAEWICLd
         rR8BtRUw9knIwLGU9ki9BrLfwjoAHjeuoxx6jBHHVxcrGsZZQ1taRmvh2etlHIez2FwW
         eTenwc0ISyWGOtYfpSYd9aUewtN2F1L8OOezjBRJOtRmRrCsP0l2FJ/5nxx4zIs6gL3E
         /bdO5hQn1+mKcUvLWnInLDafQ3HKsSEQNYkovRZcZ6qc9NvkJgJiRvIRsfi8ZfW9U7Ww
         zdLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GFpv32NX;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i18si1647237pju.2.2021.04.17.16.19.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Apr 2021 16:19:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 31A0761245
	for <clang-built-linux@googlegroups.com>; Sat, 17 Apr 2021 23:19:27 +0000 (UTC)
Received: by mail-ej1-f46.google.com with SMTP id sd23so38706214ejb.12
        for <clang-built-linux@googlegroups.com>; Sat, 17 Apr 2021 16:19:27 -0700 (PDT)
X-Received: by 2002:a17:906:7104:: with SMTP id x4mr14824074ejj.101.1618701565496;
 Sat, 17 Apr 2021 16:19:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com> <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic> <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
 <202104161519.1D37B6D26@keescook> <CALCETrV6WYx7dt56aCuUYsrrFya==zYR+p-YZnaATptnaO7w2A@mail.gmail.com>
 <202104161601.CFB2CCF84F@keescook>
In-Reply-To: <202104161601.CFB2CCF84F@keescook>
From: Andy Lutomirski <luto@kernel.org>
Date: Sat, 17 Apr 2021 16:19:14 -0700
X-Gmail-Original-Message-ID: <CALCETrWUS52tzLNiWL5sAVVB5-ko1EW73-TEiO=eZ5jF_QyGPQ@mail.gmail.com>
Message-ID: <CALCETrWUS52tzLNiWL5sAVVB5-ko1EW73-TEiO=eZ5jF_QyGPQ@mail.gmail.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
To: Kees Cook <keescook@chromium.org>, David Laight <David.Laight@aculab.com>
Cc: Andy Lutomirski <luto@kernel.org>, Borislav Petkov <bp@alien8.de>, 
	Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: luto@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GFpv32NX;       spf=pass
 (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=luto@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri, Apr 16, 2021 at 4:40 PM Kees Cook <keescook@chromium.org> wrote:
>

> > 1. I defined a function in asm.  I want to tell clang that this
> > function is defined in asm, and for clang to behave accordingly:
> >
> > .globl func
> > func:
> >  ; do stuff
> >
> > later:
> >
> > extern void func(void) [something here];
> >
> > There really should be a way to write this correctly such that it
> > works regardless of the setting of
> > -fsanitize-cfi-canonical-jump-tables.  This should not bypass CFI.  It
> > should *work*, with CFI enforced.  If I read all the various things
> > you linked correctly, this would be something like __cfi_noncanonical,
> > and I reserve the right to think that this is a horrible name.
>
> Yes, I find the name confusing too. Without noncanonical, we'd need
> C call wrappers for every single .S function that had its address
> taken. This is very common in crypto, for example. That level of extra
> code seemed like a total non-starter. Instead, we just get a few places
> we have to mark.

The patch you linked doesn't have a noncanonical attribute, though.
So I'm not sure how to reliably call into asm from C.

(The more I think about it, the less I like "canonical".  What is
"canonical"?  The symbol?  The function body?  Something else?)

>
> > 2. I need a raw function pointer, thank you very much.  I would like
> > to be honest about it, and I don't really want to bypass CFI, but I
> > need the actual bits in the actual symbol.
> >
> > translation unit 1 defines func.  Maybe it's C with
> > -fsanitize-cfi-canonical-jump-tables, maybe it's C with
> > -fno-sanitize-cfi-canonical-jump-tables or however it's spelled, and
> > maybe it's plain asm.  Now translation unit 2 does:
> >
> > 2a. Uses a literal symbol, because it's going to modify function text
> > or poke an MSR or whatever:
> >
> > wrmsrl(MSR_WHATEVER, func);
> >
> > clang needs to give us *some* way to have a correct declaration of
> > func such that we can, without resorting to inline asm kludges, get
> > the actual bit pattern of the actual symbol.
>
> We don't want version of a global symbol alias of func that points to
> the function body, though; it's only very specific cases where this
> should be stripped (MSR, ftrace, etc).
>
> So, if there were some Clang-specific syntax for this, it would still be
> used on a case-by-case basis. It would still be something like:
>
> wrmsrl(MSR_WAT, __builtin_gimme_body_p(func));
>

> Okay, you're saying you want __builtin_gimme_body_p() to be a constant
> expression for the compiler, not inline asm?

Yes.

I admit that, in the trivial case where the asm code is *not* a
C-ABI-compliant function, giving a type that doesn't fool the compiler
into thinking that it might be is probably the best fix.  Maybe we
should standardize something, e.g.:

struct raw_symbol;  /* not defined anywhere */
#define DECLARE_RAW_SYMBOL(x) struct raw_symbol x[]

and then we write this:

DECLARE_RAW_SYMBOL(entry_SYSCALL_64);

wrmsrl(..., (unsigned long)entry_SYSCALL_64);

It would be a bit nifty if we didn't need a forward declaration, but
I'm not immediately seeing a way to do this without hacks that we'll
probably regret;

But this doesn't help the case in which the symbol is an actual
C-callable function and we want to be able to call it, too.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALCETrWUS52tzLNiWL5sAVVB5-ko1EW73-TEiO%3DeZ5jF_QyGPQ%40mail.gmail.com.
