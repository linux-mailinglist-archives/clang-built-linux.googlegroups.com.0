Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPUWY74QKGQEPPJZWBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 26681241340
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 00:33:36 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id d131sf8055327qke.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 15:33:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597098815; cv=pass;
        d=google.com; s=arc-20160816;
        b=MIuXqRoQ8vmZ70OSKl1FgCJs/u54LNhJy/CMyO+m0pC2IHuB7aLTT/up//vECcraBw
         6fJFAuEbNgbpTSGScuHxLGvF5kb+e9mnheA6XSFSzdrup2YkWkyErBbuzulklkVIq2rA
         3L3ZjYFzDMz0v8p2wCrav40xklZdqOYpSrLigpYzA9JwHj38TkhxTT6Io4nLX4m/mwQV
         XEhB8daRSvy7scQyyoVzilp2+F1PCjxJU399CLXbuTdZLhEVUzjczsKa+EPwWbR7xY1/
         anBxd6v0rAPgE+r2ptjBVqWduh8N8vY7T3hdM3SPBaPqcPjVFVuS7oX6knRCXLmLcpaD
         Mqjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1qU9jTWRSKgeY0034mNk4df06xFe8WNrCZVJTCLz6y4=;
        b=T0NcVxw3lwd4yx0zex/Xn2cOmEUJRV0dCFnTRPOg4bm1PV31t5+LtKc3+xBANwmiOl
         ge7hlaadpbQeIBlPpLtdV7AcTEaR6kLUn83lb6C7Nv5JUeiYkH879E30pH2AsbCPPrZe
         F2KmLal237kgtmzJgr4b7NBqBkQEJY7xiB0iECO1CFprxtraBKUAeRxcN9IYDPfKlkMb
         HqIZ0ZY0nLWEgNAKgOEnFF2rE4s+vIGZ5UuRWGbw1u6w7AdDoCvn6h9c1yW567o0yEsC
         01rN6QXlWSZpt3mGCrwtladcOXfUl2jM96IGy88Mb3qcKnjpLtZyTuxk+PKF8RI1KsCz
         zNrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mhtQBufT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1qU9jTWRSKgeY0034mNk4df06xFe8WNrCZVJTCLz6y4=;
        b=qBWEaVtwmpv1vrtWDEArp/5E1B20Yl7gbkkb1keYp4o8mPzM0YkzUNqftmF18pceKO
         z37eAnOGcUtGWQTOE8PIisv1ZI2zzer/ceGyu91phdSJZ4pxaLZchAPpUewa66mSCU5v
         joqnyx3+4rpzG7xUjhHSfz0pHNTcCRmvpqy6vJuHL3Y0Did6oDsLjA+pagIoPl/OIALt
         oVklEsMt4aKU6pfgO4/lCL+2k2DNSdbJ5t472d6/CZzpYHPUhiZr08Th2ouwm2QHjNib
         J6AH1eL6eL1Svlf8YsOhxZ9xK7VSfQkw3ZRxkDu4bZo9G3GKVSkNBcraOL0ebcudjZlI
         BL8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1qU9jTWRSKgeY0034mNk4df06xFe8WNrCZVJTCLz6y4=;
        b=pGfLF4cowG8C2q049pQOgP296wWuZiHHUN/SQ+IY4XNAZbIY7xmtQc+v58RIoNuEnw
         SfOEh9QU7zpZEpQIpnNXgtyUYf3cNTnyYmZvPe2vhw55SSuhn66+aDU3iHU5/1yztURI
         5jPfDJRYCdVCvE69NcbJFA71oVjujIKjIQBYFl/1xgFE7uwrLZHK+y20yTMfMsTuJibP
         ghg5yH2arGoqdhkujXPypCZ91VF6j8Eecxw5bv3/gB8v9lSUcf+CWAtWtEf5E5cLhwKb
         xDFbLLS441ZCWI8C+/Pzl8jxBILY9zJ6IkmJm4UyqJilEGgr+uNTqIWmRHz1wAlvF31P
         hlSQ==
X-Gm-Message-State: AOAM530KX0H8pkJW8LS/pI9e3lB6cnAQ+d/fHC5EMiX5Lk1vtXjztK2f
	7Uv5mcLchO46HIYrh/utWB4=
X-Google-Smtp-Source: ABdhPJytzoe8wkCdvr2Lz/noWDoGMnNNnjFbCAPFn3Kwk/l+C4S5Qo411nWQsdIcTwDJnI2ErovZ3Q==
X-Received: by 2002:a05:620a:149a:: with SMTP id w26mr27722041qkj.432.1597098814786;
        Mon, 10 Aug 2020 15:33:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:62d7:: with SMTP id w206ls8764383qkb.8.gmail; Mon, 10
 Aug 2020 15:33:34 -0700 (PDT)
