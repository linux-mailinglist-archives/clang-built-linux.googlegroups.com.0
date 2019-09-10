Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBLW63XVQKGQEBPKGJ6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id ED035AE71F
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 11:38:55 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id h145sf3439081vke.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 02:38:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568108335; cv=pass;
        d=google.com; s=arc-20160816;
        b=HvJtXl2iLtS+5WvzGhfwiYhR9lS0sV43wpukYh9l8EAeKYLPT/Bjxj76z9VgkL10gP
         XSdv4kZGGcwRCgE8LI/4FXIoigY+HToMo27lPKtrrnCB3P3pRaEwCNLIUHje/34beaXa
         ItChqCqP34EmbXP6F53tltATPFKpr6qjF9wPqjIU04/LHHw+bWh62dBSw0H9JTiJEE53
         bhZngZ7zEai/iwTLIigtREwrSgejQtB8btOgeGVQmb0DhWIDb2KTM2b/HaB6FG5XsFMu
         RGKIfW9zL+PTa5qyMPdRusfMhvYk7sRpxfMRyWOFAPLLihTVbsXSLPbRiRr0ClCOai3f
         38fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=P0K8xNuCAr9hgAjuUmjLEADxof/XrqYTqOt6Ejedd/Y=;
        b=haZxeSrkN668QUQvXuETmW9DQFLhlpck/DVAauOWYyZlSDhkU5T2MsLoB7IlrSai4M
         f6Wf52haNfvPKD39CyqV7nGHDj2wSzcbOGBJ+QFKYqGXcOS0leKk9Lpvj44Yxn+oTVdv
         cb+QArgER9jxtnhwLWt8NhVUBDwwtHX2TbgHwBeoK4c6rpTz310G7oiXlm4y63sB24RO
         WyyDA5jVi5njB+KEBm9XlK0mRKU+uyx4clpCpp8dmptAEuPEk6NeTHE8Qp72Ijek+43i
         ZUnAfMiCjcUxPL4FCG03cNI35qUbXbzLDPCNCPl6OgDi/3PTjMEfN0EWpmOxHNzX+0V6
         0ugA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P0K8xNuCAr9hgAjuUmjLEADxof/XrqYTqOt6Ejedd/Y=;
        b=Q6Pzna/9BundXU/nSlUSCs1IMdh9kAqnjKPGXrBwgr2NoDQw6WTE1sDNEqJwCdWDCz
         QNsGnNORDgMMxe33/pbHXZY4PGPh9o410/o7gvJiVaOG4YrG4AALl7i5XpVa7PJjpP27
         aI1eqSh+NGIGCitPZ7L81ET1Asi74K5qq7rllviOBlX+mNeRDSlZJ5TsjlW/zMvmIQte
         UcwemurCV7Vp6qJIVnMXSCGyrOQvvO4oXgEZe33otTD5BAvcknzVnfANSakFRfIBuE1d
         Z/5NXkjLCQ5acg2In28OuVZ0OfKslatUmrufPxFDOjH6CjGSrl0a7Yvirm68hK+Cr7X3
         bDEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P0K8xNuCAr9hgAjuUmjLEADxof/XrqYTqOt6Ejedd/Y=;
        b=YONYbYrkt/Zl6xwp1pPqvK14oN7zTIdOyCFgDtqmcIQ3EzhwhRxEW4kfczAUt4gVfT
         FLQMoxce3gebodfwVuxNPnpAUDP1Kx4q9MzRsvXoYLwkPCpRx7hAa5uHybGAcDjk6WAa
         F+U4AbHQIfV2izA4FoLDuu+hBL8wtNRyX4cEFGtanRGTYnS/8vFYfxjkpMfquORB923J
         hEgg9HQ59z4wIyQ/VArf79v6mYZC+mueggWff1fmNVW11H84b/4ebKOv4f1Ov17Zg5xw
         84WcLj1jmrtponYP3MrIIc28R7CDbqXvL70dJPtXSVHsHc2y/tgwWjQ/rcrQYf+WUfNb
         sX+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW+NYXiR3YgCYh6hwsI/Pcvw6RlOA1YDGJfCfDRwsOvz0LpEr4W
	YEdD4f2fRddJYg24HqjhWz4=
X-Google-Smtp-Source: APXvYqxVYcJ4nYjjgmDdxSeatFDAVtoIJa1aj78l9lg9HXsE1V5mD0+7gfWSgbW5464cdQKdwe/6YA==
X-Received: by 2002:ac5:c4e9:: with SMTP id b9mr2646534vkl.83.1568108334928;
        Tue, 10 Sep 2019 02:38:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e34b:: with SMTP id s11ls1689086vsm.16.gmail; Tue, 10
 Sep 2019 02:38:54 -0700 (PDT)
