Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP65VX2AKGQEQMSEQTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 784DD19FC5E
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 20:02:40 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id p15sf260470ils.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 11:02:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586196159; cv=pass;
        d=google.com; s=arc-20160816;
        b=NzGlIgnlL3zoGAIkSuQpOdNi3ykJaH1QgGp9/7L59MdJQAfM8QMs3m4zp1EYd43CKo
         kDIVrAoFXKcxfgAlL54K9BkSbsLUTJjU693l4+2r8HRCb+t1L3IQNqMd5Q8og2UNzh2j
         8A0YSGrD8Av8c10FhbW2i90d9+jOHsyaMQcIkY+aOJl3lYDtXU+o0FttA6TGGQMXoQ+F
         EjBwNcTE++e69gPIm3kW/SBVnZtHiHQjH0c7WJuYqYp0aUC+WDZSp61iF6JWAxq8E/zd
         2y0xfWvMQ8muE2LF76+hENX4OLS+RN+b1+rlmjbs8fGU9UAlb89nLpTgmue4CNQXk/JD
         XTMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rtd2Uxs1kkRVioqvnVchHg/OOb/X+Q4VtcFLgMBckgg=;
        b=vKJ/MaTi6NY2cDZM8anwg1wNNpFULP0ON+pUViCaedAgU8PGqHSSXuFqp58Nz+OM21
         4QarIqN0mDArRyVS0Ezx9WJg2NCcpgEs5iF4fBfrjaGbLB/Zvise+d/hU5gTZA3Z18lD
         4IaxHyRcx6TRlx1X4fN28se378nGEMUnbHSsT0/sU5XwMzs4TfrpMAaEJiFuNhLgFsUj
         cuiJPCTP0LsrB9pLwxjMAf0E45wQDyO2RSnw1MgXQQGUBW7eX4bfk4lX5kjusqIgqEPL
         442xnTcaHkB6B+XOySBnIwKhZ9t6vSLW3EXgnhYNUTHH9s5Rqv8AYdcbPzeoFXyu2B1k
         riMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VKzVFvDb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rtd2Uxs1kkRVioqvnVchHg/OOb/X+Q4VtcFLgMBckgg=;
        b=MjZf1YK5Ss3lHMEBGTaQwFiT42Gor0yHV9TanBhh0aPX0dWBq66cYRVuUtsyJY/g/+
         AcDObNFqO5TAanPPHXC4GOWHhruQnq2xJL2ZnuaMebNtxtVAVuiMqjPrYzTNbaY8Qinr
         7pPijq984HsK6ty/39BNHVqNMBa2JaaJyU7R54WfeFq9nQfoF/VEK4rV39HzaHOjhhOX
         UlZoUKkngAeCDyqbgkl0m7M1PY8E2/rOaIJyPFF2wB/5c9aZWNToWl8Ba9EecM2OmOTQ
         zlmzRBhqNTIbadzqMHQJOqOGQ7rFdpyEG6vfFZkvSS6qec8+Qh/roit0e51DNZjQDOZH
         0InA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rtd2Uxs1kkRVioqvnVchHg/OOb/X+Q4VtcFLgMBckgg=;
        b=fFYRA0GluJt0L/kl2Q6vPIva//q0gFP3RuU5s92MElanDrRfFLsUdlqtiOHBHSXVqX
         2HsCs2Vkwbo2x1osbOTMkDbSttJOi+K6Ktn3oz9QYqLxxhgWi0e4XRJC5CgFi8CMahcS
         1VrQxrJrUPB9TQHnGr5GZSIvLhY5HOeSN3KoPIqmJHGRM+GpOi1Fv2ft6eX+P2JnXch1
         cCGuMx79eMuuq6ebdjg5CN/JGyE4Se7VGwrZSIe6VG7bRnrk4Ls7jFdZjqWFTamftdGZ
         dFmNL41hHbp/7lVtT+mCHYVRxX7h/S7uSOyvp7EKtxK4koF6/jQlf9lPiqbPCMrKzhXv
         hACA==
