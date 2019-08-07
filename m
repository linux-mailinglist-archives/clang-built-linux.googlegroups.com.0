Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPH5VTVAKGQE4HSTLHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E94F9854FD
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 23:12:29 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id p84sf8837752ybc.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 14:12:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565212349; cv=pass;
        d=google.com; s=arc-20160816;
        b=jf+lUufmp/3+1OqQYOnVHCPr5nhmn7Rh0ADbuahsfMYhCu/+aAMp9dYfOT8bgZsFcV
         CwhCPC/+ZtJfIulNOkvUiOxOPPPtNKm+JsXqMsb3i8qzk7cUSFXulI0omH1bAxfFsqZ0
         26H2+YwbIlrw72QlouRK0kc2HqndQSoilwzz+LU7DhKizeDjOQNJn6u8vjIrV7WzFVxj
         hKySy2awgITIKpJ/qphiRtpOxPVESQkh+IureHQHACOwx9eRzccg2ld6Ey4+Z3nQPana
         CspBqe8lVI8FMFpp+TMFFST2BYYvzFF6kIwykPthPjmHtOF74W7VlcYzoI3Syqj9p8YQ
         W3NQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2ru1Q7//8FWRBFUoucFCrPA7xQNfTt8kNoiimhh8/Ck=;
        b=x54BKH3leZd3FX3ZfcNvQNfJT+gxosuOnvA0gntZh/zeIvgifTPULAlM3CO8kkWwmw
         7ey3Gyq9wC12lIK1KKyk24blZY6b8OgJf7PRN7XLZuXZwR00V9g1DOJTzpNX/SzU9GXz
         +lkhRVnDN8GQ9UuZi0PRheLv2m0ntA6dFXv5lH0l8YlcfeRE3H7SGr1jWVVMexDz1Jhu
         Jocw+bUyB3BZakRSybq72w+b2Cx3zJJPnjkHwE8e/ZHHyLwMRdajk+Vxz/tx1fSqC09F
         fYbXgCKslCmFa7wrV6fy9zuvFMBMF/FACsLP8FYNqF/zkXFATfxNhD3iRlTufC8hQEQd
         26gA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rAUbgR3z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ru1Q7//8FWRBFUoucFCrPA7xQNfTt8kNoiimhh8/Ck=;
        b=MQG/BoL8z59XJb3/aadCMbfheEPtfSUIBHBVri1jqFn0MljbLafL/UVg//hYr0uXG/
         vXpHeDts0rbSlgSN/YcrP3DRFRPjzYU+YW1KNkXQpf3Pl+B2ipOQ+VZn8JtOM/KRZrVx
         cgPt7DYEKls561Nh0bx96my6UBa+x5z7ZkvvBN0dCWH6d/YMsvjHSpIAhO0Krt6R40km
         USXdbqMALHjn8ShLjkr9MpI3ruU8LGQtgMGBd2YC/obdn1kNZXLGtjZZ3Hu+tMIcPFa7
         0XHojImC/al0RZT4k9eC6HY1IUj2iwvHF3qSLlebdIfgasv5na9jcF9CliMX2Nt6ASgI
         uksQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ru1Q7//8FWRBFUoucFCrPA7xQNfTt8kNoiimhh8/Ck=;
        b=UWsphJgmRfYwURR67I4zf0B9j/HczSZC3wL6YI9WmIX+2PkrOebIl1JB0zoTPqU8hb
         7FMDZEnHYIOrB2fTVNECOEbn3oOpYlIeUiVlrUfsB38JybkIxWQuNNoOvImQkEL/HlgN
         PnU4Hhvn4E5JCn24jDY+8EuURSPBqBpMaYNtBpDGE8lj/p/E7vvC7+WbZWsPEcGg05iw
         QVClAeN3NNK+KStHKu1ATKLX9g1lEjHTyFJLtwbXvr9qfoqqVZgM3Dqxm/jM5GXM2QzG
         Pva3o5jdCYHUG9oYfNaKNNDJzbUB3rTsLXnmf0PX+qCvsgcXHq6dbl1mMdIWVa8+6Okc
         FD/Q==
X-Gm-Message-State: APjAAAWZlxSKBKRaCK/y/2CJXmfJidJLNjnKK3mjLuC/dHRI5Y8Fnsjw
	4waC/Hzcjkk/xf7PsiP64hg=
X-Google-Smtp-Source: APXvYqzfkexmbTLso/dkfG3HRzXljKhh3nMzhn76io3O26nxC8zCuomKcmRCIp8J0SGwYFF4nTdQwQ==
X-Received: by 2002:a25:dd07:: with SMTP id u7mr7661695ybg.356.1565212348278;
        Wed, 07 Aug 2019 14:12:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:eb83:: with SMTP id u125ls3148312ywe.10.gmail; Wed, 07
 Aug 2019 14:12:27 -0700 (PDT)
