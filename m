Return-Path: <clang-built-linux+bncBD63HSEZTUIBB6XW2X2AKGQEKJEGGNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F4A1A76BB
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 10:59:39 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id d59sf10061786otb.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 01:59:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586854779; cv=pass;
        d=google.com; s=arc-20160816;
        b=YXXgwkxhhEqsChU6mLN5GTWaV/w4aHORWsegQ0woPKLRsZ/qGqjUQW1SKgVt2Asp/3
         Q3SGXceyDZ31t1v4GYDARBR9qfoe7wpDqq14MAq7IlLjFhaTLigGMCZgLs/XPMM4eg4R
         ePeF4/wgzbCzoMSUMB92xYf0xVsAZA2GEmVpjrw0SaLk+1UuDqkDPkCaIDzADuyLlUOT
         XG9IlLr1NowQ4WV4ABdhADiouoWrdNg8ODdYrrOKdeDdZkqTTE+k0anEd7mSKlXrTi96
         Dch/VHjEAn0A/tz/pPSHu0AkOnBB2oqht56glqX1zkKUYMd0kK5drbL/6w6IDm4ovJAG
         nKUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=y0ZEGyabpnJIQKBpq3Sh8/K2juI8iJieIG69byfrIuk=;
        b=dlNjjn2efsu65hTUqW5eU4QZ7djZhOA+oOcQNg6WuqlWE/Ooa17V0meRkxpZUX11uG
         zqwpyaIKq4vOLGGSZu86jl5tgqErqbwfRptFAVe6NzvmzD6j3NRL1rrDSf9F8ChVfDXi
         zrysI2X1iR+t2bw+wiccAgwjT+wWltEg4yiOnRIJdSVtpB4I96NnnJoGWbpzYKUteYiN
         Mtosr5k2OBOpoftG4oszouwzRsVXIAlv43sdl8lNrZfu2OBZ+f5xHn11i+6h+9BUp449
         i/OILxVTqE+NvHgSvLWLSGQBiCAoY1On6MZhcIZaBtklMkZCxLoWjo6uoRlx5wV7J9XE
         ffZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ovUwlBW+;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y0ZEGyabpnJIQKBpq3Sh8/K2juI8iJieIG69byfrIuk=;
        b=WFldNmbOQ+oDILHAf1GHZcAzBU7mAIK6WuHcHDJA+bRsJCdTca4Srwzv+pfLZV6apv
         aSQxcWZhWsFpJ0hpALkYXuRiZXlof9KrwRVGilWTkcf/HEpqGZM2YLLHTdnUMpOYs7Qy
         84z52NIBkW7/JEW1tZe7MFWYd1kNseKbqR/vyT4ic24aPMpBi8EwQdBbcnibVh9h1m+j
         hWu1eWbZFqPyZpWV5T7lUtp19XRBwO5+xcaoSAmoU53UujZpucS5OtKC9rg0PvMk5cRD
         H70QuhuqAoUR3ntfw6+/Czy+aR3qvlBUXNyAHImzZak3RWDK1/9GG6kI5qfdNX81HKvt
         QFzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y0ZEGyabpnJIQKBpq3Sh8/K2juI8iJieIG69byfrIuk=;
        b=RswfP9qOC5hgb2N3gkITxwu/1Xxj8OHDPA/FRh27akU8z4FV3RP7ELGVjv7uuAVTLW
         xDcTs+ia+jlEJW3HbJ/90ZPCEIatrPUS9e5LAOrk3VvvSHj1uRHoSnWS+LxNQcPDE6tc
         PUcUrOb7hvQNtCGkkqGNbK6Hf1qcK6KTQkfqCcTX3bsn6LaPW2DJhMV7m1Txl+6DnIhg
         BrNupthYqa4JOi96IJSkGJz+7gRYZld4nUM6aNaVxxgFI5resaBTTWbuFtWsHSfGe7h8
         3GSOW0HsTVHymkCn3JQePD6LBC3uhy+SwZENRq4UrOg22Epy/4OYZZP/ebMuGHjf8eCr
         2sjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZFo5j68jPkD/q9RuzgnLdRIbPQ+om7kjyLHKAZoGz2PKlR0198
	T8yGoF7S10YNorCkcAzNt+g=
