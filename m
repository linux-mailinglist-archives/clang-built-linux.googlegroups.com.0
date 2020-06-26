Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBJ5Y273QKGQEZVSUP5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 852A220B079
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 13:29:43 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id s134sf10650498wme.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 04:29:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593170983; cv=pass;
        d=google.com; s=arc-20160816;
        b=u4Nw/ABuEOhXHOcu5an6JqmqxKXN2r9vImr4kwELcgHt/t5WwVb4Nzkz3ku+wMoXIe
         SqJhP5C5Ki4i454cy2jzTt4bJdQzMEDmIqwlhUw9I0r8FCpgLtiGBBJnTzS/zHMAk0EY
         aY9WJQ1hvwhtLRLw/vI/Co+VbVM7VRnFRhYQbvRNGylFHZY6nYGSUj/ISaKrrR/Is9dU
         VKmxXTm9WhrTVfk9mteKTGb2QxrzKbfUOSSR2WA0ZQ4U+Fesy+Jep381S3qdqUMJ+nXR
         U2J/51p8unBI1Xxxy9RNIsG9+VQ9j75ru3gfRV9JNf/B4ddyaj6vZuTTTwH1oLEcTako
         7S8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7UjA7uF3cipHJquVcT7r2WRLZcYKpcs4RqraWFn1nKM=;
        b=toGsQ0pAcE5XLenMQgoSUqNiou4YcxVzxs4IULtXRGR02JyZtI08LRGm4thPJRoFK8
         Bik7756+69PtXt+4sA6pNiLN2vdIH3+cl/6HcSDG/kY9GGGTFW1qwMmmXrIczVBBymGW
         mOB51elRg235OXK0CVcFjIsgbpSipb4uPF7LiYC/pbrYreMrQm+w8CCdQACNlsA9A7qN
         /Vwe+hq1TYXXQmmkjnn2c97GX6xYmU+t3iEUKGhjdhEJMGXUULT32TC/2D7v0kKY1OmQ
         zl8BKJYmO3HO770nrjAiG2EKnxtqRYAJL0I1g2HxmbDRZ9GiA1KlGmxJ+E+q+q6cUPkZ
         Hepw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="EGCO0/B1";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7UjA7uF3cipHJquVcT7r2WRLZcYKpcs4RqraWFn1nKM=;
        b=omrUxpspg8ha99C7S6n8ubroUk+O/2hrEsdWoouP4RIt5BpSL/O8yQILUB6JBClIsv
         SAHo6i3ZzTGrNYmyjKjqvZgmsadjQQUxaT4R5NpYvZ9OSyk0gsVpSVkTNCaZ52pcPdpL
         V/X/bcsrD5yZYc15z+/Hx6kKTS3iu7GkWzAyI9Uw1HsN6xmwUaKGnq1DjoPCrTJb4sy9
         IYIU9AkYlyn3/m3Zc5vynG/u8XKWcmZbcGFqQBQa6Rs/T8FKZ+I1+3tYo/3gaZpMCeBr
         3+vjmDpvtHpKKFse3qi5qOVNTk4d0NxjbVjeGSA/RILwU3XYS55RGXwBGWkF+BNokcK5
         6sBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7UjA7uF3cipHJquVcT7r2WRLZcYKpcs4RqraWFn1nKM=;
        b=SxClejysqVMiOOz0vo3oeNkqHXE+prH70lDdvdw6MDTaVWvKPvOEqrpFwRNEpSyu4/
         c/IKZejD2G+4X4/92ZPfvXIQvxzqQP8h5rxiZ5ASEflk3BY3OR9GoSsxptdU9fUSJu8u
         Kp++Trc04tLWMZbVQO4J00qvk45MUzSUpmTxkKrTpS5xqCh2sEdrNR8yF8cQ7XDpNT0t
         pO4dwrcUlnu3p0U6+8zVX6QKxFEgf39GUNGG4f2/MieuZm0aPIJ7PMIQnbtWdsmGtcnd
         fQpqCyxdz+LDpmBfCsND6p2AB8Z96HZjfVS+1MQCI1/nsAFxEVSOJsrjhFqrv/7uedND
         00BQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nJbYXIzgwKWRr+cSWiOMXyg7VShdMv2GJmF+Tm1vJXiZ9imQt
	CYPvFCUE5sGnUls4oTSZSL4=
X-Google-Smtp-Source: ABdhPJxQBTV8VaZf+zXb40XW+RF+yvo9/dbn18yWbW3LwErTvUBdBLu+bVmRWVFiGTw858Fzkcd96Q==
X-Received: by 2002:a7b:c345:: with SMTP id l5mr3066162wmj.31.1593170983236;
        Fri, 26 Jun 2020 04:29:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f58d:: with SMTP id f13ls369701wro.1.gmail; Fri, 26 Jun
 2020 04:29:42 -0700 (PDT)
