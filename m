Return-Path: <clang-built-linux+bncBCU73AEHRQBBBM6DY74AKGQEPNI4LAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id F26C42241EB
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 19:36:52 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id i145sf6525324qke.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 10:36:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595007411; cv=pass;
        d=google.com; s=arc-20160816;
        b=rw1XuOL96mamw2eif9xviKWVVGFLGxXqOZtAAvnNNw6BoouKCFXmondXi25IA9/Te1
         JiFbiB3poasI4Uw0ihCB1aMvYGaGth57tm8PkKoAOmZINMEDumNjCVne//hrerEa+9Iv
         9qDE5MZgz3lXANIliEH9ssUnSfY8h603I4stMI/ZO22S6UPOQl/Q3xYz5VKHle22Mb8N
         5lu3QiVD/dSN7yf8FLl5oHDgvomHKbhsgM47RuAaoVVJz0iOeT8VoKUM0MPkYaLO28F7
         xRPHuMuX+GXFtEc16IJ3xA5yHRip609LG0Y+uKifxtXTsy7s96ZlgDlrypku7pEtHj8z
         2/tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=+bpIxqcPHwB4kkXzRAea1U+lURP0oof739uu5CUAfZc=;
        b=LLByt4UPTjwwRDfu0D2bagFvNq+HzXaWAC4zgcvM2COA0jatMtVwq6wdC5IVHoP8ue
         al02+JggIXVTDuYhsojKBlpDoyFqncVwB2BUdGUN7t31NfqxagfZMxCifpMPae2+pwD1
         hAA9VUzyoFcgjv08zeKodGsJFrD30oBrYsaJLVFCnCEe+XlvB7nozd4ibCwEO+5gb/kr
         Bv6wJUg74uOYSqVQAbv9rfmH/n+hVHNBo5im7a3/jVagBtOflTmZX74wxyQ/K1Msgz+C
         rdKF65PdZzmTF1oLogP1aDRnexNxJ0i7Decm2Y2T2BoI/iVqAu/fpXrzyVxTBrIVQAr2
         CrLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=qwkq=a4=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=QWkq=A4=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+bpIxqcPHwB4kkXzRAea1U+lURP0oof739uu5CUAfZc=;
        b=X8xOkGqWrpMC8H5ZFUj0rYzc5jYc8oOgFmv0C3ggOz8ppXvNljvcHHx9p04rdQ99bL
         qT3ikniMW+OzTQlCFDFl6g2EXx8kuXdcFEnLAk3OlqoLWtSzdl79tPpOaEwbOcpq6ZU5
         hozFM5UApqcfVoFEOkeUMblG5xwdHsF7nmZHqOayxrScJB5zsd3xHDpnadboUnwoYpmw
         RTFrIKkGWZTBFFYuup92vgbexm3Y91hqlYnB1HmYjPvTMbongdRrz4D0pl9aEcFAZXiM
         J902l+4JPpv+ip8yoRQivFCnGMk6jBzcP99sFSGqdBQ24pI7pD8tjZLvKcAL0GmRzGhi
         0kdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+bpIxqcPHwB4kkXzRAea1U+lURP0oof739uu5CUAfZc=;
        b=QhZ7X75ADVqirP9IXaNLL/9RTQtEjKCA0Orp9Oc1I/Pg8WHjjbSQMFA/+I+qDbLKgg
         bCWUVXk08WiO7cSzvH7XewGw3ntKqIl444f0nuBza7iM/J8on/9lRitMr1/gGiuHSoIh
         M7CP9PUu592htbG2xNLBSyUWGInYMH6dKE/gFi2iPfimUOIBbKxjEZGF1tv87Moat2KY
         mbjBeCxw6g8nvKP0xDtACDml2124bo7UQHdCKSbZ9s83OBhf0sBtGG9JfwOrSZchFo4Y
         oLalwZ898IKhUrTmIdHel1GlwChTmTC4qeaS9MU7G8NKOgDzcdb2AhXmHjjPIjTE0KFv
         98xw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318eKtqEnCIqGCS2dgt+uGD5T+waTC87wjj1G4v/Vr69lfl7CpG
	/GeK34BIpHjSmcNrpXPzXlk=
X-Google-Smtp-Source: ABdhPJxRtTTo9kgppY0p+o2EF+zhTTpR6e6bVpxGxsDs+PhEv2jj4iEX2QWSdg6mGM3cO3lk5flolw==
X-Received: by 2002:a0c:cd84:: with SMTP id v4mr9933935qvm.35.1595007411711;
        Fri, 17 Jul 2020 10:36:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:5:: with SMTP id j5ls318117qki.6.gmail; Fri, 17 Jul
 2020 10:36:51 -0700 (PDT)