X-Google-Smtp-Source: APiQypJ6oMp8FMu/13WRGnVSEjYYe0o90p5Sm8Z67bpTLXEk8WkYTCVVXnL7g9khFjv2WG54TD32RA==
X-Received: by 2002:a05:6830:1:: with SMTP id c1mr17333825otp.200.1586854778795;
        Tue, 14 Apr 2020 01:59:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4dc4:: with SMTP id a187ls531793oib.4.gmail; Tue, 14 Apr
 2020 01:59:38 -0700 (PDT)
X-Received: by 2002:aca:da8b:: with SMTP id r133mr14935404oig.81.1586854778398;
        Tue, 14 Apr 2020 01:59:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586854778; cv=none;
        d=google.com; s=arc-20160816;
        b=RFQ4MikQnEDG9w9f0yvFYQLdkf5fo2pmP49aDBJtwOYW8pci/cCThqnAocz73QBXMb
         Av4XYbKIphWw6WUYleSSii0tN7PMF9ysC78XoOp9Fcj7glRw3r6xFRsYcK+T953aAS2R
         yo4Fxiq7HWbZ+aEcDdVDGcrJUmgmd9fyOKiTojaFgbk3esglubxpAbG+P6mBNLo3rryk
         UQl5oaU+WuU+s2EspDwkL3LWzdgfu/+zdjmCspmKiE1hufUEF9U1O5F4Gk/XbiIfLv27
         Vbm8pjsG/OR6TARfb8j2t6D59UIPwxFjEPahBnBl+pI7+bl/MFRFIxD6NOp2GFlUzcQe
         5rZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7cSYXgoa0MASoBod75idJxSPL+Cu8PZQ/Jv1ceh5hGQ=;
        b=NPwZgZjZCdL9RialPwpuOCA0lSyh4HDZuVJIMggiWxQWK6NqudFgbMRVA+cWuVssl6
         +PiMUCelAUnCrElBWrI6GYOeCKxTR5MrjP0sZAOu2Kou/4TrR6YRcLiHeeHOY8Qjw5th
         gIe6UIiLkIuEwK5tArohc6NGMv+xN9K6dK3CbE+uM3MAMqnFwiQrkHW/l97zHJmMU6bL
         znFr9+7URvJyl8bCVd20vAHBoqTcSSxMMW5DORSZL5vrNHWhjqL380QVz+FmRO5OcC7H
         a0BBXJdJMRq51rDxwu94jczUBoatzReEhNSYlTNhzfvPYw+Fg4g806mnkHHmstuDPeS7
         GvHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ovUwlBW+;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m132si984630oig.3.2020.04.14.01.59.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Apr 2020 01:59:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 46C9B21556
	for <clang-built-linux@googlegroups.com>; Tue, 14 Apr 2020 08:59:37 +0000 (UTC)
Received: by mail-il1-f170.google.com with SMTP id c17so7493426ilk.6
        for <clang-built-linux@googlegroups.com>; Tue, 14 Apr 2020 01:59:37 -0700 (PDT)
X-Received: by 2002:a92:443:: with SMTP id 64mr16054243ile.258.1586854776281;
 Tue, 14 Apr 2020 01:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk> <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
 <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
In-Reply-To: <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 14 Apr 2020 10:59:24 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
Message-ID: <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kristof Beyls <Kristof.Beyls@arm.com>, Stephen Hines <srhines@google.com>, 
	Luis Lozano <llozano@google.com>, Russell King - ARM Linux admin <linux@armlinux.org.uk>, 
	Arnd Bergmann <arnd@arndb.de>, Jian Cai <caij2003@gmail.com>, 
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
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ovUwlBW+;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 13 Apr 2020 at 22:45, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Fri, Apr 10, 2020 at 6:09 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Fri, 10 Apr 2020 at 14:33, Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
...
> > > If your compiler/assembler only implements what is in the latest ARM
> > > ARM, then it is not going to be suitable for these older CPUs and
> > > alternate vendor "ARM compatible" CPUs.
> > >
> >
> > Indeed, and I'm a bit disappointed at the willingness to leave stuff
> > by the wayside, especially since Clang's integrated assembler has no
> > other benefit to it than being built into the compiler.
>
> I don't disagree.  I also wish LLVM had a backend for every
> architecture that GCC does.  But resources are finite and there are
> more fires than firemen.  It gets really hard to justify a high
> priority for certain things over others.  Doubly-so for hardware no
> longer in production.  Triply-so when the ISA vendor doesn't provide
> information in available reference manuals.  I'm happy to push for
> more investment in LLVM to support the Linux kernel from Google
> internally; maybe you can help do so from ARM?  That was my appeal to
> ARM back in February; support for newest ISA extensions is great,
> support for existing instructions is great, too.  (And not having to
> choose between one or the other is preferrable, given the amount of
> resources available).
>

