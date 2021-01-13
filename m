Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQHI7T7QKGQE5VO7XGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CCB2F517D
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 18:56:18 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id 191sf4204948iob.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 09:56:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610560577; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xfa54yOaar8UQWAWZFmqoHsolWFD8bXdgQmnojwLNVRyORDw0ml63kML7BLLdyexYd
         waLGTe5uNjUcyDauD9z15bVFQA7lHHuDrOeOzgo/DoC+BqtGWrLKPCEo0qiv+2Sr1wiL
         0/e2nho+bjXaXGkoiUZh0NtEce7L2rKZ1oWStT22xkT02mXF7JnIOatqV/fyz+XK80Lx
         HUyBm5Hff/PWFW+MgGFVKECs0VP8IU2p6WwekdR3MlDalPenYRdOWVAb7k7XqVO9I59e
         yWOGZSaMMxO4d9TzlWRI9hzojg6jPMLCsIRSGzCI11O/4Xw0MZA5zvioHB9FXcx/Lwnh
         I1ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4Vrhn8jHYBIB3fOpqG5HRN/LXFj24IN14iDrKsDxnhY=;
        b=s1U8huqK6CoEFB6hxqGDsqv3RzENjQANmXvlcazXAO+dVZZDcghb64paH6EZpYC8x1
         ddyqi5DVu5CT7hDmzZ73+1VoVxcfos9cL17rTuCj3cQQe1iYHjjL0AHBZExvewQ0Pw0H
         8FNKQkLR9n11Sr7CqfoXso66GCe9MBUiKI2F7rmF9zMYmlFWdcCdmT8FW+Sr0qPNuLx9
         w5f/OZKoTG2cTzEwJUhNACnmkQwyjIxtUVIy2LlA5HSfZnzJkCkldXSeO+SWqlJlKw7H
         qwGSvntqsA6qeLbxtI5p6MS73VEh1fWcwRME7mLFvynpyE9sv/RceiKFRzeCzDn40Ix5
         saMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d9NukwZO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Vrhn8jHYBIB3fOpqG5HRN/LXFj24IN14iDrKsDxnhY=;
        b=aCRnDRJ51kSOTrAw9SU8OVMBvIxmihe2pe5NRgD0fDv4feTxP5YnGbHwbtONgTlPm4
         YMkz3aNlpkiADlDDq0DNhI6JyPNYDxaPbDQ1fo9LiMYlCfuFT9wqAgxO8DTJLMmCeK+k
         skDkCjuKI85xfSJ9n4OKZCQF35gT6q+ZbDNSN0vStQ/gufKHDNUJlqer0jdaZL6qZqOL
         1QHg1J+ttxrRK7hbINg3N5u3PNWNyNtnZUj82Y0NyOZkHQ1y9AOZp3Hv4u5B0mlclsOR
         svMj+Q8pJIqWmQ/dvXgX1dMSp1it68Nge8pJkmTbGq5M3Kl/MMGDYJWe3EBPu/zpQCm9
         lHgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Vrhn8jHYBIB3fOpqG5HRN/LXFj24IN14iDrKsDxnhY=;
        b=rAb9t2iYKSS6wJa+rbiBuSe6arRpIeZ9EBpLvc4UREZ4gkhWds4AWixv28rgMMV/y/
         bLyQ7LWKyO2EtgxkYCGgNoH65aYsaXddyVW0uywT/N+vEgE6+/824x4K1WWVKOjQxX96
         npoQ5yJ/RfZJNZ/qU8cqYPk7lE6UgU1h7bUKx8S5ccjwcfcAcadz+Erl+2o/ft4meA3X
         yIgyHPquprLJnE6DynUWwACnMXR08UAVMT/30AD4MTFVQIYOUX1LNlimbJcWNgUGDFGg
         k76SH7xu5RcMNdwrZh3oq3sv6Y1hpZbo6DnMlgDxWqxNl5wq+Zx33pkBb6cTVWe10U8R
         o6SA==
X-Gm-Message-State: AOAM5310cpXMT1Sf2ZsruNQ30YS8cqbZU2rYFwTAU+1VDY9wMd32j+k+
	k7AkJvRO7S2h8QhDlXxisAc=
X-Google-Smtp-Source: ABdhPJyz26sqCeeSEXXX1ZgpN/UL8XOJjrQrMI0hHGEzZ42ez05xDpH+QUhHvYoKhgjn+dmC2cF/iA==
X-Received: by 2002:a02:c7d1:: with SMTP id s17mr3440573jao.142.1610560576866;
        Wed, 13 Jan 2021 09:56:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1b8b:: with SMTP id f11ls538696ill.0.gmail; Wed, 13 Jan
 2021 09:56:16 -0800 (PST)
