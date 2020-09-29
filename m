Return-Path: <clang-built-linux+bncBDYJPJO25UGBB25SZ35QKGQEPTQRCRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id E539327D82A
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 22:30:36 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id e3sf4559413ilq.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 13:30:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601411435; cv=pass;
        d=google.com; s=arc-20160816;
        b=zkZ31Vis1QVeOSfh57WFq+5MJswBEqkQXwR0nMskdDN7iy1/j0KkG8eHNrKi/s1JZQ
         SNidpZvrCxrbydfdQXJwQwKSKrGRGio+gV5nFzs4pZxdGsw576wccJq7OuZ5WdUzXmJc
         8f1i8MOjY5HL+PBZR77MK0K0dsEzYyZLCKekQvapSS4JvErEIz1VhXhJ6XE9e+plVqLl
         IvoWsB9+wsU40fukRqVZFXk2kxQrjIFWQ3TjG96vK6YUClOfln9PbxZtj5HfuLquVrh2
         Prv22VrtQGtIXOCUJ4hlov1fAIQ7mAxNBP25lqwCzLymY+enYEFudoFrM9+pls9BsR9n
         Lcbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=scxQmuc3eA7dFDTSnK+iH0EKx4Tu1DWGz3uas3ZtrWY=;
        b=AgkzXirxiJddyaZJhu9NJjxH78vPV5dcL9UKhTx6KD1olNH30qSMjiMkQ2Q4PgtFie
         cE9Uh7+SOuqKeqqqkR0MI144gxsnVLh5NdhSs1fYIAIG4TqgM0/NCXDW+v2gJMkdc2CK
         ej88CKz1bTpe/yVpe3lvPKaYyyXV78v0xU/D3CQAUg2P2NPrzFvPKw4krX56SYbqUES8
         k5RE0W1n71c4zc7P2qw2dCqmQdCPx3Qz2eK3BXstiJTK2C+LywMDSqPcS3gkSY65S1aX
         KfTbXB7fB4ML1pj0MOsaj4V2Ru0IUwbILp9KZxgCV1bbs71eyNysuc2O99XgeBtGVf7s
         bUiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=axx8TiEx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=scxQmuc3eA7dFDTSnK+iH0EKx4Tu1DWGz3uas3ZtrWY=;
        b=YZjBQca9x5CqwRnGFGnwHJ16Cec3Ds61tJilUawysvwa9NRB/oly1uKkeHd31wo0EQ
         lonAGw28tWU4/LuhK/e5xQie5UnylaI1Zlz0mYxg23J+ITTb791Hi3YhCv87lVAlLS5D
         BmZ6pJbAwbsPqSuHN2u2/oovaIQBoPLpA2eyB21v1vmx7tfcgLEWP+3bYpcjNban/WkU
         aI7kbZgPO96nZD1KYPSC92gRgIxdkcirs/1R8CIO8Z+dL20Xs1q8uBgHMSO/RBnUiaxO
         n53EsQKvu9SCj7NvPJ4MXmyJoUMoiw/fxC2V/slPrALiXrzuOl3MrOedkqClJISCCFkJ
         2xUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=scxQmuc3eA7dFDTSnK+iH0EKx4Tu1DWGz3uas3ZtrWY=;
        b=CpBWEypOzamWYPL6xExI8zOyM/EtjqiDa9x5EeqoLLrLNL3a4qvLvQ5C5Uc1frBfhg
         YyM560PBO+5ZIqxC7/N5iJadn1VPllxG75MwdUTrwsiTt9jmT4eSRkvyQw/oj97Jn2ly
         NuoMLTW9TAPeZOFtTms7gMNPnohv8Ot2TFEfuxm0k5xS8BbL4MVMrgbJYv/QXWjJ6hTh
         1uI4dz4xmJDwhZfgczP4umINkz0Do1n/9jl5r2+rWJkNyAJunV8h+ORjHvPMelWqXebF
         wV9APKTODCLtA+DKQPJmTqMYi+MPZKz6MIwRy5ol4w9Ev4grYXg2j0ka4Kk2dKluSswf
         E9Cg==
X-Gm-Message-State: AOAM5314Dxg98KXldzE+x/ttzy2dQiwwb/sqlxEKDEa6AcZ/FO/QRL2X
	uAT29EFRkUx3IO2FQYgmgsQ=
X-Google-Smtp-Source: ABdhPJzDmXM3FukQfgzjPvcSLPM6+m7Pt+eBxpbfvkN9H3pWw0TYThPCSUb8wsoYRn0sXLj1moNVaw==
X-Received: by 2002:a02:82c8:: with SMTP id u8mr4365134jag.61.1601411435466;
        Tue, 29 Sep 2020 13:30:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d344:: with SMTP id a4ls1671573ilh.0.gmail; Tue, 29 Sep
 2020 13:30:35 -0700 (PDT)
