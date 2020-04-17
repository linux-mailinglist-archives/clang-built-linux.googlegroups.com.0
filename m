Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBV744X2AKGQE4OWQHLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 210F61ADA9F
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 12:00:56 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id v27sf669804uaa.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 03:00:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587117655; cv=pass;
        d=google.com; s=arc-20160816;
        b=KHnvh61xMs+PMFz3jA5nbaFlVlq2bF8Jf7GE8+q3Rzy8WRzyTX1yKnFHtcFqBqPuui
         0QAP+CdN+3IdIeLUINigis4thb1RjfIwRbTHIJ5IekBPW4lBmpkQ5kfgLGvWgF/5qY1s
         lWzeIPsvQvtb7YLTiyB53rFbpTJ9EVRddQyA6oz0BUCtpfVgdKT5JOQ28a+kzkfKnmgr
         kFLLUy6Zej4tG/L4n9HNpW93R+nMw1IlYjli61QMxFhSzcUqI2juk9KIUyN7TwvC6exH
         Jkwj3NqBRptlWemZP0+22Nhqe1ZzjGH9S6xJK5LIGu7KqbWtIFv3CR+wLUV0VO6lfUro
         pVOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=F4ZJnHaIiw8RNcz0QEw4W/oM5coU6KIkpCv12WAAh2M=;
        b=JyxkFfY7z4FQow0kzhsaI9A8m8b8ZBS8ykm2OHQNHJ27zUx+4MG7njItenbNPFRb/9
         zAzd2FEPwwIUyg7O9xbDxog4+3DIfAy7eH8bdLPDiyde7Ws9S3ViLKV95uzyGBnYtVMC
         1V1eIpiu0+GyRoG+j5eeuTKYyJOltK1fNSqeVPNsgM6h3wvr34+U1V+2WZKg/LXgLyZq
         yhVGsBfS+ujYUwARdziTMBM2dx5ES72lhYjvRRr2imLTFIFLVGsnNnHcrPovn0c+sI36
         4Kp7OemAWQP24r+h8PeUw+bqYjT2sDEtosUg/lEzD7lpZA3Tps0tj5pM2MbJFU8NGiEg
         /+ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=G25zyJyL;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F4ZJnHaIiw8RNcz0QEw4W/oM5coU6KIkpCv12WAAh2M=;
        b=pKUJHuIg6XZGMiMTVKkeFs90S9gf2JFHcGiQjUH/gp49R6wPgwITwRydQiDkvrlHfh
         Ng2r/vNyPcVqo9r/z/YQJC+DlEBxaJAw+3KfKUZdIGFKqha7Aon+kTeIOSHxQHz32X3m
         nf/a3DJZoPfoFmK0VGsXk7y6SdLxSd3IwSzviH2L23OkI0HObZMV8zWcAbV1APy23Ozd
         0DlFjWQPpmFdQOjSd+nqycxVNQg06j0jZdp6IGSaekJtrZtYkOy20Wo+igpbCuxVDv7V
         FwXTUBLULyjRHvowk7vZ4iAKR1+/ZI4GQgwMnX+Ap84FPvWsynxRt2EC5KohKHFJJAJF
         miDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F4ZJnHaIiw8RNcz0QEw4W/oM5coU6KIkpCv12WAAh2M=;
        b=KP1dfoy32oYT38v/yo7bPDAyl0iSoLT4mrxxcCOGU3obfWrtI9sf8LmtOYlmiJeW7I
         tqhXM3GePciJF64R0OArBXZ5SrutWOsEOV1+QalqfpY80phzaVKss92z6gnwhBe9jn/G
         E3n00dTCC0BR3oFs7ZaJUeT+t4l5xUSVsa/H7nX5Y9NdKdkNsVqsHIHZ2zg8tyUvQlKP
         +/Yx2VwAVfph/6RxUlzFx3jlZFzcyBOIdS0usDFZ5sLCNO0tfBp6nHW5dbIRj3FzIoyb
         2Hq7g2A3iCdUc7TzOMHo+Ksjao4OH8n3zBzzWipHLY1keLnS6SeTpbsYqChJV7BIjFIX
         HkLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYA7mEDvVRcHormoCuWqY/BOA+IqsJl2aelCyYp+8HQCaaw+3mV
	FM7/jU6wx6pJ4jyopefsxx8=
X-Google-Smtp-Source: APiQypL//zbBqv3YLRaOC9mu05SQXmKMRYHA7t9I7AAwAqOt/TSVP1w1VODmKGpTceNicD0kWO3Tvg==
X-Received: by 2002:ab0:6204:: with SMTP id m4mr1767985uao.15.1587117655157;
        Fri, 17 Apr 2020 03:00:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a989:: with SMTP id s131ls79291vke.4.gmail; Fri, 17 Apr
 2020 03:00:54 -0700 (PDT)
