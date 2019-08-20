Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJWV6DVAKGQEXBRMH4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AFC96738
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 19:15:20 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id g23sf8542438ioh.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 10:15:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566321319; cv=pass;
        d=google.com; s=arc-20160816;
        b=kdYf/QU0jYRbqXOhwDdV88/xWpHLgPRwVfBMq2LOl2Rbjs5o93ZRJl6jKbvAm2Vl/F
         1pSbaHMAoj4/SEVBaauUGKwT03ZoRYeZ7QEqGnuVecb39v090Q3hThejwj7y+2lU6lMo
         KNLhOUogqIKh/jgYNOGKLUv25XLHC7kJYuCrifuZRai2XTdxUKJoqSIkhVidt6surm7j
         UTfIQHELKaDwA3tK0/+dFBHDFQSX8KlhgAMAVZ3ZQfeudEkZUdD9Ouze9/kLpCkUvbTW
         elzU+usRXyIP6Wel5qWYSwJUquaekv2+3mjo4VlAjsgtqbLgTgCRWf913znrJw0cN3KW
         d1zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UaIfR5viQ8NYykRS+aLfJEVaWttTvO1oWvqyUe9sT5Q=;
        b=lA86ApVpLgGIvETNB4/bi52tQO36bjDYYI7HN9SydQ7znHvXxfDSc57ujmseIzaYlM
         bY/DBFfaroEWEqX+ZGkFju25ot2eHG7/1Jx/6cESWM61JrVx+QyfBJRuASRNdYgilUwg
         o/GmXQXhjdv0AtnY5/y/Yy7ttkhiFr7/ml+YzkgX/AhaFf+pUMIzTgXAM6xtmte/dmNL
         JRLIAeHXvaE30Y62vzDyu1qlSIN82DfkdXP6c/chwwz5n07VkqYoT5flUEgTCHdx0nBy
         BWg8V0qa1YA4gJFepomnjlJPSO3F40a4Kl/n1uZ0cP1HIOeoC5TAztH2PLUASHqGkDIl
         pXVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DpmcUD45;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UaIfR5viQ8NYykRS+aLfJEVaWttTvO1oWvqyUe9sT5Q=;
        b=Wp6NtmRCfokSaV3KiVek96kstvXRIJ0uat4JtZICvpms4/+rF/epG3yU9eLY5Odx4C
         og9bczlm8mtbcmeTvFVMHhA6ybiKnyNXcdwuCxI0eXV/qgDSikTnLpkHvJ3hFpNG0E4R
         G3kmmKoSIdN0KmD5Vjk4/ku1IcjFRSVgckrApjWhbSNNs1X2H/TO7CP2xPbW87Odh1o1
         dBcoaZCZ54YPfvZ7N1uVhe+ECYKCsPcuC4qXZbe1nSTAAMSwfmDSX3EOyQLQl46tarCp
         9FCabXRVclLyumxw2OlO6hsoOdq8fU5As5NncFDL0nHIEj0Ibsq2wWBUaJdKXZOTJQPY
         4QMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UaIfR5viQ8NYykRS+aLfJEVaWttTvO1oWvqyUe9sT5Q=;
        b=CMw3bhbEoWiMZ6ryYJwYhZv7Be55BVoYgnb7mCyMoIIiwDd9amXiTT7FhUaRAUnzPj
         xLWlNxvMeR82tcykWMtt/uGri+zfPEHpoa/6JgcNIxdF/90+IkAmNYXMHDliRNolonw5
         LqJ0uvLIHgKvEYl65CKathwia7vxL6M3VU5qLQ53HcyWmaqYoTAqqb7NzYb92BnhTcYJ
         Wifzt8k+X/WVpOgLXiSAS2+rITu/YnwYDN31rUz5pJ6ElZQoOj23gNw7IPjP4T+dAfAS
         EPNFfzIe9jylJIpd7QZDihudOZ3n/Av5TEWKagc0aEZF98NH/hpa2CHAQdSIvcX3gKOU
         oEzA==
X-Gm-Message-State: APjAAAV8p033c40ziPMQzzL7vSre9UKDQ8y3qRS62WPg0fN6cyKfeU1l
	0eXg+knSxtSOxm8vY8BWdsU=
X-Google-Smtp-Source: APXvYqx0ad3kBHjev81DUvzKKOzwrBD9efnDxAqPKZzGq23ch4o0cui839ZW5yjAWo30r8nNF5zAvQ==
X-Received: by 2002:a02:390c:: with SMTP id l12mr4796137jaa.76.1566321318334;
        Tue, 20 Aug 2019 10:15:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:c601:: with SMTP id f1ls5061371iok.2.gmail; Tue, 20 Aug
 2019 10:15:18 -0700 (PDT)