X-Received: by 2002:a05:620a:238:: with SMTP id u24mr10307319qkm.168.1595007411340;
        Fri, 17 Jul 2020 10:36:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595007411; cv=none;
        d=google.com; s=arc-20160816;
        b=nfiyVNa1cJhNQCVJfVrrvq8K3avX93HGrDN8yMMuNMgQ6Q2Y2eE7EeiyGpHxI7E6tl
         9KvniiynUArR2xPCpM+utz3fjrwsk+FCxRpUMJLzZRGhLLkkVmelx0o7fi+cMwU/9H/M
         WT2pQ4b3lh7M6ut21NLfu8Wr7K4EpZWUJbaGIO/cA4N+bEZbjhGiFrOenCyNJY2u6qEE
         GWJj3D+DPuYjyslQ23rA5qPwytwuphAWy8mRVHxrD8YUEKhuZyZ+sMrH3qJmXksWwSiM
         /YlF2fTtdZyHoor81nlMLqRnmxLX4PCFB09BcXo7q3N+zmNpoyaq34cX2YKzoyYmnvc+
         SY7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=g+QxGmgT4Y7xEif1US+bUUNoz3x7r8iUBueJvZ4cS8Q=;
        b=sDNRp0UnDByX+Cd9EVNUejBvGQXiByzaaWit+Gf3Xuto4MqgiYYCu1v6nVAsib3dpM
         GxS4dZetN0f1d5QAFrLq91gzeQMH964ZkpLsf1xHaDkzpOIxHaN1QX62QgEYc5yU906l
         PrzH3eRxkHASr+WmBJ+B0TT930q9IfDO20pt87JVnetFR07s2BXAaL2P9EUKpse6QNRx
         iilY4LNXrHv7MA9XDnFZRila3s6od7uCJoQKfCK/BQkyKS83A9SC5nLD7w8BSea2F8y6
         7S1xv6dFEasv3xJaI/OBksj/fq9POrkYF4QhKurR8DsL9ygySfJACJTdm7Y/4F6FACqr
         l9jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=qwkq=a4=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=QWkq=A4=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d27si377824qtw.1.2020.07.17.10.36.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jul 2020 10:36:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=qwkq=a4=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5A01420717;
	Fri, 17 Jul 2020 17:36:48 +0000 (UTC)
Date: Fri, 17 Jul 2020 13:36:45 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Masahiro Yamada
 <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, Kees
 Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Kernel Hardening
 <kernel-hardening@lists.openwall.com>, linux-arch
 <linux-arch@vger.kernel.org>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, linux-kbuild
 <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>, Josh Poimboeuf
 <jpoimboe@redhat.com>, Matt Helsley <mhelsley@vmware.com>
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
Message-ID: <20200717133645.7816c0b6@oasis.local.home>
In-Reply-To: <CABCJKucSM7gqWmUtiBPbr208wB0pc25afJXc6yBQzJDZf4LSWA@mail.gmail.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
	<20200624203200.78870-5-samitolvanen@google.com>
	<20200624212737.GV4817@hirez.programming.kicks-ass.net>
	<20200624214530.GA120457@google.com>
	<20200625074530.GW4817@hirez.programming.kicks-ass.net>
	<20200625161503.GB173089@google.com>
	<20200625200235.GQ4781@hirez.programming.kicks-ass.net>
	<20200625224042.GA169781@google.com>
	<20200626112931.GF4817@hirez.programming.kicks-ass.net>
	<CABCJKucSM7gqWmUtiBPbr208wB0pc25afJXc6yBQzJDZf4LSWA@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=qwkq=a4=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=QWkq=A4=goodmis.org=rostedt@kernel.org"
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

On Fri, 17 Jul 2020 10:28:13 -0700
Sami Tolvanen <samitolvanen@google.com> wrote:

> On Fri, Jun 26, 2020 at 4:29 AM Peter Zijlstra <peterz@infradead.org> wrote:
> >
> > On Thu, Jun 25, 2020 at 03:40:42PM -0700, Sami Tolvanen wrote:
> >  
> > > > Not boot tested, but it generates the required sections and they look
> > > > more or less as expected, ymmv.  
> >  
> > > > diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> > > > index a291823f3f26..189575c12434 100644
> > > > --- a/arch/x86/Kconfig
> > > > +++ b/arch/x86/Kconfig
> > > > @@ -174,7 +174,6 @@ config X86
> > > >     select HAVE_EXIT_THREAD
> > > >     select HAVE_FAST_GUP
> > > >     select HAVE_FENTRY                      if X86_64 || DYNAMIC_FTRACE
> > > > -   select HAVE_FTRACE_MCOUNT_RECORD
> > > >     select HAVE_FUNCTION_GRAPH_TRACER
> > > >     select HAVE_FUNCTION_TRACER
> > > >     select HAVE_GCC_PLUGINS  
> > >
> > > This breaks DYNAMIC_FTRACE according to kernel/trace/ftrace.c:
> > >
> > >   #ifndef CONFIG_FTRACE_MCOUNT_RECORD
> > >   # error Dynamic ftrace depends on MCOUNT_RECORD
> > >   #endif
> > >
> > > And the build errors after that seem to confirm this. It looks like we might
> > > need another flag to skip recordmcount.  
> >
> > Hurm, Steve, how you want to do that?  
> 
> Steven, did you have any thoughts about this? Moving recordmcount to
> an objtool pass that knows about call sites feels like a much cleaner
> solution than annotating kernel code to avoid unwanted relocations.
> 

Bah, I started to reply to this then went to look for details, got
distracted, forgot about it, my laptop crashed (due to a zoom call),
and I lost the email I was writing (haven't looked in the drafts
folder, but my idea about this has changed since anyway).

So the problem is that we process mcount references in other areas and
that confuses the ftrace modification portion?

Someone just submitted a patch for arm64 for this:

https://lore.kernel.org/r/20200717143338.19302-1-gregory.herrero@oracle.com

Is that what you want?

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200717133645.7816c0b6%40oasis.local.home.