X-Received: by 2002:a81:678a:: with SMTP id b132mr7343206ywc.96.1565212347821;
        Wed, 07 Aug 2019 14:12:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565212347; cv=none;
        d=google.com; s=arc-20160816;
        b=Q1Ox1ThkvjL1aS6Fgclcir4JfosC36sysa/uUj7knsshFRBbEoBRlcVVd3v2mzgjB2
         bSokqFVqYOvDic46IRbQuVxNlkpnjHjvTMkCO1VbuZ9Ao6VU0Jx2n0Wm8B9ZkoSditsm
         xC43blJjiCGSJyjlvHbFTDeyOJwLr2aOOGZ+gjppHT6CLQ5eMv3+6MF95hpvC1vdNyWU
         n+cproKo6Ory+yu9wEIpVHFUPU+yBl33pEzhXJY+Zom5R2J/lSG6jfVibLiGVvpfjwhB
         +P5Toc4TQoEd/llWSIOLgQjgEmGQuqNaM6S562zpUuqBSoc4+CHQLJzYfwfKu04mu7Kq
         gq7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fd+dofbpCV/6k5WcFl4oZMCWdF8fj4kR4/a+wjxKmsA=;
        b=he/GYDGT0r+D/caGi91WgTweTDnfKPRPqNY0Sqt76iajsA91vH46zkfgDva8yxLcc+
         AXonNtJGTNHyNPgQfJVeabL1PEn5roSghW5HgGRIK4HvZ7oXS4qMfKJmcNPLuHNTaSZv
         HfpaQNPoZcviq1kzagaXT0+3+Zml6JZRKSYJEUWu+LM7Wh13Q5EA0sLuxNcNLIV6gm5i
         c9lrPvVAJ8/LrHHhISiQ6z6K9pQAZeDmzeVP50AHyG84BTtdJSckVGNZQTtTWdPzWKnR
         8G3ltMckhK/j3KvP+e9I0kIX6Dw7PKMzlytca/wI9lCkDJgHL4tWEypBP2SmVDMXbde6
         ZfUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rAUbgR3z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id r134si806273ybc.4.2019.08.07.14.12.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 14:12:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id t14so42538450plr.11
        for <clang-built-linux@googlegroups.com>; Wed, 07 Aug 2019 14:12:27 -0700 (PDT)
X-Received: by 2002:a17:902:3363:: with SMTP id a90mr9572730plc.119.1565212346434;
 Wed, 07 Aug 2019 14:12:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190729211014.39333-1-ndesaulniers@google.com> <alpine.LFD.2.21.1907292302451.16059@eddie.linux-mips.org>
In-Reply-To: <alpine.LFD.2.21.1907292302451.16059@eddie.linux-mips.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 7 Aug 2019 14:12:15 -0700
Message-ID: <CAKwvOd==SCBrj=cZ7Ax5F87+-bPMS9AtGSxp+NWp_+yDCg4R-A@mail.gmail.com>
Subject: Re: [PATCH] mips: avoid explicit UB in assignment of mips_io_port_base
To: "Maciej W. Rozycki" <macro@linux-mips.org>
Cc: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>, 
	James Hogan <jhogan@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Eli Friedman <efriedma@quicinc.com>, Hassan Naveed <hnaveed@wavecomp.com>, 
	Stephen Kitt <steve@sk2.org>, Serge Semin <fancer.lancer@gmail.com>, 
	Mike Rapoport <rppt@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Michal Hocko <mhocko@suse.com>, linux-mips@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, regehr@cs.utah.edu, 
	Philip Reames <listmail@philipreames.com>, Alexander Potapenko <glider@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rAUbgR3z;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

Sorry for the delayed response, literally sent the patch then went on vacation.

On Mon, Jul 29, 2019 at 3:16 PM Maciej W. Rozycki <macro@linux-mips.org> wrote:
>
> On Mon, 29 Jul 2019, Nick Desaulniers wrote:
>
> > The code in question is modifying a variable declared const through
> > pointer manipulation.  Such code is explicitly undefined behavior, and
> > is the lone issue preventing malta_defconfig from booting when built
> > with Clang:
> >
> > If an attempt is made to modify an object defined with a const-qualified
> > type through use of an lvalue with non-const-qualified type, the
> > behavior is undefined.
> >
> > LLVM is removing such assignments. A simple fix is to not declare
> > variables const that you plan on modifying.  Limiting the scope would be
> > a better method of preventing unwanted writes to such a variable.

