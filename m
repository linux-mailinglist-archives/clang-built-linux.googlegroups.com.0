Return-Path: <clang-built-linux+bncBAABBAHU3XVQKGQER3XQHVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id E568EAE7FC
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 12:25:04 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id s2sf1565464ljm.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 03:25:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568111104; cv=pass;
        d=google.com; s=arc-20160816;
        b=gQ0N/1xkxz/TW1IfAIcO4BUq7wI8QRcuOqo6NiikpPj11BvFaTbUnJ28lPeBzqwav1
         rAOyjv5CKbU1ZtrRw8lwbAzPv43RiRyHG+z4LgAY8EYTZ8uLAxOm83STbf2enWMaaP6l
         vfcotF6KC8SQAQ6RGb5bySbhDgyGe7xFFnnUnCpl/GZdY7r97z1Br1zD2ippzRS34DlY
         0/Enn3J8HwmnyOL3+4fMY1NP0bHqYb44RpWM4TjjOXCQs6UCWTZiXVw8JezOKoJ7Dydc
         FgroJqj/NDFLs5LrRkqzceQ4LadobMkxb2Wu3UmKKgzhiKmLIYBzHJl3aGRsCBVdOMs2
         XjPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=yESJo7RT6LRmfNKlvvorrTsWMd1dH7SoP8V7EN+/DyM=;
        b=N8kO2gW0CQCUTJ8QQVKrppfENU6bI+u8dsKGLEd5fnVNL+SjyAyrZBkOJdCwTimd20
         KoIQFeFCAgri7MQt8IiwjyhSo8JTXe5bzt8NIblhIOPi1SyddRPL/0rieAd/DplAvoXJ
         1zwH/sxExXlOdtMEmQDEP5BW2rVijahNM1YZ8uOk3MF6ARKbT20/dhjt/ZdfIU8SsvQQ
         nceDMHTm4yFch9NvVd77Z4eVCMgsS1K8NRQGFQaNyLMOKdh3H22aNq7CC96tTP3rGmvk
         xJcSdNznc7eKtDXuOf4gW0jI3ugN69IgCSp1Vjo6mfj5daimQcbL8xNORf8YtSzu7NJH
         3Gmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andrew.murray@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yESJo7RT6LRmfNKlvvorrTsWMd1dH7SoP8V7EN+/DyM=;
        b=rMDHrZe+s1LelV9fZcx8WBtsQLfCVndaLjNIHh3JrKPuEY9LJn7Gz586hHbek3Y2Bm
         JzrWQD1FAEQ1ualxsvlBDVF7xG7c8My8sGafAETDtPNAQHLyNYgI0EJ8XSCPeXK/Coo6
         d/vA6dSCkSZVhZwpswEMr+gGEEgTCkATCRHDF6qEfPPUURPog1hLTnYAlUPkMNGVEOUJ
         B4WFvVxYYi1gJG3YvvC37TGxkPTR6nPp8sdawxmkw9bBnlnqMbA+ChJ8AQQn9sR07ADX
         Cgy7c3GFe48Rc7oL4tmGdrDbKveCUC0shGi/PDiGcpDouKu751lGzIi8DTcGMvLdzLDn
         78UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yESJo7RT6LRmfNKlvvorrTsWMd1dH7SoP8V7EN+/DyM=;
        b=lzpI+QCNWTY1fPjKiGEYrqbIRuOxSxI8k4JH4w2DCfzbktog3t8RFJfjrETRr5/PVj
         TLcSjirUE0G2Bjj3cEKRGM8sjvgf/aJBl0OGjaN6iNEnBbGmF0IFQNDgwr8z3IgOjOw/
         MxL6/CsCKtOipk4l09gWQ5i/12uOrOXi7gCdt4657trY36pKJUDQlb2ZYvSfbgoayZB7
         uxBDY/Mx717XSm0PIm/DGZPpidZ7QvyAjsSYlhUMELs1q/gQWdTcFGzDF7UuraAvcT0c
         3UduSgmZNiWom2IgjkKkyeAOGrxy4hM5vc9RTr4taysNmGy5nL/DHMqLgiHNvk64QxC2
         UykA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX4SpschFlwwxJ739Ba+cWGQQhiLP//PK9IvG1toG6mW6Uz2wTl
	nehihSKi6L+yF+0Dn5BRn4A=
X-Google-Smtp-Source: APXvYqyEZfsDYn3mv8L7QfU4GTmH9aCDwxTlHKaNB2z5eG3/WJWeJf10BcrQ4mNLx9f5/b76XaxKwA==
X-Received: by 2002:a2e:50b:: with SMTP id 11mr19587398ljf.11.1568111104196;
        Tue, 10 Sep 2019 03:25:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:457a:: with SMTP id k26ls267545lfm.2.gmail; Tue, 10 Sep
 2019 03:25:03 -0700 (PDT)
