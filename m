Return-Path: <clang-built-linux+bncBD66FMGZA4ILFXETQYDBUBBF4T2YA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id E89653A4FE6
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 19:26:10 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id h104-20020adf90710000b029010de8455a3asf4369024wrh.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 10:26:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623518770; cv=pass;
        d=google.com; s=arc-20160816;
        b=mYdvi6A4YXT9iiiiL5V89SJwZ+cHmMCk4nfiPSDr+k7xvNA8M5ACpw/1jPE9B0f2gF
         Nuo3K7i1lrfPX6fiAEn5OdZzstrpIIw9KjmoJOLQ7CI8ukj1XCRloodTcPVNB0duoxf2
         5ws7t/re7LxaxNNxtEs/8VXL1soBL8256glmn576iNxmwibuEK/C/+XcOWsaHGhsFKeW
         1NjqfVCaSnJUFrMmiq+FApkAczGMdWh8BlT2RoYgTKyTTz7UVI/EaRhZvJkRZhmfzspk
         6H5ts6Mzxu8+ALQ9oltbTBLugK/q2VVvr2ClwsSKATfLFwsP4wHQjt0/i82kPkZfsUYs
         ngpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4eMfnoIPiEK2ia9Kx0SDSN3iI5o//nrRzWB+oFQmRqc=;
        b=YZAoCTDeLxrg7eB8JSiHJ0JjIX1BOMNgPd1gw7toSceMDqYBCpic1QMSPAMTEuHeV5
         AN/5MGtHzhDgZLPXqYVoD8jR05EfrIxqPbM1S/rsTzgyK8AmAUSiDu+APgIQ2A0vWwaY
         siLS5k+4BvauJ0CBTBI2Dy1XG0J3BFnYZKc9a4Hae5lxCrrrhQcBzv4QR0eFnUXg8dqE
         OjvH0vJVICnUGUTUlm5slTe2UWE0qjPepMe3nHLxc3Zs463O3XE5HKf7nj1oyOPVud43
         XRKtaebSZmUKto7nsPkGqhYRg4ngX2y0bRTuPxO6/dRTIdmmg/gHkUM1IAW9ni8z+O2D
         ofdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZOkHFj6h;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4eMfnoIPiEK2ia9Kx0SDSN3iI5o//nrRzWB+oFQmRqc=;
        b=AwfdJidD2ki1k8ztVZYdIhd82qik+2qct9mwgLHwZiQ/wwUkN9vUVi+/Pddtu8PwbX
         yFWkufFmZ0NGS9udmWZf190UsdTdkmNyu3qAQp1QqYRIUZjyANuKoav5UYiWodz0wZ9R
         +waMOMmzphCKUbdQhjs3o1huxt0WtxjYS7Bdl8KmOd/+qWhRwcVVTpCnZUPcZcPVCHog
         BT2IacUsXQAjHh+635Js0aM4JT0moLIxznuUg/sYN6Mil+brRpivBa9k7LiXU0rU2yrv
         XSotGliM9Cac/jOSYqpjOZGdjpTIeOuXIb9rZrIchaajFGHzs0iLmpvCvSRXz2wfbsnJ
         XZqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4eMfnoIPiEK2ia9Kx0SDSN3iI5o//nrRzWB+oFQmRqc=;
        b=osAorbMlz4uK2AY5Zt49VmYpwdWem4KQXPES9isaeGow1cvFxte3rIEIBGmgsAbDWk
         PnmtZVLxwU63s6/nYe/hoOjw7mzPQMScfvRvUt4Smkr/1zEp2eKdrhxbYTSLBchXBqOT
         nvL/8SCyo0LdO1D5PFbY+6gbLM+k6D9RoXo8wCoIasE0tX+NgWJYZWI3OQZdaY00KilK
         1ATxtzh9EOTmagEJ892m310zcS0SEvM1E58CxijE/NocI6VkzPahGbylFBx8gIDbRqOC
         nyq+MownNm/Ctppyn3KEcgX5Tq7STmS3SSR05zkJpseywMhrTbmj8vDwAD4mS2+z4f1u
         MN3Q==
