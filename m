Return-Path: <clang-built-linux+bncBCU73AEHRQBBBIX34H4AKGQER535SPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7C0229EC8
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 19:55:47 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id x6sf1907221qtf.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 10:55:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595440547; cv=pass;
        d=google.com; s=arc-20160816;
        b=QUm05djuQfhAFs3xCHtmfVe/T+jO+lM5UQKO/lDQTeP3mrNvsp2LQ2GaYONo87m5px
         +uATn/QeBnFJJCYeiZpouT/SrLe7aTODHzkoNL8dayKVHRnrL+l/zZHzL5yMCA9G4e86
         xboeCxv5k4pyLpc5A2FxMlSkXsssyJssHmypr/VTVHPX9eHpdQLholrRlOOteQva2rJx
         QAYFoInEukWrAxUrivNPCH7YTHLOX8IocmBM++ssVImfMAPBIGqOrlV2uAQzGULdkgwi
         iux3LUH2pzIi8RQNfr6rADyMOWhI7T45t+rOxN2kb3+wzB4113+eC3a1w2g+mRSmTgyl
         1UIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=0Mj0Ymn09/Y2+luQC4rFBwhEDrsYeb+IYkkuqmiuuOc=;
        b=EV+Jd9SzIZRIaCa65gXXnFVcSmJAVUD70s8dlPKhYTzp7EPV5GTkrkf3CsZi2FP1dB
         RJQniIk2H99ecldEWRU2CnU2bmLL0fiSg1SCYBCfpbeTyfE4a/Efbi+ak0Fih8kTNgSN
         5yWl3PcKZeAL4nxOc6rOVDHmJcPErAP0WRHH3FOvFiSe1VU37tSugHwpxNmkAEbWYMk/
         mYou6cAzEDUp1Ztl3v6W8WsUc5jhNYItVEwsG4lH/QtUr5PqOfb0AQATEGgmLcmZbqbH
         rf0vpHCQ77bJIOzbvxpyJDP7HcW0QJhjVM/wbwOFGFoCBYtyk1SJFjaGW7K8ZyqfKhtM
         JfaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=kbms=bb=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kBmS=BB=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Mj0Ymn09/Y2+luQC4rFBwhEDrsYeb+IYkkuqmiuuOc=;
        b=tdoptEeYAjqgcCmGVdsW3I/rkgOIjXFyhbMQZLpkiAmN/B0yNvdWygl9diU+aDe46d
         N4ZH3Fw1LAfrgbhjLhaUhTi39jRGIju1lLdlFhZL+10smUBPm5PkG0ooh5UjTwGnwQ+g
         T0rpxOdwOMX8pF13jh/rxpEhNtbjkD/6SH0YaOkoTjc6DBylUgO15OuyyHGocIZ5KwE1
         fUhRsIqMSKsnl5Nn2wG/RCr8KiCg5O2AXZUNFpYSvmx8UrzHhj/63afhuv4SIOWOqTSG
         Sv6Z/y2z4DoAHaBbM1kpiTJ/RTDNlcKtTGcYL0HY+GQnZaN0sJFBX7oqLqEt6uL+bbgy
         ckMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Mj0Ymn09/Y2+luQC4rFBwhEDrsYeb+IYkkuqmiuuOc=;
        b=MZ9OBCKJFAgHB8ZIx7fGgA3UmQyNHg05jnABJTJs5FKUgsJDB9GGm22AfrN/DBgkp7
         h8eGWjsz/pVE521Rl4xbcyOnOlyHKcSfJKfQxQynNt47hegqPw4poi9GCCgkMAF0DTUX
         zx7b7NC0QnsBI05OvFF1tXx6eNIonkmdwz3OZQrch9iM8OEzhkqfWBNzFFMPPQpNhIZ6
         PNMSJVAQ9ZBtkkWwKNC8hbc/8l/a1IMzCARh5RKMWJDZIMB2JhLqCwvmya6/4VjS4tpA
         WenND/wJKR3n4KHaO4Bk8kM0J+rXqAznPi45G+l+Wq2ym9WnpN8U3OYkNq6fBTZgbeIH
         i+hA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312OfotYVDQ5/yLx4EniYB70ugElDnMSKvTWHXhv407HFJIalZq
	EGErQiXdg68JG7CFUulTGZs=
X-Google-Smtp-Source: ABdhPJyP5RGhI/GptOdWqcs3pegSTDS4WnZL4X0z3lFuUtSSSbT4ffEDy7T//TfYSofHR8zSpvc1iw==
X-Received: by 2002:ac8:4251:: with SMTP id r17mr551130qtm.372.1595440546885;
        Wed, 22 Jul 2020 10:55:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3612:: with SMTP id m18ls1177041qtb.9.gmail; Wed, 22 Jul
 2020 10:55:46 -0700 (PDT)
