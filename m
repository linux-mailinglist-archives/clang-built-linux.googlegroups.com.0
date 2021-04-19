Return-Path: <clang-built-linux+bncBC2ORX645YPRBN5462BQMGQEKDYQEUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8913646D1
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 17:14:00 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id q7-20020a056e0215c7b029013ea7521279sf11643258ilu.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 08:14:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618845239; cv=pass;
        d=google.com; s=arc-20160816;
        b=UA7Tyj9Ioo33MzV67HoY5s68Y2VfCPaqUXWyMWNbc/jjN77dHQpWSQ0pAnkz6KMr+h
         QP9FGagdW8fP+kOMZhfV1K5y9h6VE4hXz6PKCti8f0upc/GZDm/UrKclOhtigDrc4bVR
         DmZrCD9TLw/Vg977FaLRSf6kzAeusUzkntE5VC4UZ8aUo8U/QE36BEtN/2RkEcQ+enwY
         ftP/EHn23Do5gR59gUxZq5ac3A6ffQqoOOVnZQa/DsdSH1zabS9Ftc8ymsDVsv7BjrTx
         C0u2N74A4mPtZPba/fCKj+e3jEeokHO6RVUlsslg8diKRCFQnINJwIqswbi5xwlQxMwG
         QllQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=P9oWnYhppy9RgoxMd4bvyVAOwDFRN75OsMunCgFeH7Y=;
        b=WEOuBIg6MIELIBrtttLe94e+hR5uf3RGRKraxm1JQtpE/XJbPkzIhhgnMdZbUHAJdJ
         tv83/3JBqW29LvPFMj65UgEkF59XKdssqSljwMt36rPGpygwtXcIlqfedC3JTwq/cwJQ
         9uftf1hKWeNALUjn2YuT6XV7TrTxGsotXUPivRiKErwAuMmJ7yC7zIFFRmeGEglK7X2Z
         bQMUcSUBdja+uVbnt/9xRQueYAsA52bTvJ8qxbWqSlz5vi7PzKUATzBK8GyvB6Mjz0cc
         Nw2XTSSahEF3olp4fL6j+MpQhNfTzhVqW5NFoijy7XaoKcLC3qIxh0QVa2+CIncuVsiE
         fE7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=czTjya+U;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P9oWnYhppy9RgoxMd4bvyVAOwDFRN75OsMunCgFeH7Y=;
        b=PYKr3IIn9Biba+ETJwd8gUXYjzhX2zl6paU16awrKaTYO9McBpAbSUU7NxJplUv/0x
         kldzoeTnub4o0rpKHvZUhQq39qsV6O6jJfB2Z7vGMaK/8MaG8iBT185UJn488l40Etvk
         uc3S2riHbn/LnPiMHyY5G5JTW8iDcbQjULsP6Qu024MlQoBxpoEFtzPi8yUJjafXd2UM
         5e9CCKlFmkTjapAB6SeTjAaUoiokazq4mzIKKjmiwqPyr2YZNL/UG/wwRjBoJs/hqncY
         k4DKZ3t7vfi1u4lb45u/sxYbCi1GUsrlmbwIj8/bgAEaPfCjbV+m5ft54ryTrTd8WRWf
         K7Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P9oWnYhppy9RgoxMd4bvyVAOwDFRN75OsMunCgFeH7Y=;
        b=lyJaFCl9AmbuwgqgdzjbSrExLjOjF9VFM66yUMiP0cdfibmuUgY2loTPYPwF8mC3ww
         C20GjgGNtcWz4oDmZ6O28mD+ygaDG9dGTYdNknSZsi0CEuefBkV1EchXiZ161yW9L0v6
         n7FEY6Fbi7zV9tkKAJ6izACXR8scmvLkKibXRDGjVpd4uVYRnp1lMC6RJK0wRlu48O90
         x+u6uZWO2U64GiBDiPqzhER/GiqHZBzqly3QPx/IeQfsHuHJoiLXtla3Bb6B77483xci
         NiXq6/bdNK1oYGMDb2MQX+ABrPuzHOF5rMldZnocmmux7NV4m46IEexQqAyZUIZJRb8t
         fDEg==
X-Gm-Message-State: AOAM531eSmg/CSz1HilB0ajzVMwd4eYzMR/O3yr/jzchrIAmjOGfvCgv
	PmzsNCxIyZaI8BiNlCv/nCg=
X-Google-Smtp-Source: ABdhPJykZrlAdTDT4XE0136W3juj6b8HVDoRC/qQHUXp/bD/zIl0Cs+1iicKdsaC3LQwfgSpJNp8KQ==
X-Received: by 2002:a92:c78a:: with SMTP id c10mr18326949ilk.64.1618845239535;
        Mon, 19 Apr 2021 08:13:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:a604:: with SMTP id c4ls2316894jam.8.gmail; Mon, 19 Apr
 2021 08:13:59 -0700 (PDT)
