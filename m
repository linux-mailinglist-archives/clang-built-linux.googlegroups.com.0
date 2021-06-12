Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBVHTSODAMGQE2ZWAKEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0773A5013
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 20:15:50 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id t4-20020a195f040000b02901dfc7237858sf2980325lfb.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 11:15:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623521749; cv=pass;
        d=google.com; s=arc-20160816;
        b=plP+dH8W+JLM9faFpAJuibbhJYjcwuadqs0mj80nyTTq4oWaVOqZiUm9vuGatiT+fI
         bVptDPPFESQ4imT5ux2Euma95ifqSlwd0gh8rhCh1AjCFkry2a9bBU6zXEvP5qssgTzH
         ROfWDTiA9El7rEMWqnT6rVRUtkCpVNvOWOTAmcLtgnHj1Vja4t14SHZlNV/E046a+Rt0
         xJbSpmk/w4Jp85WbwLP7x1WbOoCRnzBHR/991QAapCfYVyvIR0PD03zJmOVdlzJyoKE2
         JFT9zPbgxCNa/seak4Ru/6+Xr8KzzDm8iSdutrDFN1WUSstfHAIag5vQZWldEa4ILnWs
         nCew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MK79Af0HfZpABDv7n4+iWcJAcPRVomT1AcQVKNiaKI4=;
        b=gcsXl8Bjg6Y3x+qi2sUGc4tVodYwY/zPQV9J26R3eeUbZXiO0Ey4ioB5MvzjEQImGI
         CKUk/6sEADxr9uUdDRSeSTh/XMrRjNfb/mNbZ8B3SAoIgz2IGwPS8Zu+L+Kxr90HS6U3
         kB0b/xadNfNHmzfpitryCy81WYLpMbipbMtD7jgN0lcT1/0tBLLu/g6ySl5T88/iBa/C
         qw6pVwQu2zNykrXfFKnXVkqGTtqg9n0ngT6SEoP2iauL+4GRvI5o8CGk+R7RdsB7q/K6
         bnEr1zsQpRzctBMiVvNvz+ELZkRxv957kIMwR32isXqgR7/NLmiOwZ0thPiM4XNXH0SU
         dlbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=PRowg1ey;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MK79Af0HfZpABDv7n4+iWcJAcPRVomT1AcQVKNiaKI4=;
        b=fZq/vGCdYDIRWJc3xhLbrNSmLgxRbUpUbuwhTvqJjsikzCnE6t1yVRbwA3mJrjBk7X
         e16T7GCY/NwTHzN/ZnUGVTScbXn/8hyEtOonj18HqASJc97rdipMT8Zf7ZmQzalMmoqT
         lYtkcnOdXkJO3UBANh8FHMi/76z2ngM4DtwRflOJiQotQyQ9o3NxOurwe+8njYtiGQt3
         G8kV33ps4kus/KeJa9sU0r/4BDAXXc+y42m3s/MCC3SlMAFgrHnUfmF9fPGOApoikZYl
         AgiL64xSU94EY5q/VMpDyb59CEs9JrG/GAo/bI7pIggdGkpQNxjC+1YeeiNx/Ex2zCsm
         rIug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MK79Af0HfZpABDv7n4+iWcJAcPRVomT1AcQVKNiaKI4=;
        b=bM8WpXangNJgwb97Z5Y2BxyaATdNBo92KDlL931N349Lw+QxJy/D4XNhrJooFdTsWt
         56wD/cSWOanrfeFa5uY12kDOL57M9P+Bnq4+FF523xDmTIP+xBD2KCmQVFh/9WTKkOM9
         PTiiFbJSOTOGApU3+L3RlW8blowtExbcwljzMjcZxUGBJ9o0iPwihwn1ATiwChae+rQx
         Ex5VR0cwHXZpWk9yFgB+i5GlVS/ecFktPBZVHiRW9tnVLb7aQed7o+Zb80n1bclT1r75
         2ke+m+8+QDiHm7lGj3510n0ODLLrReWmUJdlvwcEGkKQN0I+4dpUfsNyfQlP3bvL5OHf
         KQCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YOE3J7vXmrLxh2/QlPNGwJpg1Bds1Xpi0LRc2Vm32AXS8IQdC
	DFFhns99G7o7V7ztzhPZdHY=
X-Google-Smtp-Source: ABdhPJxTViaqzkoaoipLQjDLZeT/O9reuos1lyDg2NUQlDP86ZMJQFBvMy1DqcuWQ/X4M4EEMThHow==
X-Received: by 2002:a05:651c:484:: with SMTP id s4mr7337139ljc.260.1623521749775;
        Sat, 12 Jun 2021 11:15:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8790:: with SMTP id n16ls2479780lji.11.gmail; Sat, 12
 Jun 2021 11:15:47 -0700 (PDT)
