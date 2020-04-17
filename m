Return-Path: <clang-built-linux+bncBDV37XP3XYDRBTE6472AKGQEYOHPD5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F42A1AE16F
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 17:46:21 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id l16sf2931223ilf.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 08:46:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587138380; cv=pass;
        d=google.com; s=arc-20160816;
        b=aJJmBNmfBPSD1oVAlrY/7pJ87iIVbGjdc+j0EquKzzCXkxOFSIDYl9abuukNQ6tFde
         EQsdF9mVNYiwS9nzSQL2u+dmQ9AWeJMtiUgnMYKJrmFiS2qwLEnrpWjO5UAkG1K8Ozpq
         w5pjzd7n288xGEJjy4YZ+715N7aNPW6iJwxecvToSjZy61hIxA2MfDXvBIR8O9PxG7Kl
         /bMwGremN0CWaz8pSCB/X0chVllU6P1hWs54zLl05owYvznIcvdovvqKDCvXLOQ3HH6D
         19XHzvLfLZoxiKqY5fs0G5ErMnPYNokuTyOX0CFkEJLbT7FUZQMHB9cmSwAmldhHnnsg
         K7bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=nw+iA6fijq+6ZC2A5Wm94sIIhTTRNlj+juvEsYcZLhQ=;
        b=EdOZ+NMGIOV+1zFcgSmYS95MR/UD4RBMZHR6YEPWKbAn/sl7eSI99u2rMkQNGkKfCr
         ym6NyCSqRA6zZWcIET6+F/WSV1eje1q4BM54HdDChBKCftiSkg0cJat5aT4M/5DDO4ZR
         FWzlex2dOlGxe2ee9h40eVTz9AjoSwX6mRJ14ffLr26mmuE9ORTcl8fcTq4AP1aiAQVR
         AKwHXuRKmG8X8vJPU/BEFTcGmlko3FUWC63dfvDmT0RgChu8lYGgcV1dImPQO2GLARYY
         /PFiAE7e1Ww/S/NXqg+YvuZ5IT+mSz1V9TOql0JafSjYr/14qMUEM7gyDBofNRsYauOu
         s9HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nw+iA6fijq+6ZC2A5Wm94sIIhTTRNlj+juvEsYcZLhQ=;
        b=BU2gxQr5dyuZxP1zHxhjXJDlOWvRz09gGafm5E17HQF9oQmfFLu78AMS/swBdNM9gG
         CbJwGeS4bChQwPHpowAVZxHi01AtddEtvzHVS/P+5wN0QQgJQM6yNlJ4UAMC5gGSZmsx
         3kamJN+drUhmZJtQmSSAslTCqpgMPcOVFiYK2yHbXhHYncpfn6vUejiRDa6aFFjhwJon
         VIARqX+ExwhQSmhhhUx+bBzqHmepteLtlVpMGCytW20DAPp0NYc5RMH5mDg7XQlMAUy7
         Yij6ZnlwUEUeJlupOWI6NLq37wOzEAa01BJW/F4oPHT+qiQMgtL4x5OYJBC2gN9Zhroy
         0i6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nw+iA6fijq+6ZC2A5Wm94sIIhTTRNlj+juvEsYcZLhQ=;
        b=IrSKzBvnPJrWWPhBlFbnxcRC8j6bQaO3MTmec2HhorM/EzBBQlqiDk85zVvtZBeXT8
         yalMgsUZh/dHDQRHgxJQCn40FtmgWs5dIGROYbxfXtdbruWME52QI8EmKLZFnIO6Jq8T
         fcQo3wQp8Sk1v2cDe9kDKcy4B9zlUcplU6htpplRum/Wc51OU6nHothkssu5TC6JvfIB
         4S1AGfjJmUyphIkb61O+hPlfxFJcyb6WU28UbQKtxP78FNu//p5pcQaQxnLpdPeSTi6W
         il8RF14s8NixOYvLIDsJw9FtqEkLoP7bk1RiLgUKHF8/AR7R01fIaD2vrftpG5lU+vYh
         Sx6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYdR9c8TXjWu5gsPFODJkK4/MLNgDUJhJDzIeo6tZl97m8ZtI71
	sAI3whBP2eUThS2p2VHV0HE=
X-Google-Smtp-Source: APiQypJXfbBlVaZzEfR9JjitUOZM1fRC7uRdTF+HvtERctoFuNGB6y3V9EqceaTfUfxCEEmThRm6FA==
X-Received: by 2002:a6b:fa12:: with SMTP id p18mr3656579ioh.46.1587138380294;
        Fri, 17 Apr 2020 08:46:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:4919:: with SMTP id w25ls886815ila.10.gmail; Fri, 17 Apr
 2020 08:46:20 -0700 (PDT)