X-Gm-Message-State: AOAM533re+A36xjTjbKI2AsZqvGsN6fxQIAg8NGMHnsNB5rwOtOV9cF1
	e6+DDTIxzWRFcVNY7Y16sYI=
X-Google-Smtp-Source: ABdhPJwH3Evl6pTvhjs3CQSxkzcvvEsP5o1Eym+vukKU3ZR7kjwfXHOxsLQcPwKmuMHeYQ78Rc1LqQ==
X-Received: by 2002:a1c:bc06:: with SMTP id m6mr25383269wmf.74.1623518770648;
        Sat, 12 Jun 2021 10:26:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a141:: with SMTP id r1ls5694084wrr.3.gmail; Sat, 12 Jun
 2021 10:26:09 -0700 (PDT)
X-Received: by 2002:a5d:5388:: with SMTP id d8mr9782201wrv.423.1623518769846;
        Sat, 12 Jun 2021 10:26:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623518769; cv=none;
        d=google.com; s=arc-20160816;
        b=P09QKc38XCBPpVE0KkPAwqwvnlH1Nl6Yk1y9XvVrKRUCpykkx07bvIsjwwv+16W8tI
         KKbZHkWICxvsy28IT8o5nLAg4MdiM0iBLIGqyVg7NMXTs0XdL50gFX1NoRF3OO5GrhK6
         Vh59QqsI8gOxaZYbDQ94b24oAex98SumIR/zNF9U7FUsuepi2DtjhBZ0bVkdGPcqxAf/
         tn4oI8+jO7uyvaAeqCtqZILAyk8t3su2aZ3CBh9nx9kXGEIutoDcVXStw1FKN3EiTk7/
         6ZPSCa5SymDmKJwbMz0FX7I/Jl/3rxqdUMsLs9W0mt1MDBhY1s7CVj0oxXAoJt1jdSNK
         pu9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=K87q3ygNLZInfR0ONZVqvHllcQ29xNPoiT8D9b1JLuw=;
        b=r60xiJUO+4fYAmh7G4FOf2ggo6i390G4zEXPUelUwj6ok918uh04WaKt1IOVKRsRsK
         AbYPiupz7/tVaW96jJ2vi1LKyqkZyFkp1voWwNiVOyKzFVIUTL3IT0yuKJhoyS3vug+8
         hrWS2UDMGX7aJMlF3vWiy8c1T1ivCeT8k4EWFVtyfgQYwH90idG0wpSUyesMzhtiNkEw
         CfLg5fdl9eF5Fx38c8KwIObJ8YhwEastwrN5CddMDHaf3hrhP/LNz02sd8CSlb40f4de
         gxsJUzGv/Tv9JNw5o9jqBNTShiR2gQmPNFjSX7KhBKazA26T8GwlCTrU/HNbP2qJXQ6L
         UUWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZOkHFj6h;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com. [2a00:1450:4864:20::630])
        by gmr-mx.google.com with ESMTPS id g17si595647wmq.4.2021.06.12.10.26.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Jun 2021 10:26:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::630 as permitted sender) client-ip=2a00:1450:4864:20::630;
Received: by mail-ej1-x630.google.com with SMTP id nd37so1696946ejc.3
        for <clang-built-linux@googlegroups.com>; Sat, 12 Jun 2021 10:26:09 -0700 (PDT)
X-Received: by 2002:a17:906:7188:: with SMTP id h8mr8574666ejk.529.1623518769255;
 Sat, 12 Jun 2021 10:26:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net>
In-Reply-To: <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 12 Jun 2021 10:25:57 -0700
Message-ID: <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=ZOkHFj6h;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::630 as
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

On Sat, Jun 12, 2021 at 9:59 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Wed, Apr 07, 2021 at 02:17:04PM -0700, Bill Wendling wrote:
> > From: Sami Tolvanen <samitolvanen@google.com>
> >
> > Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> > profile, the kernel is instrumented with PGO counters, a representative
> > workload is run, and the raw profile data is collected from
> > /sys/kernel/debug/pgo/profraw.
> >
> > The raw profile data must be processed by clang's "llvm-profdata" tool
> > before it can be used during recompilation:
> >
> >   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> >   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> >
> > Multiple raw profiles may be merged during this step.
> >
> > The data can now be used by the compiler:
> >
> >   $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> >
> > This initial submission is restricted to x86, as that's the platform we
> > know works. This restriction can be lifted once other platforms have
> > been verified to work with PGO.
>
> *sigh*, and not a single x86 person on Cc, how nice :-/
>
This tool is generic and, despite the fact that it's first enabled for
x86, it contains no x86-specific code. The reason we're restricting it
to x86 is because it's the platform we tested on.

