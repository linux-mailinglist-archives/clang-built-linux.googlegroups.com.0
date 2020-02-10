Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBV5QQ3ZAKGQE6NVFMQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F731581C4
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 18:52:25 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id d9sf5876909pgd.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 09:52:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581357143; cv=pass;
        d=google.com; s=arc-20160816;
        b=yT3FLHvGfU1JFgFx4JU3kOWnFN9ihPsgz8EmqVXQAya5eLiU08Pc1dqLDyeOvRB4mF
         q6Ays1xRUTO3OS5FfBjqU+DUAFbwhVJddYQX+t+9GfEiKzFn4FMn5Q9QhekL1kwR+eRt
         NjqxdoMI8AJHxdRV3rv+mowRxrAgewM1dbQeQ1VNIv10abQqI2ALtLCIze12phAY8/99
         rsbPO/8IcenEDwyxhOMtUnWQEVdSRc+KBLAEbFyH9EyuwD9PKE3dWL9YYFpIF72/oetq
         Fg+cwSY9/viDG04pz04ghaNWkKD8eg+89/krpuBVNLQZG/97TznS4hmVWiEATgzwEWIO
         MIlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=beFSCWXr5gWnddK+8sgO/B+J1RZokkEYIZA+Y8uot/I=;
        b=wQ7tBGtiIOpcRQDIJEjJsrV9ajiC4i+u2KOTNWIwCMVTX4Dv8R0DSc/2PHVj/TemOw
         6PKpDx//cYk5/VPHibchG55rFRSwM1KUWZiuXx9QFZibqzyfnXyQGjczN3fCbtOTBoiA
         2RlGA8Ez9MTG0MEcNt0J2bmBIc9+6KZAD4bBBPt6XlziosCYICOsHbucoJaTDSP7MWF9
         v2Ys7UIxQfYuRPNLmJP77vsWGt0Ua7fPLy9KcNInz218i+vrtKUlrr+875DCZ05udEpp
         ss0QJ4/W9sVnOA3RS7GfpC+75wNr+N1zqwwGhI3Uh9q1DdLnj5TR88WZKCCLk6rdWmMB
         QSYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SwvUPgIl;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=beFSCWXr5gWnddK+8sgO/B+J1RZokkEYIZA+Y8uot/I=;
        b=gvCxlyZUL+X8aQkrwxpJl89nEzdLoqASkF0NS0S+4Ftr7xh2lStqQdj8CFqSXUFiks
         kBLl2QZUfAGpLnPaBBScbSUory6kDwovfGKlDgXC38i6u7j1DOWcizFLk1oR2wbVVZZs
         9cDmwH2vXHz7lZP5G1MajcL6o7faiLOcGUmS6wvRwUeyVMRnWOFcwrxVodfMVfJ2eBxX
         KoU1CNF0sy/53QPzDFqG6W1RRpBt4nirS5EASZ1DTbnolW0fR9FSIxcRRLvMNHZotJH8
         9w3ZRTGR2i0sLlez7AgXC+8tnJ+8hQvPt++us+++eerzhxezWmrTamxoMYhzWp+B7Yf5
         EgCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=beFSCWXr5gWnddK+8sgO/B+J1RZokkEYIZA+Y8uot/I=;
        b=iE+c8UmVoabbA+zN7MUxgcUlPVFUFLstpxQ3lAO7JytG5wgeAbkHKQGO7pNSXHEz6e
         hVOm/dtFd+wQsYWB6yI9CSk6LlqEromYLrilmP1dK/f+cptO0nXxsSdVHSIETfyv0RDu
         JIWOcdfiH/6B4tl5pMuZF3J/qdV1x1gzplWlE40NLqFUj1rB4BtQVTmX35GXQuW5xZ9D
         XxL7VbdLCet3f9TW9LbKrbSek4rj7LZCOFm2G+RQSweD86Y+Wq7/A6vWlbyoDh2PUG/C
         WKM/BiDbgnCG3pfoi+Iq1nHKQ+LyxY0S/3dWUK+gpLsTS88XtVxfSIDagOEDCj3wq/oW
         Vc4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVrZUeJa/Y2hqLXBfcCOsxS7mKTVzg7w63wJE/xboBzQlYSDfmj
	H4Un3M27K24E1lNBvMY5w98=
