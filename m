Return-Path: <clang-built-linux+bncBDYJPJO25UGBBR4G3D2AKGQECVHGHYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id AC23A1A89C6
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 20:39:04 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id w203sf536365pfc.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 11:39:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586889543; cv=pass;
        d=google.com; s=arc-20160816;
        b=wibj+mtuk5TiUG8wIWAM2S/8VDahe/xV9LFSAsE3UmCpBlk9+0ZQ20BrySglO06fPM
         ayfPuZO6a71Rv69JW+1hWEB0il8yPtv/QKud8OTJqDVULUALRXVYl4xijEWKJqW6vtvv
         f2csj6Jg64ByMTVSKKAaX0VT/bqhGWalibxMmql6lAtyac56baDIGIHjfdtgOafjXHoj
         A8+mmgoSqMv/7RQczC75uMFyaig/U0rlLpVPf1GOuMEMxRul+yHwqRopYY69ZNACFMJL
         q6vrec/M2JFQ9wXjwIIZJsWq9uFxss3QVeluhQRCyO6bzB+i2bqqVS7RPlxNdRPXDFBE
         uvbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YFpDigo5fSUBg5sAPeiqrPiGL2AQeAuH807tvFaMLFg=;
        b=TEOPqjhT8TYEXb+vFRHE6TSvwn9C6AJH2qt5+379ahx1ynLtCqzxwzjKviocoPVq9L
         CFKUeTpB6vYvwOg1ESDA35ugHB5mk5dt8yAqse8wjCtu/mMculyjjIQJ5HMJjeC6FziQ
         mvNjGv2H8gEG3TPeYqNz1nJbmvPdfhgSdOptCwD4Ki61EAXKIyz1rCYbyyDaa3u7mlun
         19m0xlM2PBWXJhuDVQgcSgDiYfLrhtDKtZd3PBZXHiPHlQbXNShpnLYKoshQY455XjEH
         giS2zgNrWak63K9X/f/6tP/97SHUGK/KcwjGJyOh4/KYKf+7dx57qM6FVIWjg1EJ4716
         sCyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cvDA3ZzY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YFpDigo5fSUBg5sAPeiqrPiGL2AQeAuH807tvFaMLFg=;
        b=Gp2z5q2m7nfAmCuF/6FchzHLQ4km2YfBHPpLlNKAKjl2QwDnFRSsmg5tcGkBe9z+tb
         ll0c7E8Mg+tFpO0uREWPZBTvc1X2vVAB109h/07ryehJfUoZKhKJdrIEqVHZdnO0+l/Q
         mMUsQ7+boCohekXknwV9Emjvrx3HpfM8jJgUmsCNNW6+Y2xSa3CZl+Jd+9o53L0fHx4O
         wBrgEBrtpXkG4ry43K9H1dZa3vus/g553+t+h6w/vJWkNSW3LQefdrlnM77EfYlH6yCy
         LxxeVHKN0W2zhc2fJk5lFAKmmPnGYy9WIvZYdIHlkSDhBtetKJoQYTGn4Lj67aG6wk6T
         ZWqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YFpDigo5fSUBg5sAPeiqrPiGL2AQeAuH807tvFaMLFg=;
        b=KOhluYtJrib01L0upmnyUPxIROcRQ4pjiA8XaLxs6agSLtFpccuNG+nc4usN1SFC7v
         p4FnfQKX5cZFXwxUCSVp0qHu02DiTXUMTOizM5SwFudzF9VKSrd8eKE1hAvJGI1p61AS
         ELMrNKIwnxnPKP3KbbQqxnek0X9f1hWTQDwBGpx7ET0AAgEaQ0V8j+JuTiwqWddFEewX
         bMN02ApEFUZB1KRYhxsvgsypheeKJfZId64pMxNAXIQ33vFqnBu1jYXNQQKI/p5CAUSK
         akigrqUUPqIv9ATgl++g157peFM/Yw6AZpueslRXpnO24j1ZFYzUhpv8v8tsuonRaARm
         fm1g==
X-Gm-Message-State: AGi0PubqMuroYtI7Tw/mQmkFqAKl4xpU5hzjXYhVERMVoyMT0r/r9G7k
	+7lcukidmE64zXcY/Fr+00c=
X-Google-Smtp-Source: APiQypIpVCj11/iWMT0ltEfjiz2bnRGLWE7LB0wwNbEqx0DruqVSiTy114mNfZbBul0aJC4y+6yG3w==
X-Received: by 2002:aa7:99d1:: with SMTP id v17mr25600906pfi.165.1586889543367;
        Tue, 14 Apr 2020 11:39:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c344:: with SMTP id e4ls3559467pgd.1.gmail; Tue, 14 Apr
 2020 11:39:02 -0700 (PDT)