X-Received: by 2002:a5e:a802:: with SMTP id c2mr27177406ioa.263.1566321318009;
        Tue, 20 Aug 2019 10:15:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566321318; cv=none;
        d=google.com; s=arc-20160816;
        b=gBn0VCrODCf2tBuEoblZyX4L69Al5T1h/EGYQLqSX0++C67tST4FPnv5jJQzoo5F0T
         OaKGLInHTS2E0qruDRITFo/m/QIrbTmJvBKzRW4mt21qSm6VmKo66Gs+1rDaexdOWEBv
         hoFQM/XvXLuBH+kOKprLIVv5Yfla9cyNH8yjYNT76TnovJjG1c33widuJ2+cjEbR+FaX
         o4WU4dibVjpO4l0eMWH4hNHbuvEanKjxx+t5v+8z+kYXn4NH7S5zPhp+KlymZxZ4+/8+
         hoKtNBR4OPZr9RsRPfIfswkC7xUETzP7P2QiT+7GZP1OexwWucifnbOGFbT1MaBDYQ9Q
         mCwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+ZI5If9J9jwZ+aNJSf9GpR6A5shPqD+0/7szQP+tyGE=;
        b=VRLBiTyhF+oNTr6BAxJZprUoctJbc99P0Mnkp+qWqN60kjqDG94Cf9aX4VnV16lUpi
         yh17jP17Bx7PHKt5XnQV3G8kvWCZS5EQj9W36fFJLLQ/zZuJ1aDb2Z1hvIqSTgjEohol
         J+Trqnl+LTRk9MMn+Soh99n/jdUycVH2Nxnv/IZ0deH3U13oNkwCh2d3QVceIVAdeu71
         /4CeZGfXdHWQlTS9CYunTp0fQxBxk0YIazOVvugrb0qTDAsStxXQ8nhu5Or7BXIDqodK
         LGhCjQzntrolvxLljjwc/kR4obOYZrFJssCxd3rQxNi+m7Lot8B2YGTl6yvuLE8v2cb7
         xssw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DpmcUD45;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id m190si720410iof.3.2019.08.20.10.15.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 10:15:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id f19so2661873plr.3
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 10:15:17 -0700 (PDT)
X-Received: by 2002:a17:902:2bc7:: with SMTP id l65mr16896783plb.119.1566321316952;
 Tue, 20 Aug 2019 10:15:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190729211014.39333-1-ndesaulniers@google.com>
 <alpine.LFD.2.21.1907292302451.16059@eddie.linux-mips.org> <CAKwvOd==SCBrj=cZ7Ax5F87+-bPMS9AtGSxp+NWp_+yDCg4R-A@mail.gmail.com>
In-Reply-To: <CAKwvOd==SCBrj=cZ7Ax5F87+-bPMS9AtGSxp+NWp_+yDCg4R-A@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Aug 2019 10:15:05 -0700
Message-ID: <CAKwvOdkXLhEuLiQ_ukE75zEg=Sw5-4BLHHCFqcZ0oyTEX3pWTQ@mail.gmail.com>
Subject: Re: [PATCH] mips: avoid explicit UB in assignment of mips_io_port_base
To: Paul Burton <paul.burton@mips.com>
Cc: Ralf Baechle <ralf@linux-mips.org>, James Hogan <jhogan@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Eli Friedman <efriedma@quicinc.com>, 
	Hassan Naveed <hnaveed@wavecomp.com>, Stephen Kitt <steve@sk2.org>, 
	Serge Semin <fancer.lancer@gmail.com>, Mike Rapoport <rppt@linux.ibm.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Michal Hocko <mhocko@suse.com>, linux-mips@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, regehr@cs.utah.edu, 
	Philip Reames <listmail@philipreames.com>, Alexander Potapenko <glider@google.com>, 
	Alistair Delva <adelva@google.com>, "Maciej W. Rozycki" <macro@linux-mips.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DpmcUD45;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

Hi Paul,
Bumping this thread; we'd really like to be able to boot test another
ISA in our CI.  This lone patch is affecting our ability to boot.  Can
you please pick it up?
https://lore.kernel.org/lkml/20190729211014.39333-1-ndesaulniers@google.com/