X-Received: by 2002:a05:6e02:13a2:: with SMTP id h2mr3452227ilo.271.1601411434939;
        Tue, 29 Sep 2020 13:30:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601411434; cv=none;
        d=google.com; s=arc-20160816;
        b=dNpJRFZtK1AinKue/sxl2h6C7XzjCOor8r6bnlTTFJdNzuJcgpN3c+Pnen1Bb2CUYb
         77nfw4t3nwvpzJ+W3YHjV+OM0fIwRR4+yMC0TnshiegO2NWNWIfkn+0Qfyp0fTwisoSv
         /PunfDoe4zN/M/yC6dwAw17eyQLe7P8X8Bpcn7ICg5fgyVFkaTfCQ1jsW+iKQl3UKU4m
         WYS/1MHwZnziW972pHT2Yil1egV+z9bDryiqLXRpNFRo67IzlLTgaVjzz1Lww4LEAB9s
         eyQrA59ZYEDTOVsAP6Xo5wbxNGNolP4BJJiUuM8+2C6PIbnTDIxTEfW/EUIbiGBqrwmf
         I0FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rNC5fTqGhjDI7cT1AmjU6kFmKGf9yB5nGgyQEW4+Bsw=;
        b=YMO8xV1S1BbuBkL4m5hZ+QjxXOoNWqhHYtLrKMj180YF2YJWY0IfBochvp5p4tTRyT
         xUFl3tLZsa+iyhamVkuWyVuosmR6E0YG6PKUqQ1XVIFwpYdlOSn52XcDKTv0R8CLnBko
         jT4LHDqrxYW2ohyAkp2XDcMLxm67PIhhgWiF8TIFokNyoylxPUGXL1a7uKm5ezIRchKF
         DsHxFBtLfcJiOGIO/VFedJbQigtv2ymbNOABG6qF58NTARUaeiYUy26GSE7bElJjSiuH
         9/qRTY0kv8lViMjLjkr5HHKYK6Z9v9TiaS8mWe7CtxSB9b4iLGp+IeFC3NveVQu7vu7n
         7ptw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=axx8TiEx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id b12si97091iow.0.2020.09.29.13.30.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 13:30:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id h23so2220579pjv.5
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 13:30:34 -0700 (PDT)
X-Received: by 2002:a17:90a:cc16:: with SMTP id b22mr5463999pju.32.1601411434147;
 Tue, 29 Sep 2020 13:30:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200929194318.548707-1-ndesaulniers@google.com>
 <20200929200801.GA2668747@rani.riverdale.lan> <CAKwvOdm=H3GDOPo-dbgsqH7UXzC1twz1h2Rdcidh8OXtFtCY4Q@mail.gmail.com>
In-Reply-To: <CAKwvOdm=H3GDOPo-dbgsqH7UXzC1twz1h2Rdcidh8OXtFtCY4Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 29 Sep 2020 13:30:22 -0700
Message-ID: <CAKwvOdmA746irmMVAzs5pJz4XgcWMBA8jWM2Ha1Z5c6hajWzJw@mail.gmail.com>
Subject: Re: [PATCH] compiler.h: avoid escaped section names
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-sparse@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=axx8TiEx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Tue, Sep 29, 2020 at 1:25 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Sep 29, 2020 at 1:08 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Sep 29, 2020 at 12:43:18PM -0700, Nick Desaulniers wrote:
> > > The stringification operator, `#`, in the preprocessor escapes strings.
> > > For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> > > they treat section names that contain \".
> > >
> > > The portable solution is to not use a string literal with the
> > > preprocessor stringification operator.
> > >
> > > In this case, since __section unconditionally uses the stringification
> > > operator, we actually want the more verbose
> > > __attribute__((__section__())).
> > >
> > > Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> > > Fixes: commit e04462fb82f8 ("Compiler Attributes: remove uses of __attribute__ from compiler.h")
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > >  include/linux/compiler.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> > > index 92ef163a7479..ac45f6d40d39 100644
> > > --- a/include/linux/compiler.h
> > > +++ b/include/linux/compiler.h
> > > @@ -155,7 +155,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
> > >       extern typeof(sym) sym;                                 \
> > >       static const unsigned long __kentry_##sym               \
> > >       __used                                                  \
> > > -     __section("___kentry" "+" #sym )                        \
> > > +     __attribute__((__section__("___kentry+" #sym)))         \
> > >       = (unsigned long)&sym;
> > >  #endif
> > >
> > > --
> > > 2.28.0.709.gb0816b6eb0-goog
> > >
> >
> > There was this previous mini-thread:
> > https://lore.kernel.org/lkml/20200629205448.GA1474367@rani.riverdale.lan/
> > and this older one:
> > https://lore.kernel.org/lkml/20190904181740.GA19688@gmail.com/
> >
> > Just for my own curiosity: how does KENTRY actually get used? grep
> > doesn't show any hits, and the thread from 2019 was actually going to
> > drop it if I read it right, and also just remove stringification from
> > the __section macro.
>
> Oh, sorry I didn't respond on that thread; I could have sworn I ran a
> grep for KENTRY back then.
>
> $ git log -S KENTRY

Added by
b67067f1176df6ee727450546b58704e4b588563 ?

>
> Doesn't seem to get any hits, so I'm not sure what I should use for a
> proper Fixes tag in the event we just remove it.  Let me grab lunch,
> then I'll send a v2 that just removes the KENTRY block.  Thanks for
> the reminder!
>
> And I don't remember what ever happened to Joe's script for treewide
> conversion of __section.
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmA746irmMVAzs5pJz4XgcWMBA8jWM2Ha1Z5c6hajWzJw%40mail.gmail.com.
