Return-Path: <clang-built-linux+bncBD66FMGZA4IJPDMUQYDBUBBBGVTSE@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 071063A5043
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 21:10:16 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id g13-20020a056402090db02903935a4cb74fsf11833425edz.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 12:10:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623525015; cv=pass;
        d=google.com; s=arc-20160816;
        b=p1Gu6u0hpFghoQQhGM6Fvnt9v04+Ot3eAydnIUPFrqHjxHr57q4Z4yEcPGTcxlRPKc
         yhBohJ5EVNByQ0+SNMriQG8upaA0+poqIc85nFZNFwyJoOOLstVYWlrnQ+Afh7ZWIsvf
         PheVB3fZibPk1FR6XnNn3g2FvYsQ0iJJILV+w0KOs4lQRg7AijLDKacdOgQMzC6WwW/U
         f8/4G/60Y3bsvDmvxFtc0fAil984AmZQx5bVuaj+VvN3e9KciPP15HWxmOBG9ZnYK4s4
         6u1oD+IrUNz45+/htho8VWNkJ2a3hWEOhVO2EuI78Bt5WnYrOWdubFGWJ5I3lXiHu37y
         WF+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=573BWvy083dfcirOI+c9yEM/FlY7rCrAwPashDJ9T08=;
        b=lEodse3eG3JubOT4BjBJnw74iL0m12Yq6bJWI0SO25qyLNXL9jSIqDaf7ISjsTkQnR
         /3EsdRmSfjZBpCMkuYij0zy5qJypBL+l4jutL9GHXJML1BTpMVpQVp2I62KEV3Kcr/dc
         ywW7B0BYBckCi9DTO4nP1GI6ZzWdwaqbFXDnPi2zePuQfxKwH4uhb7m6XXAlVW6EHXUq
         bs0h4BNWA0VrC/JjylBabcS0QoDhReAbr4Wgf1O4D1P5AHxcz+WtXKpZ/VaLD3JU9v/B
         5t4K2IqnpDk9oLtBg+L2XYUDSVkHk+qdya1HbPG+fUX3WrX/TiCS0d1FBN6X/cpr9zOf
         vl9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=srFpC0Se;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=573BWvy083dfcirOI+c9yEM/FlY7rCrAwPashDJ9T08=;
        b=o8jmwUQk0+DTfEs3TWWlSZIy0OLOZNzo+das2iC3VyYn7hYBDUcZeooKpApb35H01c
         UGufWPcFNdcaAQdP7rY1u6INtw4SSoDt6A1xqJps+p+9N53KjfmyaGcEona6qJFBPK3E
         GMruX3cs55obdm4cpyjabTHhZdFal5worgoYi5z3iBYwKy5SL/fEqA+AjGKhA9IrPjat
         ISF0lKI1GlQrBfTauTF7x0JPmwLqvqEqKzKmTRTTuvWkfCjoGi4uYVMoM7m52mxPi87u
         8lxpta8Hf19FhjyUd17pxnas2Cp3uWGtNQneVVKb570hRdN6K4zP24UEkVchAkBthubG
         f9rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=573BWvy083dfcirOI+c9yEM/FlY7rCrAwPashDJ9T08=;
        b=lcH5EiFobxLbSaX1rardxftnoMWdMXiYdHTnQ8tB1U71BZ1fWnRFK0q2Ruxom5sFVZ
         YjKHAoIM4AJBcp88CbgZxBNiBmbqv3TW8T2e69Tg2cfxNeddlrObfW+vsw3eR+0xTFkg
         ym8wIkhTm2+DE6YHXttOzYuYq9sf72m/cQc8kdzjVVZh1b5OCWUNfDu7VGY0eyoPIF+5
         9ZfUlVrTjknpfqnLpwYU3od6b7ARwFJfZteQz6x/2n020Leos60D74Z2ONTtrmMQz6L8
         yDJgkxh+OkVT5jFbWCMJN5vJe6pWZgVCKSTJtv6BbwFBxsdIsuw+5F9aNoKNYEmcX8wo
         qbYQ==
