Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPHRZHWAKGQELTLJUTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 97888C2929
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Sep 2019 23:50:54 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id f8sf5994483plj.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Sep 2019 14:50:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569880253; cv=pass;
        d=google.com; s=arc-20160816;
        b=qARja/UlGdMeImt09G4iB6Q7A5OBJpE94Mmv7yA+UCpRi4RVzPXa3IkoLcmuPL+jdE
         clCp/EZ4EeXJ7HHo7D3VvbK+vxTl4iaxsE/iQIVOPUfBhXTm+N0VcBjUlVysyB2mS1/b
         +Q1NgAVaZQTqsQY/i/hVWXDSn7wK0stfO2EcFo3XqWOniWoxc//ehSRPUEVe2UaY6X0b
         mEDtkqwOl/Jrav17gXZeeab3pBllaayGXS7uhgWAZmxhuhKQg5TWIk0aDJceLBg8b32c
         RR2Vkqm3cMfIBjurb0d5bDs8aVFS4FhZmx94exFacMbBhEgKZCWn5G21NL9GUbsnRpja
         8x1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=AV7InQLyPL8mck6bGUtVqyPBLCJj4nxzf/dKUzqBDdE=;
        b=gDlN2kNFS5vHMPkGiHf6RC10LKOedPV6JdZFM74pmSKYSqyHss4dmsMGeY2ywZ3YKK
         7XuXq7H4mBouOTSgSKw/i9tbnS6WFJhC5j5Mdmfr13UofD4YYOhXdx1TS2LuzYczZSSR
         jjsQEdEhgwsaJCLQt/UQMWvHHxKAI76AGyadO/0ChKd6LoraKj1v6HbQ9utLjR11CEym
         O/kB/Y2yrN5AyFOIGxrBose1TUY6e38PF2A3UCeemuBFw/+Qu7z197ZQUSqGKXDI2i4b
         XCTmJZP4lbtZQj0FZdu+aDxjnt4DNPGl4uOwk8YSxsizPrMkLq7e/yqwIUeCE/y8LH6A
         EbdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dEvIbCwB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AV7InQLyPL8mck6bGUtVqyPBLCJj4nxzf/dKUzqBDdE=;
        b=XwtxMrmKD1FDbVK+ZAKnaC9xd/0LDyyVqR453sf/NZb878ka/ekW8Pu8r4zLGNIarb
         0ZnMenRxPtqRkY0kkkHLFuo404xL+Jy7PsN7+5Ord2J5hPuRQjVSxvrHrKGDlt8XhtIv
         7/Ha76cdYgN54SHXySkctHDOloyLEYQczi3onGxE+61VLnzFt4C0zhxPfgqOC3g7ZcL1
         nzpqEX3LDeE2OZiArYljFdRx3QRFeZIKZaMQSs6GWV2zenf3uhc1jJu2MOPvP0/SKeSP
         PPJUYRQ+sNvkazHeBYO/F/d2Mvzsu+ZTRsBoyUueyjsgDUGVdeFCBuqbeKqAM8vpqckK
         NW0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AV7InQLyPL8mck6bGUtVqyPBLCJj4nxzf/dKUzqBDdE=;
        b=Q8R+FxTdRj4F+rr9TAKNp/DYC1Fvq1gkhu3GUrXFsVofZdFbwju/AE7CIpB6RG5Vny
         jhNE6ECazLvDKdPZH1AMfUSCAdg7VrP0h1Z8xNPimpSDzX1NbcKQbMOi3ITyhKxnjtue
         CwAkGgTaa3b3BxsiF63YJlshWwxWfQ2akl0ubRddXs5a0IWjHP9WvaoM9srvfJbHqxYn
         9nwnilwE2I53v+hcNSftmWNAdLOW7Ru+5hfyUhUdS00KJP00cnCZO5ToVhR2ux3VC8vM
         HJ/d0+DRyMhc3xI0CCte+4fmeiMnmvYlDoQD4tqQyGrxp3hU80TYGFX2m/9kGruq4XBB
         Rdhg==
X-Gm-Message-State: APjAAAVK5o7kaiC2MFb7tmhZpx484tBpd8mz4pr+q8pVo+OKzvzIHY26
	WtFId4pwZeWYMmVaMUXGwVM=
X-Google-Smtp-Source: APXvYqzOiztsu63vLVRZpSmJyOV6H3WIj4aMqnx7e05jO7lgjFvyDenxXEnP0HNdQ/GmElL/XCnMTQ==
X-Received: by 2002:a17:90a:b012:: with SMTP id x18mr1606138pjq.118.1569880252650;
        Mon, 30 Sep 2019 14:50:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9786:: with SMTP id o6ls3135916pfp.1.gmail; Mon, 30 Sep
 2019 14:50:52 -0700 (PDT)
