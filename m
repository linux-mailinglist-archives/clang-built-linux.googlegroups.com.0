Return-Path: <clang-built-linux+bncBC2ORX645YPRBOV7Y74AKGQE27MUJ5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5802241C3
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 19:28:26 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id v25sf5526105lfq.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 10:28:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595006906; cv=pass;
        d=google.com; s=arc-20160816;
        b=mU5/puIEiEKkePW+cM4nSbdcpgl2s+1PDip1MH5mGMyn1r+vNdOk2ED4lQ9QG8rKYw
         hXOFR+8vhOKkMEgQGx7dP5IRD61JQ+g7R17pWJFPI+hrKOiDwvSlcXDjCFyZignGmLbF
         wc99IDsVuMX1RzMvxah7GpZb2T0ljRr4mocyYa9pCj7/xznyvQn8Qdtsg2JaPF3Fbf/k
         pAfhCaVLJGeSPozywC1cXtt0yt48+0mIE+/8RuWNNuazLko4g1sdFVtmiGXCoqGyEUof
         XwL/DkhJsq3BQx7/ppQH7PwNxbbwAFtgWDheoti4Fk1Mkjie5sURjYyj+bq8Xo8cxf5q
         rgtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FF0dVJp9VFoXuckL1xTrcoTUa+28+IJ8LgYBSYJpdLk=;
        b=QiAI0WFfiVFOL4Etg3nGF/AWjPSxoEgotoPhD9FGOLWpYLLeJ5fg0/UmeEfGCBFVZa
         K3Aqhi8MkcxOqK7wBFF706xUR2VGo34U21z4dCTtwOjP7KTHpbn9vE/T9Nw42PO/9miY
         lwCLJHvYm8s/v86NetCEwwUcmBSmliyO9aWT7YdLIcD6fWLxibHC8IMaNM9Pbt6vRY7w
         DFtDaFqAKiDCjPWJ/guAK5iWzpxQVcyuPozR4GggNXCcy3D+at1OOEVx6ykhrbEd9Upk
         BowN7Pjw1L6XmcU6FPGH+3o2LgE/HZOPsJ5zi1AVkQduvqXXvJCBiow7yKa3NJ/N0s4S
         EjLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qkRGYkOM;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FF0dVJp9VFoXuckL1xTrcoTUa+28+IJ8LgYBSYJpdLk=;
        b=W+kKNx97uRoLxfyuVi+8hi9Mc5WRVOS0NkzSlGgJBRo5fQI9Te94ohY5eYRW0qOiE3
         /1K+zJbHu9y25SGO8JMlF+3qUi+dQY4K8FiYA0sW7SK6Oe8ZqcEcfJ2RmmZSIHALaDq7
         wbvuSuhKtSfx3K40ElIMUR6m6liY8aSL9MkLrSa3SdTkNrqd8XLaNDXw3ylba3rUvwoc
         jvOkLeEPfgzOmrVajoEGeDMHU5Qx2oUqjP0IV4qElex2xjcFuyBFMzB3WOSYENCTW6Nf
         e1mqDmHCFwZBcX8KFwoZFVP9Ll44QrwDFYpUNWo+Tvci6e61bE3ONQCXDeW4riDFK2ra
         XnZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FF0dVJp9VFoXuckL1xTrcoTUa+28+IJ8LgYBSYJpdLk=;
        b=A3GQ/XkldhE7m9FiBsVoOt1fBSxI6tdDiehbs29dTt5qSknjzoWK8ah113cTXLOEa9
         1z1rMZfrFPQ64Vi5fIuqpS04UNY9sZ+emgaJtex1FB5AXO0Jz3SY9l/CBj537j9gZ7xl
         HsI96TDdLPoO4KXH3JFH2fq2plGLlDFJZ+cs2GzgZpcWH5NLSgTsRzQevbTLJSkoNufr
         A8LOadriFMM220Igb/budeFYSMTFO8JadNHYe9YMLxPkNkuxqKoL1zEi2eEo1XafLFmr
         y0lX/bJF7D1Ey5Yqk0APuHq11BxEKZacLggDWNHwcTiZxA0iukqdE8fstX1WWkraB2G0
         p0Pg==
X-Gm-Message-State: AOAM532RGyMJCyfjisWL41iggRG/2e8KGTF8PGMQhLAW31Cyj6nDNfSk
	gvWny18nnux70etnN8rLx4E=
X-Google-Smtp-Source: ABdhPJyz26oDvZhjxJj126kK6Vj9gFRbyJsuA7RNXvqQFUDGcGUFwoYEuxuKXqmsHRZCF0rfCih0mA==
X-Received: by 2002:a2e:9e5a:: with SMTP id g26mr5204918ljk.207.1595006906122;
        Fri, 17 Jul 2020 10:28:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5e33:: with SMTP id o19ls354498lfg.1.gmail; Fri, 17 Jul
 2020 10:28:25 -0700 (PDT)
