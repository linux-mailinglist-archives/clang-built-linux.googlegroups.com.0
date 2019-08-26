Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2VOSDVQKGQEFXIFWNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9A59D4F2
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 19:31:24 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id a20sf23330796iok.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 10:31:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566840683; cv=pass;
        d=google.com; s=arc-20160816;
        b=WBEffMkdIod68Vf8RSDPnVZ1CnS+xzpbqzF6BWk6lTNMXTn+HNQonF3/F4OSszbhSM
         IOqkyGYO6nM13qVb70n1fSeyXHIgTZdUG1BAIeWk8hXhlR/fiuPiVyqA1EHEow3Qkc5Z
         0JG1oStJWhn71z1c0EbeUnNfA4xmD29t1t97n1jXWWDUnycTPIPm+KxUAGp7qpOPF357
         4cNpUI+Zbui4P6syivI82sy46LGFrhDdnD6JNKkG3LDcn3Xyf8f2HxcN7hIAvjbnEh6W
         rmb92lrJl5HLlWv+uSXZQeK1Aud+C9V7KXRn9T5+v1hx0yFDun2JX8PhGHohR+dApsEn
         PiTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0iCFop2WtlAXFZTEs33Dbin+5+J0RJSjZ7poQYhY1Vw=;
        b=l4ZCfeHNoO+5Y6cC7zI5S2tQIXFF2tn8cdt1JWSiOoFZOmNKh02LkxxBnid6EKGo4v
         T7lncPL0AtFEa4w8JV4M3K1CzO37MZYqx4bPl0XSZxW4kvtMTiWCxi1EbNstYmLRtZkB
         avS2J2Da9DukoHfkh07LA85HuU0aZyN+3lVg9fAnq7BLIZQa4YZu0K7A2Jp0koRPNeFJ
         p53F4tWQCEx96xi5JNWzxwSHHDyC00LE47SeCg0MAs+vEj+7r256FydDedyx3YwdxSMO
         lWtrzoTNYjrx94qqyRVmTD3zSVSqFavci8+9vnIpJS0uBTEw3HW3tqRWj7rGepMCa1Xp
         nX0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W1ThBxZ2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0iCFop2WtlAXFZTEs33Dbin+5+J0RJSjZ7poQYhY1Vw=;
        b=E1BeSit4sGLd7vX7hVWj2jfChuSQqV7u9RfrOLeQ8e4WcZZ7KHq3DQUTlrPgWd2NnG
         /7kJ2zyMBDdJ0Tkxb1jny8DHNbFYn4XwOJluX8ZgelPMeSomndUzscWoBEe9odfuqzLt
         4364NapqEkz2DQw2Yb+zih1mYh/fm7We1GrccjGLTYLGWspG6BH8c4IVQmkRPwuy6SGe
         VV3t718APw/cO9JquvrQVvF99bQ4VDevzTJi/7ytLbewHvMF2Dth1IY2vfehIwM8QIUX
         I8P0xSQ0LHMAjpg2OLA5gMPSxg3njHDQw5XRH8nfw68FqRTDQcyYuJTfzHj4USX0GaqM
         /Orw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0iCFop2WtlAXFZTEs33Dbin+5+J0RJSjZ7poQYhY1Vw=;
        b=sLBdHoN/zQeOUzvQ0b2/Ft/Qu6vONR+FcdDxiJu5E3RScIN9VP0E+dIFKWr8xgvVXI
         FhDWpfvlaZyUj3bgUcZyUZA8kU+NU6qSz4HZi/2/2GtF1ip7XH2FaYWBpgV5u13Mpig/
         vf5FeSc2+nP9/e1Eot31E1+FX9vh4SM6AaRJ8mg2/UTNGcLwJSwuY3RrZPuv3wtMbolt
         dvmjEaaFnHC6B+AJC6pVjzaME4m2e2Xv4W3gspP/6PqgYUkOayfAKIGe/Fy+MkAQrzJT
         Z3d0gFVURU6rTL7G/6Z7YQBu0R9ZSjeP4I2qdS11/0Ad/2C4mZfTEDQOsNPCqAEqUB60
         FhGA==
X-Gm-Message-State: APjAAAUktjnwXVIXBTjV3ZA3Lh6x17dHZFZz8Qx1WGjBRdDrHQnaZikN
	WWPrXn9hcZSHp2Ka7G6h6lI=
X-Google-Smtp-Source: APXvYqxSz8lyN2uM3niL/tAa6Noi6wH/bKEq5CElobsRp9OeN2yTmYA3C9r8Bq53hAGCpilKivuRmA==
X-Received: by 2002:a02:4881:: with SMTP id p123mr19154622jaa.69.1566840682193;
        Mon, 26 Aug 2019 10:31:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:fa0a:: with SMTP id p10ls565360ioh.14.gmail; Mon, 26 Aug
 2019 10:31:21 -0700 (PDT)