X-Received: by 2002:a63:114b:: with SMTP id 11mr26361302pgr.42.1569880252229;
        Mon, 30 Sep 2019 14:50:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569880252; cv=none;
        d=google.com; s=arc-20160816;
        b=DvxPu7+o9XjfqiJJAt4Cshbhk76q3Bz+hA/sPkYctQf7IMa0WDNJbts1zgZu3KxVRc
         oAZ3f7ONtMXGfK5w670k8wpOYEB2UiILWBCBJGE7EfXZ2aK8MXbPFMkAqr1n//Xew63w
         MqZyQYKoFi+v41kaUcg9/Kca7TUODU1ceJMRATq53DYK5Du2mqztYDRNIgMxRcOCDBzp
         pzTrfa26IvFmHo80dHfiQkPMofZC+/odEEmp7llygCKSOLrdKA0O9+TjiQhWDD+Ci5Sp
         QS9YMz4ovOiWdms1wTp/GrEg00VV4F2yDW0iAnvSnCyic5DRU/sTBOy39N/vmMcB7sVA
         2bQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=T6rAQm3fMG2AD3O27CPjeSSBmoYKUioNAFHH6qqlHYs=;
        b=JLqnJ8Hz+zP9w0KjTeWvOtjWCL/WOvFknwgrwtnfetKmIjb5sXC1JuRIJ21wbGXeJQ
         ur72zq6On6mPWOObp0tHxYbwmwzxJAE3pcGYJpRV4vKh7JiDFC0qg4iOdYrZ5UL/dStf
         b5xMRiiYmlhwjv1H9e0W8TQN65WNRFvQmD4XgE+JDHWpUeogK+IZo2GnG6oZqZD12e7x
         Wi83dvZ6xYcKLBB+mkzpTUvznm4EyceWxR26U/woX7zWPIYJWqayB9Kr2g4UXQrOigxL
         ZcNfPjoSq8vRpA4L/xxIWOCeXVGkKQNtiLDpikOidMrsiYmZDorgKJGt5MlA3ZZVd3AQ
         RHfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dEvIbCwB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id br8si17580pjb.3.2019.09.30.14.50.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Sep 2019 14:50:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id y35so8128580pgl.1
        for <clang-built-linux@googlegroups.com>; Mon, 30 Sep 2019 14:50:52 -0700 (PDT)
X-Received: by 2002:a17:90a:178d:: with SMTP id q13mr1567165pja.134.1569880251275;
 Mon, 30 Sep 2019 14:50:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190830034304.24259-1-yamada.masahiro@socionext.com>
 <f5c221f5749e5768c9f0d909175a14910d349456.camel@suse.de> <CAKwvOdk=tr5nqq1CdZnUvRskaVqsUCP0SEciSGonzY5ayXsMXw@mail.gmail.com>
 <CAHk-=wiTy7hrA=LkmApBE9PQtri8qYsSOrf2zbms_crfjgR=Hw@mail.gmail.com>
 <20190930112636.vx2qxo4hdysvxibl@willie-the-truck> <CAK7LNASQZ82KSOrQW7+Wq1vFDCg2__maBEAPMLqUDqZMLuj1rA@mail.gmail.com>
 <20190930121803.n34i63scet2ec7ll@willie-the-truck> <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
In-Reply-To: <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Sep 2019 14:50:39 -0700
Message-ID: <CAKwvOdmfcf16CriM9C09ga7htNN2AKBGuZ_r8FFkr8_gOKdZKw@mail.gmail.com>
Subject: Fwd: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dEvIbCwB;       spf=pass
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

---------- Forwarded message ---------
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, Sep 30, 2019 at 2:50 PM
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Will Deacon <will@kernel.org>, Masahiro Yamada
<yamada.masahiro@socionext.com>, Linus Torvalds
<torvalds@linux-foundation.org>
Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Andrew Morton
<akpm@linux-foundation.org>, Ingo Molnar <mingo@redhat.com>, Borislav
Petkov <bp@alien8.de>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
linux-arch <linux-arch@vger.kernel.org>, LKML
<linux-kernel@vger.kernel.org>, Catalin Marinas
<catalin.marinas@arm.com>, Russell King <rmk+kernel@arm.linux.org.uk>,
Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>