X-Received: by 2002:a2e:585e:: with SMTP id x30mr7261524ljd.290.1623521747582;
        Sat, 12 Jun 2021 11:15:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623521747; cv=none;
        d=google.com; s=arc-20160816;
        b=T2/Z2iB94vswGiF3rh5Xmt6NLySmzLiQm8pWbFIntdK0/78Q0uFJto45o1HuD6aB79
         mazfxWyw2dQPnqcUsOzfCZ5GY6F9zcgyBaeZWQ8DlkMPzkI6q8C3SysDTQIJZtfWD6+K
         Ldr77AHRWwATGEZ1b+eA3agTmGrMNfjRvOs8pXrJnJ4pAs3dzu5kRgfpaNKNJIhSQbIl
         L/5Qhp6srwS3vSstwxta/mE7NZGJE7NIdcBslptPhW+tD/BD9OVvzRRM8wQQMh8WX4IY
         Z+Qzg1+Bo+WJKHpcwjY+Z8azxOthlfNcVzb7uaEOewha/jDslzwgzuSw1mu+bCRM3mVH
         KutA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ps52kPN0CGhy0RDCiacanmUQS9na8o/hOy6klGUnjsU=;
        b=GZ1S7xxkGnltKY1hRNogmogrqRuoUTMcjEHQ/GrSP3Ci4BxFDs3+bsDyfc819cT01w
         4Ln7AbhXrQi0V20rfKfY+csSmSpxUJ1UEBWPQ2ZTmM0i3ZJaD4X5SYg48o9INAmP+JMH
         XwVNyHkD7AP4TT17h4+ARTo0zUbDy+fFxg3aqTHqwukIZLn8dbZvKPPe4/+3tU+3Uesu
         oji/gdlEn9TVjFyJpUgvi15rSdJdu7RwjmSMndFVmjiMwZKnIPESlOJ6nPJjngqUy2xd
         WBQGDpS2CPHycyeatidZqUQ3YvHe2GNBupH71Q37rp9Lhs3z4+8ygGALsKH1XCViVe6k
         qlWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=PRowg1ey;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id b12si381120lfb.9.2021.06.12.11.15.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 11:15:46 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1ls8AR-003ujh-5x; Sat, 12 Jun 2021 18:15:36 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 70DCF30008D;
	Sat, 12 Jun 2021 20:15:33 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 598362BDFC479; Sat, 12 Jun 2021 20:15:33 +0200 (CEST)
Date: Sat, 12 Jun 2021 20:15:33 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Bill Wendling <morbo@google.com>
Cc: Kees Cook <keescook@google.com>, Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
References: <20210111081821.3041587-1-morbo@google.com>
 <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net>
 <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=PRowg1ey;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Sat, Jun 12, 2021 at 10:25:57AM -0700, Bill Wendling wrote:
> On Sat, Jun 12, 2021 at 9:59 AM Peter Zijlstra <peterz@infradead.org> wrote:
> >
> > On Wed, Apr 07, 2021 at 02:17:04PM -0700, Bill Wendling wrote:
> > > From: Sami Tolvanen <samitolvanen@google.com>
> > >
> > > Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> > > profile, the kernel is instrumented with PGO counters, a representative
> > > workload is run, and the raw profile data is collected from
> > > /sys/kernel/debug/pgo/profraw.
> > >
> > > The raw profile data must be processed by clang's "llvm-profdata" tool
> > > before it can be used during recompilation:
> > >
> > >   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> > >   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > >
> > > Multiple raw profiles may be merged during this step.
> > >
> > > The data can now be used by the compiler:
> > >
> > >   $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> > >
> > > This initial submission is restricted to x86, as that's the platform we
> > > know works. This restriction can be lifted once other platforms have
> > > been verified to work with PGO.
> >
> > *sigh*, and not a single x86 person on Cc, how nice :-/
> >
> This tool is generic and, despite the fact that it's first enabled for
> x86, it contains no x86-specific code. The reason we're restricting it
> to x86 is because it's the platform we tested on.

You're modifying a lot of x86 files, you don't think it's good to let us
know?  Worse, afaict this -fprofile-generate changes code generation,
and we definitely want to know about that.

> > >  arch/x86/Kconfig                      |   1 +
> > >  arch/x86/boot/Makefile                |   1 +
> > >  arch/x86/boot/compressed/Makefile     |   1 +
> > >  arch/x86/crypto/Makefile              |   4 +
> > >  arch/x86/entry/vdso/Makefile          |   1 +
> > >  arch/x86/kernel/vmlinux.lds.S         |   2 +
> > >  arch/x86/platform/efi/Makefile        |   1 +
> > >  arch/x86/purgatory/Makefile           |   1 +
> > >  arch/x86/realmode/rm/Makefile         |   1 +
> > >  arch/x86/um/vdso/Makefile             |   1 +


> > > +CFLAGS_PGO_CLANG := -fprofile-generate
> > > +export CFLAGS_PGO_CLANG

> > And which of the many flags in noinstr disables this?
> >
> These flags aren't used with PGO. So there's no need to disable them.

Supposedly -fprofile-generate adds instrumentation to the generated
code. noinstr *MUST* disable that. If not, this is a complete
non-starter for x86.

> > Also, and I don't see this answered *anywhere*, why are you not using
> > perf for this? Your link even mentions Sampling Profilers (and I happen
> > to know there's been significant effort to make perf output work as
> > input for the PGO passes of the various compilers).
> >
> Instruction-based (non-sampling) profiling gives us a better
> context-sensitive profile, making PGO more impactful. It's also useful
> for coverage whereas sampling profiles cannot.

We've got KCOV and GCOV support already. Coverage is also not an
argument mentioned anywhere else. Coverage can go pound sand, we really
don't need a third means of getting that.

Do you have actual numbers that back up the sampling vs instrumented
argument? Having the instrumentation will affect performance which can
scew the profile just the same.

Also, sampling tends to capture the hot spots very well.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMT5xZsZMX0PpDKQ%40hirez.programming.kicks-ass.net.