X-Received: by 2002:a6b:c8cf:: with SMTP id y198mr19778302iof.202.1566840681930;
        Mon, 26 Aug 2019 10:31:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566840681; cv=none;
        d=google.com; s=arc-20160816;
        b=Mqhzbc1xUEVd4dg8/Xp+pUEpFGhQ+WygOmcX2WySWRwEqF/sFrypaj9altV9fVcDre
         VA9YChi5qbcbQu7xQ+CD/Ea5YrMHjZqFfzvOefY/2lKODczTt+Pipb7zsCoX5K9VW5kq
         uDAuakEAZ6Rfwj/J3lLhDzJZP/uaMcpu7Q2ZngyAMJw8ViXgqrOOpktdmvve2n5WVLgp
         LBJSOrdJNuyaP4SWWMEAo5w2czEltZVYtbJQiTY/zyxZ9lNIQu3UQ1e70gNyU8VcZ0iu
         HbR0Bg3j+0cOzB0H4M7igHmI2umL7diy5Zt8hZNwAmoalYI3tifRnhslut7pkkTB4jrC
         1lbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Q3xiFZ2HkA5ScIJ98h57XT9QNlYTEuEKJ22ZvSjaM40=;
        b=e/jxuftatBPjsAy96cIsJi/tl4GDMLYvDtT2R31J1M/+2JX7MD/HIyAEUrQe0kOk2I
         eZCHnmyxpDz00SGDkc8BOLeP6ALNaidUhBX/zrcbkltHx+wITN9/ivrzvxF69nf5+xCg
         dJn4akh+3RxjJ1vdjscrL//8t9wR6MdZL3RQ5hyfWRnGZazGzQE1CY3EuLvgdVJOn4uM
         ifqm6WVnQB6rpHfgTEYQWl7H2Wp/zxy9uGc5WJ3uPIkiy2HflLDipmT679yySsR2CTal
         3JG+CIDlOwvzC3eoEud+4l4usLDUCgSALZFrhAhQ1EgJmtggxULvxVIOcGGRWWYMBG5h
         SUGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W1ThBxZ2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id e23si559843ioe.5.2019.08.26.10.31.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 10:31:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id n9so11025628pgc.1
        for <clang-built-linux@googlegroups.com>; Mon, 26 Aug 2019 10:31:21 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr17262703pgg.381.1566840680814;
 Mon, 26 Aug 2019 10:31:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190729211014.39333-1-ndesaulniers@google.com>
 <alpine.LFD.2.21.1907292302451.16059@eddie.linux-mips.org>
 <CAKwvOd==SCBrj=cZ7Ax5F87+-bPMS9AtGSxp+NWp_+yDCg4R-A@mail.gmail.com>
 <CAKwvOdkXLhEuLiQ_ukE75zEg=Sw5-4BLHHCFqcZ0oyTEX3pWTQ@mail.gmail.com>
 <CAKwvOdmGax-WgXeKEnTq8+Xe0+Z5d2k4_Ad1vw0uOiO2NJ0bkg@mail.gmail.com> <20190824141213.svzmdr3pxdaqssuj@pburton-laptop>
In-Reply-To: <20190824141213.svzmdr3pxdaqssuj@pburton-laptop>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 26 Aug 2019 10:31:09 -0700
Message-ID: <CAKwvOdmWS0_5haTdS67Sh0YjrUwfVOhLCwEXCO7vj6X1gXmCqQ@mail.gmail.com>
Subject: Re: [PATCH] mips: avoid explicit UB in assignment of mips_io_port_base
To: Paul Burton <paul.burton@mips.com>
Cc: Ralf Baechle <ralf@linux-mips.org>, James Hogan <jhogan@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Eli Friedman <efriedma@quicinc.com>, 
	Hassan Naveed <hnaveed@wavecomp.com>, Stephen Kitt <steve@sk2.org>, 
	Serge Semin <fancer.lancer@gmail.com>, Mike Rapoport <rppt@linux.ibm.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Michal Hocko <mhocko@suse.com>, 
	"linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"regehr@cs.utah.edu" <regehr@cs.utah.edu>, Philip Reames <listmail@philipreames.com>, 
	Alexander Potapenko <glider@google.com>, Alistair Delva <adelva@google.com>, 
	"Maciej W. Rozycki" <macro@linux-mips.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=W1ThBxZ2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Sat, Aug 24, 2019 at 7:12 AM Paul Burton <paul.burton@mips.com> wrote:
>
> Hi Nick,
>
> On Fri, Aug 23, 2019 at 10:16:04AM -0700, Nick Desaulniers wrote:
> > On Tue, Aug 20, 2019 at 10:15 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > > Hi Paul,
> > > Bumping this thread; we'd really like to be able to boot test another
> > > ISA in our CI.  This lone patch is affecting our ability to boot.  Can
> > > you please pick it up?
> > > https://lore.kernel.org/lkml/20190729211014.39333-1-ndesaulniers@google.com/
> >
> > Hi Paul,
> > Following up with this link that explains the undefined behavior issue more:
> > https://wiki.sei.cmu.edu/confluence/display/c/EXP05-C.+Do+not+cast+away+a+const+qualification
> > Please reconsider accepting this patch.
>
> Sorry, it's been a crazy few months & I'm currently away awaiting my
> father's funeral so I'm working through a backlog & catching up on
> things.

That's an extremely tough hand to be dealt.  Got it myself a week
before I turned 20.  Technically, (spoiler) everyone is eventually
dealt it; not that that or really anything else can ever truly provide
solace despite the common refrain "time heals all wounds" (Narrator:
it doesn't).  Depending on where you are in life it can really really
destabilize things.  I wrote this blog post
(https://nickdesaulniers.github.io/blog/2013/04/29/the-persistence-of-memory/)
that I'm not too proud of at a time I now realize that I was still
kind of a state of shock (even years later).  I also found it very
difficult to accept advice from others who didn't share the experience
of losing a parent.

No one would fault you for asking your co-maintainers to handle more
maintainer responsibilities for a while.  I hope you can find a friend
to commiserate with over beers.  I owe you one.

>
> It will be a shame to lose the optimization opportunities const offers
> us, but it is an ugly hack & so I'm OK with applying this. It's likely
> to affect older machines more than newer ones (which tend to use less or
> no I/O port access) so I'm not too worried about the impact, but if we
> find it matters we can always try the fixmap approach I suggested
> previously.
>
> Thanks,
>     Paul



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmWS0_5haTdS67Sh0YjrUwfVOhLCwEXCO7vj6X1gXmCqQ%40mail.gmail.com.
