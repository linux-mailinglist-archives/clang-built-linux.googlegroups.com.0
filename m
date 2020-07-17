Return-Path: <clang-built-linux+bncBC2ORX645YPRBU6IY74AKGQEOR6DR5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBCF224280
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 19:48:04 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id g124sf9991445wmg.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 10:48:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595008084; cv=pass;
        d=google.com; s=arc-20160816;
        b=vKTyWSw3Ys91Yy5rkVoxPghz833z0N6aufr/U+O/wRh9j1Ji0EC0rjWafRAL64cCQo
         WIROWiuR60dukIA/Do/4BL6VorxmdI/hJ9FjOG4UVV+aqF+QEaeABtaOG1jN0cXqkuMo
         KU/5lyJG+bqefmfmQRPSISaF6OFp8XUwfpuC3sw9obVgh5RhkSPy2pjDiXUUtkRWJ6M/
         KFMhjhr+gxa73kae0UpXGMPTE7+gCLExSAAw5eKUOjBpWsNsMKp1sOiwZ7DM5hnDIZNo
         UoReuGzsGh8x1krXBgpCsrehBbMT0EkvTCc8+QqKLEKypbxImYQNL+Mun0FxyDExxYu4
         7ubw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rphO5XBBE+s3gDMn1zcBr4NtApSgM/Vlab6X3gdyDi0=;
        b=bcTHDZ2KYryrBFcsDU89S+gSwBbLSI5MxgY/qEMIgf7tpQ7/TmdVfI4vMzk7nHO8eZ
         MNR2+PfTVoEKCwVwlKwUuP7yDT9RQc32s8e1NQ7+tUW46qsKNcfRIRcpGpqjQ8yIBqcW
         U4dasNO9V5Re014PTplcc3jnp6/PQGuD47q1GMNUqj2fKDjDEXHw67XCx4xxNQWvpCvH
         A0uN6/8q6HoEC0bENmI3GB1d5mWsbzGKJp5Bc0yg1YsCK/Ml5cYCd9Qr1wbfRKWCJpHf
         W7XxSUe9gkN2ZDABdN8bIbwKgoV8uSw/FxZyI5nj15KAQtkwulZK/LkMDky6ptcmh8eS
         hhjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T6HKmBM9;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rphO5XBBE+s3gDMn1zcBr4NtApSgM/Vlab6X3gdyDi0=;
        b=OwnLHZJAUwnQL6/MWeK060XPitNBhBOj4yQWMxpJZLxVnyUl3tGoB/nFRHS/2OZaac
         TpQvGtZFcej+f8sJNmXsq/gtVfRwppELhpQIFYrLhTMMCztpmY6GjZ1hjgXS9EhXYuEC
         lwmHA8xZzATNIGe4D2kFPscJXnrGjogRpHqlsE0c+dBjpBPvPKILBDyZ87SEUh54vphQ
         9WVYlxlx4I7xYVbFldr1U/qBkJ3NZ+hrO35r+rtnkJHmazo8Gnm0Ij3a9DfttoeFcUh8
         cGRa5eRVI5FKxAvIJH1gUvLiFmYKVIB2OWfgepGwCtwKOVtUbBF16By8ip3+9KOxa8rQ
         wcgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rphO5XBBE+s3gDMn1zcBr4NtApSgM/Vlab6X3gdyDi0=;
        b=UXKwauZCa6zcZ8AhIQ7Ih3G4SXw6FjAXmXco1oAU+GXlcnTjCCbw3+76/fTWgkrtxm
         lAEi45qcwBTVqiwOWwdJ7FU1HvQLqEOWZ5AoNhuzyWoTpTDIq1ao5TLzA0aWkfKBAR8z
         //U5MqO72RTd7FVhMksspAZujQhqCtibJQlKHE4wCTX20XlRfwJO3IAUveKvDBM+irv1
         m7p4+izYY2OJdk3Nefsdg9yphauYYgtQk4daVyx1tdE7tlQKVw1Hr7Yo8sHsGRDJSGV7
         8Cy0+47Cq7L43DPYnO+i9ZeWIBmcq37u11ODILn/xZwhFhsrQJUeK01ELflCrNCn94H5
         AXRw==
X-Gm-Message-State: AOAM532rJp8dY2Fm8euuMlARruj60NkS0oxeiKjudHsb9TfhzD5wvEt/
	2NoTD3oCtpeDVwiPm0dnBwM=
X-Google-Smtp-Source: ABdhPJyLjxZ6XmthlI7qkO0pbexn7vu8JfMCUPmW08nRxI3OIAHum+JKtlewsFV+zZ85EjFkjWZkUg==
X-Received: by 2002:a05:6000:111:: with SMTP id o17mr12046924wrx.178.1595008083857;
        Fri, 17 Jul 2020 10:48:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:b1cf:: with SMTP id r15ls1360526wra.3.gmail; Fri, 17 Jul
 2020 10:48:03 -0700 (PDT)
