Return-Path: <clang-built-linux+bncBDV37XP3XYDRBS4C472AKGQE6OOCVII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD381AE020
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 16:46:36 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id s206sf991619vke.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 07:46:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587134795; cv=pass;
        d=google.com; s=arc-20160816;
        b=V1NUpRHgvhKzEIjS+oD8x8U9rGrTMmU4LDV4/tDz4q6mN/El1eygDrMi9m3B5LYKfB
         22SeAM/HzFbiq1KgL129OoIWqnotPaEZWjZb3yhvOF6QzMLHkmiqayKggks2cWBW0tOQ
         4TolGZVviGbyRR6bHoldrRprUxNHwU4kxzVTNYnClQ2aEUjM4I3DFoDA7qepLo+ThM+Q
         hM3NWcKPjDEROBG1rauNXeudS7ZtZ3ACapmVff1rajzcuCtzzetSu8fOSmhDBhRXcx5l
         SnYXmZvGno7hzBbmlmTG2FcGz+6l1rFbgjJ9FE3MyD9pyCD+BKTQQM0JL09H6dTQWJJs
         5w2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=kXngqfv+KdbWuM43Ouud1atVYVaLAJwMV6JCxbpq/ds=;
        b=yukC/tF7PPfYefwXcSDC0A0TRtfg8UcLWd1L3YQHt311jbL6LDRLbPIVZ0U+kKSyL4
         eMN//2bTCSpqs0YVy69FFLVz485tTRmce7hZvZJGkijdgUGM6Qdzf/6CTF5Ot3vmg+dx
         ZsLCWiXiRuTjddnVGs73sexgxMEV4WysiaOROkYlI64c+KalSSNBH+42x1hyR3awiuH3
         bmH02zGJJiIEz7xPbES2TppzWX2qipNwmNZ+CQTQ5urHa8ofK2392VHU2ORkD4g/u22W
         GAHUt2QVcCsgKl4gFFidOKDqvXxvoqy5Yeix0JzIBC8u8s9N3N+y3vAqXlOaTaMHTvSP
         0VXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kXngqfv+KdbWuM43Ouud1atVYVaLAJwMV6JCxbpq/ds=;
        b=PGU4//39toxq9uS43PEmhSsQpSTrQGgmCIALBHZOB8usejJGRyVLTziwlU7V+RFiWe
         6ul6Vt9FcDsCsq1bODqRUehbZVn0qqwH7sEmhYU5KQvT/Fh89VhC9x0cLHxJUXdFZXIZ
         Y5uhCx3GD209vVzKYyJeDTrwmXx9kFtV1N5zuBr8zrbx2Q8dpsupJdg6pJXrzql67EvH
         RMG/TLWMnLS1p7/4kySMWX1s0DQ90XtThSDbYQmQmcx1gIG51fKd04+vUInWHrojrgbp
         OUtVcFYtcpSbD15rZ0We7O5wqv2JiWM2nIGBXOO+iFWaUACVVx1GwmozzAPRndQOCKhg
         hxBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kXngqfv+KdbWuM43Ouud1atVYVaLAJwMV6JCxbpq/ds=;
        b=Jxt1xgH6B35v1RC4p5ZLgt5uUVeunGv70nsHbfnCE2Ckb9JsTg4lmAVHyzmRvSDNJJ
         NVaMEMQSq6q981MpEe7OGZTbdG96SLI0dYksRGDRpH2e1V+U7RtDydxMe+TkVTFwBwgg
         nh//yjnweiZjpfqYJBFgEC6jo1rb6XKgJwX6WRsJgjqTq6LIDq1/FwFxAIeo1ECVdm+d
         VzlYGg+zbTGRBucojQNOB/VwaXpNorujtsisqRBf2rRbWj5shnK38ig565ewk/GEZS6Q
         9VLTN9R00tiAvBxitclp4yIko1sHJC65AMp0CioefriP/jB6GbqGbRF1F43X7E+ihtnx
         VDCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY42+vlbjuyMnAaGDud4iNQ06rmsq1QoIh2N3Q6Jgu7DadvJ06f
	0vZ1WorkHt735pAzxMlt2p4=
X-Google-Smtp-Source: APiQypLWHD2YWCuzGGi6mfJBMDsidmPJZ1B2mlegLvUIrwo8VS0ruhyX/UHaYG0qNmfsDk6MEriWnw==
X-Received: by 2002:ab0:1f1:: with SMTP id 104mr1575662ual.100.1587134795367;
        Fri, 17 Apr 2020 07:46:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:354c:: with SMTP id o70ls187383uao.1.gmail; Fri, 17 Apr
 2020 07:46:34 -0700 (PDT)
