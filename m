Return-Path: <clang-built-linux+bncBD66FMGZA4IO3FMUQYDBUBE4J7FQM@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D343A5053
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 21:28:46 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id v15-20020a5d4a4f0000b0290118dc518878sf4504009wrs.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 12:28:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623526125; cv=pass;
        d=google.com; s=arc-20160816;
        b=uA0K8j8qV5gZmoTY1bcTl1yB6VjCl1Nddl0t9vAF00s55um6RDoL9IBLTqJp8NB1nZ
         hfFsBY+sQImQzUhHVb4iIbgU5k7QNQ/PQrmnwJQqbZ7y1sUDQ1xhaLi8JL/JaqJO+5Ay
         dO1mefuFDlEWCHYasi14UJdRfGaG7hEJ//RjHD19rhP0fxMumG74nRnl6SyBz584qL25
         OfCO6P20Zjqg6sbGNChkoCedgBhvol8q1jJU2iLc/OXvLYWXb1fia8CkbbZs0YwtfG5Q
         navQQZgjsGa4abQbCM29OGQtHqPCRu5f9dT87Pl8RoOPiEa5eNO0dbGaEvaYvs7afi1C
         cpJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vGiP1iDzMc2y8zrGqN7OLDp5f90m8UOuwrU9YCKJL4Y=;
        b=NGntyMnilmKoO2RZhMthFaDIcWNlL+Ibm6jNn/FujwoBNIKw4dd4/wG7VSbEB871dR
         dVAPEwa6nPkhletEszG8TpDM9+WkksmezCl2ZHJfzfyy/ZkWlq/okQNCxeREwqD0ehLH
         XWtX8KD5eTSX4CUPajZlNuR8SR+VEFzslv9czvX/rOC/BOKEt8sCGkEnHUikEHLjk8ut
         wVJdmdBGHIavcYHHR80MKHc65LE+5g9KX9rSKj74q2qTpQnM3Fg2QxI9Wzxz6H/mr7eo
         sg5b71C57dE6ZiM8SsXaOOLE6Luq6WcZwVcWkkBNy1W7KgbCBqzpeDuvk9+x9e/1zK3H
         y/iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HdUb91RP;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vGiP1iDzMc2y8zrGqN7OLDp5f90m8UOuwrU9YCKJL4Y=;
        b=f8U+A1YYPkw9p7HJgk9LQ11hOQbdMGAfKO028O1mk/TSCh7NMzsp81Us2vSyQwF5Ub
         2fiV/bju3zMXU9bFN9eYUL6gKJ2vzV51tj6lZDRGohqoqPWYR9oXcPdj1MketCOIuNjn
         u0vH5ZFjp9yHFD8s/aGmfto0RcrpdE8mb1+HayCQV73dJPO1VitSxLTAYQSrpRGzm55E
         WGGjHctJMfkHgVdeEmuk7wWvIj1m5OvrPbTtOmgHimrg9+2zSZYEtbQuO1EuKhsrhJVA
         4NPAw64pvGkiw4EoZRXfq1VYzaWKIAOljr5ngAuyVWHzJz10dQQPuWLdT0Ri26ACm48h
         GqNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vGiP1iDzMc2y8zrGqN7OLDp5f90m8UOuwrU9YCKJL4Y=;
        b=YXDane0f/F/SYMaN/JwOrXWccd0ustQy9+8H6pJxKOybagXDCJAI/oQF/kU8q82yBT
         e62BoVPsdaAnT5rRoroNDTnElnh2sVUjYbJtkdVeDyBFHXKXuyAsmlLynhgkHQa8v/AG
         1XF4zgX5Qak3DLKRkudbvc9pGupBgU0TNpiU59A4byUJVab1b3e/g/UnMPO2Bb5bxf7E
         HAhNbaKgOntFbMXa/r3E4UVZ/l23z1yqxAaAULQWIXO0zgknb1W7GCF3BplYn1f2f+j5
         uMdxxU9Urykech9z4ggWpro2FtJYH7kQsbt2nDzfl2GQC4bscfXsT1S5Sa906pFxL7/9
         rNOg==
X-Gm-Message-State: AOAM533CO6ZfgcSoZ0BW5ZWdW5hpwF2YiKlfu/NRNaZfzzs40ghYC0nW
	tRCPk/P4veIHs4JliWzPdp0=
X-Google-Smtp-Source: ABdhPJxdJk/aGdLyAf2DHWhaKywEvgIhUAHleabAAiWHNFjUq/OKIBxkjzv5ExkqaoSrU7cQ/YoN3g==
X-Received: by 2002:a7b:c7cd:: with SMTP id z13mr9188239wmk.54.1623526125715;
        Sat, 12 Jun 2021 12:28:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c0d1:: with SMTP id s17ls5550023wmh.0.gmail; Sat, 12 Jun
 2021 12:28:44 -0700 (PDT)