On Wed, Aug 7, 2019 at 2:12 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Sorry for the delayed response, literally sent the patch then went on vacation.
>
> On Mon, Jul 29, 2019 at 3:16 PM Maciej W. Rozycki <macro@linux-mips.org> wrote:
> >
> > On Mon, 29 Jul 2019, Nick Desaulniers wrote:
> >
> > > The code in question is modifying a variable declared const through
> > > pointer manipulation.  Such code is explicitly undefined behavior, and
> > > is the lone issue preventing malta_defconfig from booting when built
> > > with Clang:
> > >
> > > If an attempt is made to modify an object defined with a const-qualified
> > > type through use of an lvalue with non-const-qualified type, the
> > > behavior is undefined.
> > >
> > > LLVM is removing such assignments. A simple fix is to not declare
> > > variables const that you plan on modifying.  Limiting the scope would be
> > > a better method of preventing unwanted writes to such a variable.
>
> This is now documented in the LLVM release notes for Clang-9:
> https://github.com/llvm/llvm-project/commit/e39e79358fcdd5d8ad809defaa821f0bbfa809a5
>
> > >
> > > Further, the code in question mentions "compiler bugs" without any links
> > > to bug reports, so it is difficult to know if the issue is resolved in
> > > GCC. The patch was authored in 2006, which would have been GCC 4.0.3 or
> > > 4.1.1. The minimal supported version of GCC in the Linux kernel is
> > > currently 4.6.
> >
> >  It's somewhat older than that.  My investigation points to:
> >
> > commit c94e57dcd61d661749d53ee876ab265883b0a103
> > Author: Ralf Baechle <ralf@linux-mips.org>
> > Date:   Sun Nov 25 09:25:53 2001 +0000
> >
> >     Cleanup of include/asm-mips/io.h.  Now looks neat and harmless.
>
> Oh indeed, great find!
>
> So it looks to me like the order of events is:
> 1. https://github.com/jaaron/linux-mips-ip30/commit/c94e57dcd61d661749d53ee876ab265883b0a103
> in 2001 first introduces the UB.  mips_io_port_base is defined
> non-const in arch/mips/kernel/setup.c, but then declared extern const
> (and modified via UB) in include/asm-mips/io.h.  A setter is created,
> but not a getter (I'll revisit this below).  This appears to work (due
> to luck) for a few years until:
> 2. https://github.com/mpe/linux-fullhistory/commit/966f4406d903a4214fdc74bec54710c6232a95b8
> in 2006 adds a compiler barrier (reload all variables) and this
> appears to work.  The commit message mentions that reads after
> modification of the const variable were buggy (likely GCC started
> taking advantage of the explicit UB around this time as well).  This
> isn't a fix for UB (more thoughts below), but appears to work.
> 3. https://github.com/llvm/llvm-project/commit/b45631090220b732e614b5530bbd1d230eb9d38e
> in 2019 removes writes to const variables in LLVM as that's explicit
> UB.  We observe the boot failure in mips and narrow it down to this
> instance.
>
> I can see how throwing a compiler barrier in there made subsequent
> reads after UB writes appear to work, but that was more due to luck
> and implementation details of GCC than the heart of the issue (ie. not
> writing code that is explicitly undefined behavior)(and could change
> in future versions of GCC).  Stated another way, the fix for explicit
> UB is not hacks, but avoiding the UB by rewriting the problematic
> code.
>
> > However the purpose of the arrangement does not appear to me to be
> > particularly specific to a compiler version.
> >
> > > For what its worth, there was UB before the commit in question, it just
> > > added a barrier and got lucky IRT codegen. I don't think there's any
> > > actual compiler bugs related, just runtime bugs due to UB.
> >
> >  Does your solution preserves the original purpose of the hack though as
> > documented in the comment you propose to be removed?
>
> The function modified simply writes to a global variable.  It's not
> clear to my why the value about to be modified would EVER be loaded
> before modification.
>
> >  Clearly it was defined enough to work for almost 18 years, so it would be
> > good to keep the optimisation functionally by using different means that
> > do not rely on UB.
>
> "Defined enough" ???
> https://youtu.be/Aq_1l316ow8?t=17
>
> > This variable is assigned at most once throughout the
> > life of the kernel and then early on, so considering it r/w with all the
> > consequences for all accesses does not appear to me to be a good use of
> > it.
>
> Note: it's not possible to express the semantics of a "write once
> variable" in C short of static initialization (AFAIK, without explicit
> violation of UB, but Cunningham's Law may apply).
>
> (set_io_port_base is called in ~20 places)
>
> Thinking more about this while I was away, I think what this code has
> needed since 2001 is proper encapsulation.  If you want a variable
> that is written from one place only, but readable throughout, then the
> pattern I'd use is:
>
> 1. declare a getter in a .h file.
> 2. define/qualify `mips_io_port_base` as `static` and non-const in a
> .c file where it's modified.
> 3. define the getter and setter in the above .c file.
>
> That would rely on linkage to limit the visibility of the symbol for
> modification.  But, we'd then need to export the getter, vs the symbol
> itself.  There's also on the order of ~20 call sites that would need
> to be changed to invoke the getter rather than read the raw variable.
> Also, it's unlikely the getter gets inlined across translation units
> (short of LTO, which the mainline kernel doesn't support today).
>
> I think my patch here (https://lkml.org/lkml/2019/7/29/1636) is
> minimally and much less invasive.
>
> >  Maybe a piece of inline asm to hide the initialisation or suchlike then?
>
> I think that would still be UB as the definition would not be changed;
> you'd still be modifying a variable declared const.
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkXLhEuLiQ_ukE75zEg%3DSw5-4BLHHCFqcZ0oyTEX3pWTQ%40mail.gmail.com.
