Return-Path: <clang-built-linux+bncBDYJPJO25UGBBO6NY32QKGQEXUHI56Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id DE77F1C5F31
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 19:47:40 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id z18sf3394339ilp.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 10:47:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588700860; cv=pass;
        d=google.com; s=arc-20160816;
        b=kvBvfssyfIH0IVYQRK34tDD7xte7LhW9e1yZNrZuGkBDaGZYGNXGQPbWMM2wNGBZ/d
         743ipb+VHLrxps+NvQ5L6fwpGV7FEHCgQ15nbKcSFU42bQWpmLfUdSu1sSHogwJhN19f
         SIveYLgnm6ag26WdGe4w1Mk0tMVjs/2MxENi8DLpk2l+FZqtGGrpRR3enBfZ7DjC0mTl
         T4UPEWWo3xk6fQueCMAmtHEnspc161855s0AO22yAJ5YgDNLMmohf0w7yM8yrbQ1DbAX
         +/bxb/sdn/wp+IrZFlbioWoYSc8thuzu1DOmNnRM932Ogrb4WMQYGG+0ViIQf4d+nXnc
         j0ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=v7oDx1wHmf+ED6kMJaqLdy2HY4dk+t7zyTXlBTldtPs=;
        b=0fMVtcRxr4iDHGJE2P+kUorL4cQ/IK7G8F738JVK56E7HP3KSwKMw8QP2XgdP8k8eX
         yixhlojtaMdkKb+NhajlvIlC3PpUJuxQeo4xQ2nL8lN5+zuhUqAbs1bfA4bWv2uzJGhk
         8shItLyTxxMs4PweVC2bzqn065eMNw/T+GwFjCWCythY0MGzcNmw7dh5ZBOmhbd2GQqz
         RfntQdLh0vcIB1f0cfe93Bwe3oY6e3RGzp5nbEk+Dgh3+T+Z9TpWQNYEmPF5BLVwPSr0
         KPfKHqWe+uDX6U6dLIFcl0SyQyBRlEqCgdqc/fWwlf6/VBAY/GwXrbhlM7jJzoeCSLPQ
         YY5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ryjj2stn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v7oDx1wHmf+ED6kMJaqLdy2HY4dk+t7zyTXlBTldtPs=;
        b=h7c1sg32sRiFRCOrbuc7KxCVLyLCSdnwW1tMyUQkExGhmQzapw9gX0jYSljAvGb+YE
         lw3G5ByYN5QpH/FLphJb8hwTuDj3VjW6QuGEogzwHKlfN/BlfP+C0RjIM9rDUnqznqnb
         qspUFiYRQX8CbKHPd7g952dxBr638aOAQcsG6i5wKSGNF2h1el6EdE91S7v8xzeOqWlT
         urQG8aPwNAITTWaVbNkizbuXWhqUclGzkVOeWANW7qrIV3IBDQDU0aZTa3GG9FGmjMc/
         6aTkEC3WdUTVJhvoKvTB/sSoynqsjnDZoFtTEHU1aUPe1j3qdqu+r6wkbgVSdo2r/ER/
         /8VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v7oDx1wHmf+ED6kMJaqLdy2HY4dk+t7zyTXlBTldtPs=;
        b=LDiU+HiYLVg+Gd2AF8TdaE1VkbpBa6++Cra+WCpUvwFcdmVOzEsXDuur1Oe4aL0iCK
         yNwKsNsy5flLikhMuwgeXZEJDyKaeKneUXjHkZYVfN9phY4uIfouFIr23gCfnjlM7rTJ
         YuXRKBuXGHWTEHHlmCpWW5vbH5xcJR3bUV8sbUQClvQnronWlg8ir1ZwccAWEiqVi2+B
         C1bmZuoMYv3opTPzSIPAlTxfdHhRwP5GJsAkvMLerzMq+PZ90+6Zqelk4x1szT0aY6YF
         nAVAWBTRpPYQbjJqkMKg9voXnt6OoR675E6pCDX5zp4ZDOnFpKzpprW/op32c6XHp6tZ
         bdnw==
