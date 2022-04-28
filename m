Return-Path: <clang-built-linux+bncBCU4TIPXUUFRB7XVVKJQMGQEGTQGFNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 3102F513958
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Apr 2022 18:04:15 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id ne12-20020a1709077b8c00b006f3aca1f2b2sf3243503ejc.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Apr 2022 09:04:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651161855; cv=pass;
        d=google.com; s=arc-20160816;
        b=kUzJdgahF+hTVaBarIzfgc5LQmMeVmiOxbNrxke+TYUNZotgd/Q+pteCqWuFjkQ17I
         pPiCHozDHbPV8PhzuW4tdZU63VqXUjKF5vQ1gt3wgxvPRVBGP+3Kra3obgEUeYaCeG/B
         C8L8BEWvfKdTnT7k+Ayw6ETKWarm0jUInF5rLWXcHRW+aaidn8YyONeNbSceMrRD4QxV
         LWYF9ZQn5NWYT5q7kII9FhhKP4xOkINoH8b+RpPP/rvO4OM3WJT4WTVfxVgSf492QifL
         aFgGRS6iKI+vBRV1EzwOfhjsfgcEU4huJGRtH+l4B0oW0KSIt+qIuEv4GoP04WCTvhGH
         kz8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=nsw/mXFPDUYzHGLoEG8Gj7/ncZMvlBdjmy+SsuWTQyQ=;
        b=Fpgt5qNV4MDE28gLppjnYENV9F2lG1HVaeuDi2DlW8YC1cijZVsVdy1chPvSyQF+b4
         inZI5ZjTRu9wjmmHcb5/g3ev3QHWzCprUHk8OrJhMomkHe69MWNSFuKbC76txy4wnibJ
         +t/93fiZ61F3c3FQV+GcksCJzPfjI0n/Wpcd2WY2uPvvTg6mjg1pMr/RYbaUqhqHeDMZ
         yl7xsyBlFrfxlhLCVh+nYT0m9I7720xIfsJiBQtUt414GRbdCBoS9fuwR6NnxuTxh/Te
         yHzzSrMgHHNzMzQ8EM67NoG4mQT8Dh7FKwrtx/cASt6w6piGpCSi+040CnxZpFimSrHE
         ti5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NHJAc9jX;
       spf=pass (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nsw/mXFPDUYzHGLoEG8Gj7/ncZMvlBdjmy+SsuWTQyQ=;
        b=kVrmjMIfE4fT/++sI19yDVqKdFVU9cJ1NH+1ocHM71o/If5EvtMs4Zjd4GRAQjgtj/
         JpmleV1s8Y1Yxeatil8c1uikQkC8iRcrHYeo0ax6obNkODRDK1C0VngKiQfiC8RyBP5i
         s9ze3gFK1tieAUM6u6bZBejmdOUMoHvPShV+yg8sbREomqLL8cMK8AondVxd2rodWA1M
         EAscBNOZ6DCkjacz2p+TcJf/kYO8MnqfNs28Sg2RBQc4DMjvdSsFpLGHPUguYimohDZs
         ZxOTVxYR8Y3RQ3Qv72q4Qy9goZyMSIgEsASUi+5qDr8anVby2N7Mj6jjGFl60ly0mcEn
         N4Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nsw/mXFPDUYzHGLoEG8Gj7/ncZMvlBdjmy+SsuWTQyQ=;
        b=v+x1nmK0wD6q5EnsF1WX4nrNwkuWquhV7ZGRAFeGE4L7X6iqt07eDKAO+s4csAoc5F
         Mket8p45NbGU2cB2Gwo31LjS1nyiAlVkmKN7ruScyyo8SXP4ineWFU/d0uCxnsJFyaha
         sTzKaqYXTv7uOOJRxIP/DtyTLDggYq/3Dfnz1I3LYvuZIliLCUBRAPIZdaQwwb+X28ZS
         BtpZ5I3vEUr3fSEONnXKFAWNla1k8G+yEf8SDg9I54dLPrptwz3iT+50uUGLbeM62Mp9
         1j0d/9LTJ/LCU2Fy1Vs0deJhdlf+DzogJdZPPokPud+rFDHwGtr3QJc2QwMzFBzTQoE0
         YXKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JH+bKBRfbWUqGfoGx6hE20ceRqGyZyajokAGWnspAhaSSAm2R
	IS7/4hFb30oOpcDrjj31wWw=
X-Google-Smtp-Source: ABdhPJzExeGpkN0bDWeoZGLrqvDrUEs0tLMOu/Nx5Q8aehJz2DYRkwxZ9AsKevYwwpF/nMbSMX9MzQ==
X-Received: by 2002:a17:907:97cf:b0:6f3:b1e0:888 with SMTP id js15-20020a17090797cf00b006f3b1e00888mr13902518ejc.119.1651161854565;
        Thu, 28 Apr 2022 09:04:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d1cf:0:b0:403:768d:84b2 with SMTP id g15-20020aa7d1cf000000b00403768d84b2ls518621edp.1.gmail;
 Thu, 28 Apr 2022 09:04:13 -0700 (PDT)
X-Received: by 2002:a05:6402:1148:b0:416:a4fb:3c2e with SMTP id g8-20020a056402114800b00416a4fb3c2emr37028032edw.182.1651161853243;
        Thu, 28 Apr 2022 09:04:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651161853; cv=none;
        d=google.com; s=arc-20160816;
        b=jZeynWdTGPHa3J+pN/3a79+oI1ec+5aqch3H8Qvy5O2ik84AfSmoEnS9MBh6ViZQ/J
         PSn7CeejYrCD4fTdXhkSpTj2bH4XMTK2hPZJ4DhTeY2d+x2vY0xrlnHyT4CDGNukfDWe
         Lwle2LYnCFvLrMYLtk5Y4+MWcE6YQdzpHMNt2zbAubUYZ2xXkg30wk5Mbrk8aEud4TPe
         aezJ96jb3RunsjAtXpOd14kYnitIoTH4c0nSrzTu3JOI0ICythYlNIHIaJkT4tBWtKUb
         lXWwwdUzSYi5wdVllPVHOk8G4fdOyJir6cAyNvhrUHPx8j888/bQWd9vLRB/8zzjlcWJ
         kfLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DJMaSc3yj9rlyAeXdBrCHmIn8h5jIAgiWwtxNwZxGnM=;
        b=0QjzHwsaxLrfAJ78FNGcKFOTD/h0g3pSxSKT6DYN2U78F58Udyw8aZC/mLI+NK/crh
         RLJ7yjCnbwTeuy8dqGGZ0Sz/jOz4wKBw29ZjYh2dW5iW0Y7KaczgF0cA3nBF8Nyt5Bjq
         3LEHNaUiqGYYmrVNQ2YIGCwubQy+mdQIP2+jdsubELzEx0Stabobf1Exz9gnEPf9K++E
         cAZ0dNCE9/a5PAV8q2unpJcc4lHxSq8psVWJtYrCSUkOQcq4lf/vjfmmteZPcwt2gbLs
         q+mRdFiuPLuHH848RKBVTrRrSUlrryItSAh9eSDC+sI9jU3zEHn++i13zueC/BRzGtjp
         RWjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NHJAc9jX;
       spf=pass (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id s5-20020a05640217c500b0041cf5333d81si291980edy.4.2022.04.28.09.04.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Apr 2022 09:04:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CAABEB82E56
	for <clang-built-linux@googlegroups.com>; Thu, 28 Apr 2022 16:04:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04A8BC385B1
	for <clang-built-linux@googlegroups.com>; Thu, 28 Apr 2022 16:04:11 +0000 (UTC)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-e2fa360f6dso5608599fac.2
        for <clang-built-linux@googlegroups.com>; Thu, 28 Apr 2022 09:04:10 -0700 (PDT)
X-Received: by 2002:a05:6870:eaa5:b0:da:b3f:2b45 with SMTP id
 s37-20020a056870eaa500b000da0b3f2b45mr18767855oap.228.1651161850008; Thu, 28
 Apr 2022 09:04:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220427171241.2426592-1-ardb@kernel.org> <20220427171241.2426592-3-ardb@kernel.org>
 <20220428024030.gwxb746c5gwvcnw6@google.com> <CAMj1kXEW-KPVWqS33OX0Qw-EAeX+XfocHGisVw8gsb2k_KffJA@mail.gmail.com>
 <20220428065742.rl3w5rz2ni2fhngl@google.com>
In-Reply-To: <20220428065742.rl3w5rz2ni2fhngl@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 28 Apr 2022 18:03:55 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFADwYTGzAOUiEG3Kr1dtUSY6qq-hVj+Fb2B2WLHqAMtA@mail.gmail.com>
Message-ID: <CAMj1kXFADwYTGzAOUiEG3Kr1dtUSY6qq-hVj+Fb2B2WLHqAMtA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/2] arm64: kernel: switch to PIE code generation for
 relocatable kernels
To: Fangrui Song <maskray@google.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Kees Cook <keescook@chromium.org>, 
	Mark Rutland <mark.rutland@arm.com>, Nathan Chancellor <nathan@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=NHJAc9jX;       spf=pass
 (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted
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

On Thu, 28 Apr 2022 at 08:57, Fangrui Song <maskray@google.com> wrote:
>
> On 2022-04-28, Ard Biesheuvel wrote:
> >On Thu, 28 Apr 2022 at 04:40, Fangrui Song <maskray@google.com> wrote:
> >>
> >> On 2022-04-27, Ard Biesheuvel wrote:
> >> >We currently use ordinary, position dependent code generation for the
> >> >core kernel, which happens to default to the 'small' code model on both
> >> >GCC and Clang. This is the code model that relies on ADRP/ADD or
> >> >ADRP/LDR pairs for symbol references, which are PC-relative with a range
> >> >of -/+ 4 GiB, and therefore happen to be position independent in
> >> >practice.
> >> >
> >> >This means that the fact that we can link the relocatable KASLR kernel
> >> >using the -pie linker flag (which generates the runtime relocations and
> >> >inserts them into the binary) is somewhat of a coincidence, and not
> >> >something which is explicitly supported by the toolchains.
> >>
> >> Agree. The current -fno-PIE + -shared -Bsymbolic combo works as a
> >> conincidence, not guaranteed by the toolchain.
> >>
> >> -shared needs -fpic object files. -shared -Bsymbolic is very similar to
> >> -pie and therefore works with -fpie object files, but the usage is not
> >> recommended from the toolchain perspective.
> >>
> >
> >So are you suggesting we should also switch from -shared to -Bsymbol
> >to -pie if we can? I don't remember the details, but IIRC ld.bfd
> >didn't set the ELF binary type correctly, but perhaps this has now
> >been fixed.
>
> Yes, -shared -Bsymbolic => -pie, but that can be done later.
>
> For e_type: ET_DYN, I think unlikely there was a bug.
> -pie was added by binutils in 2003: it's close to -shared but doesn't
> allow its definitions to be preempted/interposed. Code earlier than that
> might use -shared -Bsymbolic before -pie was available.
>
> >> >The reason we have not used -fpie for code generation so far (which is
> >> >the compiler flag that should be used to generate code that is to be
> >> >linked with -pie) is that by default, it generates code based on
> >> >assumptions that only hold for shared libraries and PIE executables,
> >> >i.e., that gathering all relocatable quantities into a Global Offset
> >> >Table (GOT) is desirable because it reduces the CoW footprint, and
> >> >because it permits ELF symbol preemption (which lets an executable
> >> >override symbols defined in a shared library, in a way that forces the
> >> >shared library to update all of its internal references as well).
> >> >Ironically, this means we end up with many more absolute references that
> >> >all need to be fixed up at boot.
> >>
> >> This is not about symbol preemption (when the executable and a shared
> >> objectdefine the same symbol, which one wins). An executable using a GOT
> >> which will be resolved to a shared object => this is regular relocation
> >> resolving and there is no preemption.
> >>
> >> It is that the compiler prefers code generation which can avoid text
> >> relocations / copy relocations / canonical PLT entries
> >> (https://maskray.me/blog/2021-01-09-copy-relocations-canonical-plt-entries-and-protected#summary).
> >>
> >
> >Fair enough. So the compiler cannot generate relative references to
> >undefined external symbols since it doesn't know at codegen time
> >whether the symbol reference will be satisfied by the executable
> >itself or by a shared library, and in the latter case, the relative
> >distance to the symbol is not known at build time, and so a runtime
> >relocation is required.
>
> Right.
>
> >But how about references to symbols with
> >external visibility that are defined in the same compilation unit? I
> >don't quite understand why those references need to go via the GOT as
> >well.
>
> If you mean references to a non-local STV_DEFAULT (default visibility) definition =>
>
> * -fpic: use GOT because the definition may be replaced by another at run time.
>    Conservatively use a GOT-generating code sequence to allow potential symbol
>    preemption(interposition). The linker may optimize out the GOT (x86-64
>    GOTPCRELX, recent ld.lld for aarch64, powerpc64 TOC-indirect to
>    TOC-relative optimization).
> * -fpie or -fno-pie: the definition cannot be replaced. GOT is unneeded.
>
> -fpie is an optimization on top of -fpic: (a) non-local STV_DEFAULT
> definitions can be assumed non-interposable (b) (irrelevant to the
> kernel) TLS can use more optimized models.
>
> >> >Fortunately, we can convince the compiler to handle this in a way that
> >> >is a bit more suitable for freestanding binaries such as the kernel, by
> >> >setting the 'hidden' visibility #pragma, which informs the compiler that
> >> >symbol preemption or CoW footprint are of no concern to us, and so
> >> >PC-relative references that are resolved at link time are perfectly
> >> >fine.
> >>
> >> Agree
> >>
> >
> >The only unfortunate thing is that -fvisibility=hidden does not give
> >us the behavior we want, and we are forced to use the #pragma instead.
>
> Right. For a very long time there had been no option controlling the
> access mode for undefined symbols (-fvisibility= is for defined
> symbols).
>
> I added -fdirect-access-external-data to Clang which supports
> many architectures (x86, aarch64, arm, riscv, ...).
> GCC's x86 port added -mdirect-extern-access in 2022-02 (not available on aarch64).
>
> The use of `#pragma GCC visibility push(hidden)` looks good as a
> portable solution.
>

OK

> >> >So let's enable this #pragma and build with -fpie when building a
> >> >relocatable kernel. This also means that all constant data items that
> >> >carry statically initialized pointer variables are now emitted into the
> >> >.data.rel.ro* sections, so move these into .rodata where they belong.
> >>
> >> LGTM, except: is ".rodata" a typo? The patch doesn't reference .rodata
> >>
> >
> >I am referring to the .rodata pseudo-segment that we have in the
> >kernel, which runs from _etext to __inittext_begin.
>
> OK
>
> >> >Code size impact (GCC):
> >> >
> >> >Before:
> >> >
> >> >      text       data        bss      total filename
> >> >  16712396   18659064     534556   35906016 vmlinux
> >> >
> >> >After:
> >> >
> >> >      text       data        bss      total filename
> >> >  16804400   18612876     534556   35951832 vmlinux
> >> >
> >> >Code size impact (Clang):
> >> >
> >> >Before:
> >> >
> >> >      text       data        bss      total filename
> >> >  17194584   13335060     535268   31064912 vmlinux
> >> >
> >> >After:
> >> >
> >> >      text       data        bss      total filename
> >> >  17194536   13310032     535268   31039836 vmlinux
>
> The size difference for Clang matches my expecation:)
> I am somewhat surprised that data is smaller, though...
>
> I wonder how GCC makes code bloated so much...
>

This is caused by the use of RELA format instead of RELR.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFADwYTGzAOUiEG3Kr1dtUSY6qq-hVj%2BFb2B2WLHqAMtA%40mail.gmail.com.
