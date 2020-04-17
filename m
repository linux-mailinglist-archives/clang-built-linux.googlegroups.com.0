Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBR4V472AKGQEKP7VXVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF391AE10B
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 17:27:04 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id s206sf1042621vke.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 08:27:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587137223; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rt7wnyzsMRWUcZM/370pZ2nHceqTuGalIIEWnfWSuh69Ut7WMu1HLKkHmIZqvQ/N0O
         /t/zQBE3A0YTMYJ6H3hnO2Rmi9q4tYSpLIKXJD7otyCp3dGdIm5tT05prtQW/rTDm9G8
         vOynAVReG0oIbc5j48xiGGZSkq5VnqrCSFUI1t5CN85qZnLjSaRWBINjdUmh2LOHUdbG
         aG9YrvwAAU1qcPsa7lH8db2wKOKa1/101S0ihdrBa2sHWEOUTrFqioxPFwdt6sUFx6PQ
         TiT34tX4oXgTxLebiiuPhriNq1eAyVPtOdKLTOFWguKHLZmqHKDPZCasQGK1fO5qQvXK
         ACWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lTB4NT3peZr4DIH5jT/ACQocy4q3Y7oTECyKsFE8XT4=;
        b=TWUkEprQc2YqUbERNeJuO1pesHhJJ4pVVZe8QwEbnJ8W0gpsIkLKqJPP+YfUqZDRZ9
         y2n9V0rjUqXp5gygLM5NTxxcymvqm31Z+Xyoo6jSNNOSxqUazXNicKv8cbSPKyvoqOjc
         o86Cu7fu9GWpKWWa6l7CNCv9sBvbfFXFgkCxQSFJqh/ksj7VcAjCCsRAz/bM+bROhBUD
         U8oX7EUJJrx+zqCYFQbfeOekBpsarkMzbabXNyoo3EUsu0CgKUMeSqerQxY/AMn3Z/Y4
         8ar/EZYb4t+bY+ji+3+kv8o4MR7/CvEU/DxasoKs/gKgjr+gO68Llpr3jJ8K0xYmvGqu
         k49Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=PsghyDdO;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lTB4NT3peZr4DIH5jT/ACQocy4q3Y7oTECyKsFE8XT4=;
        b=mriwwyz05iTdt2vvmR5CxEiuP0Xk/QO9Re16yUbrDxSaGfub44nhifgkGiTJN0F9n3
         A8EokYDr8tLyfQofY+WTNy63/fZ/E4Czg6p7cq8nPSjB9DelhSbnKU5rN11kpaEkarN5
         /BYCaWWj1DUwMIAFhQ8GKTtZTWR0JFvaGfkIAJn4nEOX7T+GRXbjAzp+rYYrPrGKaSrb
         Ovvx+FxSldlt2jqhVqGrHA/4u53MLinFa6mLlCLKvcta2yRIOkswaMRQ8LEofxCoiUaw
         E16WpPm65G4G6gvJbS+ibAmBMNGlgn/ePq1ckFQGCI9Osoy3zloNpQg20YZOJRtvhFHl
         CzpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lTB4NT3peZr4DIH5jT/ACQocy4q3Y7oTECyKsFE8XT4=;
        b=ni2fj6ocL9lu1a3uXrYMouZTFEQeW6QZkvPN+C0/vp3IkG5+gzPaeBnBKlbP8ElICo
         hfCJhrUNlZAiCXWSelmhGxGIGVwhRfaIo26d+OdCxOLP+LaZrzVBooP1iuOEdGW6iJ7+
         jiiA9aMIce58n3m0HesyAXp1nU1ne7I8UPmNkT3ejdad4RIOTqO7XOiGXsTtRvrfPQeh
         dCw4wrJCB5La5zCyCZqSz+4SqgqFKgDd2q6mO91IyTorgb3eQr2FBqqCkgoVLCIu+n9O
         dNOpbU7V4bnsuw+2w77EM1sHrm7TvXvOf6ewRutkp0gxFcKVRpJFAK3AOg2S7Y7/qhT7
         hd0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYmMHkbq5c5SjdalJjnZ3TpgSLdoGzcRVLwkZaJUUMGFrJ/VM8T
	yyic/6C66EmwkI2Iyw7fWwM=
X-Google-Smtp-Source: APiQypI2V+OG82RRz5H2EsmMGdjk6twhtdUb+oQRUUqX9h7e+14yYEPVo5qbnMlV4fR8tfo4k4djew==
X-Received: by 2002:a67:e40c:: with SMTP id d12mr2779914vsf.143.1587137223720;
        Fri, 17 Apr 2020 08:27:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f10c:: with SMTP id n12ls387197vsk.1.gmail; Fri, 17 Apr
 2020 08:27:03 -0700 (PDT)