X-Gm-Message-State: AGi0PubeQBviqX3DFsbhYGgnXOFqbVgKFSNXjagPVJJN3a40YKPjR7/q
	JRGtRhf9d43ttsQ8LrWPhYk=
X-Google-Smtp-Source: APiQypKCFi7YK/l2jD/dKJ9pCyIrMWIbF76SOI7ZQxCKIgjdxa0So803GnW3w9wBeIXUg0ifB48urA==
X-Received: by 2002:a92:520f:: with SMTP id g15mr4810057ilb.193.1588700859816;
        Tue, 05 May 2020 10:47:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:cd84:: with SMTP id d126ls929914iog.7.gmail; Tue, 05 May
 2020 10:47:39 -0700 (PDT)
X-Received: by 2002:a5d:8ad9:: with SMTP id e25mr4662890iot.37.1588700859509;
        Tue, 05 May 2020 10:47:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588700859; cv=none;
        d=google.com; s=arc-20160816;
        b=gb6nbJKxUpGqM4OeXuMnp2w7YV2gnDUqM5nWZimuRcLXEDgQfhiI4F1shokwPGYp72
         r/16VADKHOdrfAxU04TTB1pbUFvWWd9bluTwMeg/gwr3GabqKDsEIXwi8faEzYQT0lwg
         SW9hbDPWMs2zSeUYaw7THlfxA1oCmKdHzma5XkdIlY1GAhhBjFZS7sqV2zLBMJTFdluz
         o6Jjtg1ufaY10WX5UUsoIK7eVGlmeqLMYqJJ6EwzevhtAubezkA2MAe7fNusraynhKp4
         fmX7kxGV+eoz/2ihuQT7iCmi3qEgnS0Obro9k4OvjvlXA2wYgcs1wmmWxbZluGHpM4C5
         kgaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E59gdCn7b/m1/us+3FVlm14/hmF9iuj5/6dTwUQ7gS4=;
        b=K2WCWsupRMYYJh4sL7QfPK6zSQXF55S8poc8SrtZK+EFh1/HpT3CHcjPqQn867oSrk
         +RC3R0jMeoHEt+n5oDB7wk2T5R0Gxyyx4mpnL2cgCl5WEiO+4aVU5cfaKDELWDvXjZ7h
         7sMJx3Sqjen40lZz9xu/f4uNRjZdGGrC8h1Lm0q+p8kwQeoPYRD+gwBSXpVLfmnTW4DQ
         yblstxcydgfeSBnZ8NFXJ8sQa1UoFRg6u02HadXvd9vOdkULlEaG5jWtY67tGqNY71PQ
         PApSa931dGVxfXDiK05c+eAOWriVemlzFzASJbn9D+HigZiSxBFAfz5rVcUwLLTpBAn4
         EY1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ryjj2stn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id y87si263563ilk.0.2020.05.05.10.47.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 10:47:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id d22so1343516pgk.3
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 10:47:39 -0700 (PDT)
X-Received: by 2002:a62:146:: with SMTP id 67mr4221059pfb.169.1588700858460;
 Tue, 05 May 2020 10:47:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200310221747.2848474-1-jesse.brandeburg@intel.com>
 <20200504193524.GA221287@google.com> <20200504181443.00007a3d@intel.com>
 <20200505151438.GP185537@smile.fi.intel.com> <CAKwvOdn503VpMu6x5qtmeQrcVnwkAqu6gnoU0Pb99sX98aZPHQ@mail.gmail.com>
In-Reply-To: <CAKwvOdn503VpMu6x5qtmeQrcVnwkAqu6gnoU0Pb99sX98aZPHQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 10:47:28 -0700
Message-ID: <CAKwvOdmPj1jecqD86pT9p6pJYckG5_Q5x0ZWQGyCOj-3J-s=Jw@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] x86: fix bitops.h warning with a moved cast
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>, 
	Dan Williams <dan.j.williams@intel.com>, LKML <linux-kernel@vger.kernel.org>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Ingo Molnar <mingo@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Thomas Gleixner <tglx@linutronix.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Ilie Halip <ilie.halip@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ryjj2stn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Tue, May 5, 2020 at 10:29 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, May 5, 2020 at 8:14 AM Andy Shevchenko