X-Received: by 2002:a92:8c90:: with SMTP id s16mr3677380ill.164.1587138379968;
        Fri, 17 Apr 2020 08:46:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587138379; cv=none;
        d=google.com; s=arc-20160816;
        b=yS0lbPcjoJk2VDajMBRW4I2d2eW2eAeOADSSaHXLA8lCQ40YFEH6f4qU//0hFHp0sB
         fStxljrFYuY2ckq+iCFIVLNcvXAq0zGUeAvKVGzklHObf10NW6lORX5ocsc2kI1Tx5GY
         mKCptuJ0Zxokizb+Qx+Ay0OYHYnS5QYWVHgmyFlqiSXQTcwfZOULhi2hInh76BiVcEsY
         62/Ofx2qrCAtJhBH4U1sKV14LFtXH71HntY3zNa4KKXoYLVw7CsATnhMJVmpvCeacddC
         0i/hObRCxO3/6hLs3FJ5khohj3Brug5gGnTcZbFAYtilAI2CtlR45aQL8gPHMkjkdOBJ
         pnEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=3C/sbCCuvowD4/D5uv5E1ndFp0/rzXjXTAHK9BAaNAU=;
        b=aBncByhcQjFH2e6Q6n+PxctgXI28rZUC6Pay84KsorUXuKHoIFad/GNQ0dNHowARvL
         5/PGKEjdgvNKfBCGklA/96w6S1/tdIpXFAc2rPI3o7Ej0hK99JyLlyRP/ZO2kUQdrWWO
         R4WXTaL4DlLzFXgjWU+IQ6bZjo9iUdRJ2lAPwcXyuuNF3qufqasr7bGrBXM7AubYWa9Q
         5mp0T4y2lWyRKk05rOCTF6bO7W/+POlQnH0E0EzxuidkqcQ87JNeV8IMvsMPuxtxn+cQ
         kxeFBnIBNw0bOZ4c6HpwbOEa7gBCI4prlumOqqzBAWt00U8dcOgs04KnXbVIh391flWK
         h7HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id v22si818674ioj.2.2020.04.17.08.46.19
        for <clang-built-linux@googlegroups.com>;
        Fri, 17 Apr 2020 08:46:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6F0C81FB;
	Fri, 17 Apr 2020 08:46:19 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 920063F73D;
	Fri, 17 Apr 2020 08:46:16 -0700 (PDT)
Date: Fri, 17 Apr 2020 16:46:14 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
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
Message-ID: <20200417154613.GB9529@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-5-samitolvanen@google.com>
 <20200417100039.GS20730@hirez.programming.kicks-ass.net>
 <20200417144620.GA9529@lakrids.cambridge.arm.com>
 <20200417152645.GH20730@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200417152645.GH20730@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Fri, Apr 17, 2020 at 05:26:45PM +0200, Peter Zijlstra wrote:
> On Fri, Apr 17, 2020 at 03:46:21PM +0100, Mark Rutland wrote:
> > > > diff --git a/arch/Kconfig b/arch/Kconfig
> > > > index 691a552c2cc3..c53cb9025ad2 100644
> > > > --- a/arch/Kconfig
> > > > +++ b/arch/Kconfig
> > > > @@ -542,6 +542,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
> > > >  
> > > >  config SHADOW_CALL_STACK
> > > >  	bool "Clang Shadow Call Stack"
> > > > +	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
> > > >  	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> > > >  	help
> > > >  	  This option enables Clang's Shadow Call Stack, which uses a
> >  
> > > AFAICT you also need to kill KRETPROBES, which plays similar games.
> > 
> > Hmm... how does KREPROBES work? If you can only mess with the return
> > address when probing the first instruction in the function, it'll just
> > work for SCS or pointer authentication, as the LR is used at that
> > instant. If KRETPROBES tries to mess with the return address elsewhere
> > it'd be broken today...
> 
> To be fair, I've not looked at the arm64 implementation. x86 does gross
> things like ftrace does. On x86 ftrace_graph and kretprobe also can't
> be on at the same time for the same function, there's some yuck around
> there.

I can imagine the same holds true for us there.

> Rostedt was recently talking about cleaning some of that up.
> 
> But if kretprobe can work on arm64, then ftrace_graph can too, but I
> think that links back to what you said earlier, you didn't want more
> ftrace variants or something.

I just want to avoid yet another implementation of the underlying
mechanism. For DYNAMIC_FTRACE_WITH_REGS we can mess with the LR before
pauth or SCS sees it, so those definitely work.

If KRETPROBES works by messing with the LR at the instnat the function
is entered, that should work similarly. If it works by replacing the
RET it should also work out since any pauth/SCS work will have been
undone by that point. If it attempts to mess with the return address in
the middle of a function then it's not reliable today.

I'll take a look, since 

> > > And doesn't BPF also do stuff like this?
> > 
> > Can BPF mess with return addresses now!?
> 
> At least on x86 I think it does. But what do I know, I can't operate
> that stuff. Rostedt might know.

Sounds like I might need to do some digging...

Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200417154613.GB9529%40lakrids.cambridge.arm.com.