X-Received: by 2002:a05:6638:2591:: with SMTP id s17mr16521046jat.87.1618845239104;
        Mon, 19 Apr 2021 08:13:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618845239; cv=none;
        d=google.com; s=arc-20160816;
        b=OACJaUUHthcHTYpsi9oCTluV9ixKS05e8p4GiRhXGjNnZ1tp4RttxqrJ+KY7KsJjnZ
         S3Qn8yY+gSibs5rVOMJJ+zlzkZ5Q+ij2AMhdAQVzQdxcKL3K6fMspUfH1AY6owbdvZYq
         1r//b7Ft/RktOdD7VrG0zeabISM9R6AciQc6gh/OAiYdvj2IyH5PF7SpGqr4JFgmwg1B
         yfOijN8IUUxv+kDiMZDjcyCxN8zjVJKe0WW2RH0osWvFJBq9T+wyZneCJlF3hm6Ux/Qm
         Dg9CYhP2KkFY7ij4sveT7B8oiyubQnEU5jLgyJw3Ktrj84FGO6UD9J/ZxIoK4FYS6IBk
         eYdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=36vwzvQKHGNtNCW2ZUnMCMtobdyASLNJa9tZKeMvkEQ=;
        b=TMMMUC62s9Kg5o+fXu1zDIjIsecvoKIXqKZRD9XOECW5lSI6cmgbF1jftNUwzTspuQ
         rOugwhreLJoUB/1p9uaBpShaqDk1m0s7xWnPLZ5tMBkchfusuWzsS7vM6QPezPT2oAhj
         JS6RSDIJQef6Wvp8gUhhbbdRAP/wsx/M8wyrS23tolZqlRrr2gyZj1e87fAH4t4znyY6
         orylmGvntfTuHMC0tYJOG6hc7oF0meYMTPLtwq8/El12ysU2b0Ua50ysHICPMvdRrb1g
         RbmffTNq3edQHZPQWXnAUy2T8ryDOtg5hA5qc0y9ocpTBZMCgcWpBkbd/2/0cyCHni7p
         XCMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=czTjya+U;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com. [2607:f8b0:4864:20::b33])
        by gmr-mx.google.com with ESMTPS id j1si1111074ilq.0.2021.04.19.08.13.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 08:13:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) client-ip=2607:f8b0:4864:20::b33;
Received: by mail-yb1-xb33.google.com with SMTP id i4so1595920ybe.2
        for <clang-built-linux@googlegroups.com>; Mon, 19 Apr 2021 08:13:59 -0700 (PDT)
X-Received: by 2002:a5b:48c:: with SMTP id n12mr18798826ybp.273.1618845238403;
 Mon, 19 Apr 2021 08:13:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com> <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic> <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
 <20210416221414.GF22348@zn.tnic> <CALCETrUo+tR+YmfoBPWV9z_7QhU74=7tmCBD_zsfa24ZxNvfxg@mail.gmail.com>
 <202104161529.D9F98DA994@keescook> <87fszpu92e.ffs@nanos.tec.linutronix.de> <875z0ltdv8.ffs@nanos.tec.linutronix.de>
In-Reply-To: <875z0ltdv8.ffs@nanos.tec.linutronix.de>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 19 Apr 2021 08:13:47 -0700
Message-ID: <CABCJKueKDX+6DJnoVns1K35B9htRXRHLdYUckJ25dDhbWUezFw@mail.gmail.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Kees Cook <keescook@chromium.org>, Andy Lutomirski <luto@kernel.org>, 
	Borislav Petkov <bp@alien8.de>, X86 ML <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=czTjya+U;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33
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

On Sat, Apr 17, 2021 at 3:16 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Sat, Apr 17 2021 at 01:02, Thomas Gleixner wrote:
> > On Fri, Apr 16 2021 at 15:37, Kees Cook wrote:
> >
> >> On Fri, Apr 16, 2021 at 03:20:17PM -0700, Andy Lutomirski wrote:
> >>> But obviously there is code that needs real function pointers.  How
> >>> about making this a first-class feature, or at least hacking around it
> >>> more cleanly.  For example, what does this do:
> >>>
> >>> char entry_whatever[];
> >>> wrmsrl(..., (unsigned long)entry_whatever);
> >>
> >> This is just casting. It'll still resolve to the jump table entry.
> >>
> >>> or, alternatively,
> >>>
> >>> extern void func() __attribute__((nocfi));
> >>
> >> __nocfi says func() should not perform checking of correct jump table
> >> membership for indirect calls.
> >>
> >> But we don't want a global marking for a function to be ignored by CFI;
> >> we don't want functions to escape CFI -- we want specific _users_ to
> >> either not check CFI for indirect calls (__nocfi) or we want specific
> >> passed addresses to avoid going through the jump table
> >> (function_nocfi()).
> >
> > And that's why you mark entire files to be exempt without any rationale
> > why it makes sense.
>
> The reason why you have to do that is because function_nocfi() is not
> provided by the compiler.
>
> So you need to hack around that with that macro which fails to work
> e.g. for the idt data arrays.
>
> Is there any fundamental reason why the compiler does not provide that
> in a form which allows to use it everywhere?

I'm not aware of a fundamental reason why the compiler couldn't
provide a built-in here. This series attempts to work with what's
available at the moment, and admittedly that's not quite ideal on x86.

> It's not too much asked from a tool which provides new functionality to
> provide it in a way which is usable.

Sure, that's reasonable. I'll talk to our compiler folks and see how
we can proceed here.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueKDX%2B6DJnoVns1K35B9htRXRHLdYUckJ25dDhbWUezFw%40mail.gmail.com.
