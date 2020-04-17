Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3XH472AKGQERMCKHLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id B84AA1AE4AF
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 20:22:39 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id 8sf1230281uak.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 11:22:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587147758; cv=pass;
        d=google.com; s=arc-20160816;
        b=xRcjoSa1dZ1kHLrrPEO5kVkaMXHQrYU1jzMNrDRFNilWW7wADryHd7TPVvZXggzzb+
         pEOHP1LmgaNCjJ55QIJXC0VjhM6gKyDlTtHf767+WO+RWsjvAa65SNVp8hTfr1Ij5bzU
         UXRT/l5d0Dh162lQZJJRWc+JDtg+ac6zDNFAIHZFPyMYQvIibKaeckL4czgehfsHuWd7
         GI/gA2iYTnA1vIeUur4dKOFG+tYR3/Awu7G0jO2P5mAIlMJfHxxF6pSzhNAU1YsAsOH/
         1sMbrINvDIUni+j5cZdwn2ZlQRJ9XFLLVFYCGaO9aa2Nta4yqK/ANCcvH34T0cHxNpAQ
         n5cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2OYYCOpx+hKXNMBIrsaHcbDCV6WbKVVVgln2CByD3oQ=;
        b=zdfzoFITb5Bodi89uOMVekvczhXVt3ERu7w697WsrfmDANX8OYeudU4EDefGf0EwBT
         VoLFWc5iTkntsN6NLiLrJBUJ+KQbGN36ZSyCKsXynJF6GTIWVbzLh/NuSXv2kU6xsexv
         JN74/ki7fjc7JHXiBTO4mvAJiuLtyvy/LgOpMEZDdwx6LXN75Z5P+yoBwIdCC7XQ4JQQ
         XtP2oOYwzwDYQk7cIH9HX17L2mle/yRSyM0FWIgJjB1ueTtPTjhv5mh/wyRfvWlhFeuF
         j3hUQq5mOO/FQdB0zuERdqN8NtK4CC31eiEcbHX2DQ9Gq93AKtFtMohE0uLtauYbKKjV
         eI8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AJDqMlnJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2OYYCOpx+hKXNMBIrsaHcbDCV6WbKVVVgln2CByD3oQ=;
        b=pIhQzvJ+inAUeFkhlTk5Z6kKA6+Z7gjSYn8N+UjOqVuUssQRj4dG+H60akz9TttMIl
         yAzvRch9xu2iX7hJHJTYcuoUFBnB2+uIIg+Y44KCVeOyBy7F8HwFC5YxOr6KdBNbM2Pt
         BkH9K/zFgW3sXTokwXXIx0FrGkXifheFNq7/0/g5M623AFbs0g8pZQBJLtNW4q6s6fWP
         z2NblSFwvZG4RV7yAhHS5UDbGj42BH8h5OGqbeXgR0481nstFoKsy6KPUfSefOIkkI/F
         aVnEGB56Zw/gJ0SHjae6jrV77To7hKZbsQMHgsJ3wgIr61wKKisBTO1ZPz7fiRReW/TP
         svhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2OYYCOpx+hKXNMBIrsaHcbDCV6WbKVVVgln2CByD3oQ=;
        b=YTotEbXYBvBV+gjhT3hrzzbt5EJC3leWRPT1xM+J6xlZZ2tY75kkhUA4uOYLx2oOwL
         Dm93fenwqLMI4Q5vpdFIx2yOt3pRgddMHtOz+apIxaxJ930aYXSGp4FunIW3EqpmsDaP
         A3z9ub0BJYokczcXDGeTyqOtTWO0v73+hXwFwC2nxjrxafuJ64uqwhifRaKBrz0jd9LJ
         VpBn1WWM3au2slYWl0CxIWeou6OooMtSq91wubVfWvXdqax9epQ/T/NR+yXDxBzp++K9
         gvCb3rRq4WqNHvkkfwtIVDZmiFPn3lNalQ5fxSq0nlkF7/NCDYO5iGpWat4ZRa6ue8Yq
         52Bg==
X-Gm-Message-State: AGi0Pubj27tiJFsNYpdxyPyRon0E2OYWQIEKuf9SfJopDTMJRhGm2zA/
	tslSYMcBtzXCYdtzR8FOAuI=