X-Received: by 2002:ac2:5451:: with SMTP id d17mr19207882lfn.77.1568111103825;
        Tue, 10 Sep 2019 03:25:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568111103; cv=none;
        d=google.com; s=arc-20160816;
        b=nVurR3mbNLl2gcijdBFOQr1iORs5X/YOzxjdXcFEeR8boLUthBjWIoKzhY6BnjSw+p
         WqzYc7jY7QB0x85GOqa7jP+C2j3rMskyAufFBw/dYpFmVLFKEz4BRFpXCkpmiWp93l4+
         tYFwOUv5v7SCxxNiIjGusbp/xu20cP5+5vA3wbKlxtxrQ9rVtrY+RqtQe8aEmGNP7+D0
         xjBOXUS8I1rJkW7ZsBgnHnoHKJs4miJgnSQHI56+aDCdwIQgj7NjDXBLefYqNIdXQn99
         L9nERKHlaLJHYCI3W0nw+zEFx4Wj0IZA+52tQ/llqW7uwJ2dqhQTpqJYbGAOdWFe6sZq
         XyVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ASXuikZ+zU5zUL0YiF7CDzSFypLvGx0hXaR7BKy5hpU=;
        b=K5Xv7iNp06fbsktBYMI70zWwIdailQJl4IkM1Hd1Hs2MbZuT47vEQavjtrMCgjZCBd
         FpSQtYkC4a8B9mkdUQD6Jr0SITMYo+19QdXnXa5qwD3arkS6q7SMWUo1dP/rBjCum+xs
         KjeKg7ivW+xH95RI711i2queNCWsTbtK08F6irH9sh2P59ZqUriYLxi8CH6rSxIsZfpa
         BKgcDBgsGLw1BThPejSO1hiy73RgI+Td7/qYnJh9mgp/sPYJbVop70ACJP7RYXcodeX6
         zTKRVrjfeRBvY/GfilnFxaEWNWh67xgFwGQ2Ab8xbzn/HR+GCRcTFsEquUz8+TvKnMcc
         2GPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andrew.murray@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id x17si1285415ljh.0.2019.09.10.03.25.02
        for <clang-built-linux@googlegroups.com>;
        Tue, 10 Sep 2019 03:25:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 45E591000;
	Tue, 10 Sep 2019 03:25:01 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B154C3F59C;
	Tue, 10 Sep 2019 03:25:00 -0700 (PDT)
Date: Tue, 10 Sep 2019 11:24:59 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
Message-ID: <20190910102458.GJ9720@e119886-lin.cambridge.arm.com>
References: <20190909202153.144970-1-arnd@arndb.de>
 <20190910092324.GI9720@e119886-lin.cambridge.arm.com>
 <CAK8P3a2Vk+KSUGJyPTRuLPD=KPEAR43SZ1ofB6k+KeQi3fSERw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a2Vk+KSUGJyPTRuLPD=KPEAR43SZ1ofB6k+KeQi3fSERw@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-Original-Sender: andrew.murray@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=andrew.murray@arm.com
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

On Tue, Sep 10, 2019 at 11:38:37AM +0200, Arnd Bergmann wrote:
> On Tue, Sep 10, 2019 at 11:23 AM Andrew Murray <andrew.murray@arm.com> wrote:
> 
> >
> > >  arch/arm64/include/asm/cmpxchg.h | 15 ++++++++-------
> > >  1 file changed, 8 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> > > index a1398f2f9994..fd64dc8a235f 100644
> > > --- a/arch/arm64/include/asm/cmpxchg.h
> > > +++ b/arch/arm64/include/asm/cmpxchg.h
> > > @@ -19,7 +19,7 @@
> > >   * acquire+release for the latter.
> > >   */
> > >  #define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)    \
> > > -static inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)              \
> > > +static __always_inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)\
> >
> > This hunk isn't needed, there is no BUILD_BUG here.
> 
> Right, I noticed this, but it seemed like a good idea regardless given the small
> size of the function compared with the overhead of a function call.  We clearly
> want these to be inlined all the time.
> 
> Same for the others.

I'm not so sure - isn't the point of something like OPTIMIZE_INLINING to give
more freedom to the tooling (and by virtue of the option - the user)?

Surely any decent optimising compiler will do the right thing by inlining small
trivial functions that are annotated with inline? And if not, the compiler
should be fixed not the kernel - unless of course it causes an issue - and then
we should fix those specific cases.

There must be dozens of trivial functions that are marked with __inline, I
don't think it would make sense to mark those as __always_inline. For example the
atomics in atomic_lse.h are trivial but only marked inline. We obviously want
them inline, though I don't think we should babysit the compiler to do the
right thing.

(Also the commit message implies that all the hunks are required to fix this
particular issue which they are not).

Thanks,

Andrew Murray

> 
> > Alternatively is it possible to replace the BUILD_BUG's with something else?
> >
> > I think because we use BUILD_BUG at the end of a switch statement, we make
> > the assumption that size is known at compile time, for this reason we should
> > ensure the function containing the BUILD_BUG is __always_inline.
> >
> > Looking across the kernel where BUILD_BUG is used as a default in a switch
> > statment ($ git grep -B 3 BUILD_BUG\( | grep default), most instances are
> > within macros, but many are found in an __always_inline function:
> >
> > arch/x86/kvm/cpuid.h
> > mm/kasan/generic.c
> >
> > Though some are not:
> >
> > include/linux/signal.h
> > arch/arm64/include/asm/arm_dsu/pmu.h
> >
> > I wonder if there may be a latent mole ready to whack with pmu.h?
> 
> Right, it can't hurt to annotate those as well. I actually have another
> fixup for linux/signal.h that I would have to revisit at some point.
> See https://bugs.llvm.org/show_bug.cgi?id=38789, I think this is
> fixed with clang-9 now, but maybe not with clang-8.
> 
>       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910102458.GJ9720%40e119886-lin.cambridge.arm.com.