X-Received: by 2002:a5d:470c:: with SMTP id y12mr12492362wrq.340.1595008083206;
        Fri, 17 Jul 2020 10:48:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595008083; cv=none;
        d=google.com; s=arc-20160816;
        b=v5xwr55irKgPjST0X9VCL+nk+5qVB5jiIcILDS/WSs5TDx6mBk1S3dYftc+D7CQuQI
         QubEw8q19B7y5470vJ00jBnNEU7Spq1vAz7pJ7AVs6LiCOdkfLU2W9o+NgyUiTS5gpNc
         w84hEZbWvwmGvgzxA8tPh61SxBAFpTKiSSfoQFdPfWCNujNrMSG9di1vHZev8t65xgIg
         MpHI3+QVgqjzSx11qSqA6AacgBV74m7BknSI3gp6tXF4nAqzW76r1sVh+C+LlZAgYAPD
         v+YmSyIlkqnK5OHrDA8dalMyaffQvNrZGvlJUKbeVqcwypiQqZpIZCq4czKw3F2Zsqko
         aTfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ouPoIbaznwUvpvUZ+d9Lmd0+7ZlkFrw9Vubc0luuMm4=;
        b=mbjRvqbEDnSjqpg2BaEqx5soj9LpBawtvVX0sz2vdfQiie/Qr3x6wxnxiXshU4SKe4
         aHg1Pxn7XExnwIHR2oN9fTrIGIFxgxSq7mq7JUcg9dygxNvTkgWVbr31eg89svc0AGWR
         dAo56xIZidg8wPVyccQIUMWJM32gudaV8Pu0cIoCThZAxeAkFjOalCau077ARNSIeWuu
         Ji+a17N0TdqGh8pf6Cxp1wquSLexEoUTYVVnacLG1iodkCKB/q59PduAqzTj2oqByvOP
         gKx8LUB/vm67RaGjXcj58CkusYjrX5d8rRNLYaeox5yaW4HzsXzNDrPyEZ5LiWXg8qUC
         FBYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T6HKmBM9;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com. [2a00:1450:4864:20::643])
        by gmr-mx.google.com with ESMTPS id 14si452013wmk.1.2020.07.17.10.48.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 10:48:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::643 as permitted sender) client-ip=2a00:1450:4864:20::643;
Received: by mail-ej1-x643.google.com with SMTP id p20so11700128ejd.13
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 10:48:03 -0700 (PDT)
X-Received: by 2002:a17:906:6959:: with SMTP id c25mr9393908ejs.375.1595008082575;
 Fri, 17 Jul 2020 10:48:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-5-samitolvanen@google.com> <20200624212737.GV4817@hirez.programming.kicks-ass.net>
 <20200624214530.GA120457@google.com> <20200625074530.GW4817@hirez.programming.kicks-ass.net>
 <20200625161503.GB173089@google.com> <20200625200235.GQ4781@hirez.programming.kicks-ass.net>
 <20200625224042.GA169781@google.com> <20200626112931.GF4817@hirez.programming.kicks-ass.net>
 <CABCJKucSM7gqWmUtiBPbr208wB0pc25afJXc6yBQzJDZf4LSWA@mail.gmail.com> <20200717133645.7816c0b6@oasis.local.home>
In-Reply-To: <20200717133645.7816c0b6@oasis.local.home>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 17 Jul 2020 10:47:51 -0700
Message-ID: <CABCJKuda0AFCZ-1J2NTLc-M0xax007a9u-fzOoxmU2z60jvzbA@mail.gmail.com>
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Matt Helsley <mhelsley@vmware.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=T6HKmBM9;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::643
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Jul 17, 2020 at 10:36 AM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> On Fri, 17 Jul 2020 10:28:13 -0700
> Sami Tolvanen <samitolvanen@google.com> wrote:
>
> > On Fri, Jun 26, 2020 at 4:29 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > >
> > > On Thu, Jun 25, 2020 at 03:40:42PM -0700, Sami Tolvanen wrote:
> > >
> > > > > Not boot tested, but it generates the required sections and they look
> > > > > more or less as expected, ymmv.
> > >
> > > > > diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> > > > > index a291823f3f26..189575c12434 100644
> > > > > --- a/arch/x86/Kconfig
> > > > > +++ b/arch/x86/Kconfig
> > > > > @@ -174,7 +174,6 @@ config X86
> > > > >     select HAVE_EXIT_THREAD
> > > > >     select HAVE_FAST_GUP
> > > > >     select HAVE_FENTRY                      if X86_64 || DYNAMIC_FTRACE
> > > > > -   select HAVE_FTRACE_MCOUNT_RECORD
> > > > >     select HAVE_FUNCTION_GRAPH_TRACER
> > > > >     select HAVE_FUNCTION_TRACER
> > > > >     select HAVE_GCC_PLUGINS
> > > >
> > > > This breaks DYNAMIC_FTRACE according to kernel/trace/ftrace.c:
> > > >
> > > >   #ifndef CONFIG_FTRACE_MCOUNT_RECORD
> > > >   # error Dynamic ftrace depends on MCOUNT_RECORD
> > > >   #endif
> > > >
> > > > And the build errors after that seem to confirm this. It looks like we might
> > > > need another flag to skip recordmcount.
> > >
> > > Hurm, Steve, how you want to do that?
> >
> > Steven, did you have any thoughts about this? Moving recordmcount to
> > an objtool pass that knows about call sites feels like a much cleaner
> > solution than annotating kernel code to avoid unwanted relocations.
> >
>
> Bah, I started to reply to this then went to look for details, got
> distracted, forgot about it, my laptop crashed (due to a zoom call),
> and I lost the email I was writing (haven't looked in the drafts
> folder, but my idea about this has changed since anyway).
>
> So the problem is that we process mcount references in other areas and
> that confuses the ftrace modification portion?

Correct.

> Someone just submitted a patch for arm64 for this:
>
> https://lore.kernel.org/r/20200717143338.19302-1-gregory.herrero@oracle.com
>
> Is that what you want?

That looks like the same issue, but we need to fix this on x86 instead.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuda0AFCZ-1J2NTLc-M0xax007a9u-fzOoxmU2z60jvzbA%40mail.gmail.com.