X-Received: by 2002:a63:4b16:: with SMTP id y22mr21461329pga.251.1586889542850;
        Tue, 14 Apr 2020 11:39:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586889542; cv=none;
        d=google.com; s=arc-20160816;
        b=QeQDGL2i9MWhkmRpPIf5tDwyoMyyaC4l87Jlsh5PT+L74cJeOHIZn5tcConG9rSr/6
         Y1ChK8F7CO68jT6vVqce2v4JKXBqAKyGI1orLfipu1ZCzmtzkHVYR7XwEOXPitx4eeFB
         fBFDRIcYM8SQy/fKC9R4yRNT6S4n/YBkCphefFUY9fHg+coNKBbRHLUQDWV84hxcXK6h
         0g56h4ZXyssZYVUCedGwBEgbYeQw2iec3bZrlBSyw9uHqJVIQRbvQYZlX5BW07jWTfzM
         ilZLUOWU+9+KTSvCG8JM92j2XVo7YMJRMttW+DkosH90lIcw5Tzt5exHOdppK5KirfSe
         vu2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bWzUZ+y/P/VFQc8O9jcjTib7GUAQgeNd8tbzdYTpSw0=;
        b=t/Om/oxdmpaz8v/vUKUN5TAlPQaYbGWi9Ez95J9ydkhpOYWOqLTNyxqMaQk+923TG/
         u1Mwn4CJGuFd13lcCh/DCwP4Wv2FNM6ZteLyuBUEE5CukuFoQGPTgjBGFi7HQcQvKJMe
         LOx/1BtoS+xzFUWgFJMz+azmId+o+ozNDTAkP/MvTJZ0B+ra9rIJWg518YTFw8++0dae
         x7R+KkW6MM3MMA8LkZ4ddA6b4P5AT5kkZBZpAPKGaaudnwEdevWSSH1fl+e4uW2RANjs
         2FhPfPeWvMhGd6Wq1da8rNeJOxf45UC7VKCP5n6rc62CXmXEjkVCcRo42brOMbDXE9Wl
         fewQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cvDA3ZzY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id t6si567755pjl.0.2020.04.14.11.39.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Apr 2020 11:39:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id g32so290503pgb.6
        for <clang-built-linux@googlegroups.com>; Tue, 14 Apr 2020 11:39:02 -0700 (PDT)
X-Received: by 2002:aa7:919a:: with SMTP id x26mr23877309pfa.39.1586889541893;
 Tue, 14 Apr 2020 11:39:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk> <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
 <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com> <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
In-Reply-To: <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Apr 2020 11:38:50 -0700
Message-ID: <CAKwvOdm5aawsa2-=atB8z6W8zo8YVgdDEVbU3i4evDcpo1_AxQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Ard Biesheuvel <ardb@kernel.org>
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
	Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cvDA3ZzY;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Tue, Apr 14, 2020 at 1:59 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Mon, 13 Apr 2020 at 22:45, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Fri, Apr 10, 2020 at 6:09 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > On Fri, 10 Apr 2020 at 14:33, Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> ...
> > > > If your compiler/assembler only implements what is in the latest ARM
> > > > ARM, then it is not going to be suitable for these older CPUs and
> > > > alternate vendor "ARM compatible" CPUs.
> > > >
> > >
> > > Indeed, and I'm a bit disappointed at the willingness to leave stuff
> > > by the wayside, especially since Clang's integrated assembler has no
> > > other benefit to it than being built into the compiler.
> >
> > I don't disagree.  I also wish LLVM had a backend for every
> > architecture that GCC does.  But resources are finite and there are
> > more fires than firemen.  It gets really hard to justify a high
> > priority for certain things over others.  Doubly-so for hardware no
> > longer in production.  Triply-so when the ISA vendor doesn't provide
> > information in available reference manuals.  I'm happy to push for
> > more investment in LLVM to support the Linux kernel from Google
> > internally; maybe you can help do so from ARM?  That was my appeal to
> > ARM back in February; support for newest ISA extensions is great,
> > support for existing instructions is great, too.  (And not having to
> > choose between one or the other is preferrable, given the amount of
> > resources available).
> >
>
> Sure. But my point was really that disabling stuff left and right just
> so we can get to the finish line is fine for internal kernel-on-clang
> development, but I'd expect the contributions upstream to be a bit
> more considerate of other concerns, such as not regressing in terms of
> functionality.

Does this or any of the proposed patches regress anything for GCC?  Do
they regress anything for Clang?  Is it a regression if it never
worked in the first place? ;)

Disabling things isn't crossing the finish line.  It's admitting where
your weaknesses lie, and where you need to improve.  Crossing the
finish line is implementing and filling out those weaknesses.  We're
running a race we're behind by 10 years! We may never catch up!

>
> > My thoughts on the benefits of this approach to using Clang's
> > integrated assembler:
> > 1. continuous integration and randconfigs.  We need CI to help us spot
> > where things are still broken, and help us from regressing the ground
> > we've fought for.  We can't expect kernel developers to test with
> > LLVM.  Currently, we have LLVM builds in numerous kernel continuous
> > integration services (KernelCI, Kbuild test robot "0day bot", Linaro's
> > TCWG, Syzcaller, and our own CI).  For services that are bisecting and
> > notifying authors, they are currently harassing authors for
> > pre-existing conditions that the service uncovered via randconfig.
> > This is very very dangerous territory to be in.  If authors start
> > ignoring build reports due to false positives or false negatives, it
> > becomes a weak signal that tends to be ignored.  Then when real bugs
> > are uncovered, the actual bugs get ignored.  We don't want that.  If a
> > canary dies in a coal mine, but no one notices, was it for naught?
> >
>
> OK, so you are saying you need the Clang *assembler* to perform CI on
> C pieces that we can now build with the Clang compiler, and we don't
> want to regress on that? Is this because the cross-assemblers are
> missing from the CI build hosts?