On Mon, Sep 30, 2019 at 5:18 AM Will Deacon <will@kernel.org> wrote:
>
> On Mon, Sep 30, 2019 at 09:05:11PM +0900, Masahiro Yamada wrote:
> > On Mon, Sep 30, 2019 at 8:26 PM Will Deacon <will@kernel.org> wrote:
> > > On Fri, Sep 27, 2019 at 03:38:44PM -0700, Linus Torvalds wrote:
> > > > Soem of that code is pretty subtle. They have fixed register usage
> > > > (but the asm macros actually check them). And the inline asms clobber
> > > > the link register, but they do seem to clearly _state_ that they
> > > > clobber it, so who knows.
> > > >
> > > > Just based on the EFAULT, I'd _guess_ that it's some interaction with
> > > > the domain access control register (so that get/set_domain() thing).
> > > > But I'm not even sure that code is enabled for the Rpi2, so who
> > > > knows..
> > >
> > > FWIW, we've run into issues with CONFIG_OPTIMIZE_INLINING and local
> > > variables marked as 'register' where GCC would do crazy things and end
> > > up corrupting data, so I suspect the use of fixed registers in the arm
> > > uaccess functions is hitting something similar:
> > >
> > > https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91111
> >
> > No. Not similar at all.
>
> They're similar in that enabling CONFIG_OPTIMIZE_INLINING causes register
> variables to go wrong. I agree that the ARM code looks dodgy with
> that call to uaccess_save_and_enable(), but there are __asmeq macros
> in there to try to catch that, so it's still very fishy.
>
> > I fixed it already. See
> > https://lore.kernel.org/patchwork/patch/1132459/
>
> You fixed the specific case above for 32-bit ARM, but the arm64 case
> is due to a compiler bug. As it happens, we've reworked our atomics
> in 5.4 so that particular issue no longer triggers, but the fact remains
> that GCC has been shown to screw up explicit register allocation for
> perfectly legitimate code when giving the flexibility to move code out
> of line.

So __attribute__((always_inline)) doesn't guarantee that code will be
inlined.  For instance in LLVM's inliner, it asks/answers "should I
inline" and "can I inline."  "Should" has to do with a cost model, and
is very heuristic-y.  "Can" has more to do with the transforms, and
whether they're all implemented and safe.  If you if you say
__attribute__((always_inline)), the answer to "can I inline this" can
still be *no*.  The only way to guarantee inlining is via the C
preprocessor.  The only way to prevent inlining is via
__attribute__((no_inline)).  inline and __attribute__((always_inline))
are a heuristic laden mess and should not be relied upon.  I would
also look closely at code that *requires* inlining or the lack there
of to be correct.  That the kernel no longer compiles at -O0 is not a
good thing IMO, and hurts developers that want a short
compile/execute/debug cycle.

In this case, if there's a known codegen bug in a particular compiler
or certain versions of it, I recommend the use of either the C
preprocessor or __attribute__((no_inline)) to get the desired behavior
localized to the function in question, and for us to proceed with
Masahiro's cleanup.

The comment above the use of CONFIG_OPTIMIZE_INLINING in
include/linux/compiler_types.h says:
  * Force always-inline if the user requests it so via the .config.
Which makes me grimace (__attribute__((always_inline)) doesn't *force*
anything as per above), and the idea that forcing things marked inline
to also be __attribute__((always_inline)) is an "optimization" (re:
the name of the config; CONFIG_OPTIMIZE_INLINING) is also highly
suspect.  Aggressive inlining leads to image size bloat, instruction
cache and register pressure; it is not exclusively an optimization.

>
> > The problems are fixable by writing correct code.
>
> Right, in the compiler ;)
>
> > I think we discussed this already.
>
> We did?
>
> > - There is nothing arch-specific in CONFIG_OPTIMIZE_INLINING
>
> Apart from the bugs... and even then, that's just based on reports.
>
> > - 'inline' is just a hint. It does not guarantee function inlining.
> >   This is standard.
> >
> > - The kernel macrofies 'inline' to add __attribute__((__always_inline__))
> >   This terrible hack must end.
>
> I'm all for getting rid of hacks, but not at the cost of correctness.
>
> > -  __attribute__((__always_inline__)) takes aways compiler's freedom,
> >    and prevents it from optimizing the code for -O2, -Os, or whatever.
>
> s/whatever/miscompiling the code/
>
> If it helps, here is more information about the arm64 failure which
> triggered the GCC bugzilla:
>
> https://www.spinics.net/lists/arm-kernel/msg730329.html
>
> Will



--
Thanks,
~Nick Desaulniers


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmfcf16CriM9C09ga7htNN2AKBGuZ_r8FFkr8_gOKdZKw%40mail.gmail.com.
