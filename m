Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6E62P2AKGQEFW24VDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 9979E1A6D84
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 22:45:45 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id e203sf8550322oif.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 13:45:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586810744; cv=pass;
        d=google.com; s=arc-20160816;
        b=GqrbU0g7G/+m0OO79aK8Fgw8k6GmW/v2937qjScWbd6tTC3aanzVGgfOD8WQTNPJ4p
         qtZp7uQs4Jj/TXDSF2FUhKC30UqBdjDiFFpyskwCy8Hsr/y/+gN/i8ITGqtPPmLBElUb
         esluppK+qVelIqPtkttcR/O4cxkyF3oJAkluWg7aOHeoe7qLYTQeGQKgIm/ok/dZkjRm
         ZzMPLROlFecO/zRuLwR2mEVyqoclveLJ3YV57dizl9t2qt7OcR7U5ULOQ6k2TCwtm3Bd
         miS0sw5Fn49I8UJmrsWs9e/LV5jIbjiViVD0oWLgNcMaCCCsEqOwLLLkkIo6VF5rBBZP
         79qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tEBdrj9DNPzr3XXc3ZjkUWt5PQQrjuMlMS+C0cqKk1g=;
        b=KeYDemMpbKfdej5FicUjB4SAYPZpkME/SQC/I2NgbtbY7R2CgrWySheNnM6GD2OtXY
         TaQUwLF4qMz7AXyfoCivGlSWDZ2cSG1W0zLAxnuPohYko8AzAyZqnvmuHd87j+6umpd7
         ZS7neDkyBNVjFyrAi+OTQuQCDm08uktiBGimihbFF+A155ARn9YP/hPph07FBGpZGAuo
         eTxygroBQU8B6dmBaLkkLzjxj1APab4AiMvrh94ppi76DzqgREYDhJvk9JuFMidmT1hM
         IknooH7pzavZxLohLaHDT/4fK9cFJtGdO1vEjKqbc6meehgMtPq3Ue9L1UVzRrgbVm5H
         F0mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MxUKlu72;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tEBdrj9DNPzr3XXc3ZjkUWt5PQQrjuMlMS+C0cqKk1g=;
        b=T/nAiOAWcXCMvOHkufwnB982wxAfVZk6sMge5Qp9FborEwSm330TPBb41PdWmChpne
         ehS93CuX3y+AMvF5s4vkr3jsICmb3KTRNevL46SpTsXyUEAfM9NaX7SfKv002GFhNwy4
         5C75pcPBIht4375Z8AzKG0hkhfvlZjty3A6OM+QVPouJsL4ZWxaNvPmTJc1VUgXg5VKj
         pA8/Z2kmGk6yUhjxBx3eJuUVHBF1xa0NvQrNx7jnf9O6NFrkkdso0LiD5mv451nw/PZk
         iDo4bGAsHUthtoMrpPu9oXXjBVdirfggRgWV46ce+aIipkGVvzLYpvxw5VQ2hbX8Eh9S
         MUhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tEBdrj9DNPzr3XXc3ZjkUWt5PQQrjuMlMS+C0cqKk1g=;
        b=ItBIN8RJBgb5fyr8USjSIz5Xif92mfUAg2ghRet2bTKhgZe/Wl3tEd/RDZ6LL/QAue
         SQEli6R9bK5I2kwJeFPmtCiniyUHLd5ccBS46FG6Zqeivsbmx5A+fA525gYfkFqThOyS
         9t2BtdG6EsoepLTiFYpcG/4ezCFqn1RBRbvAExk+nE4X0ElywZ0syYIF8copj1XoXusz
         vKRaDAQCtQHQ0JA9+v94a9fjVVAcAmKDcUjMYm0LuBki3Li/bn9LKl31tTqgqszZr9+K
         k8vI4O2nCGYtjY1owpLxNNnlq251iqWek5mdefg9nvRR4c8N5dqa9/pJ8wbFM1z4tT+H
         VMXQ==
X-Gm-Message-State: AGi0Pubau1pM4C6Pj8+Qp5UN2Bu0XiuACAAauZD1szYQHR6PQm/eEHRb
	sZSqcZ2vXkXzh6PQYFMefMM=
X-Google-Smtp-Source: APiQypKWw2N46PEbm/YlvsyWyNKik2ryzRY71XYN7/eUPgwPzgzKxnUAUW5NBh/lL+C0w/CMxxS5eA==
X-Received: by 2002:a05:6808:90f:: with SMTP id w15mr13455119oih.0.1586810744534;
        Mon, 13 Apr 2020 13:45:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4887:: with SMTP id v129ls219768oia.0.gmail; Mon, 13 Apr
 2020 13:45:44 -0700 (PDT)