X-Received: by 2002:a05:6102:2269:: with SMTP id v9mr2949334vsd.229.1587137223302;
        Fri, 17 Apr 2020 08:27:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587137223; cv=none;
        d=google.com; s=arc-20160816;
        b=Nj/1Yds0lW8ckI2+4aGeZ2eV0RCqPdRmnIKG5hyWmX7UD0D7cBAp6kWgFeU8jLAfa5
         Ts5kygfxfpDro3qh3VO0yctEVRmkb/hzNtksxTi8z6i0RdcVJUXcbvXPHziQA3gPcHbO
         EwpQ8Jv8qVLH9Ybg07xJ1kSMtJXJ6TP4j6Zb291vXmClInEoeixbhoRM6EWGkHpZKMmF
         F7JnzJPCmtUZm6G0i7EKTy5bPVn2VeNk/sdUvqpeaJs8d1AozMDpQX/X9Thdwe2VSknl
         ui22wzbxc+3ES9AUbR+Sy1d6Xctq2Oss2mOwCIVDWahdomxAbkMrCaZHf6saKWfV3GYA
         h+lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Yqtf2Cr9VCQpUS0GldnV7JK60DFB1BUHRTQDFzdrac0=;
        b=OPoBihnic7gZKaNS6GcPuRMYlLvTKwWkWnf4oip37V8X4q5ro3chO6/IDbS+NdRRfX
         /1ZmxEAHVfandD5pBa5eX6j1+TEPNDBwESHY4cBJSsZ5dPMcZMsvHwxbolxbym53V61y
         bFqLAZphNZF5pEPWa8QgZnP1GAyTw6mR+PJ1Liji+oYkTMoGmIpPEloB3hXzF4F85tKc
         tpEsjpRKtqYh63SIekp9H5JPslqdifndK4R0DMs9dBI8TxcacuD/2KUo6+vOt8unB1ju
         ztcPhvsWYCPVjQWeSMtnO4KR4h/YZy6Fx6CHCOosSBXUW/Lz/gGUnyOJovgbpj1UUwIn
         Sw8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=PsghyDdO;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id t191si1668222vkt.0.2020.04.17.08.27.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2020 08:27:03 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPStE-0008Sz-Ht; Fri, 17 Apr 2020 15:26:48 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id DF502304E03;
	Fri, 17 Apr 2020 17:26:45 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id BFFE02B12192B; Fri, 17 Apr 2020 17:26:45 +0200 (CEST)
Date: Fri, 17 Apr 2020 17:26:45 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>, Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 04/12] scs: disable when function graph tracing is
 enabled
Message-ID: <20200417152645.GH20730@hirez.programming.kicks-ass.net>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-5-samitolvanen@google.com>
 <20200417100039.GS20730@hirez.programming.kicks-ass.net>
 <20200417144620.GA9529@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200417144620.GA9529@lakrids.cambridge.arm.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=PsghyDdO;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Fri, Apr 17, 2020 at 03:46:21PM +0100, Mark Rutland wrote:
> > > diff --git a/arch/Kconfig b/arch/Kconfig
> > > index 691a552c2cc3..c53cb9025ad2 100644
> > > --- a/arch/Kconfig
> > > +++ b/arch/Kconfig
> > > @@ -542,6 +542,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
> > >  
> > >  config SHADOW_CALL_STACK
> > >  	bool "Clang Shadow Call Stack"
> > > +	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
> > >  	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> > >  	help
> > >  	  This option enables Clang's Shadow Call Stack, which uses a
>  
> > AFAICT you also need to kill KRETPROBES, which plays similar games.
> 
> Hmm... how does KREPROBES work? If you can only mess with the return
> address when probing the first instruction in the function, it'll just
> work for SCS or pointer authentication, as the LR is used at that
> instant. If KRETPROBES tries to mess with the return address elsewhere
> it'd be broken today...

To be fair, I've not looked at the arm64 implementation. x86 does gross
things like ftrace does. On x86 ftrace_graph and kretprobe also can't
be on at the same time for the same function, there's some yuck around
there.

Rostedt was recently talking about cleaning some of that up.

But if kretprobe can work on arm64, then ftrace_graph can too, but I
think that links back to what you said earlier, you didn't want more
ftrace variants or something.

> > And doesn't BPF also do stuff like this?
> 
> Can BPF mess with return addresses now!?

At least on x86 I think it does. But what do I know, I can't operate
that stuff. Rostedt might know.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200417152645.GH20730%40hirez.programming.kicks-ass.net.