X-Received: by 2002:ac8:6d01:: with SMTP id o1mr506522qtt.277.1595440546575;
        Wed, 22 Jul 2020 10:55:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595440546; cv=none;
        d=google.com; s=arc-20160816;
        b=K4Paz0N8QhMSOsWQpHTQBZ6m0VoKTlnCYl0PO3NIxGm37iJpgypoy27Z12sMZB5bhn
         MtypNNdZiKkvl2YbazDGT0LBUf8hxD/qm+BqXTCVN2k+t3WE547pF+D0guwkVNaCWMn+
         o29b7mcED9AQsBGZ4ZmtsnqAGqdtBAqwXOZbdFZxbxvXS0TUBbPVf6cCujfjSFxboMfC
         WTdDJILfMalR5svZQMt4hPUFFF/HeyQqp3wVeE/m7CZlql70SgCdaoU8kO5JrZimuieL
         9giKf8UlXzprraGOzaiswn/Fu6t+OdsI5MX4a7mnuw/ccYz/QR2z1YjcPIir2VTZ1TzO
         Pujw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=sreSaOjpe0y9g3aq0WkeiFP2xot8icvfRBXFnyjVfQw=;
        b=kAzr0TvVqytil1MtwXDIErYVeYWR5heGjFADmSx4Y0Whl24Zuua3If/WjwnVqYw9nz
         5A/WQiVkEF7BHEYBDxdITR1EraQXlwJIS4vCg2kI9vLTEmPWsaDyvvoBLUGAVFNOa5YB
         HjpDtqNQZLI4AkHTD2etZ9p6r3491pXAUdlHjoywFl2xktHg8+Y2dB18qvCy8tMOSDH5
         Fp0KVkzxUnM9qDE095Ql7YHFnLJyUIaNrpCjjaaeYFJLRUnU28jr7ibNRsFu6+n+Fo7/
         hR2icpUBtmTARCJ4GK9dq0fSP69dtWwboCKubYSCDwn0geqY7Wf7XH5jZ4kTVuSmbjTg
         ohGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=kbms=bb=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kBmS=BB=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z19si25409qkz.2.2020.07.22.10.55.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Jul 2020 10:55:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=kbms=bb=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F362F20787;
	Wed, 22 Jul 2020 17:55:43 +0000 (UTC)
Date: Wed, 22 Jul 2020 13:55:42 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada
 <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, Kees
 Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, x86@kernel.org, Josh Poimboeuf
 <jpoimboe@redhat.com>, mhelsley@vmware.com
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
Message-ID: <20200722135542.41127cc4@oasis.local.home>
In-Reply-To: <20200626112931.GF4817@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
	<20200624203200.78870-5-samitolvanen@google.com>
	<20200624212737.GV4817@hirez.programming.kicks-ass.net>
	<20200624214530.GA120457@google.com>
	<20200625074530.GW4817@hirez.programming.kicks-ass.net>
	<20200625161503.GB173089@google.com>
	<20200625200235.GQ4781@hirez.programming.kicks-ass.net>
	<20200625224042.GA169781@google.com>
	<20200626112931.GF4817@hirez.programming.kicks-ass.net>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=kbms=bb=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kBmS=BB=goodmis.org=rostedt@kernel.org"
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

On Fri, 26 Jun 2020 13:29:31 +0200
Peter Zijlstra <peterz@infradead.org> wrote:

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
> > >  	select HAVE_EXIT_THREAD
> > >  	select HAVE_FAST_GUP
> > >  	select HAVE_FENTRY			if X86_64 || DYNAMIC_FTRACE
> > > -	select HAVE_FTRACE_MCOUNT_RECORD
> > >  	select HAVE_FUNCTION_GRAPH_TRACER
> > >  	select HAVE_FUNCTION_TRACER
> > >  	select HAVE_GCC_PLUGINS  
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

That was added when we removed that dangerous daemon that did the
updates, and was added to make sure it didn't come back.

We can probably just get rid of it.


> 
> > Anyway, since objtool is run before recordmcount, I just left this unchanged
> > for testing and ignored the recordmcount warnings about __mcount_loc already
> > existing. Something is a bit off still though, I see this at boot:
> > 
> >   ------------[ ftrace bug ]------------
> >   ftrace failed to modify
> >   [<ffffffff81000660>] __tracepoint_iter_initcall_level+0x0/0x40
> >    actual:   0f:1f:44:00:00
> >   Initializing ftrace call sites
> >   ftrace record flags: 0
> >    (0)
> >    expected tramp: ffffffff81056500
> >   ------------[ cut here ]------------
> > 
> > Otherwise, this looks pretty good.  
> 
> Ha! it is trying to convert the "CALL __fentry__" into a NOP and not
> finding the CALL -- because objtool already made it a NOP...
> 
> Weird, I thought recordmcount would also write NOPs, it certainly has
> code for that. I suppose we can use CC_USING_NOP_MCOUNT to avoid those,
> but I'd rather Steve explain this before I wreck things further.

The reason for not having recordmcount insert all the nops, is because
x86 has more than one optimal nop which is determined by the machine it
runs on, and not at compile time. So we figured just updated it then.

We can change it to be a nop on boot, and just modify it if it's not
the optimal nop already. 

That said, Andi Kleen added an option to gcc called -mnop-mcount which
will have gcc do both create the mcount section and convert the calls
into nops. When doing so, it defines CC_USING_NOP_MCOUNT which will
tell ftrace to expect the calls to already be converted.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200722135542.41127cc4%40oasis.local.home.