X-Received: by 2002:ac2:5611:: with SMTP id v17mr5299858lfd.29.1595006905446;
        Fri, 17 Jul 2020 10:28:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595006905; cv=none;
        d=google.com; s=arc-20160816;
        b=YrLPAb83gzbTvQUv0BEb/4WrDaDp/UBlck8cRsM9pqqMepiEQDDENE8bKFxtlPjjAS
         /ZaChL0bFmKnWoiGY2nsNqnxkAB3lvBQ8cXT/2mInL5tq66o+GL+IS6Le0HLyrWhotqB
         EsmoV+RvepztWQVnBjOMTe/L4d2le7DdrmjW/u2EZTwE7oaSXnVAZUdzWF0JMmbN8JnF
         t5jkgxI+XNCvBON8l/p6qSdzUsDUn6T3VmkK4tDTHZFSDN0ClUd6FxD1lRpB1lyNs6Fu
         4nI4s5Mih4h7gH7WedPwuDUr/czvVrzI7GvNhw5fqssacGTyFhv0w6gC16HLSMZaUNZT
         sQ+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7JTqB5slGWNqmPcHQg0gX2jPDhSmZshqLrbRwDwrvQQ=;
        b=OSAaT+BLKnJSzUdI3vfvUS6GUW5KhE4bfnFP03grruzocwryYJqyEokLYlvvKEBurk
         fFuD0puknAop5EsbPVGzYYtoFV8BA0VVuFhzzQHFkTSBpmT6NFnJXG46tMPJFeRj4hBo
         lWP27b+TBkrSkhSjMA2FUi3WWmepnpbWz/R1xb0PSIJ8mrToPxPjYauqXxEdMHoyh10m
         Y8WUaAed4cDh/Ilm1Ufzo4aMDolQrePv/yRSighOqSuhlJi10uxQEYPpsCxPiSfC22tg
         4tcMnU7dJZFEzbeYfo9tJXlQoT9eGOQhobLYnPd2f+pftaEZ72oy1ZHUMEMAqOtIY+O2
         2oGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qkRGYkOM;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id y2si587685lfe.2.2020.07.17.10.28.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 10:28:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Received: by mail-ej1-x644.google.com with SMTP id br7so11683494ejb.5
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 10:28:25 -0700 (PDT)
X-Received: by 2002:a17:906:eb93:: with SMTP id mh19mr9298900ejb.552.1595006904583;
 Fri, 17 Jul 2020 10:28:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-5-samitolvanen@google.com> <20200624212737.GV4817@hirez.programming.kicks-ass.net>
 <20200624214530.GA120457@google.com> <20200625074530.GW4817@hirez.programming.kicks-ass.net>
 <20200625161503.GB173089@google.com> <20200625200235.GQ4781@hirez.programming.kicks-ass.net>
 <20200625224042.GA169781@google.com> <20200626112931.GF4817@hirez.programming.kicks-ass.net>
In-Reply-To: <20200626112931.GF4817@hirez.programming.kicks-ass.net>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 17 Jul 2020 10:28:13 -0700
Message-ID: <CABCJKucSM7gqWmUtiBPbr208wB0pc25afJXc6yBQzJDZf4LSWA@mail.gmail.com>
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
To: Steven Rostedt <rostedt@goodmis.org>, Peter Zijlstra <peterz@infradead.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
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
 header.i=@google.com header.s=20161025 header.b=qkRGYkOM;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::644
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

On Fri, Jun 26, 2020 at 4:29 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Thu, Jun 25, 2020 at 03:40:42PM -0700, Sami Tolvanen wrote:
>
> > > Not boot tested, but it generates the required sections and they look
> > > more or less as expected, ymmv.
>
> > > diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> > > index a291823f3f26..189575c12434 100644
> > > --- a/arch/x86/Kconfig
> > > +++ b/arch/x86/Kconfig
> > > @@ -174,7 +174,6 @@ config X86
> > >     select HAVE_EXIT_THREAD
> > >     select HAVE_FAST_GUP
> > >     select HAVE_FENTRY                      if X86_64 || DYNAMIC_FTRACE
> > > -   select HAVE_FTRACE_MCOUNT_RECORD
> > >     select HAVE_FUNCTION_GRAPH_TRACER
> > >     select HAVE_FUNCTION_TRACER
> > >     select HAVE_GCC_PLUGINS
> >
> > This breaks DYNAMIC_FTRACE according to kernel/trace/ftrace.c:
> >
> >   #ifndef CONFIG_FTRACE_MCOUNT_RECORD
> >   # error Dynamic ftrace depends on MCOUNT_RECORD
> >   #endif
> >
> > And the build errors after that seem to confirm this. It looks like we might
> > need another flag to skip recordmcount.
>
> Hurm, Steve, how you want to do that?

Steven, did you have any thoughts about this? Moving recordmcount to
an objtool pass that knows about call sites feels like a much cleaner
solution than annotating kernel code to avoid unwanted relocations.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucSM7gqWmUtiBPbr208wB0pc25afJXc6yBQzJDZf4LSWA%40mail.gmail.com.