> <andriy.shevchenko@intel.com> wrote:
> >
> > On Mon, May 04, 2020 at 06:14:43PM -0700, Jesse Brandeburg wrote:
> > > On Mon, 4 May 2020 12:51:12 -0700
> > > Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > > Sorry for the very late report.  It turns out that if your config
> > > > tickles __builtin_constant_p just right, this now produces invalid
> > > > assembly:
> > > >
> > > > $ cat foo.c
> > > > long a(long b, long c) {
> > > >   asm("orb\t%1, %0" : "+q"(c): "r"(b));
> > > >   return c;
> > > > }
> > > > $ gcc foo.c
> > > > foo.c: Assembler messages:
> > > > foo.c:2: Error: `%rax' not allowed with `orb'
> > > >
> > > > The "q" constraint only has meanting on -m32 otherwise is treated as
> > > > "r".
> > > >
> > > > Since we have the mask (& 0xff), can we drop the `b` suffix from the
> > > > instruction? Or is a revert more appropriate? Or maybe another way to
> > > > skin this cat?
> > >
> > > Figures that such a small change can create problems :-( Sorry for the
> > > thrash!
> > >
> > > The patches in the link below basically add back the cast, but I'm
> > > interested to see if any others can come up with a better fix that
> > > a) passes the above code generation test
> > > b) still keeps sparse happy
> > > c) passes the test module and the code inspection
> > >
> > > If need be I'm OK with a revert of the original patch to fix the issue
> > > in the short term, but it seems to me there must be a way to satisfy
> > > both tools.  We went through several iterations on the way to the final
> > > patch that we might be able to pluck something useful from.
> >
> > For me the below seems to work:
>
> Yep:
> https://github.com/ClangBuiltLinux/linux/issues/961#issuecomment-623785987
> https://github.com/ClangBuiltLinux/linux/issues/961#issuecomment-624162497
> Sedat wrote the same patch 22 days ago; I didn't notice before
> starting this thread.  I will sign off on his patch, add your
> Suggested by tag, and send shortly.

Started a new thread:
https://lore.kernel.org/lkml/20200505174423.199985-1-ndesaulniers@google.com/T/#u

>
> >
> >
> > diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
> > index b392571c1f1d1..139122e5b25b1 100644
> > --- a/arch/x86/include/asm/bitops.h
> > +++ b/arch/x86/include/asm/bitops.h
> > @@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
> >         if (__builtin_constant_p(nr)) {
> >                 asm volatile(LOCK_PREFIX "orb %1,%0"
> >                         : CONST_MASK_ADDR(nr, addr)
> > -                       : "iq" (CONST_MASK(nr) & 0xff)
> > +                       : "iq" ((u8)(CONST_MASK(nr) & 0xff))
> >                         : "memory");
> >         } else {
> >                 asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
> > @@ -74,7 +74,7 @@ arch_clear_bit(long nr, volatile unsigned long *addr)
> >         if (__builtin_constant_p(nr)) {
> >                 asm volatile(LOCK_PREFIX "andb %1,%0"
> >                         : CONST_MASK_ADDR(nr, addr)
> > -                       : "iq" (CONST_MASK(nr) ^ 0xff));
> > +                       : "iq" ((u8)(CONST_MASK(nr) ^ 0xff)));
> >         } else {
> >                 asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
> >                         : : RLONG_ADDR(addr), "Ir" (nr) : "memory");
> >
> >
> > --
> > With Best Regards,
> > Andy Shevchenko
> >
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmPj1jecqD86pT9p6pJYckG5_Q5x0ZWQGyCOj-3J-s%3DJw%40mail.gmail.com.
