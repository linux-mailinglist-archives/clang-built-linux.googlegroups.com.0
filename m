Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2PE472AKGQEHIRX5KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3671AE492
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 20:16:10 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id s26sf653437vsl.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 11:16:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587147369; cv=pass;
        d=google.com; s=arc-20160816;
        b=f821WfrutxHaZ+qgFn27xAmPLTES0yGZcON9GeBpK3Ca/akSwcoZDQtC0MQx7VEzjI
         QeU2g0KFbLCdq4WWGAQMmVANbLkGAS+x3w9dHgJup27mm+cRlH1LaZ0R9VXSA7l8h9so
         TP6pqxmLvUYbX4OnvxElqDd03hSKeddIyJ7ACLoeGSI/GQWdL02Q+dgHfsWQd1h5KltX
         bcE0QJbXHyhjE/h1/yxNxaAPH1cC1Jtk3x+0XE+yXLg2K2md5ORKec6Qc0KBSFsPUROt
         GE75JA6G70NWNQmC3KmubITQSHl/CDhjCIwSmxh7ZWYPZRhckCAWDmg083zCGMy3LjgK
         4A7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RR57KcRodS2sQMH8D7QamAXf0x0rXDGyAeXat+tOI+Q=;
        b=McPbICxRFfpJO5V/tf+SOGsDOBWGwj75nQWEZca14M5RDwURjkCo+wEYN7ics3JvcS
         weRiUbPSN+xD/GY5Zzz8jjb8EaRMNtkxTxkZeyV98h01v5VNHl1Jne6qRFC0K0GzsES4
         wkpMm5qH6s5QJmEN6MMvPGDyNu6z88YhvlmJbc3zNgUjP+037AmUsJO5U6kLEpVrMzqn
         FO6z6BoOLeoIKm/QYeb84ATobjrIWinR8EgMZqV/7/s9OXiQR7GAyThxytFM6J0Y/1Wx
         UOci3O8EyR+MseiypcDCKpz8vO/1IZ0yFgFKjq7GpgrJE1gWD1O9blJ9dILmiTrGMGwP
         7sfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QZEIBK4e;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RR57KcRodS2sQMH8D7QamAXf0x0rXDGyAeXat+tOI+Q=;
        b=tkbpCQG1hgChRXqLA4y/Jc0gTrZMEVRNara8MRA3g5Ck0g0ghovI4b/joIvvDr7qWg
         W0L/63bZ8yVg0SQTdThHzDhE9JawAsOVxucUOSSMo5Qk79zhCDf2TBjeMg9dMGzhnXQx
         yHItFiZhcySniw+hiSsVsHWYRc/CySOc5xfgmh1FFt6P8GEqI2bhVgjtCa7hRdu2YFSh
         bh8twP1DPKGK0gzMKm89u4xZdT2J/B0P5jftjHarn2CNJoWMV2/bU8lgEJilrpFPMTls
         xfrJHJhq6yU4ID6a6UhQVSpcjkF985Cu2nD/LwYBb5CQPYKxjZ8oZrIIE00vwP5duXz2
         sJBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RR57KcRodS2sQMH8D7QamAXf0x0rXDGyAeXat+tOI+Q=;
        b=V0CuypF7TOrsbio0mieL5VaZf02aXIcsfPsoqu/I4VlVuIszNX+pDVpeO2OUVU5sBj
         6BG9KmIrp52DAZPPLVAHu+ACfWgbE4dKzS90Lv0zuBAyaOt8gu53PZitJk+MbvKCoH8T
         Bz4F1ozTQKg5sdBKua1Genk/wBCc9h0HqQDGVqqAR5Y8DbLLnJZxQeXQzJP4vzILsplD
         KpUfVEdnnaiI/MEIJaWuu6CBa3DiNUvRRoMxC9MGBdqwNAmMrik8bhy8/qUZil7DMs/7
         x1F+UNbUXARgOZs0Ydvc6bq0pDTC1T2LLgLhR6KakaIqq7+HSRjfbI4yexbrfNI8Rfq3
         6ooQ==