X-Gm-Message-State: AOAM531P8t/C/30mFb8KblRKZ+PLT79fyCr8h2X/F3VlWj/Eo/2vCz87
	5FDkOHqEgUPaCQN3pVbtm/I=
X-Google-Smtp-Source: ABdhPJza980ACD1JxunrrNNzLkXFl1Lq/y3VJM1WcFZvRkJAeJeBt1ExR6qwd0TzRxBIIu/ZjFrdUw==
X-Received: by 2002:a17:906:7b4f:: with SMTP id n15mr8473221ejo.220.1623525015787;
        Sat, 12 Jun 2021 12:10:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:4757:: with SMTP id j23ls4721585ejs.8.gmail; Sat, 12
 Jun 2021 12:10:14 -0700 (PDT)
X-Received: by 2002:a17:906:b41:: with SMTP id v1mr8619308ejg.246.1623525014843;
        Sat, 12 Jun 2021 12:10:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623525014; cv=none;
        d=google.com; s=arc-20160816;
        b=d1+3NtdCwOP4MfwolN9pHxz2fmwGTunPzxjwzgsg/KnHNNOUXfMy9XisSXpEShnZgW
         sCWVeMJjBS00r8bGinaa/BDq0lZN3/fEZLXddljWuQOUYG0Q/43QXnYtdvGv1gd7HAMx
         ePJg62ir4he2zNVgCtnziJIeGvc8pdto/b6YYx3CynTT4WgCYPtuo1KH0WvEef6bieIQ
         y0S3LG31FnIrayqYyZXcFuaKcr5rwEyMbfjFE7lqMJVlo5oiOVPk7lfBhRcotoOf4EJY
         bF44Z5mqFskjhiM/RyUx2svWMtae7lilOijFqleAOlEBDuJ1reRMF1cGKBca84AbaluD
         MDRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BF4KTa2Agq0jbJMydgzuSSPg/d4XEACgY0H+fIBjXaw=;
        b=TuE4CaYzy0ZEPZOZU+ZhV+6Gz/lva5QxZz+57DA5KbfAc97MrmRMPmdQRhwYmr2iem
         k13lJfsh3hOUNSlXHrR6y5KH/aoJZGVf1MeEmnq+sHGbbvNzrDYLjjtK/fnNXbxiC3Nh
         cuwu6QAfU2YDWv9V4wF5NCoVsNp9EYyFQOgA2WLS2ExRUIOyjGvKUzi195Ae2HENSVNX
         lHZs03eo0vFkKJU0vWB/jE4acRqXMu2qZptP1aHoqSbpViX4QUwwk+FvDF2zkWV5Kr+w
         Hl9s5I4Ip3oyX4ET1EuYjVQqFsiYyNZEL9b72+EjvGrFklZMc/8HPS4k3pWMNCb5mX/D
         8fhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=srFpC0Se;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id w2si601696edi.2.2021.06.12.12.10.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Jun 2021 12:10:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Received: by mail-ed1-x52f.google.com with SMTP id b11so41087130edy.4
        for <clang-built-linux@googlegroups.com>; Sat, 12 Jun 2021 12:10:14 -0700 (PDT)
X-Received: by 2002:aa7:c782:: with SMTP id n2mr9796203eds.77.1623525014362;
 Sat, 12 Jun 2021 12:10:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net> <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
In-Reply-To: <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 12 Jun 2021 12:10:03 -0700
Message-ID: <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization infrastructure
To: Peter Zijlstra <peterz@infradead.org>
Cc: Kees Cook <keescook@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Fangrui Song <maskray@google.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=srFpC0Se;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