X-Received: by 2002:adf:f745:: with SMTP id z5mr3445969wrp.128.1593170982788;
        Fri, 26 Jun 2020 04:29:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593170982; cv=none;
        d=google.com; s=arc-20160816;
        b=DKd37degK/1DP0vMKsWn34krnZZKUXxolz5E66xwrqkPaT3YD+0k29gnK/7z1f1xY7
         pVs1u/+UH4BpnTxepAQOK4uFGPnw5HsIBdF1S4rseSlZlEwF25LkyKUHRr4FxjAE/LQl
         z/Y/LfxHrVPXvIru5aeinxfLJXoqYRl0tF198Pm0oRgDpNcrmDSayqZP4diHG+cy+DdE
         Qldi3IOx+X8vB2ZJ5AcMyyujgTxEqBwHnLAbqdtRoIOG8Eqxqlxv6pmS/X4mg6norGM3
         wkPJ7fZwkvjbPqtfiDssFpOFZV6TwtCKOIvbpuabP8miPKa4bW/eejmUH2Q5eyyRlAaQ
         F7YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0MTNUdpvCFV2C1ooAXJ6Vvth7dm0A8sUroqcq/z5uD0=;
        b=x1Ja2eD4urhiFq75Hdt9In33hGmrfEhpzkwMaBir86EarVxvQjWvdXB2WmanL/3kl/
         LHKnUz0pTLfxTpEVj1KlcCIVyg8c6IcF+UYQs5pj2ytfz6rSuI2IIkS/YD1zT8Bk1Bmz
         ASTkR2OARk9MmsSR7hXXMyg4Xwrx5GSmiC1snbwCX/HAm2t/mt3vOxXAMNAHzhv3UTai
         ipXc2pRZu78nU7RtS7aCNAtuwGiCcaOMojlBhbwIsZS632WZ513Scy0PVpl8SLapnG+h
         0i+MATRNCb8jPIbEVqNrrFPiCDYCPfW1OKLud7/rgqMgQkFgj1C3EpdbUKkFxF8C0NWg
         e57w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="EGCO0/B1";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id s18si504295wme.2.2020.06.26.04.29.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2020 04:29:42 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jomY2-0007sF-0f; Fri, 26 Jun 2020 11:29:34 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 61A90301DFC;
	Fri, 26 Jun 2020 13:29:31 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 4048629C95961; Fri, 26 Jun 2020 13:29:31 +0200 (CEST)
Date: Fri, 26 Jun 2020 13:29:31 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Steven Rostedt <rostedt@goodmis.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org, Josh Poimboeuf <jpoimboe@redhat.com>,
	mhelsley@vmware.com
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
Message-ID: <20200626112931.GF4817@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-5-samitolvanen@google.com>
 <20200624212737.GV4817@hirez.programming.kicks-ass.net>
 <20200624214530.GA120457@google.com>
 <20200625074530.GW4817@hirez.programming.kicks-ass.net>
 <20200625161503.GB173089@google.com>
 <20200625200235.GQ4781@hirez.programming.kicks-ass.net>
 <20200625224042.GA169781@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200625224042.GA169781@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b="EGCO0/B1";
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

On Thu, Jun 25, 2020 at 03:40:42PM -0700, Sami Tolvanen wrote:

> > Not boot tested, but it generates the required sections and they look
> > more or less as expected, ymmv.

> > diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> > index a291823f3f26..189575c12434 100644
> > --- a/arch/x86/Kconfig
> > +++ b/arch/x86/Kconfig
> > @@ -174,7 +174,6 @@ config X86
> >  	select HAVE_EXIT_THREAD
> >  	select HAVE_FAST_GUP
> >  	select HAVE_FENTRY			if X86_64 || DYNAMIC_FTRACE
> > -	select HAVE_FTRACE_MCOUNT_RECORD
> >  	select HAVE_FUNCTION_GRAPH_TRACER
> >  	select HAVE_FUNCTION_TRACER
> >  	select HAVE_GCC_PLUGINS
> 
> This breaks DYNAMIC_FTRACE according to kernel/trace/ftrace.c:
> 
>   #ifndef CONFIG_FTRACE_MCOUNT_RECORD
>   # error Dynamic ftrace depends on MCOUNT_RECORD
>   #endif
> 
> And the build errors after that seem to confirm this. It looks like we might
> need another flag to skip recordmcount.

Hurm, Steve, how you want to do that?

> Anyway, since objtool is run before recordmcount, I just left this unchanged
> for testing and ignored the recordmcount warnings about __mcount_loc already
> existing. Something is a bit off still though, I see this at boot:
> 
>   ------------[ ftrace bug ]------------
>   ftrace failed to modify
>   [<ffffffff81000660>] __tracepoint_iter_initcall_level+0x0/0x40
>    actual:   0f:1f:44:00:00
>   Initializing ftrace call sites
>   ftrace record flags: 0
>    (0)
>    expected tramp: ffffffff81056500
>   ------------[ cut here ]------------
> 
> Otherwise, this looks pretty good.

Ha! it is trying to convert the "CALL __fentry__" into a NOP and not
finding the CALL -- because objtool already made it a NOP...

Weird, I thought recordmcount would also write NOPs, it certainly has
code for that. I suppose we can use CC_USING_NOP_MCOUNT to avoid those,
but I'd rather Steve explain this before I wreck things further.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200626112931.GF4817%40hirez.programming.kicks-ass.net.