X-Gm-Message-State: AGi0PuajAG0geYlJ0EO8CTw3shUpNPnMb3EZLsMtDoNruusa2k1JmL5E
	3o9q28I9lpWjeM+1hCz5TwM=
X-Google-Smtp-Source: APiQypJR4TxrjPlqTdD0nABCtIN+sMAI8fow9Tu7oKGndwi64rpmY6WjYPtlgcUnmYJOfvmN57Y07A==
X-Received: by 2002:a02:cb5b:: with SMTP id k27mr560275jap.130.1586196159244;
        Mon, 06 Apr 2020 11:02:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3d8d:: with SMTP id k13ls250023ilf.5.gmail; Mon, 06 Apr
 2020 11:02:38 -0700 (PDT)
X-Received: by 2002:a92:3c1c:: with SMTP id j28mr564459ila.304.1586196158793;
        Mon, 06 Apr 2020 11:02:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586196158; cv=none;
        d=google.com; s=arc-20160816;
        b=uf+BJTnIT7kyVIZUScBrbdhZeAhWSN1/Xx7IWV9IaUC1MzxE/sfOmv+Dhoz44ymL3W
         7/jHgCIjMMgIMTv2N2wBvXfLhOqSx0CH+2EMaM+WbqxGR902whTbbsmS0sxYgtTpwa0c
         RRPMRvF+KTuAKOqQIdMJKTPdGGYrMs6MP18U6H8QpV2RilX6EnnGXRdeiXQUa09Ai+MS
         xLVYTqkNdLDnX99wtDoqcZKQ+wae0jNkXRchVhNsJOQ6mvIStqMv41X8Zyt0iF6avZtd
         LNa2LvQcx2SQZR7pzr6DFcK/767z3Qx0AvfsHNPY/ooaP7peUSfFgH3TvS7fJURRlIf2
         yY0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6e1Q4vKzJzmKGtNiNjd8gFNJAJWEC5ayrvQVjXOX/iA=;
        b=TSv42lsuCZOscslg2gydUUrzTeRd/9xifyPjjPbj6ByR3tsoXnQFH6XZYSqLk5E+ie
         1WEkOGscsMiSDYk9d8bXuos5zT8wLB3BLzmucp0xRK16+WJguxBwZN1pwFuJaoHshLxv
         UR42dknb1Qw7+pY42Pc0gO4hCU4//tVg5zbULbhGykNuYBRIuqSSRw7/F8OI4crqjEw+
         XHBcIyv9rVYcpHKMKl2fNA05JN+oG7gTAm6JN/l6WM0QGWbbNaaj8utWmVa12Z4zZ413
         zhSBq1TvDFj0IGdkf9FfhhHhOV9rl0RecUeVwxNSIlWdJ6Wvcpocyp+UlTmJfw4ukohl
         zjCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VKzVFvDb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id t125si57254iof.4.2020.04.06.11.02.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 11:02:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id c23so347313pgj.3
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 11:02:38 -0700 (PDT)
X-Received: by 2002:a63:b954:: with SMTP id v20mr264508pgo.381.1586196157861;
 Mon, 06 Apr 2020 11:02:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200405163052.18942-1-masahiroy@kernel.org> <alpine.LFD.2.21.2004051813150.4156324@eddie.linux-mips.org>
 <CAK7LNATKLcCPYxQZNbrS-jMPg+_BETU0dGv0qYvLqUkJ2fMt5w@mail.gmail.com> <alpine.LFD.2.21.2004061240060.4156324@eddie.linux-mips.org>