X-Received: by 2002:a05:620a:1325:: with SMTP id p5mr29296656qkj.357.1597098814441;
        Mon, 10 Aug 2020 15:33:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597098814; cv=none;
        d=google.com; s=arc-20160816;
        b=ZvLZzkXnKKoR5iy5mEMlP/KzbEo1dSIUjF5Epci4qYiEh0dpJCH273EidlArUzNNyc
         6cdPeG3CSRWJ2EHNv7MZ4OQ30wpZuVQlKv6aT2khPEvYXsu3CMqJmNMFETZDnWpvfnW2
         Y+Mki0RcMbe/rPxBs/4OyA7UEIkDAG3pv+g/5Y1821oHNQhy17HVq6rykeNe+xVTfjOf
         S3vaWJk4euJe07Z6JAq74mYxf/jNDmHi17ylOOCQBiSg/Pn4WfDiifbQAGJFsM95W76D
         fORdmsxqeaZA+r8WPxhVivwkvXbgREAbcJeyMPbM0Fle0CmpEK4oM5Bwq93iEco4geVl
         sNHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=i7ZfdynehOdybqijT/Iim3hOWf1+yvwIpK/H7v550UQ=;
        b=AtQGsdZwVkoTuaJnE+h6bPqs1xW7yeL4JaOTAJqf4r+r61sLtDJkaAU5C1pP0d34vK
         PQIoO3zoxOs93fVfoFL+HmuORnLcixGmpJu+8hDgmREcgqi2tV7jSvGD2aVQGnO0xkk5
         TyloaDm0MCIDg8bwySv0WJbbXh14Bz13WAK3mWvirbqCh9Ky4lDgx2NuJCkD26oWb3yZ
         BNJpv12vmjtTMGRN/2cL4GS6jgOkdVl6w9C568/3kbrEWTxnEfA+iFbJXbjLDUfOa+T7
         Kth5R9RyWqSX78tLG2eVkas23nnOznvxmeYh18B9Gom54Pz+ueR4f28Q13iHZkoeDP0W
         YNWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mhtQBufT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id m13si973472qtn.0.2020.08.10.15.33.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Aug 2020 15:33:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id r11so6513082pfl.11
        for <clang-built-linux@googlegroups.com>; Mon, 10 Aug 2020 15:33:34 -0700 (PDT)
X-Received: by 2002:a63:4e56:: with SMTP id o22mr8537935pgl.381.1597098813343;
 Mon, 10 Aug 2020 15:33:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200730205112.2099429-1-ndesaulniers@google.com>
 <20200730205112.2099429-3-ndesaulniers@google.com> <CAN=-Rxty=Ux5rj-VQSZH-ryj1RiNJvy7mRE7uyx_YAndGtcq7Q@mail.gmail.com>
In-Reply-To: <CAN=-Rxty=Ux5rj-VQSZH-ryj1RiNJvy7mRE7uyx_YAndGtcq7Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 10 Aug 2020 15:33:22 -0700
Message-ID: <CAKwvOdkNLK2cRfY+DA0u3KuY5PuEss5Qox6X3zzpL053pARfrA@mail.gmail.com>
Subject: Re: [PATCH 2/4] ARM: backtrace-clang: add fixup for lr dereference
To: Nathan Huckleberry <nhuck15@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>, Andrew Morton <akpm@linux-foundation.org>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Dmitry Safonov <0x7f454c46@gmail.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-mediatek@lists.infradead.org, Lvqiang Huang <lvqiang.huang@unisoc.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Miles Chen <miles.chen@mediatek.com>, 
	"# 3.4.x" <stable@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mhtQBufT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Thu, Aug 6, 2020 at 3:39 PM Nathan Huckleberry <nhuck15@gmail.com> wrote:
>
> Mostly looks good to me. Just a minor nit.
>
> On Thu, Jul 30, 2020 at 3:51 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > If the value of the link register is not correct (tail call from asm
> > that didn't set it, stack corruption, memory no longer mapped), then
> > using it for an address calculation may trigger an exception.  Without a
> > fixup handler, this will lead to a panic, which will unwind, which will
> > trigger the fault repeatedly in an infinite loop.
> >
> > We don't observe such failures currently, but we have. Just to be safe,
> > add a fixup handler here so that at least we don't have an infinite
> > loop.
> >
> > Cc: stable@vger.kernel.org
> > Fixes: commit 6dc5fd93b2f1 ("ARM: 8900/1: UNWINDER_FRAME_POINTER implementation for Clang")
> > Reported-by: Miles Chen <miles.chen@mediatek.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  arch/arm/lib/backtrace-clang.S | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
> > index 5388ac664c12..40eb2215eaf4 100644
> > --- a/arch/arm/lib/backtrace-clang.S
> > +++ b/arch/arm/lib/backtrace-clang.S
> > @@ -146,7 +146,7 @@ for_each_frame:     tst     frame, mask             @ Check for address exceptions
> >
> >                 tst     sv_lr, #0               @ If there's no previous lr,
> >                 beq     finished_setup          @ we're done.
> > -               ldr     r0, [sv_lr, #-4]        @ get call instruction
> > +prev_call:     ldr     r0, [sv_lr, #-4]        @ get call instruction
> >                 ldr     r3, .Lopcode+4
> >                 and     r2, r3, r0              @ is this a bl call
> >                 teq     r2, r3
> > @@ -206,6 +206,13 @@ finished_setup:
> >                 mov     r2, frame
> >                 bl      printk
> >  no_frame:      ldmfd   sp!, {r4 - r9, fp, pc}
> > +/*
> > + * Accessing the address pointed to by the link register triggered an
> > + * exception, don't try to unwind through it.
> > + */
> > +bad_lr:                mov     sv_fp, #0
>
> It might be nice to emit a warning here since we'll
> only hit this case if something fishy is going on
> with the saved lr.

Yeah, something fishy is going on if that ever happens.  Let me create
a V2 with an additional print.

>
> > +               mov     sv_lr, #0
> > +               b       finished_setup
> >  ENDPROC(c_backtrace)
> >                 .pushsection __ex_table,"a"
> >                 .align  3
> > @@ -214,6 +221,7 @@ ENDPROC(c_backtrace)
> >                 .long   1003b, 1006b
> >                 .long   1004b, 1006b
> >                 .long   1005b, 1006b
> > +               .long   prev_call, bad_lr
> >                 .popsection
> >
> >  .Lbad:         .asciz  "%sBacktrace aborted due to bad frame pointer <%p>\n"
> > --
> > 2.28.0.163.g6104cc2f0b6-goog
> >
>
> Thanks,
> Huck



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkNLK2cRfY%2BDA0u3KuY5PuEss5Qox6X3zzpL053pARfrA%40mail.gmail.com.