> > Note that this method of profiling the kernel is clang-native, unlike
> > the clang support in kernel/gcov.
> >
> > [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
>
> Also, and I don't see this answered *anywhere*, why are you not using
> perf for this? Your link even mentions Sampling Profilers (and I happen
> to know there's been significant effort to make perf output work as
> input for the PGO passes of the various compilers).
>
Instruction-based (non-sampling) profiling gives us a better
context-sensitive profile, making PGO more impactful. It's also useful
for coverage whereas sampling profiles cannot.

> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Co-developed-by: Bill Wendling <morbo@google.com>
> > Signed-off-by: Bill Wendling <morbo@google.com>
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reviewed-by: Fangrui Song <maskray@google.com>
> > ---
> >  Documentation/dev-tools/index.rst     |   1 +
> >  Documentation/dev-tools/pgo.rst       | 127 +++++++++
> >  MAINTAINERS                           |   9 +
> >  Makefile                              |   3 +
> >  arch/Kconfig                          |   1 +
> >  arch/x86/Kconfig                      |   1 +
> >  arch/x86/boot/Makefile                |   1 +
> >  arch/x86/boot/compressed/Makefile     |   1 +
> >  arch/x86/crypto/Makefile              |   4 +
> >  arch/x86/entry/vdso/Makefile          |   1 +
> >  arch/x86/kernel/vmlinux.lds.S         |   2 +
> >  arch/x86/platform/efi/Makefile        |   1 +
> >  arch/x86/purgatory/Makefile           |   1 +
> >  arch/x86/realmode/rm/Makefile         |   1 +
> >  arch/x86/um/vdso/Makefile             |   1 +
> >  drivers/firmware/efi/libstub/Makefile |   1 +
> >  include/asm-generic/vmlinux.lds.h     |  34 +++
> >  kernel/Makefile                       |   1 +
> >  kernel/pgo/Kconfig                    |  35 +++
> >  kernel/pgo/Makefile                   |   5 +
> >  kernel/pgo/fs.c                       | 389 ++++++++++++++++++++++++++
> >  kernel/pgo/instrument.c               | 189 +++++++++++++
> >  kernel/pgo/pgo.h                      | 203 ++++++++++++++
> >  scripts/Makefile.lib                  |  10 +
> >  24 files changed, 1022 insertions(+)
> >  create mode 100644 Documentation/dev-tools/pgo.rst
> >  create mode 100644 kernel/pgo/Kconfig
> >  create mode 100644 kernel/pgo/Makefile
> >  create mode 100644 kernel/pgo/fs.c
> >  create mode 100644 kernel/pgo/instrument.c
> >  create mode 100644 kernel/pgo/pgo.h
>
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -660,6 +660,9 @@ endif # KBUILD_EXTMOD
> >  # Defaults to vmlinux, but the arch makefile usually adds further targets
> >  all: vmlinux
> >
> > +CFLAGS_PGO_CLANG := -fprofile-generate
> > +export CFLAGS_PGO_CLANG
> > +
> >  CFLAGS_GCOV  := -fprofile-arcs -ftest-coverage \
> >       $(call cc-option,-fno-tree-loop-im) \
> >       $(call cc-disable-warning,maybe-uninitialized,)
>
> And which of the many flags in noinstr disables this?
>
These flags aren't used with PGO. So there's no need to disable them.

> Basically I would like to NAK this whole thing until someone can
> adequately explain the interaction with noinstr and why we need those
> many lines of kernel code and can't simply use perf for this.

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QXjD1DQjACu%3DCQQSP%3Dwhue-14Pw8FcNcXrJZfLC_E%2By9w%40mail.gmail.com.
