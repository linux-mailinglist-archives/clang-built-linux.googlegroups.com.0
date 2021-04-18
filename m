Return-Path: <clang-built-linux+bncBDEPT3NHSUCBBXPS6KBQMGQEVFI53SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D81F36385A
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 00:57:35 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id d8-20020a25eb080000b02904e6f038cad5sf5691975ybs.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Apr 2021 15:57:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618786654; cv=pass;
        d=google.com; s=arc-20160816;
        b=gcPOQsKVmkCvFTHaYpPrmoV+dINTgxwwHQXIZrXL889/Fo1EvOlpBoVIWcm3A1P322
         OfgCStp7PkYCX+4Vvffa78UGOl3cMnVjHYbUQF1m7XJ5pvSninTSGzwZ9LT/R8CIxY7T
         Mn+ksgsh0gKpPgTjFoX5CFlaSi6le4fBdZ9hr+1xzSoOWZ3xfzdkp3UJ8ItCul8qHYu4
         dZedqqABencx2R0es4mEtXYjd8dt0bjbrGQoQdCuibPQm8/oDnbqm2uEJeZhw8j2C3Nm
         mmVgZb1++AT3K8F2OkcspdUpaOnhCIlKkM61z5BaRmiG4LuU3niyn6wCmhQGHCeSKwzg
         qeSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4gLTnTaZ03W6KDG3SSApLdD6JLIcFyB8JE9hrI85z3M=;
        b=hTmQQKlz6BxyfqiQM1vRsMBfvzJ2Qaf0YxBirKB3OFdZPq/yQlDcQwBTvwL6YnkkbR
         AM4n5TSir6dWHTK7o+pGhleH7Oylohu9DtY852NJ1PW4X046ntSvDVhFi1JgP/rUEJ3S
         3R/cdge1hdy9vcvJCcLicTyVKGZvp+9bZh+PG8eQcKEozkZjNO+FZMZH1J82MsYwAgNU
         TpknPVqmaF2yJgRjivFNWd+5nhF5NuTzmmKxRQTkoQ8uxPbQNzFpjb2nORjs5vOOGSYe
         rG31/jO+6swriZzFxMLbPDvfRh5LE1F2r0XRwCCbVS1ju7Wt3CDiMisU+Ta/aiG2JFY6
         cslA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Hml6Xi8K;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4gLTnTaZ03W6KDG3SSApLdD6JLIcFyB8JE9hrI85z3M=;
        b=BbDQM2Do3dyf5/TcloAGF8r50thKGWBbkxB1qmHjgW75jXipg3GKNXNnYW50C6j7PS
         XdlBl5qYDH6OOSvnRcHfUVVKFU7SXF0v0WOUJk8Q4UbCfLNJXGT5yxDk4zSmHBkH4h6D
         6T7Mmmoz86n8MzJd9/nBbTb+YIWAlMb+fOjDuLtwcD0RXVcRMoHbUI7DC4pnKeK7Rb5I
         lkT+aQXM/52+BTPTE5giHw1eoCb3oKpgm9e1aOLft0a1LDAC5tist5AOFqQ54v5qFVkR
         ugN/3p0gzUNX6p5kDKTfaETOfd8nRzfhR3HygKxUPYtFXJjUQZ4kzB2FWwcJLRnDbgIm
         k7Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4gLTnTaZ03W6KDG3SSApLdD6JLIcFyB8JE9hrI85z3M=;
        b=T16Kd/fztH40ghIKx0vmwTVttDSblxF5k+xLdWb0Mfl70ag4LYfFSTeo/hIWTFTey9
         Q63BsjoaiiP1mGugeJmK2LvVREndKK1LxJNyyrFkYnADPbxs6DS63KPCB7wxvZNLNbkx
         8hCqMgmT+vNHS2dUBqu7xpx5NB1/iuyzVe9Ph80rTFYr3zGUHJCB5VkjtmLdNUkI6xxr
         aOouCuXCYpopBXGtAZJiiQZE5ElSft/OIG3foZmamieEcYFJ+NmBu8MxiYW7NvURcgfL
         ffZjM6FKTuL9CNk3AXZ4s/EN/Gfx9lwu0ESeTWvPDKUOyxQWcY7KwLTAA9INnblXHvff
         YBTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Fk032Qr3ofpzTSxPPqA+9txaZVa2gH9KvcYCHVVFXSh2uR86T
	F4AdTg2yEGebjUnHdZmpuZs=
X-Google-Smtp-Source: ABdhPJzKWFoDozZP0P5fnDR5Mx8mDc0FaRNbQ7Klv++X1O/WRm3tSQ3tsjzdlNz11Tl7OguN6vLpfw==
X-Received: by 2002:a25:7491:: with SMTP id p139mr13599699ybc.53.1618786654076;
        Sun, 18 Apr 2021 15:57:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:240a:: with SMTP id k10ls7126608ybk.10.gmail; Sun, 18
 Apr 2021 15:57:33 -0700 (PDT)