X-Google-Smtp-Source: APiQypLSL7SxXayRBZmNTRh5GcLkI/PIPAQfLsjlbdGCar/5hO6IMu+t5zWQNZwkktyw0CnlgkUyqA==
X-Received: by 2002:a67:e1d3:: with SMTP id p19mr3827540vsl.232.1587147758525;
        Fri, 17 Apr 2020 11:22:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:114b:: with SMTP id j11ls465817vsg.6.gmail; Fri, 17
 Apr 2020 11:22:38 -0700 (PDT)
X-Received: by 2002:a67:fad8:: with SMTP id g24mr3532448vsq.162.1587147758143;
        Fri, 17 Apr 2020 11:22:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587147758; cv=none;
        d=google.com; s=arc-20160816;
        b=ggaFC+8hHknhmULZIiUTpBBhaYssY4L6NS74kjhHJLH5RUwUzy8CnSv4Qi3E+di3Gt
         PTNAbr/OJIEb2bzG48XozpiglXFjWjvL3OS8/DzCVFwBLUyFGCVvoIpuIMlvZEi5j0dU
         bfxt+xfA2OvkTeO9kecONBNWsUsgqkgbNpPC8Yit980YOyWe8HXOn4HwLr9sz8YnjxOA
         6WuoNjdmN9TYqWyxpScxdASJKvJkGMCBBkfxlCiwvxz9IAK/2Q8UVfvsTSCKbSrPPCiy
         tq0b76uTt1O8RRcoOYA09XDrIQAvQKTHqJ0BgjJDbQuwfxlqi6Ak5V+CskG+8mDh712f
         gttQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kTzWguc+avRhOZx3vuoNZJuv5gp1dk41dGxek09V0S4=;
        b=SDeF7XgsHj3J9nSmEKX4O6gI1Ft+Pox1S+EdN64vkMRsnXTZGyMttBgjAjqXkFobLP
         gVnX6R/OUq9NO2Ed1trZ3rclUrKasp070LmHhwNSVVNsXsV/2t5WQxyvXHOZ3hRyM4/i
         YUe8WTgoE7HNOpAGw5fqsqIbYkcZRzkAjrAiw8PdNlZzYfUWqt6/W3DpQmZ9C3lHLZNT
         4ZmaeMYSRDimtlehqTT19Qr9K1r0iYgqSaUy0y6aG7Mx6QnxlE0fWGHIsU5Fmks8Af9m
         SWpMxIZo+HA/bDBC8+ykcNuT4qld4+6VMMG46We5pfeMr4E4k9TbTmV2UiqoOAF3WNrQ
         lkVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AJDqMlnJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id a205si1088630vsd.2.2020.04.17.11.22.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Apr 2020 11:22:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id u9so1427610pfm.10
        for <clang-built-linux@googlegroups.com>; Fri, 17 Apr 2020 11:22:38 -0700 (PDT)
X-Received: by 2002:a62:2a85:: with SMTP id q127mr4440579pfq.108.1587147756918;
 Fri, 17 Apr 2020 11:22:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200328084858.421444-1-slyfox@gentoo.org> <20200413163540.GD3772@zn.tnic>
 <alpine.LSU.2.21.2004141343370.11688@wotan.suse.de> <20200415074842.GA31016@zn.tnic>
 <alpine.LSU.2.21.2004151445520.11688@wotan.suse.de> <20200415231930.19755bc7@sf>
 <20200417075739.GA7322@zn.tnic> <20200417080726.GS2424@tucnak>
 <20200417084224.GB7322@zn.tnic> <20200417085859.GU2424@tucnak>
 <20200417090909.GC7322@zn.tnic> <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
In-Reply-To: <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 17 Apr 2020 11:22:25 -0700
Message-ID: <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=AJDqMlnJ;       spf=pass
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