This is now documented in the LLVM release notes for Clang-9:
https://github.com/llvm/llvm-project/commit/e39e79358fcdd5d8ad809defaa821f0bbfa809a5

> >
> > Further, the code in question mentions "compiler bugs" without any links
> > to bug reports, so it is difficult to know if the issue is resolved in
> > GCC. The patch was authored in 2006, which would have been GCC 4.0.3 or
> > 4.1.1. The minimal supported version of GCC in the Linux kernel is
> > currently 4.6.
>
>  It's somewhat older than that.  My investigation points to:
>
> commit c94e57dcd61d661749d53ee876ab265883b0a103
> Author: Ralf Baechle <ralf@linux-mips.org>
> Date:   Sun Nov 25 09:25:53 2001 +0000
>
>     Cleanup of include/asm-mips/io.h.  Now looks neat and harmless.

Oh indeed, great find!

So it looks to me like the order of events is:
1. https://github.com/jaaron/linux-mips-ip30/commit/c94e57dcd61d661749d53ee876ab265883b0a103
in 2001 first introduces the UB.  mips_io_port_base is defined
non-const in arch/mips/kernel/setup.c, but then declared extern const
(and modified via UB) in include/asm-mips/io.h.  A setter is created,
but not a getter (I'll revisit this below).  This appears to work (due
to luck) for a few years until:
2. https://github.com/mpe/linux-fullhistory/commit/966f4406d903a4214fdc74bec54710c6232a95b8
in 2006 adds a compiler barrier (reload all variables) and this
appears to work.  The commit message mentions that reads after
modification of the const variable were buggy (likely GCC started
taking advantage of the explicit UB around this time as well).  This
isn't a fix for UB (more thoughts below), but appears to work.
3. https://github.com/llvm/llvm-project/commit/b45631090220b732e614b5530bbd1d230eb9d38e
in 2019 removes writes to const variables in LLVM as that's explicit
UB.  We observe the boot failure in mips and narrow it down to this
instance.

I can see how throwing a compiler barrier in there made subsequent
reads after UB writes appear to work, but that was more due to luck
and implementation details of GCC than the heart of the issue (ie. not
writing code that is explicitly undefined behavior)(and could change
in future versions of GCC).  Stated another way, the fix for explicit
UB is not hacks, but avoiding the UB by rewriting the problematic
code.

> However the purpose of the arrangement does not appear to me to be
> particularly specific to a compiler version.
>
> > For what its worth, there was UB before the commit in question, it just
> > added a barrier and got lucky IRT codegen. I don't think there's any
> > actual compiler bugs related, just runtime bugs due to UB.
>
>  Does your solution preserves the original purpose of the hack though as
> documented in the comment you propose to be removed?

The function modified simply writes to a global variable.  It's not
clear to my why the value about to be modified would EVER be loaded
before modification.

>  Clearly it was defined enough to work for almost 18 years, so it would be
> good to keep the optimisation functionally by using different means that
> do not rely on UB.

"Defined enough" ???
https://youtu.be/Aq_1l316ow8?t=17

> This variable is assigned at most once throughout the
> life of the kernel and then early on, so considering it r/w with all the
> consequences for all accesses does not appear to me to be a good use of
> it.

Note: it's not possible to express the semantics of a "write once
variable" in C short of static initialization (AFAIK, without explicit
violation of UB, but Cunningham's Law may apply).

(set_io_port_base is called in ~20 places)

Thinking more about this while I was away, I think what this code has
needed since 2001 is proper encapsulation.  If you want a variable
that is written from one place only, but readable throughout, then the
pattern I'd use is:

1. declare a getter in a .h file.
2. define/qualify `mips_io_port_base` as `static` and non-const in a
.c file where it's modified.
3. define the getter and setter in the above .c file.

That would rely on linkage to limit the visibility of the symbol for
modification.  But, we'd then need to export the getter, vs the symbol
itself.  There's also on the order of ~20 call sites that would need
to be changed to invoke the getter rather than read the raw variable.
Also, it's unlikely the getter gets inlined across translation units
(short of LTO, which the mainline kernel doesn't support today).

I think my patch here (https://lkml.org/lkml/2019/7/29/1636) is
minimally and much less invasive.

>  Maybe a piece of inline asm to hide the initialisation or suchlike then?

I think that would still be UB as the definition would not be changed;
you'd still be modifying a variable declared const.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%3DSCBrj%3DcZ7Ax5F87%2B-bPMS9AtGSxp%2BNWp_%2ByDCg4R-A%40mail.gmail.com.