X-Received: by 2002:a5d:64a4:: with SMTP id m4mr10218092wrp.185.1623526124879;
        Sat, 12 Jun 2021 12:28:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623526124; cv=none;
        d=google.com; s=arc-20160816;
        b=vdlGN4uUQEn5IzGTC7pobM1ssoZmUMnkbFacVe9a5YqqZmi+cDhOlj41wivzYlL+dD
         rKtL3E/aJ5I5e5f4Cq0NhAtzZWfGOZQHO7194J+y+zABQd4ZpiJhuX6knc8dXZnliINZ
         U3b21PSKw0oxjuYh/mnbExc/aCWo2+7cecT4u7o+4MJDtVCYVyG/t4HKjB3Z6VBeL7We
         mVBHQP/rwoGhKdDnCRJojMBmKWwYGFvBo48Q97oGn18H9ifIttYRRBYXCUMPO9/mXcVd
         qxqefwLuiPAqD4k1bCtM/nqb8rwt/Gl0Pvkm3XofJ4LcEd07U+6UKVGkgvg4bfysJFPE
         3qbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HEcAR/YBJ4tG1SxjPx2PGfcPs966hhlEtWLnEUkitOw=;
        b=zMniuxrL6+0mzOpKz7nHJhi5J6oang+I/eXuN+Bpp7xXSnxQpdS582i6BdC1HMOt36
         2H+C2Dtu2bm6sG1fq1RAv655j5qra8SmEhUd9sJvAldPHapV4Keo6s1xWWTmgErO45FR
         bf0FNe+rEwHOBSHatxLodh3E4yD26t9hVrmrPcG9zz3QEYCHoyy02UdMrVJCfL2q55IL
         g6QqhCPzRNzm3vLCGD111GYUBlldKHs0YGKV8Xmb/5nCIKQn5rD1yX6AD4t+SGVqqN0/
         0G+Q0luxJtXe3VvjP2o6E6cS3eLCxggMCME0TdPQvQvHySSq1O4e2+xeSM4nLHBlsqX3
         YmxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HdUb91RP;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com. [2a00:1450:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id j15si343573wrb.3.2021.06.12.12.28.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Jun 2021 12:28:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62a as permitted sender) client-ip=2a00:1450:4864:20::62a;
Received: by mail-ej1-x62a.google.com with SMTP id nd37so1964986ejc.3
        for <clang-built-linux@googlegroups.com>; Sat, 12 Jun 2021 12:28:44 -0700 (PDT)
X-Received: by 2002:a17:906:1c4d:: with SMTP id l13mr8893522ejg.531.1623526124416;
 Sat, 12 Jun 2021 12:28:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net> <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net> <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
In-Reply-To: <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 12 Jun 2021 12:28:33 -0700
Message-ID: <CAGG=3QXTa5ZbXZE5Obo96V0a13-YTGE_Tgmc9yytv8-USLGkKQ@mail.gmail.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization infrastructure
To: Peter Zijlstra <peterz@infradead.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Cc: Kees Cook <keescook@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HdUb91RP;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62a as
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

On Sat, Jun 12, 2021 at 12:10 PM Bill Wendling <morbo@google.com> wrote:
> ")On Sat, Jun 12, 2021 at 11:15 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > On Sat, Jun 12, 2021 at 10:25:57AM -0700, Bill Wendling wrote:
> > > On Sat, Jun 12, 2021 at 9:59 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > > >
> > > > On Wed, Apr 07, 2021 at 02:17:04PM -0700, Bill Wendling wrote:
> > > > > From: Sami Tolvanen <samitolvanen@google.com>
> > > > >
> > > > > Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> > > > > profile, the kernel is instrumented with PGO counters, a representative
> > > > > workload is run, and the raw profile data is collected from
> > > > > /sys/kernel/debug/pgo/profraw.
> > > > >
> > > > > The raw profile data must be processed by clang's "llvm-profdata" tool
> > > > > before it can be used during recompilation:
> > > > >
> > > > >   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> > > > >   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > > > >
> > > > > Multiple raw profiles may be merged during this step.
> > > > >
> > > > > The data can now be used by the compiler:
> > > > >
> > > > >   $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> > > > >
> > > > > This initial submission is restricted to x86, as that's the platform we
> > > > > know works. This restriction can be lifted once other platforms have
> > > > > been verified to work with PGO.
> > > >
> > > > *sigh*, and not a single x86 person on Cc, how nice :-/
> > > >
> > > This tool is generic and, despite the fact that it's first enabled for
> > > x86, it contains no x86-specific code. The reason we're restricting it
> > > to x86 is because it's the platform we tested on.
> >
> > You're modifying a lot of x86 files, you don't think it's good to let us
> > know?  Worse, afaict this -fprofile-generate changes code generation,
> > and we definitely want to know about that.
> >
> I got the list of people to add from the scripts/get_maintainer.pl.
> The files you list below are mostly changes in Makefile, so it added
> the kbuild maintainers and list. There's a small change to the linker
> script to add the clang PGO data section, which is defined in
> "include/asm-generic/vmlinux.lds.h". Using the "kernel/gcov" initial
> implementation as a guildlline
> (2521f2c228ad750701ba4702484e31d876dbc386), there's one intel people
> CC'ed, but he didn't sign off on it. These patches were available for
> review for months now, and posted to all of the lists and CC'ed to the
> people from scripts/get_maintainers.pl. Perhaps that program should be
> improved?
>
Correction: I see now that it lists X86 maintainers. That was somehow
missed in my initial submission. Sorry about that. Please add any
reviewers you think are necessary.

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QXTa5ZbXZE5Obo96V0a13-YTGE_Tgmc9yytv8-USLGkKQ%40mail.gmail.com.