X-Received: by 2002:a92:607:: with SMTP id x7mr3379910ilg.34.1610560576459;
        Wed, 13 Jan 2021 09:56:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610560576; cv=none;
        d=google.com; s=arc-20160816;
        b=kgz6enrCiVgY4TpvHuMvWQaQTv/Qp616CviprhY7FiaQMfWfq6No2xKPNJe/5tYY9O
         zWXFHtiCT19W9E3satZIq+4Ziu9ip/hqP+gQCoPNpD8JCJHWroXKrD0/Rm5R3RjaTEmB
         U5+6+OPhzd6b9IIQ2Lck2hU62k2ZajVcfM3ZLyYEn+x66/d16cuDqSgHIT85Ec0Kw3TS
         zY+L4MDZ649B3m0UcQZ2bOG2k6El3jxc2dxBV9aLtsaYx+RSSAHy1tH2XCUxoSgVppDT
         2rKXgrDkVLeHSSe65UNfbhCqljPQEqtQE93eZqOWLbRiIawDNwgRF3n+8daWbrnDZPVY
         2rTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HdbzlOMYwsTubQgSe6mBoJ6+hia91ZFPU20BGsDFUoQ=;
        b=Fjy4K7XcLaOjWE4K2l8xQkQv3x1UiPD2HMoyymITUxSfX2NUb0P9RT8RkU2r3CNOGd
         YlexMjGr6y8uO8rvR1Xn6FwLHDFWotAgJIu2zUFtRWQmxzUOy3CDsNkQ6xvEKMJkcgX3
         L/oWQSiFTcb/N5ZPAzMEYZzs8QemJgNxFZ5x+NrN5mVS3kXnqudEIvB5dEodau8D43Wb
         kRLF/RwVBsrQ7ZEJ1VlOZ6v/fRmWgVx5E3GTng/KKnWkbJ+TtQkrqUW1s94+qF/NAJQr
         yR2FKJ+fzDlphxFDALEzDuIwpZnnGR55rmBmOzUuuP/R7uUBzFu6NDzdkODtUF7UA715
         zaCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d9NukwZO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id l3si75371iol.1.2021.01.13.09.56.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 09:56:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id q7so1974556pgm.5
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 09:56:16 -0800 (PST)
X-Received: by 2002:a63:1f47:: with SMTP id q7mr3198173pgm.10.1610560575782;
 Wed, 13 Jan 2021 09:56:15 -0800 (PST)
MIME-Version: 1.0
References: <20210112115421.GB13086@zn.tnic> <20210112194625.4181814-1-ndesaulniers@google.com>
 <20210112210154.GI4646@sirena.org.uk> <20210113165923.acvycpcu5tzksbbi@treble>
In-Reply-To: <20210113165923.acvycpcu5tzksbbi@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 13 Jan 2021 09:56:04 -0800
Message-ID: <CAKwvOdnAMsYF-v1LAqttBV3e3rHhSFZmPcRRV0+v=+9AyMFgNA@mail.gmail.com>
Subject: Re: [PATCH v4] x86/entry: emit a symbol for register restoring thunk
To: Josh Poimboeuf <jpoimboe@redhat.com>, Mark Brown <broonie@kernel.org>
Cc: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, Fangrui Song <maskray@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Jonathan Corbet <corbet@lwn.net>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Joe Perches <joe@perches.com>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d9NukwZO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52c
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

On Wed, Jan 13, 2021 at 8:59 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Tue, Jan 12, 2021 at 09:01:54PM +0000, Mark Brown wrote:
> > On Tue, Jan 12, 2021 at 11:46:24AM -0800, Nick Desaulniers wrote:
> >
> > This:
> >
> > > when building with LLVM_IAS=1 (Clang's integrated assembler). Josh
> > > notes:
> >
> > >   So basically, you can use an .L symbol *inside* a function or a code
> > >   segment, you just can't use the .L symbol to contain the code using a
> > >   SYM_*_START/END annotation pair.
> >
> > is a stronger statement than this:
> >
> > > +  Developers should avoid using local symbol names that are prefixed with
> > > +  ``.L``, as this has special meaning for the assembler; a symbol entry will
> > > +  not be emitted into the symbol table. This can prevent ``objtool`` from
> > > +  generating correct unwind info. Symbols with STB_LOCAL binding may still be
> > > +  used, and ``.L`` prefixed local symbol names are still generally useable
> > > +  within a function, but ``.L`` prefixed local symbol names should not be used
> > > +  to denote the beginning or end of code regions via
> > > +  ``SYM_CODE_START_LOCAL``/``SYM_CODE_END``.
> >
> > and seems more what I'd expect - SYM_FUNC* is also affected for example.
> > Even though other usages are probably not very likely it seems better to
> > keep the stronger statement in case someone comes up with one, and to
> > stop anyone spending time wondering why only SYM_CODE_START_LOCAL is
> > affected.
>
> Agreed, I think the comment is misleading/wrong/unclear in multiple
> ways.  In most cases the use of .L symbols is still fine.  What's no
> longer fine is when they're used to contain code in any kind of
> START/END pair.

Apologies, that was not my intention.  I've sent a follow up in
https://lore.kernel.org/lkml/20210113174620.958429-1-ndesaulniers@google.com/T/#u
since BP picked up v3 in tip x86/entry:
https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?h=x86/entry&id=bde718b7e154afc99e1956b18a848401ce8e1f8e

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnAMsYF-v1LAqttBV3e3rHhSFZmPcRRV0%2Bv%3D%2B9AyMFgNA%40mail.gmail.com.
