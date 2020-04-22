Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB3MCQL2QKGQEJQYRSVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCA11B4BE4
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 19:39:58 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id z9sf2012089oth.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 10:39:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587577197; cv=pass;
        d=google.com; s=arc-20160816;
        b=h6L7TEkIa5CkLUH5MCGpaVcQdaPOEzqWfPVr6y229KyCrdbokZlylYfdTW5mzMpRIX
         atmBAYDk+BfPqi4UNE9vKQdTKnTTaeCf0mviEIUPakLNy9FxEtntv9MYAjiU6wBkarfE
         aU4AzDrzM0SDVXkoM4hKFge6TAti/Vxkq9bQnp0T8UHGT/FE4G/7zR9rWP/Jr1oY+b8T
         EeA+L2K4uR4O9b+HRLF7a0r3sv/mRRl1kgJYtX8H7wysvhdxcCBJNV8lswDylhFjG2Gn
         iao7NhU/dBDH4TEMXtPTzVCyQODESWcjRwL5deF6FYZUNKlWPHexhAv/pWfe2U4PtayG
         IPsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=DGcRruqIqd5BP3GRJ+x7Z5JTpI4X7Cia3i3xplIFPTs=;
        b=dcDfOszCeubQs1C5xQ8VSi66jLFwrXK/wMTePb/yoZWZ0hkL8RdZEa0vCEYZVD0bh7
         92a/qeEJfq4ULqFCwBQ3SIWeY32HvHtQ646/T/hRvTP0BOf7Js88nCzMk1NdRjS1VYrN
         PYSMr64iGMEbLp/F9jApdvDesRu9Uw6Se/3+ABkU7tdL8rGuuxD/8T847iUsSxz4rXZ2
         jaNyI5G36JXyx3SssmzRG/8jXXG/XPdtJDdSeb++v+mWycRF0F6pao3rFRlqhP5L02VB
         l4IvkYNQ1JDoMwie55vWMpTw1RGMnRI5gBKLFdKmaW+orScVS3W0J7wne/TbsBsYRIBb
         iczw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JyusGuPT;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DGcRruqIqd5BP3GRJ+x7Z5JTpI4X7Cia3i3xplIFPTs=;
        b=idU0hMDmML4H6RQhpiQZs8Vk8q5yw6pcaT8LnJF9sqkYslkwKjfAQmY/bte5IoJSem
         nm6XKxIiG2LS+EbFkpj80lFUJz6MO2FGkvzVoLStpKzXoiHVF6HZCVG9EoMoiTClRuYu
         l8pjsAULHSGOiuGSuVomsv99nJ+em1oU/IDr9ReB/pkPjSDRltQRdOlT/vnKSvyylmgU
         68ockjpkx4XtNRYpxZScQYAaX+fds1n0J8ZtBmpganU9flF8dEPWZT/CyeereTy/FXZK
         46DGwMNShERyrNrI2aqpIU/pS0nxcL09NKipYXFYAXW97fAK6lVbensNaN7CA0kniGV+
         0Log==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DGcRruqIqd5BP3GRJ+x7Z5JTpI4X7Cia3i3xplIFPTs=;
        b=esGxBWhFdtb41KvnAihkrlnmtQEBcBUj1nO3yntgvN10ECd1AMT3x3XOQ7R0+qXf5d
         +qUXqB0GPZyB/YgN3ZcZxSmht8FYlzZaBLy6td9ONAz74XyH8dSnQgPAhtzYLEZlmQ1c
         Pai3kuuLuKdHlmB4YjA/vZniVZKPJEvFi73fKGFIlxv2zonYWqTHBhjCLolEMQM7UJcx
         /cz+Uudc13TrliNCX76dFnNMmhLxZYkI+N+F+IpdrXcYDOBImA+4VM5hM4C3T8Amk1Ku
         H5ev86npT5Gv3vfOEorigzx9d1VrmT/BxC3HCSYSLngUsGaT+gx7KQZuRQ39eXWYOjIj
         eIlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubuJThPuzVEhzC0zcqNYR30cRpXxJT11L3+HYoSPi18D+FQWEi3
	F0RqDAAXkElsiKPamMaNUmY=