Sure. But my point was really that disabling stuff left and right just
so we can get to the finish line is fine for internal kernel-on-clang
development, but I'd expect the contributions upstream to be a bit
more considerate of other concerns, such as not regressing in terms of
functionality.

> My thoughts on the benefits of this approach to using Clang's
> integrated assembler:
> 1. continuous integration and randconfigs.  We need CI to help us spot
> where things are still broken, and help us from regressing the ground
> we've fought for.  We can't expect kernel developers to test with
> LLVM.  Currently, we have LLVM builds in numerous kernel continuous
> integration services (KernelCI, Kbuild test robot "0day bot", Linaro's
> TCWG, Syzcaller, and our own CI).  For services that are bisecting and
> notifying authors, they are currently harassing authors for
> pre-existing conditions that the service uncovered via randconfig.
> This is very very dangerous territory to be in.  If authors start
> ignoring build reports due to false positives or false negatives, it
> becomes a weak signal that tends to be ignored.  Then when real bugs
> are uncovered, the actual bugs get ignored.  We don't want that.  If a
> canary dies in a coal mine, but no one notices, was it for naught?
>

OK, so you are saying you need the Clang *assembler* to perform CI on
C pieces that we can now build with the Clang compiler, and we don't
want to regress on that? Is this because the cross-assemblers are
missing from the CI build hosts?

> 2. It helps us quantify how broken we are, via `grep` and `wc`.  LLVM
> is in no way a perfect substitute for GNU utilities, but it's not too
> far off either.  As an imperfect substitute, there's a lot of work
> both on the toolchain side and sources of various codebases in terms
> of toolchain portability.  Being able to quantify what doesn't work
> let's us be clear in which ways LLVM is not a perfect substitute, but
> also where and how much resources we need to get closer.  That helps
> then with planning and prioritization.  The proper thing to do is to
> bury the dead but at this point we only have resources to collect dog
> tags and keep moving.  That doesn't rule out revisiting implementing
> iWMMXT in the future.
>

To be honest with you, I don't actually think iwmmxt is that
important. But I have already demonstrated how we can use a couple of
macros to emit the same instructions without resorting to bare
opcodes, so there is really no need to disable pieces left and right
because the Clang assembler does not support them outright - it just
needs someone to care enough about this, rather than rush through the
list with a tick the box attitude, and rip out the pieces that look a
bit too complicated.

> 3. Testing Clang's assembler allows for us to do kernel builds without
> binutils.  This work is helping uncover places within the kernel where
> the build is not hermetic.  We're still a long ways away from hermetic
> reproducible kernel builds I suspect, but my main worry is when people
> have multiple versions of a toolchain in their path, that only one is
> used.  Otherwise, it leads to spooky hard to reproduce bug reports.  I
> don't think I need to argue about build hermiticity, but it's
> important for user trust and verification.
>

So we need the Clang assembler for reproducible builds?

> 4. Improving toolchain portability of assembler in LLVM itself.
> There's plenty of subtle differences, but missing full on instructions
> (or are they psuedo's?) is pretty bad.
>

I don't think this point belongs in the 'why should we care about the
Clang assembler' list :-)

> I value the feedback from you, Russell, and Arnd even when I disagree.
> These are just my thoughts on *why* things are the way they are, FWIW.
> If there's thoughts on how we might better prioritize one thing over
> another, I would appreciate it.

I think the 'all legacy needs to die' attitude is not particularly
helpful here. In the 32-bit Linux/ARM community, there are many people
who care about older systems, and spend a lot of time on keeping
things in a working order on platforms that Google or ARM have stopped
caring about long ago.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFHb8th0rv1yjrsr%3Dc1o-g9_ERPUy4itnrVN13fcQcXag%40mail.gmail.com.