On Fri, Apr 17, 2020 at 11:15 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Apr 17, 2020 at 2:09 AM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Fri, Apr 17, 2020 at 10:58:59AM +0200, Jakub Jelinek wrote:
> > > On Fri, Apr 17, 2020 at 10:42:24AM +0200, Borislav Petkov wrote:
> > > > On Fri, Apr 17, 2020 at 10:07:26AM +0200, Jakub Jelinek wrote:
> > > > > If you want minimal changes, you can as I said earlier either
> > > > > mark cpu_startup_entry noreturn (in the declaration in some header so that
> > > > > smpboot.c sees it), or you could add something after the cpu_startup_entry
> > > > > call to ensure it is not tail call optimized (e.g. just
> > > > >   /* Prevent tail call to cpu_startup_entry because the stack
> > > > >      protector guard has been changed in the middle of this function
> > > > >      and must not be checked before tail calling another function.  */
> > > > >   asm ("");
> > > >
> > > > That sounds ok-ish to me too.
> > > >
> > > > I know you probably can't tell the future :) but what stops gcc from
> > > > doing the tail-call optimization in the future?
> > > >
> > > > Or are optimization decisions behind an inline asm a no-no and will
> > > > pretty much always stay that way?
> > >
> > > GCC intentionally treats asm as a black box, the only thing which it does
>
> Yep, that's how I would describe how LLVM see's inline asm, too.
>
> > > with it is: non-volatile asm (but asm without outputs is implicitly
> > > volatile) can be CSEd, and if the compiler needs to estimate size, it
> > > uses some heuristics by counting ; and newlines.
> > > And it will stay this way.
>
> I recently implemented parsing support for `asm inline` in Clang; I
> could have sworn I saw code in LLVM parsing newlines for a size
> estimate years ago, but when implementing `asm inline`, I couldn't
> find it.  And test cases I wrote that used the C preprocessor to
> create thousand+ line inline asm strings would always be inlined,
> regardless of the `inline` asm qualifier.
>
> Not sure about implied volatility (...inner stock trader had a laugh
> at that...) for output-less asm statements.
>
> > >
> > > > And I hope the clang folks don't come around and say, err, nope, we're
> > > > much more aggressive here.
> > >
> > > Unlike GCC, I think clang uses the builtin assembler to parse the string,
> > > but don't know if it still treats the asms more like black boxes or not.
> > > Certainly there is a lot of code in the wild that uses inline asm
> > > as optimization barriers, so if it doesn't, then it would cause a lot of
> > > problems.
> > >
> > > Or go with the for (;;);, I don't think any compiler optimizes those away;
> > > GCC 10 for C++ can optimize away infinite loops that have some conditional
> > > exit because the language guarantees forward progress, but the C language
> > > rules are different and for unconditional infinite loops GCC doesn't
> > > optimize them away even if explicitly asked to -ffinite-loops.
> >
> > Lemme add Nick for clang for an opinion:
> >
> > Nick, we're discussing what would be the cleanest and future-proof
> > way to disable stack protector for the function in the kernel which
>
> Oh, this reminds me of commit d0a8d9378d16 ("x86/paravirt: Make
> native_save_fl() extern inline"), where the insertion of stack guards
> was also causing some pain.
>
> The cleanest solution would be to have function attributes that say
> "yes, I know I said -fstack-protector*, but for this one lone function
> I really need -fno-stack-protector.  I know what I'm doing and accept
> whatever the consequences are."  But maybe the attribute would be
> shorter than all that? :P
>
> Compared to playing games with each other's inlining heuristics, that

s/inlining/tail call/

> would be the cleanest and future-proof solution.  (Then we can even
> revert d0a8d9378d16, and use such a function attribute.  I somehow
> prefer gnu_inline's semantics to ISO C99's extern inline semantics,
> and simultaneously hate the problems for which it's used.)
>
> > generates the canary value as gcc10 ends up checking that value due to
> > tail-call optimizing the last function called by start_secondary()...
> > upthread are all the details.
> >
> > And question is, can Jakub's suggestions above prevent tail-call
> > optimization on clang too and how reliable and future proof would that
> > be if we end up going that way?
>
> Sorry, I don't quite follow.  The idea is that an empty asm statement
> in foo() should prevent foo() from being inlined into bar()?

s/inlined/tail called/

> https://godbolt.org/z/7xBRGY

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw%40mail.gmail.com.