We need to disable configs that we know are broken when using certain
LLVM tools until we can dedicate more resources to fixing them.  This
prevents curious failures when doing randconfig builds, which some of
the CI systems do.  It then gives us a nice list we can grep for
configs we need to fix, whether that's via improvements to the
toolchain to changes to the source.  And I think Arnd agreed with me
when he said "It clearly makes sense to limit the Kconfig option to
compilers that can actually build it."

>
> > 2. It helps us quantify how broken we are, via `grep` and `wc`.  LLVM
> > is in no way a perfect substitute for GNU utilities, but it's not too
> > far off either.  As an imperfect substitute, there's a lot of work
> > both on the toolchain side and sources of various codebases in terms
> > of toolchain portability.  Being able to quantify what doesn't work
> > let's us be clear in which ways LLVM is not a perfect substitute, but
> > also where and how much resources we need to get closer.  That helps
> > then with planning and prioritization.  The proper thing to do is to
> > bury the dead but at this point we only have resources to collect dog
> > tags and keep moving.  That doesn't rule out revisiting implementing
> > iWMMXT in the future.
> >
>
> To be honest with you, I don't actually think iwmmxt is that
> important. But I have already demonstrated how we can use a couple of
> macros to emit the same instructions without resorting to bare
> opcodes, so there is really no need to disable pieces left and right
> because the Clang assembler does not support them outright - it just
> needs someone to care enough about this, rather than rush through the
> list with a tick the box attitude, and rip out the pieces that look a
> bit too complicated.

I don't think we have a long list of configs to mark broken; it's not
like we're flooding the list with patches marking tons of things
broken.

In my town where I live, they spray paint the sidewalks that need
repair so that people don't trip.  "Why not just replace the
sidewalk?" you might ask.  Eventually they do, but it takes much more
time and effort, and there are a lot more broken sidewalks than people
and money to repair them.  Was it a waste to highlight the areas where
people might trip?

All I'm suggesting is that we mark the way for future travelers that
this doesn't work, as you'll get a potentially very confusing error
message if you try.  Then `git log` probably has a Link: and more
context as to why.  Then you can `grep` for all of the places that are
broken, and figure out which sidewalk is most important to repair
first, and better estimate the cost to repair all of them.

>
> > 3. Testing Clang's assembler allows for us to do kernel builds without
> > binutils.  This work is helping uncover places within the kernel where
> > the build is not hermetic.  We're still a long ways away from hermetic
> > reproducible kernel builds I suspect, but my main worry is when people
> > have multiple versions of a toolchain in their path, that only one is
> > used.  Otherwise, it leads to spooky hard to reproduce bug reports.  I
> > don't think I need to argue about build hermiticity, but it's
> > important for user trust and verification.
> >
>
> So we need the Clang assembler for reproducible builds?

No; it allows us to not even install binutils on the host, and know
that the Clang assembler and only the Clang assembler is being used;
no other host utilities that happen to be in the $PATH.

When I do a build with any LLVM utility, I'd like to ensure that the
equivalent from binutils isn't invoked.  This is something folks can
already start testing today with multiple installs of GNU or LLVM
utilities, though I don't know of anyone leading a conscious effort.
This is something we've been finding the hard way; we've been doing
builds on hosts with no GCC/binutils, and finding places where as an
example `nm` or `objcopy` is hardcoded, rather than
`$(NM)`/`$(OBCOPY)`, which is the first step towards making the build
more hermetic.

The next step is ensuring the tools produce deterministic output,
which is quite painful.

>
> > 4. Improving toolchain portability of assembler in LLVM itself.
> > There's plenty of subtle differences, but missing full on instructions
> > (or are they psuedo's?) is pretty bad.
> >
>
> I don't think this point belongs in the 'why should we care about the
> Clang assembler' list :-)

If LLVM improves, thanks to efforts to support the Linux kernel, then
I'd call that a win that kernel developers can celebrate.

>
> > I value the feedback from you, Russell, and Arnd even when I disagree.
> > These are just my thoughts on *why* things are the way they are, FWIW.
> > If there's thoughts on how we might better prioritize one thing over
> > another, I would appreciate it.
>
> I think the 'all legacy needs to die' attitude is not particularly
> helpful here. In the 32-bit Linux/ARM community, there are many people
> who care about older systems, and spend a lot of time on keeping
> things in a working order on platforms that Google or ARM have stopped
> caring about long ago.

I think if anyone on this thread had the position that "_all_ legacy
needs to die," then no one here would have anything to work on. :P
--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm5aawsa2-%3DatB8z6W8zo8YVgdDEVbU3i4evDcpo1_AxQ%40mail.gmail.com.