X-Received: by 2002:a1f:d182:: with SMTP id i124mr1674297vkg.26.1587117654810;
        Fri, 17 Apr 2020 03:00:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587117654; cv=none;
        d=google.com; s=arc-20160816;
        b=pfKB+k7cfnWS369ekyrsx/tmzAXl0U1FtdnxI0mtDbiFPIMXrxoG1QRlgqy6WlCNKd
         JHhkCgSQ8hMfCv0FKgoyeaM7Jl4bDJEX10dkgk+isFZFoGpXU+1pzlVuRTR0XkUVnTjd
         SfhRohCjSrdUAL6K6A7uwyC647/FA7dFiFgFMNLkGUsLPPH1eutYebbfA6YbPaZTMkxR
         LlANZEx+zsUEqzMPkQZHbzllU2D4ekWV13c0em/MFtimW78Q9k5LuRTT4C3CsiL25COR
         6rP0NvYJUdVn0AoQl7epkYJQYfezXdC9GS+AvPJNaOJEjg7ICjsD8XSHuEN3HhQRqe+6
         0K4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/sCrLJsk9M0RFgQwNkauJ/Dtc5/K6rCJg0npReZJ/ZM=;
        b=HRv6fIJv18Fvn0OV5XauvJAJiAz2OA3XnBr3XialIAyC/CAJ1CzI3YcelEr7LLz4iI
         NAhsK1f+OKZdn7uRFVlXEiUYfv1X+2XqtZuT4endb7YofqepLuxY27x/QMtUIBOTU/y+
         LJ99859x0ioC8ogD5DW5KDqU6c36tU+DoIHOJL3oFfabuW90Cmwu9eXbxusPuVVAGQQi
         EdvEK0ypJg1/E/t16Ds0ZQ25kG2dqaFLHpr29fEjBwK68Q/n3QqcvOHAwm0dQLMdjM6n
         cckqvb9tS8I2i7Xzkp/KHYSTIIgEk8GWeSB+rJhREz4SRH/2zUIAc9u1raUYBThcFbOX
         C2rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=G25zyJyL;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id s64si619893vkg.1.2020.04.17.03.00.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2020 03:00:54 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPNne-000501-Rg; Fri, 17 Apr 2020 10:00:43 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 816003010BC;
	Fri, 17 Apr 2020 12:00:39 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 6AB682B120750; Fri, 17 Apr 2020 12:00:39 +0200 (CEST)
Date: Fri, 17 Apr 2020 12:00:39 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
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
Message-ID: <20200417100039.GS20730@hirez.programming.kicks-ass.net>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-5-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200416161245.148813-5-samitolvanen@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=G25zyJyL;
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

On Thu, Apr 16, 2020 at 09:12:37AM -0700, Sami Tolvanen wrote:
> The graph tracer hooks returns by modifying frame records on the
> (regular) stack, but with SCS the return address is taken from the
> shadow stack, and the value in the frame record has no effect. As we
> don't currently have a mechanism to determine the corresponding slot
> on the shadow stack (and to pass this through the ftrace
> infrastructure), for now let's disable SCS when the graph tracer is
> enabled.
> 
> With SCS the return address is taken from the shadow stack and the
> value in the frame record has no effect. The mcount based graph tracer
> hooks returns by modifying frame records on the (regular) stack, and
> thus is not compatible. The patchable-function-entry graph tracer
> used for DYNAMIC_FTRACE_WITH_REGS modifies the LR before it is saved
> to the shadow stack, and is compatible.
> 
> Modifying the mcount based graph tracer to work with SCS would require
> a mechanism to determine the corresponding slot on the shadow stack
> (and to pass this through the ftrace infrastructure), and we expect
> that everyone will eventually move to the patchable-function-entry
> based graph tracer anyway, so for now let's disable SCS when the
> mcount-based graph tracer is enabled.
> 
> SCS and patchable-function-entry are both supported from LLVM 10.x.

SCS would actually provide another way to do return hooking. An arguably
much saner model at that.

The 'normal' way is to (temporary) replace the on-stack return value,
and then replace it back in the return handler. This is because we can't
simply push a fake return on the stack, because that would wreck the
expected stack layout of the regular function.

But there is nothing that would stop us from pushing an extra entry on
the SCS. It would in fact be a much cleaner solution. The entry hook
sticks an extra entry on the SCS, the function ignores what's on the
normal stack and pops from the SCS, we return to the exit handler, which
in turn pops from the SCS stack at which point we're back to regular.

The only 'funny' is that the exit handler itself should not push to the
SCS, or we should frob the return-to-exit-handler such that it lands
after the push.

> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> ---
>  arch/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 691a552c2cc3..c53cb9025ad2 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -542,6 +542,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
>  
>  config SHADOW_CALL_STACK
>  	bool "Clang Shadow Call Stack"
> +	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
>  	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
>  	help
>  	  This option enables Clang's Shadow Call Stack, which uses a

AFAICT you also need to kill KRETPROBES, which plays similar games. And
doesn't BPF also do stuff like this?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200417100039.GS20730%40hirez.programming.kicks-ass.net.