X-Received: by 2002:a9f:21c7:: with SMTP id 65mr2956892uac.14.1587134794829;
        Fri, 17 Apr 2020 07:46:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587134794; cv=none;
        d=google.com; s=arc-20160816;
        b=OvdeeyzKpSt103ZQSxmnxTA4FEEbvvNX3GTj1hBQ4rsuzL9bLg1m8jTwnR9yKThJGo
         9kO6qQ6jlyFu/9KI8b+YAt46cL7nNXf7NP1F+KrwvvfAuNmcPhY1phBWtxHgif81IjYD
         z8/5nagWLaqxgjeXU9K0vkVGVslXYj5JUEyj3Z2s9K9180DONi/Keg3ankUrL7+kFlrd
         CUrW8K3ixwkvgY4YoeDPx5VPp89uY2k+cspFObr1Ug/+9bhL2gftcJUBOeucUABpQrwq
         AxZ86mFRJtWflbXFoN8eJ4iM/hK6vzv4gKIoLIf7Az+z31gw7Y5cQne4Jw84WshdSIwo
         iBYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=YGMj6dKGSxT1U2ErpaPB7YOtpxfEhby8o9pUafCfEIg=;
        b=wGboudgCmbe+9gz8U/Lob12hXe3wuw8OfWFjb0Twm9MVBRDsO20PwrYPVBkS8pQg0H
         EQtm7bDzCyP1TxewrgkiVa4szuioNP+YevMiGaV1lbmwhReV05mnS22kcczQnyzlGHeF
         ue1NXqVq593UO8P0p1sSvvSCWJYzqafF649Q09AqPpkGafgao2W+6PHCNItz8kC7g0FG
         InUmk8ts8Evdz6C19QDdSs5bV9ldlk8G/CJaFMFrWbCs2ZJrNVkqXXp3qbOPmprTgtKS
         S8rtGKdeaH19eXFh1+pgU8OnjJb+U2CZ6JCz0WAZKruS1pgNqvCUZPiMRI19aZmhbnWM
         717g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id y4si151449vkg.2.2020.04.17.07.46.34
        for <clang-built-linux@googlegroups.com>;
        Fri, 17 Apr 2020 07:46:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D964330E;
	Fri, 17 Apr 2020 07:46:33 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 061A33F73D;
	Fri, 17 Apr 2020 07:46:30 -0700 (PDT)
Date: Fri, 17 Apr 2020 15:46:21 +0100
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
Message-ID: <20200417144620.GA9529@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-5-samitolvanen@google.com>
 <20200417100039.GS20730@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200417100039.GS20730@hirez.programming.kicks-ass.net>
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

Hi Peter,

On Fri, Apr 17, 2020 at 12:00:39PM +0200, Peter Zijlstra wrote:
> On Thu, Apr 16, 2020 at 09:12:37AM -0700, Sami Tolvanen wrote:
> > The graph tracer hooks returns by modifying frame records on the
> > (regular) stack, but with SCS the return address is taken from the
> > shadow stack, and the value in the frame record has no effect. As we
> > don't currently have a mechanism to determine the corresponding slot
> > on the shadow stack (and to pass this through the ftrace
> > infrastructure), for now let's disable SCS when the graph tracer is
> > enabled.
> > 
> > With SCS the return address is taken from the shadow stack and the
> > value in the frame record has no effect. The mcount based graph tracer
> > hooks returns by modifying frame records on the (regular) stack, and
> > thus is not compatible. The patchable-function-entry graph tracer
> > used for DYNAMIC_FTRACE_WITH_REGS modifies the LR before it is saved
> > to the shadow stack, and is compatible.
> > 
> > Modifying the mcount based graph tracer to work with SCS would require
> > a mechanism to determine the corresponding slot on the shadow stack
> > (and to pass this through the ftrace infrastructure), and we expect
> > that everyone will eventually move to the patchable-function-entry
> > based graph tracer anyway, so for now let's disable SCS when the
> > mcount-based graph tracer is enabled.
> > 
> > SCS and patchable-function-entry are both supported from LLVM 10.x.
> 
> SCS would actually provide another way to do return hooking. An arguably
> much saner model at that.
> 
> The 'normal' way is to (temporary) replace the on-stack return value,
> and then replace it back in the return handler. This is because we can't
> simply push a fake return on the stack, because that would wreck the
> expected stack layout of the regular function.
> 
> But there is nothing that would stop us from pushing an extra entry on
> the SCS. It would in fact be a much cleaner solution. The entry hook
> sticks an extra entry on the SCS, the function ignores what's on the
> normal stack and pops from the SCS, we return to the exit handler, which
> in turn pops from the SCS stack at which point we're back to regular.

For background: on arm64 we wanted to use DYNAMIC_FTRACE_WITH_REGS since
we already have to use that to handle pointer authentication, and didn't
want to gain more ways of implementing ftrace.

Arguably we should move the dependency into the arm64 Kconfig for
ARCH_SUPPORTS_SHADOW_CALL_STACK.

> The only 'funny' is that the exit handler itself should not push to the
> SCS, or we should frob the return-to-exit-handler such that it lands
> after the push.
> 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> > ---
> >  arch/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index 691a552c2cc3..c53cb9025ad2 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -542,6 +542,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
> >  
> >  config SHADOW_CALL_STACK
> >  	bool "Clang Shadow Call Stack"
> > +	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
> >  	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> >  	help
> >  	  This option enables Clang's Shadow Call Stack, which uses a
 
> AFAICT you also need to kill KRETPROBES, which plays similar games.

Hmm... how does KREPROBES work? If you can only mess with the return
address when probing the first instruction in the function, it'll just
work for SCS or pointer authentication, as the LR is used at that
instant. If KRETPROBES tries to mess with the return address elsewhere
it'd be broken today...

> And doesn't BPF also do stuff like this?

Can BPF mess with return addresses now!?

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200417144620.GA9529%40lakrids.cambridge.arm.com.