X-Google-Smtp-Source: APiQypLqku7JligEJdTBi4oMEEgBiGJEjiRY8oQ2U4iF54oiu9R0d/Z1kHYVHm83+CoUJm279/lVcw==
X-Received: by 2002:a9d:17ec:: with SMTP id j99mr120066otj.213.1587577197230;
        Wed, 22 Apr 2020 10:39:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ad16:: with SMTP id w22ls255211oie.8.gmail; Wed, 22 Apr
 2020 10:39:56 -0700 (PDT)
X-Received: by 2002:aca:59c4:: with SMTP id n187mr44500oib.1.1587577196906;
        Wed, 22 Apr 2020 10:39:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587577196; cv=none;
        d=google.com; s=arc-20160816;
        b=f/7ByLj2zVmflzTrC+RAsGhneoJ+Pg9AhYSv856KtEFUFRtHYhDR+CRThNxe9+E4Ff
         q5t/dq3Sr5RV79q5ZiIci2aMOHWsRrDepUZw4Ralvr2VQT+jS8B75fqNPTvi207s8rAn
         OzM50zpYTv/lHioeSlJ2dGfUadJNVLj4DQ3Bicap/12mkeN/Sj840t8gbSk+h01rAUc/
         9IjtLQCOTDmoBL614b2nR7IxsFS/Ob2dWpNLm8baQ0rAHOuJeU1FrO4DOXX3RTTsZszW
         PGdsJVuDa00ZnPCfIapz6V7+XDP0EMwZ8bi3761X2TArOquFNSxJ6CRZo9PYnyE6s1iI
         UBeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZknEWD7Qqh3LI5XAbWu2EBkpENB2rMhY+1NM2mH6y4M=;
        b=lK0Vxk3XS1P9AGpVDTk5SZkfhCI3L+Y9sEZZCDGgn63ps3n3uS9jHX969vFB+Qpp5y
         sgo2DA5yFLoya9LDqKOfrddRrjKHp+/HSs5T9AmASN9k6stQRbjUB4v4812didlsFeSr
         oB7BUfnM1yAjca84e4kOZ+4fZPxevqBcp2co5eI2jQZtr+kAZ6ktP+BCs0UjKxKOB6JW
         8iMw1yV7kuloNXHXGX8x2GmFlii2wQWlUxOb5HAcXrMLZkPwz2+PRUSirupt1YWigabE
         wCFX8qwf8/WnZu9jcskMFgsh/LFPmu+sIn8o3dlZwIcgbwmqEa1p/7BpgJIQYp2qQEr/
         7Ujg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JyusGuPT;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w11si482156ooc.0.2020.04.22.10.39.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 10:39:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 54D942076E;
	Wed, 22 Apr 2020 17:39:51 +0000 (UTC)
Date: Wed, 22 Apr 2020 18:39:47 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
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
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200422173938.GA3069@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200420211830.GA5081@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=JyusGuPT;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Apr 20, 2020 at 02:18:30PM -0700, Sami Tolvanen wrote:
> On Mon, Apr 20, 2020 at 06:17:28PM +0100, Will Deacon wrote:
> > > +	 * The shadow call stack is aligned to SCS_SIZE, and grows
> > > +	 * upwards, so we can mask out the low bits to extract the base
> > > +	 * when the task is not running.
> > > +	 */
> > > +	return (void *)((unsigned long)task_scs(tsk) & ~(SCS_SIZE - 1));
> > 
> > Could we avoid forcing this alignment it we stored the SCS pointer as a
> > (base,offset) pair instead? That might be friendlier on the allocations
> > later on.
> 
> The idea is to avoid storing the current task's shadow stack address in
> memory, which is why I would rather not store the base address either.

What I mean is that, instead of storing the current shadow stack pointer,
we instead store a base and an offset. We can still clear the base, as you
do with the pointer today, and I don't see that the offset is useful to
an attacker on its own.

But more generally, is it really worthwhile to do this clearing at all? Can
you (or Kees?) provide some justification for it, please? We don't do it
for anything else, e.g. the pointer authentication keys, so something
feels amiss here.

Thanks,

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200422173938.GA3069%40willie-the-truck.
