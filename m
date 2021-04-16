Return-Path: <clang-built-linux+bncBC2ORX645YPRB34M5CBQMGQEIOI5RLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id D51C7362A91
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 23:49:36 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id t12sf1317895qkm.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 14:49:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618609775; cv=pass;
        d=google.com; s=arc-20160816;
        b=kEOIV+vwpGdt2D5PftRjEQqhCGM/yEqhLMdy6sR2BIR7ArolZw5vU3ZGpMiSkjIyVr
         cXMU4pJu316XttDZLohCD4WEYk2UK128Xdl/2kzwrhmagcwSI8qE+ncQTTWE+EmoSN5K
         R/XXWZ+LD68ppmCdonkQ3jLvMEexvn1idb9KZTZv/suZXxWU2sHgle+3DxHXl9sr3qdP
         ifUZ8MxTVAaLtFK/kARLq9nWHus4FEYMwWlDQ8aGX2saf3BYa6HBHfvzyil5XOC3HQB/
         UpZib7xOPXMZ3cMZ4yqwcjWelcTppwoQR7AcdJd1SmVmYBK4E67dZJDtxm5WQDPIVy1T
         0fMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FufQRb634ubH4OrRKzQHfsvMI2I7rGTejjaiJdAFnfc=;
        b=ihGocGx5d/dWaunHHojfyPOd41AoeihCcLhaxlLzLfL0Ex4yUpjBBcRvxTufYkhS20
         LrSFuzozm/GPFaBO+/EpfOqhTP+jVhL+LcXkB+GRWeaYG1fhMkx2Z+rByWel07b0pMVm
         eiSmtk6FN4SUXhOH4nnlrLqMNBWvmvVJqqfbJ2VzQRrRVpUoPufWYvqj4P0JDdM+ibOX
         VWqBaxdiKzD4dt9nTApRCCUXzzOM3WQXgK3B7LkYxdxTfMSpgTzyCY2GuCqQzP7aEhWs
         aypPGf//y3qX6VSBg8NlhK73cfsNEizZuoqdOBjUb2SFZD4zDOUmMUkiZ6qYmgWog6y2
         rTow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nuw2AQJB;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FufQRb634ubH4OrRKzQHfsvMI2I7rGTejjaiJdAFnfc=;
        b=fskMSrXraJJyd+c1JxwBJbOiiu6JcUoZSjPR2A80nZcHhKZxWOJ6hHe4ZT10ONZXFK
         q3K8yv8i/2lvUlmaFjLxTy/CUIoIIxk6ka+9Gitv0R/lGHsYnvdZx7T76jwF1yQp98YR
         2SKfGH62NKmMkGbzGCXynh5WrJMeAY1ORmnOC+4ZWG0E7ABvDq3CMGzs/FrWGCCorrLT
         SfTqDpMSyLSvp14w6i7iEuwwzhFT2y8v+qyBA2J9DF9J2EybCTiH5NASdU5GMuzyoy6p
         CA+Nk0MeeTDtNJVbFNmwvWe9nNvuZRALbUTffVrYo/s+L4sqMV4rSMwuaf6JLhiqEaAH
         lAlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FufQRb634ubH4OrRKzQHfsvMI2I7rGTejjaiJdAFnfc=;
        b=Sw7hauqFyfoYEQ1NwJSg+k3G4P46yY8el4rfnHc1rXW4LSz69byfkVvsZmUsJdVxmA
         c3tSrXjSiPAXFlh54wOMZeEphhY52w05Zg/PVJscVKMDgb8o6+d2rWtOD9afxQCTN7EK
         LEe8c4g+91Q2KXvq8upe114i6y6CK8QzIM7DhoyAgvK5jlc3T8iCMirDSq1/cD79HdrE
         vLPfCt0biatW0mc9Rcem2PwwQw4CkiicJbe+iON0jHF8uZPKP4bHyOBn1+wlIrHgm/uR
         h/nuItfg7Iaqu9YD3qOChPmlE94OgTS+E4w3fJFR/TkeBLzv4lt2kExxG5ab3jkdLbPa
         Cjdg==
X-Gm-Message-State: AOAM531L9nUUtJgJRsrMNMfz2CGC9vfJnVXkH9XHCjK2CpBEmwUAJFSG
	vSi/hB1TtWb/7WkJI9Nh67I=
X-Google-Smtp-Source: ABdhPJzl2CtoW2oS5pPjItBvz9TPLUTniWweQLXX2GMqeI5xz+Bhnn7FCzWLxqMWTXw0xlSN6NCoiA==
X-Received: by 2002:a37:ae44:: with SMTP id x65mr1367105qke.9.1618609775831;
        Fri, 16 Apr 2021 14:49:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5781:: with SMTP id v1ls4098262qta.3.gmail; Fri, 16 Apr
 2021 14:49:35 -0700 (PDT)