X-Received: by 2002:aca:4d86:: with SMTP id a128mr13246413oib.96.1586810744214;
        Mon, 13 Apr 2020 13:45:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586810744; cv=none;
        d=google.com; s=arc-20160816;
        b=qNOspV/47iBL2vd7FWhaSLOtJyFDEjaWCjje7LsITL23rj0QSm/7DFGBrA3ZtIOIzu
         UidXJnpqgCI/19sXaGHok2v1QMnG3dTRrxmVK3A9B+m31aOuvsD38HqFlY4H7kulEOHw
         szGWYcjXrzaQC7871Y3Q9z+9OzveodCmhZfCgETvubgVqqZtfjgBvoXx/u9RuhaM1hJ0
         cfMBB+Iq1YCPVNuMLKrEF11K/C685bcJSKgQ2i3sBUX0v60yw+0gKFMc0ptWJTO93NKw
         FFeKxbzsYDI1eDgyYJMxgCAqz9mvea23Qhs5oR3wTxy7jqObGaBbwwmyZNnfQZG2XDYp
         +01w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=s4y7no5cyj/YT4NaiWheMZjYGgfrIItnmovUhjd8zTY=;
        b=aF66XQX+i5V4SiwmPv6iZCdLZOE/Rc+RpIyrba/8oQj1msnkmo56kDRkOdm3Hhmoej
         NZTibfWRSgwSCZDcRg8xsnVLlkJX/erY/CohkUS5mdxFrmBW9Dk3xbD8JCcuUl0jYVA7
         HtEc1o9ZeoLnch60AepxRIPBMnZXgpNIzJ+fgvznHrRk27BlUYRqLuca6DwDkFgvl9g3
         zEUL7/RoXSghQEImYuna3WDKnKMRA0qj9n2QlXvNr3aCDnWvqzHgiJLr9E7T+Am54Ycb
         o/kNifUqq0gV9hn9rLa0REyutH5jJ9SBSQJqhx9yA2rQ1Fk2NCJtR/+V2sddFpT4SPgN
         Ep1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MxUKlu72;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id q18si384072otg.4.2020.04.13.13.45.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 13:45:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id g2so3838445plo.3
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 13:45:44 -0700 (PDT)
X-Received: by 2002:a17:902:7e42:: with SMTP id a2mr8760793pln.223.1586810743007;
 Mon, 13 Apr 2020 13:45:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk> <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
In-Reply-To: <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Apr 2020 13:45:30 -0700
Message-ID: <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Ard Biesheuvel <ardb@kernel.org>, Kristof Beyls <Kristof.Beyls@arm.com>, 
	Stephen Hines <srhines@google.com>, Luis Lozano <llozano@google.com>
Cc: Russell King - ARM Linux admin <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, Jian Cai <caij2003@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Peter Smith <Peter.Smith@arm.com>, 
	Stefan Agner <stefan@agner.ch>, David Howells <dhowells@redhat.com>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Manoj Gupta <manojgupta@google.com>, 
	Benjamin Gaignard <benjamin.gaignard@linaro.org>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Sami Tolvanen <samitolvanen@google.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>, "Steven Rostedt (VMware)" <rostedt@goodmis.org>, 
	Jian Cai <jiancai@google.com>, Doug Anderson <armlinux@m.disordat.com>, 
	Dan Williams <dan.j.williams@intel.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Patrick Bellasi <patrick.bellasi@arm.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MxUKlu72;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Fri, Apr 10, 2020 at 6:09 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Fri, 10 Apr 2020 at 14:33, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Fri, Apr 10, 2020 at 01:15:08PM +0200, Ard Biesheuvel wrote:
> > > On Fri, 10 Apr 2020 at 11:56, Arnd Bergmann <arnd@arndb.de> wrote:
> > > >
> > > > On Fri, Apr 10, 2020 at 1:28 AM Jian Cai <caij2003@gmail.com> wrote:
> > > > >
> > > > > iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> > > > > Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
> > > > > kernel.
> > > > >
> > > > > Signed-off-by: Jian Cai <caij2003@gmail.com>
> > > >
> > > > It clearly makes sense to limit the Kconfig option to compilers that
> > > > can actually build it.
> > > > A few questions though:
> > > >
> > > > - Given that Armada XP with its PJ4B was still marketed until fairly
> > > > recently[1],
> > > >   wouldn't it make sense to still add support for it? Is it a lot of work?
> > > >
> > >
> > > The part of that file that the assembler chokes on hasn't been touched
> > > by anyone since Nico added it 15+ years ago. It can only be built in
> > > ARM mode, and it disassembles to the sequence below (the ld/st fe/fp
> > > mnemonics are not document in recent versions of the ARM ARM, and
> > > aren't understood by Clang either)
> >
> > For older CPUs, it doesn't matter what the latest ARM ARM says, the
> > appropriate version of the ARM ARM is the one relevant for the CPU
> > architecture.  This is a mistake frequently made, and it's been pointed
> > out by Arm Ltd in the past (before ARMv6 even came on the scene) that
> > keeping older revisions is necessary if you want to be interested in
> > the older architectures.
> >
> > However, there's an additional complication here: DEC's license from
> > Arm Ltd back in the days of StrongARM allowed them to make changes to
> > the architecture - that was passed over to Intel when they bought that
> > part of DEC.  Consequently, these "non-Arm vendor" cores contain
> > extensions that are not part of the ARM ARM.  iWMMXT is one such
> > example, which first appeared in the Intel PXA270 SoC (an ARMv5
> > derived CPU).
> >
> > In fact, several of the features found in later versions of the ARM
> > architecture came from DEC and Intel enhancements.
> >
> > If your compiler/assembler only implements what is in the latest ARM
> > ARM, then it is not going to be suitable for these older CPUs and
> > alternate vendor "ARM compatible" CPUs.
> >
>
> Indeed, and I'm a bit disappointed at the willingness to leave stuff
> by the wayside, especially since Clang's integrated assembler has no
> other benefit to it than being built into the compiler.

I don't disagree.  I also wish LLVM had a backend for every
architecture that GCC does.  But resources are finite and there are
more fires than firemen.  It gets really hard to justify a high
priority for certain things over others.  Doubly-so for hardware no
longer in production.  Triply-so when the ISA vendor doesn't provide
information in available reference manuals.  I'm happy to push for
more investment in LLVM to support the Linux kernel from Google
internally; maybe you can help do so from ARM?  That was my appeal to
ARM back in February; support for newest ISA extensions is great,
support for existing instructions is great, too.  (And not having to
choose between one or the other is preferrable, given the amount of
resources available).

My thoughts on the benefits of this approach to using Clang's
integrated assembler:
1. continuous integration and randconfigs.  We need CI to help us spot
where things are still broken, and help us from regressing the ground
we've fought for.  We can't expect kernel developers to test with
LLVM.  Currently, we have LLVM builds in numerous kernel continuous
integration services (KernelCI, Kbuild test robot "0day bot", Linaro's
TCWG, Syzcaller, and our own CI).  For services that are bisecting and
notifying authors, they are currently harassing authors for
pre-existing conditions that the service uncovered via randconfig.
This is very very dangerous territory to be in.  If authors start
ignoring build reports due to false positives or false negatives, it
becomes a weak signal that tends to be ignored.  Then when real bugs
are uncovered, the actual bugs get ignored.  We don't want that.  If a
canary dies in a coal mine, but no one notices, was it for naught?

2. It helps us quantify how broken we are, via `grep` and `wc`.  LLVM
is in no way a perfect substitute for GNU utilities, but it's not too
far off either.  As an imperfect substitute, there's a lot of work
both on the toolchain side and sources of various codebases in terms
of toolchain portability.  Being able to quantify what doesn't work
let's us be clear in which ways LLVM is not a perfect substitute, but
also where and how much resources we need to get closer.  That helps
then with planning and prioritization.  The proper thing to do is to
bury the dead but at this point we only have resources to collect dog
tags and keep moving.  That doesn't rule out revisiting implementing
iWMMXT in the future.

3. Testing Clang's assembler allows for us to do kernel builds without
binutils.  This work is helping uncover places within the kernel where
the build is not hermetic.  We're still a long ways away from hermetic
reproducible kernel builds I suspect, but my main worry is when people
have multiple versions of a toolchain in their path, that only one is
used.  Otherwise, it leads to spooky hard to reproduce bug reports.  I
don't think I need to argue about build hermiticity, but it's
important for user trust and verification.

4. Improving toolchain portability of assembler in LLVM itself.
There's plenty of subtle differences, but missing full on instructions
(or are they psuedo's?) is pretty bad.

I value the feedback from you, Russell, and Arnd even when I disagree.
These are just my thoughts on *why* things are the way they are, FWIW.
If there's thoughts on how we might better prioritize one thing over
another, I would appreciate it.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk-xwuppJzxd1%2B5sfsC8jYiP3t8D%3DaTNaYxnFCRDiEUmQ%40mail.gmail.com.