X-Received: by 2002:a67:e2cf:: with SMTP id i15mr15182267vsm.165.1568108334621;
        Tue, 10 Sep 2019 02:38:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568108334; cv=none;
        d=google.com; s=arc-20160816;
        b=SniMdCbVCt5SdLuAV3z1b3sHXxPHxyvFFkOws/MjluSABXt2s7AxxvH4V+EvxA1Pk5
         CxZrYE/f5dO7IkifhEJsOSSbAAPnI9ePSw80Ou2w22Y5CPVkn53DYIkjQPgon9nbRS8O
         x8fZJg1sKh/4A36uYDkm/i0cCKzjrvdIbm7doMfqBN+tDI3x9FFiXsyifuADmz1fmtsn
         sEa0ylsEeykK1TsdCOoBSU4+T/SClA6deJ+mveYRnavA6w4Qrri2A25BcqImbldRHsc5
         mAlUcL7/qSzuFW7EiTteKxjOMLvq0vgFsorHrRagJ7WzV20Y67ANnLRb4N4aHogqkP4t
         aguw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=7BZdQMWt/4gR8KdMEOxeANPATM7+OW7WAKZb9Cg8SzQ=;
        b=wj0GX6UHGg2OB7jJIIMvGo4KfNDUbZJqeI/H2fTmzsizg/B1Hh5wU4Tmyw6syeO6o2
         E9mFGqB1PIhItTWj5N4U/StGf03cCvKBpUNEuf2FgseBaj3Vu4nXfeCoDTCYBPf0Xgux
         rPmJTBybNjOsfObt719c3bBm4bzWppKrDkcL9wI6gz0hTzDKjsZ1jWq2koqYIo/1JoWF
         LvGVAy3sCY/sYvKz7mKjYcSmxbENc3deYxL9VhKMvHt/ax0E51QDTSKBy2L2TOjuJrZt
         KKW7CRDibXOGjABmp6enmHFT0BtE17DcvDFzJJk6KMzpnvcIvnEFx055gy54Qs9FnMTt
         r2Ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com. [209.85.222.193])
        by gmr-mx.google.com with ESMTPS id 136si1096699vkx.4.2019.09.10.02.38.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 02:38:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as permitted sender) client-ip=209.85.222.193;
Received: by mail-qk1-f193.google.com with SMTP id h126so8586071qke.10
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 02:38:54 -0700 (PDT)
X-Received: by 2002:ae9:ee06:: with SMTP id i6mr7667748qkg.3.1568108334116;
 Tue, 10 Sep 2019 02:38:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190909202153.144970-1-arnd@arndb.de> <20190910092324.GI9720@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190910092324.GI9720@e119886-lin.cambridge.arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 10 Sep 2019 11:38:37 +0200
Message-ID: <CAK8P3a2Vk+KSUGJyPTRuLPD=KPEAR43SZ1ofB6k+KeQi3fSERw@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
To: Andrew Murray <andrew.murray@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Tue, Sep 10, 2019 at 11:23 AM Andrew Murray <andrew.murray@arm.com> wrote:

>
> >  arch/arm64/include/asm/cmpxchg.h | 15 ++++++++-------
> >  1 file changed, 8 insertions(+), 7 deletions(-)
> >
> > diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> > index a1398f2f9994..fd64dc8a235f 100644
> > --- a/arch/arm64/include/asm/cmpxchg.h
> > +++ b/arch/arm64/include/asm/cmpxchg.h
> > @@ -19,7 +19,7 @@
> >   * acquire+release for the latter.
> >   */
> >  #define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)    \
> > -static inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)              \
> > +static __always_inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)\
>
> This hunk isn't needed, there is no BUILD_BUG here.

Right, I noticed this, but it seemed like a good idea regardless given the small
size of the function compared with the overhead of a function call.  We clearly
want these to be inlined all the time.

Same for the others.

> Alternatively is it possible to replace the BUILD_BUG's with something else?
>
> I think because we use BUILD_BUG at the end of a switch statement, we make
> the assumption that size is known at compile time, for this reason we should
> ensure the function containing the BUILD_BUG is __always_inline.
>
> Looking across the kernel where BUILD_BUG is used as a default in a switch
> statment ($ git grep -B 3 BUILD_BUG\( | grep default), most instances are
> within macros, but many are found in an __always_inline function:
>
> arch/x86/kvm/cpuid.h
> mm/kasan/generic.c
>
> Though some are not:
>
> include/linux/signal.h
> arch/arm64/include/asm/arm_dsu/pmu.h
>
> I wonder if there may be a latent mole ready to whack with pmu.h?

Right, it can't hurt to annotate those as well. I actually have another
fixup for linux/signal.h that I would have to revisit at some point.
See https://bugs.llvm.org/show_bug.cgi?id=38789, I think this is
fixed with clang-9 now, but maybe not with clang-8.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2Vk%2BKSUGJyPTRuLPD%3DKPEAR43SZ1ofB6k%2BKeQi3fSERw%40mail.gmail.com.