X-Google-Smtp-Source: APXvYqwu2lNx9kcygNRu1Ub41fTuT1lVNDxCUbQf0gLUvkxU8BsROs1GKlYwPevTicZH8ypxgqzUYg==
X-Received: by 2002:a17:902:d711:: with SMTP id w17mr14270333ply.303.1581357143569;
        Mon, 10 Feb 2020 09:52:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5fca:: with SMTP id t193ls4274085pgb.1.gmail; Mon, 10
 Feb 2020 09:52:23 -0800 (PST)
X-Received: by 2002:a63:a55e:: with SMTP id r30mr2851776pgu.109.1581357143110;
        Mon, 10 Feb 2020 09:52:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581357143; cv=none;
        d=google.com; s=arc-20160816;
        b=vBApCYoBkl2z7+whelidmeRrkzb8D6HKD5DhThGKyg99LQTLjOuIN/cY5Zmfe+8mg7
         UG2iFfFj0AnaaRkJkRzJ8nj+bbeTeSS+GDK4ZCG7CBBFOvFjw9F9Tu1sFPwM5g4nb9il
         DzbTQet9u54M8jEFqgaQuwpHYQ3RgnUIZ8U5o0o+0SmOVmkevyNenYBJugKdpLOgYflX
         xap4UDedzaVFnOEtJdN9AZtBsXfYiERn9bRIuYqtBl/dSvCLLhNuTQAXuhVy/ug3b+0L
         9i01sY6GULlYqtWtFppUPHUnnqkYhIPsiPkM/2nCmZgj6cniYLfEqNj0oJ5MJhUQp4Ni
         wrvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ieJI1WV3kQHiuqWhbIlF4yE08zMfT9xEH5Hp4o2N6k0=;
        b=aQhWY5ccr56s3cuUj6SJ9qDLYXu7igqgqyhHKecPUF/kFaTmYr9b3nR2d5N5gMSRuk
         98tlvSyZMpIOZuKfphl3sOD0CtGIMaWTBxcJyxcMJF7/V5jHjU/ZQp1wRhmPfBMgshYP
         BNuV12LXfjMUgQ1jFmsYlx9UvGXg42Xnimr2yOF0XFUk4wIIidr73mpuuRHsbEgnTlS+
         nx+ai51hRQtEJfUIpUoFDlwpFDzX5yeOr/8Qk/kRegmpz/L91Yh03S8mOTbw7MQHQN5n
         BGehBUpwV+x//o5w2TQCBcu35WqjuxHsy65Xlt9cRKnm4Py26pDdLbbQxFNfktQ5eTcd
         wmQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SwvUPgIl;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l12si38717plt.5.2020.02.10.09.52.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Feb 2020 09:52:23 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1B5BB20715;
	Mon, 10 Feb 2020 17:52:18 +0000 (UTC)
Date: Mon, 10 Feb 2020 17:52:15 +0000
From: Will Deacon <will@kernel.org>
To: James Morse <james.morse@arm.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
Message-ID: <20200210175214.GA23318@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SwvUPgIl;       spf=pass
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

On Mon, Feb 10, 2020 at 05:18:58PM +0000, James Morse wrote:
> On 28/01/2020 18:49, Sami Tolvanen wrote:
> > Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
> > different exception level.
> 
> Hmmm, there are two things being disabled here.
> 
> Stashing the lr in memory pointed to by VA won't work transparently at EL2 ... but
> shouldn't KVM's C code still treat x18 as a fixed register?

My review of v6 suggested dropping the -ffixed-x18 as well, since it's only
introduced by SCS (in patch 5) and so isn't required by anything else. Why
do you think it's needed?

> As you have an __attribute__((no_sanitize("shadow-call-stack"))), could we add that to
> __hyp_text instead? (its a smaller hammer!) All of KVM's EL2 code is marked __hyp_text,
> but that isn't everything in these files. Doing it like this would leave KVM's VHE-only
> paths covered.
> 
> As an example, with VHE the kernel and KVM both run at EL2, and KVM behaves differently:
> kvm_vcpu_put_sysregs() in kvm/hyp/sysreg-sr.c is called from a preempt notifier as
> the EL2 registers are always accessible.

That's a good point, and I agree that it would be nice to have SCS covering
the VHE paths. If you do that as a function attribute (which feels pretty
fragile to me), then I guess we'll have to keep the -ffixed-x18 for the
non-VHE code after all because GCC at least doesn't like having the register
saving ABI specified on a per-function basis.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200210175214.GA23318%40willie-the-truck.