")On Sat, Jun 12, 2021 at 11:15 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Sat, Jun 12, 2021 at 10:25:57AM -0700, Bill Wendling wrote:
> > On Sat, Jun 12, 2021 at 9:59 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > >
> > > On Wed, Apr 07, 2021 at 02:17:04PM -0700, Bill Wendling wrote:
> > > > From: Sami Tolvanen <samitolvanen@google.com>
> > > >
> > > > Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> > > > profile, the kernel is instrumented with PGO counters, a representative
> > > > workload is run, and the raw profile data is collected from
> > > > /sys/kernel/debug/pgo/profraw.
> > > >
> > > > The raw profile data must be processed by clang's "llvm-profdata" tool
> > > > before it can be used during recompilation:
> > > >
> > > >   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> > > >   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > > >
> > > > Multiple raw profiles may be merged during this step.
> > > >
> > > > The data can now be used by the compiler:
> > > >
> > > >   $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> > > >
> > > > This initial submission is restricted to x86, as that's the platform we
> > > > know works. This restriction can be lifted once other platforms have
> > > > been verified to work with PGO.
> > >
> > > *sigh*, and not a single x86 person on Cc, how nice :-/
> > >
> > This tool is generic and, despite the fact that it's first enabled for
> > x86, it contains no x86-specific code. The reason we're restricting it
> > to x86 is because it's the platform we tested on.
>
> You're modifying a lot of x86 files, you don't think it's good to let us
> know?  Worse, afaict this -fprofile-generate changes code generation,
> and we definitely want to know about that.
>
I got the list of people to add from the scripts/get_maintainer.pl.
The files you list below are mostly changes in Makefile, so it added
the kbuild maintainers and list. There's a small change to the linker
script to add the clang PGO data section, which is defined in
"include/asm-generic/vmlinux.lds.h". Using the "kernel/gcov" initial
implementation as a guildlline
(2521f2c228ad750701ba4702484e31d876dbc386), there's one intel people
CC'ed, but he didn't sign off on it. These patches were available for
review for months now, and posted to all of the lists and CC'ed to the
people from scripts/get_maintainers.pl. Perhaps that program should be
improved?

> > > >  arch/x86/Kconfig                      |   1 +
> > > >  arch/x86/boot/Makefile                |   1 +
> > > >  arch/x86/boot/compressed/Makefile     |   1 +
> > > >  arch/x86/crypto/Makefile              |   4 +
> > > >  arch/x86/entry/vdso/Makefile          |   1 +
> > > >  arch/x86/kernel/vmlinux.lds.S         |   2 +
> > > >  arch/x86/platform/efi/Makefile        |   1 +
> > > >  arch/x86/purgatory/Makefile           |   1 +
> > > >  arch/x86/realmode/rm/Makefile         |   1 +
> > > >  arch/x86/um/vdso/Makefile             |   1 +
>
>
> > > > +CFLAGS_PGO_CLANG := -fprofile-generate
> > > > +export CFLAGS_PGO_CLANG
>
> > > And which of the many flags in noinstr disables this?
> > >
> > These flags aren't used with PGO. So there's no need to disable them.
>
> Supposedly -fprofile-generate adds instrumentation to the generated
> code. noinstr *MUST* disable that. If not, this is a complete
> non-starter for x86.

"noinstr" has "notrace", which is defined as
"__attribute__((__no_instrument_function__))", which is honored by
both gcc and clang.

> > > Also, and I don't see this answered *anywhere*, why are you not using
> > > perf for this? Your link even mentions Sampling Profilers (and I happen
> > > to know there's been significant effort to make perf output work as
> > > input for the PGO passes of the various compilers).
> > >
> > Instruction-based (non-sampling) profiling gives us a better
> > context-sensitive profile, making PGO more impactful. It's also useful
> > for coverage whereas sampling profiles cannot.
>
> We've got KCOV and GCOV support already. Coverage is also not an
> argument mentioned anywhere else. Coverage can go pound sand, we really
> don't need a third means of getting that.
>
Those aren't useful for clang-based implementations. And I like to
look forward to potential improvements.

> Do you have actual numbers that back up the sampling vs instrumented
> argument? Having the instrumentation will affect performance which can
> scew the profile just the same.
>
Instrumentation counts the number of times a branch is taken. Sampling
is at a gross level, where if the sampling time is fine enough, you
can get an idea of where the hot spots are, but it won't give you the
fine-grained information that clang finds useful. Essentially, while
sampling can "capture the hot spots very well", relying solely on
sampling is basically leaving optimization on the floor.

Our optimizations experts here have determined, through data of
course, that instrumentation is the best option for PGO.

> Also, sampling tends to capture the hot spots very well.


-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A%40mail.gmail.com.