X-Received: by 2002:a25:6e87:: with SMTP id j129mr13473233ybc.215.1618786653654;
        Sun, 18 Apr 2021 15:57:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618786653; cv=none;
        d=google.com; s=arc-20160816;
        b=zvJKmrG2/ursG5QsrUdo3bykhH2ITp8NX1gIn/g9aGw2Rv2rPk2PoLds2vjW20Kci3
         fPSsjmE/ei1IcGu9X6BZaAF4F2BqWeotVhMqQvHrHIJ/No+oN9iNaCtxuIJYfTbqoxRI
         PwjtH9titVbnHMURM/NSdDn3edE7pVRJVIMOEg34CBIx9W21R+q8EOocBj4EDbizK46e
         OO/RULl7H7H8P098vV7ReOAJXzdAnSMbgFVqwE7fewG4BlH51BR5GylXoxoXXGnQJj6h
         ZEL9c/KQNWL6rYODvt1Z2gvx2GKg44Xze0oORHrd8D/OfT5r9F64wa7qmcmJKHSyVLMv
         wlbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tJCIsLzH2YtNru8EMQK/dizePvZtbzl+80+PCjvmECM=;
        b=N0IujBy5YGMdb3W26yxEfcdg6zDzquq1jlOA5Ren2bHkh8Fy3h52QSslbUE6CUE4qQ
         2zEYxvGv5WGcXA6EutW0vj8eyl3ytNGGixuXNy9iuGOf1ts6WQBM/1HCRZIh282HbFfx
         0ghyJXOnNgYFHDA0rlUoBVw5atyF0loZWwGQZ9pU8fftrv7JreUqxSh+D2zmM/Oihj0Q
         teVOyJrk5xBZx9xJs2uBKgIxmq3LYf5vts1vAwgCyI7aPQsCWE83+x/edypnpMLoCRK8
         WVEzAP6JL+TpFVmSuWHvGX7dzNA05pagTC/01JCfq86n2RK3BNOHLnTTmhj41Vwo42GB
         z8ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Hml6Xi8K;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f13si604427ybp.0.2021.04.18.15.57.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Apr 2021 15:57:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9D7BD610CB
	for <clang-built-linux@googlegroups.com>; Sun, 18 Apr 2021 22:57:32 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id r9so50035468ejj.3
        for <clang-built-linux@googlegroups.com>; Sun, 18 Apr 2021 15:57:32 -0700 (PDT)
X-Received: by 2002:a17:906:4f91:: with SMTP id o17mr18987993eju.503.1618786651236;
 Sun, 18 Apr 2021 15:57:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com> <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic> <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
 <202104161519.1D37B6D26@keescook> <CALCETrV6WYx7dt56aCuUYsrrFya==zYR+p-YZnaATptnaO7w2A@mail.gmail.com>
 <202104161601.CFB2CCF84F@keescook> <CALCETrWUS52tzLNiWL5sAVVB5-ko1EW73-TEiO=eZ5jF_QyGPQ@mail.gmail.com>
 <877dl0sc2m.ffs@nanos.tec.linutronix.de> <CALCETrVEhL9N_DEM8=rbAzp8Nb2pDitRCZGRAVcE288MBrJ4ug@mail.gmail.com>
 <871rb7sh31.ffs@nanos.tec.linutronix.de>
In-Reply-To: <871rb7sh31.ffs@nanos.tec.linutronix.de>
From: Andy Lutomirski <luto@kernel.org>
Date: Sun, 18 Apr 2021 15:57:19 -0700
X-Gmail-Original-Message-ID: <CALCETrXRHhEivNK0hqEdRz+gN8c9jhdsjJC=4EQKMWB1roYw3A@mail.gmail.com>
Message-ID: <CALCETrXRHhEivNK0hqEdRz+gN8c9jhdsjJC=4EQKMWB1roYw3A@mail.gmail.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>, Kees Cook <keescook@chromium.org>, 
	David Laight <David.Laight@aculab.com>, Borislav Petkov <bp@alien8.de>, 
	Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: luto@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Hml6Xi8K;       spf=pass
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

On Sun, Apr 18, 2021 at 9:17 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Sat, Apr 17 2021 at 17:11, Andy Lutomirski wrote:
> > On Sat, Apr 17, 2021 at 4:53 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> >> which works for
> >>
> >>       foo = function_nocfi(bar);
> >
> > I agree in general.  But right now, we have, in asm/proto.h:
> >
> > void entry_SYSCALL_64(void);
> >
> > and that's pure nonsense.  Depending on your point of view,
> > entry_SYSCALL_64 is a symbol that resolves to an integer or it's an
> > array of bytes containing instructions, but it is most definitely not
> > a function void (void).  So, regardless of any CFI stuff, I propose
> > that we standardize our handling of prototypes of symbols that are
> > opaque to the C compiler.  Here are a couple of choices:
> >
> > Easy one:
> >
> > extern u8 entry_SYSCALL_64[];
> >
> > Slightly more complicated:
> >
> > struct opaque_symbol;
> > extern struct opaque_symbol entry_SYSCALL_64;
> >
> > The opaque_symbol variant avoids any possible confusion over the weird
> > status of arrays in C, and it's hard to misuse, since struct
> > opaque_symbol is an incomplete type.
>
> Makes sense.

Sami, do you want to do this as part of your series or should I write a patch?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALCETrXRHhEivNK0hqEdRz%2BgN8c9jhdsjJC%3D4EQKMWB1roYw3A%40mail.gmail.com.