X-Gm-Message-State: AGi0PuaW3RtIX/vd5sA2irzXZxhDz7Y8+1UhSRqWkPhvnTmTlV3IMQXI
	DfH72DztAT7y5HeTmJKxenQ=
X-Google-Smtp-Source: APiQypLAnEUqS0EmpT8zL7j+LlG8+IRFKJnGuppEBNSRyt99bucmuT6OoB5YbQdor3UzOhMHBDV+QA==
X-Received: by 2002:a1f:2d8a:: with SMTP id t132mr3751252vkt.67.1587147369591;
        Fri, 17 Apr 2020 11:16:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:93c6:: with SMTP id v189ls179359vkd.2.gmail; Fri, 17 Apr
 2020 11:16:09 -0700 (PDT)
X-Received: by 2002:a1f:2c50:: with SMTP id s77mr3904017vks.14.1587147369271;
        Fri, 17 Apr 2020 11:16:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587147369; cv=none;
        d=google.com; s=arc-20160816;
        b=OBFz26c1+6G+mE/mUQActPaew9tHE6Uok9M+pY6XpkpQjYT+c+2LfsQ5btJysrLKhl
         ThuZ1pC3RlHET/QIYO/grqFkJJaDg3UQyqupdThWZ98Cz2lPysFTHTthnufojzNWFTiF
         /xea+8cnC/Rz3qsuGZdHnoGS3qJ93Yse+jZJke3Cff1bIktSa98pFpd9X2krej5lwBjM
         aniE7NgMz/2KlCdVBguv78U+jAzhM17sNUN81I5u/rJk36fg5uncZQD2vAjd3Gc3Cucq
         UF/+9cBUcwJugneCrMb+tl3HRErh9Yd+47O42hFgXQk0QZ4XSj1qsaCAZ3fmatMDoK9O
         FJMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=I4fHilet2XhDAMF+As9jlarIXgW0hTCmpDKp2MtvP2w=;
        b=fzbHk6uVtqyUMFLjPNuwOlOP92D5fwkJwt6Ts++huAPSph+isRjINzHMh1HRczDtQs
         csXCYPEWknAAFfI0AVqE68/jutGqPEN155g6acOfCw8vn2i8vgchllqWlwuZVew3sMfX
         6zrZfXwNez15seKeZibcahrp9tzs3O+G5ayOyxw9zwVEhjK8rz/yrQN91UZFikeEW6S/
         CNs9XIjJyufMFVJNJXU2oad4+cfIGs92PS+9dEvbHQNmdDLZhBjc0z0ubMxC1008AKLB
         /eWDvmtG9Lb9Vsi+YMkDpuUTNLvdsXUEoRlMIZgcicKVWGw8RYu9NipHhYx8vSrshFHh
         ZIQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QZEIBK4e;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id s64si752661vkg.1.2020.04.17.11.16.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Apr 2020 11:16:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id b8so1423665pfp.8
        for <clang-built-linux@googlegroups.com>; Fri, 17 Apr 2020 11:16:09 -0700 (PDT)
X-Received: by 2002:a63:6604:: with SMTP id a4mr4037225pgc.381.1587147368501;
 Fri, 17 Apr 2020 11:16:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200328084858.421444-1-slyfox@gentoo.org> <20200413163540.GD3772@zn.tnic>
 <alpine.LSU.2.21.2004141343370.11688@wotan.suse.de> <20200415074842.GA31016@zn.tnic>
 <alpine.LSU.2.21.2004151445520.11688@wotan.suse.de> <20200415231930.19755bc7@sf>
 <20200417075739.GA7322@zn.tnic> <20200417080726.GS2424@tucnak>
 <20200417084224.GB7322@zn.tnic> <20200417085859.GU2424@tucnak> <20200417090909.GC7322@zn.tnic>
In-Reply-To: <20200417090909.GC7322@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 17 Apr 2020 11:15:56 -0700
Message-ID: <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
To: Borislav Petkov <bp@alien8.de>
Cc: Jakub Jelinek <jakub@redhat.com>, Sergei Trofimovich <slyfox@gentoo.org>, Michael Matz <matz@suse.de>, 
	LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QZEIBK4e;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Fri, Apr 17, 2020 at 2:09 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Fri, Apr 17, 2020 at 10:58:59AM +0200, Jakub Jelinek wrote:
> > On Fri, Apr 17, 2020 at 10:42:24AM +0200, Borislav Petkov wrote:
> > > On Fri, Apr 17, 2020 at 10:07:26AM +0200, Jakub Jelinek wrote:
> > > > If you want minimal changes, you can as I said earlier either
> > > > mark cpu_startup_entry noreturn (in the declaration in some header so that
> > > > smpboot.c sees it), or you could add something after the cpu_startup_entry
> > > > call to ensure it is not tail call optimized (e.g. just
> > > >   /* Prevent tail call to cpu_startup_entry because the stack
> > > >      protector guard has been changed in the middle of this function
> > > >      and must not be checked before tail calling another function.  */
> > > >   asm ("");
> > >
> > > That sounds ok-ish to me too.
> > >
> > > I know you probably can't tell the future :) but what stops gcc from
> > > doing the tail-call optimization in the future?
> > >
> > > Or are optimization decisions behind an inline asm a no-no and will
> > > pretty much always stay that way?
> >
> > GCC intentionally treats asm as a black box, the only thing which it does

Yep, that's how I would describe how LLVM see's inline asm, too.

> > with it is: non-volatile asm (but asm without outputs is implicitly
> > volatile) can be CSEd, and if the compiler needs to estimate size, it
> > uses some heuristics by counting ; and newlines.
> > And it will stay this way.

I recently implemented parsing support for `asm inline` in Clang; I
could have sworn I saw code in LLVM parsing newlines for a size
estimate years ago, but when implementing `asm inline`, I couldn't
find it.  And test cases I wrote that used the C preprocessor to
create thousand+ line inline asm strings would always be inlined,
regardless of the `inline` asm qualifier.

Not sure about implied volatility (...inner stock trader had a laugh
at that...) for output-less asm statements.

> >
> > > And I hope the clang folks don't come around and say, err, nope, we're
> > > much more aggressive here.
> >
> > Unlike GCC, I think clang uses the builtin assembler to parse the string,
> > but don't know if it still treats the asms more like black boxes or not.
> > Certainly there is a lot of code in the wild that uses inline asm
> > as optimization barriers, so if it doesn't, then it would cause a lot of
> > problems.
> >
> > Or go with the for (;;);, I don't think any compiler optimizes those away;
> > GCC 10 for C++ can optimize away infinite loops that have some conditional
> > exit because the language guarantees forward progress, but the C language
> > rules are different and for unconditional infinite loops GCC doesn't
> > optimize them away even if explicitly asked to -ffinite-loops.
>
> Lemme add Nick for clang for an opinion:
>
> Nick, we're discussing what would be the cleanest and future-proof
> way to disable stack protector for the function in the kernel which

Oh, this reminds me of commit d0a8d9378d16 ("x86/paravirt: Make
native_save_fl() extern inline"), where the insertion of stack guards
was also causing some pain.

The cleanest solution would be to have function attributes that say
"yes, I know I said -fstack-protector*, but for this one lone function
I really need -fno-stack-protector.  I know what I'm doing and accept
whatever the consequences are."  But maybe the attribute would be
shorter than all that? :P

Compared to playing games with each other's inlining heuristics, that
would be the cleanest and future-proof solution.  (Then we can even
revert d0a8d9378d16, and use such a function attribute.  I somehow
prefer gnu_inline's semantics to ISO C99's extern inline semantics,
and simultaneously hate the problems for which it's used.)

> generates the canary value as gcc10 ends up checking that value due to
> tail-call optimizing the last function called by start_secondary()...
> upthread are all the details.
>
> And question is, can Jakub's suggestions above prevent tail-call
> optimization on clang too and how reliable and future proof would that
> be if we end up going that way?

Sorry, I don't quite follow.  The idea is that an empty asm statement
in foo() should prevent foo() from being inlined into bar()?
https://godbolt.org/z/7xBRGY
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnFXPBJsAUD%2B%2BHtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA%40mail.gmail.com.