In-Reply-To: <alpine.LFD.2.21.2004061240060.4156324@eddie.linux-mips.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 6 Apr 2020 11:02:27 -0700
Message-ID: <CAKwvOdkAXuTPR7Bm4+ai3GcKv+ytes3S2UZxOxqSrRtqkt485Q@mail.gmail.com>
Subject: Re: [PATCH] MIPS: fw: arc: add __weak to prom_meminit and prom_free_prom_memory
To: "Maciej W. Rozycki" <macro@linux-mips.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Linux-MIPS <linux-mips@linux-mips.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Jiaxun Yang <jiaxun.yang@flygoat.com>, 
	Paul Burton <paulburton@kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-mips@vger.kernel.org, =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VKzVFvDb;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Mon, Apr 6, 2020 at 4:54 AM Maciej W. Rozycki <macro@linux-mips.org> wrote:
>
> On Mon, 6 Apr 2020, Masahiro Yamada wrote:
>
> > > > As far as I understood, prom_meminit() in arch/mips/fw/arc/memory.c
> > > > is overridden by the one in arch/mips/sgi-ip32/ip32-memory.c if
> > > > CONFIG_SGI_IP32 is enabled.
> > > >
> > > > The use of EXPORT_SYMBOL in static libraries potentially causes a
> > > > problem for the llvm linker [1]. So, I want to forcibly link lib-y
> > > > objects to vmlinux when CONFIG_MODULES=y.
> > >
> > >  It looks to me like a bug in the linker in the handling of the EXTERN
> > > command.  Why not fix the linker instead?
> [...]
> > I am not sure if this is a bug.
> > Anyway, they decided to not change ld.lld
>
>  Well, maybe that was a conscious decision, however it's a linker feature
> that has been there since forever and projects like Linux can legitimately
> rely on it.  In this case perhaps sticking to other linkers, which have
> the right features, is the right solution rather than trying to turn a
> complex and mature project like Linux upside down (and quite possibly
> introducing bugs and pessimisations on the way) just to match an inferior
> tool.  Adapt your tool to the task, not the task to your tool.

The feature you refer to and the feature Masahiro is referring to are
two separate issues.  If you care to understand the issue Masahiro is
trying to fix, please take the time to read the full discussion:
https://github.com/ClangBuiltLinux/linux/issues/515 and particularly
https://reviews.llvm.org/D63564

>
> > MIPS code is so confusing.
> > There are multiple definitions,
> > and lib.a is (ab)used to hide them.
>
>  It's a standard feature of libraries that a symbol reference is satisfied
> by the first symbol definition encountered.  Any extra ones provided later
> in the link order are ignored.  And we have control over the link order.

Relying on link order is terribly brittle. Renaming a file can cause
your implementation to change, and ties your hands from ever using
things like LTO or newer build systems like ninja.  Static
initialization order is a plague to C and C++.  It's explicitly
undefined behavior you've just admitted you prefer to rely on.  (A
Google search for "static initialization order" wants to autocomplete
to "static initialization order fiasco" which is also an interesting
read; https://www.cryptopp.com/wiki/Static_Initialization_Order_Fiasco).

Masahiro is right that this case has some questionable choices in
terms of redefining symbols with different implementations.  I think
__HAVE_ARCH_STRCPY and friends in lib/string.c is actually the best
pattern for not providing multiple definitions of a symbol, followed
by marking symbols meant to be overridden at link time based on config
as __weak.  He's just trying to help clean this up.

>
> > I fixed another one for MIPS before, and
> > 0-day bot reported this recently.
> >
> >
> > There are lots of prom_meminit() definitions
> > in arch/mips/.
>
>  Naturally, many platforms will have its own, in addition to some generic
> (possibly dummy) one.
>
> > Making the intention clearer is a good thing, IMHO.
>
>  Hmm, what intention?  Can you please be more specific?

That prom_meminit and prom_free_prom_memory are meant to be overridden
by other configs.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkAXuTPR7Bm4%2Bai3GcKv%2Bytes3S2UZxOxqSrRtqkt485Q%40mail.gmail.com.