X-Received: by 2002:ac8:5499:: with SMTP id h25mr961522qtq.327.1618609775373;
        Fri, 16 Apr 2021 14:49:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618609775; cv=none;
        d=google.com; s=arc-20160816;
        b=FWh7A+IAEeRZlu0RjBZhE7r8SyMlaLd9zSry53Yx6lre8dmwd9Jrz8alnRxOZ9Lt1X
         JalcOhbDSjo5Jd6zRKC7JuFZerFqDdDO7+b/883tCFhAYdooLE/VKL35jOl5PSECU7ax
         sUf1+EF4NKDhoGQ9FYoKwan75pFRQvXX7B75Mb2G3o4QCBsWcpdxIrm88XjK60oxKK/n
         HlJk5ulkZGI7EWaljeDEpGIMHXyF8F5e7kOH5MVGZa35tZ7OY3xi0D8ARl92DvqBQ+tA
         PWeexqwN5g8pTZGnMZpEB3tQ58JvbkB7kHVfgK/DCBWcNTaNP4p64jg7Drg67Tkl3pdL
         m+5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KvvOpfTc4a7owgj9qx4TrZM/bIZMtNXq+vl9JoXOzqI=;
        b=wReex1rSOLoCVvbYSeCzThtXwuGDktmubgdhlOrzyKDsQfqz980gcVnk1Q9hdJpooY
         N+vapuvPIrb0Pv/+ML269Rp5DdPDhXT2BxhDvcFOXZAddmfZNy7TmQmww3UzqQemLo2F
         OZf4fJLak5mSl1dm8vQFLL3ayMylAAbtqUqHdSxlV4zAkfndTjDVt665ZuagixZJ5PlV
         rgqpUaBmILNsNmWUt0VZ6kJgQlWBAYiWOdtpakv6CIpl1PRc0Vy3f6bePOoeKvFxX7hS
         nhd3zGdWM/kSg4aPiy0Gv0pvVI/Hy6tXjiG9rq6KOD2DTmQSpVCnTH9CmfrUfGAilCNo
         VxmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nuw2AQJB;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com. [2607:f8b0:4864:20::b30])
        by gmr-mx.google.com with ESMTPS id h13si392247qtx.0.2021.04.16.14.49.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 14:49:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b30 as permitted sender) client-ip=2607:f8b0:4864:20::b30;
Received: by mail-yb1-xb30.google.com with SMTP id v72so10975804ybe.11
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 14:49:35 -0700 (PDT)
X-Received: by 2002:a25:7085:: with SMTP id l127mr1733643ybc.293.1618609774803;
 Fri, 16 Apr 2021 14:49:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com> <20210416211855.GD22348@zn.tnic>
In-Reply-To: <20210416211855.GD22348@zn.tnic>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 16 Apr 2021 14:49:23 -0700
Message-ID: <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
To: Borislav Petkov <bp@alien8.de>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nuw2AQJB;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b30
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Apr 16, 2021 at 2:18 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Fri, Apr 16, 2021 at 01:38:34PM -0700, Sami Tolvanen wrote:
> > With CONFIG_CFI_CLANG, the compiler replaces function addresses in
> > instrumented C code with jump table addresses. This change implements
> > the function_nocfi() macro, which returns the actual function address
> > instead.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  arch/x86/include/asm/page.h | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/arch/x86/include/asm/page.h b/arch/x86/include/asm/page.h
> > index 7555b48803a8..5499a05c44fc 100644
> > --- a/arch/x86/include/asm/page.h
> > +++ b/arch/x86/include/asm/page.h
> > @@ -71,6 +71,20 @@ static inline void copy_user_page(void *to, void *fr=
om, unsigned long vaddr,
> >  extern bool __virt_addr_valid(unsigned long kaddr);
> >  #define virt_addr_valid(kaddr)       __virt_addr_valid((unsigned long)=
 (kaddr))
> >
> > +#ifdef CONFIG_CFI_CLANG
>
> Almost every patch is talking about this magical config symbol but it
> is nowhere to be found. How do I disable it, is there a Kconfig entry
> somewhere, etc, etc?

As I mentioned in the cover letter, this series is based on
linux-next. I forgot to include a link to the original patch series
that adds CONFIG_CFI_CLANG, but I'll be sure to point to it in the
next version. Sorry about the confusion.

> > +/*
> > + * With CONFIG_CFI_CLANG, the compiler replaces function address
> > + * references with the address of the function's CFI jump table
> > + * entry. The function_nocfi macro always returns the address of the
> > + * actual function instead.
> > + */
> > +#define function_nocfi(x) ({                                         \
> > +     void *addr;                                                     \
> > +     asm("leaq " __stringify(x) "(%%rip), %0\n\t" : "=3Dr" (addr));   =
 \
> > +     addr;                                                           \
> > +})
>
> Also, eww.
>
> It seems all these newfangled things we get, mean obfuscating code even
> more. What's wrong with using __nocfi instead? That's nicely out of the
> way so slap that in front of functions.

__nocfi only disables CFI checking in a function, the compiler still
changes function addresses to point to the CFI jump table, which is
why we need function_nocfi().

> Also, did you even build this on, say, 32-bit allmodconfig?
>
> Oh well.
>
> In file included from ./include/linux/ftrace.h:22:0,
>                  from ./include/linux/init_task.h:9,
>                  from init/init_task.c:2:
> ./include/linux/ftrace.h: In function =E2=80=98ftrace_init_nop=E2=80=99:
> ./arch/x86/include/asm/ftrace.h:9:40: error: implicit declaration of func=
tion =E2=80=98function_nocfi=E2=80=99 [-Werror=3Dimplicit-function-declarat=
ion]

This is defined in linux-next, but I do see another issue, which I'll
fix in v2. Note that CFI_CLANG itself cannot be selected on 32-bit
x86.

Sami

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q%40mai=
l.gmail.com.
