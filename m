Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB5VE4T3AKGQENK5SFRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 813AC1EE7AD
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 17:25:43 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id x123sf3426850pfc.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 08:25:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591284342; cv=pass;
        d=google.com; s=arc-20160816;
        b=AikiPWqGMixLmwkq9OzOElGsCR0V80eukgSDUFwA80QFaSZSIPywuSvLQlsP4qYzt8
         CcuLT6fp0aQpSe96O4ftx2WCs+dTs0u+7mCMSQoQj7tRlj8T80ZVuO3D7TeDVENm6E3L
         U1E6s+XmAT7y79xdm1hWJvVDuVSfHacy1i6qGFhoFJhM8ZIR8E2hysspWxwmjbzoy2Mz
         iRTUKplHVRuCozwWAvpTUt5Ilc9ntf5875ZSfgD2IrA5ERBk6tkeAhrZdgQ/lKuxOVWQ
         icv4OcU5CLXPz+WnVG21RWUJYGe0L+kBoMqC7OhoSlHFLNzzBoWR/rQGEN2qF9zdOTza
         DLSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bIEMeUWGV+QuxyHszoC7dcecYHNhTY/I4c/UmXThdN8=;
        b=r+B0YrTmJpwci9GUByhrLgtuP1+AUnwmIoxER/XY1AZICL/YR52VRsyKw0UPx9pkEk
         Uko6lnin5VkwdgoEucclT69vn6C4iLt5K/xrmFWTYal+StdpkfbwJXHMtdvgGFzDmZ/f
         nDgQyjjzJSfBgKIjT2VuxR9fUJcSpUS04jpfRWeg93+I0ed1oYrGQIEfOB2rVXoX8gdg
         lJcB0OoxQgQFW/85EJwJ0u2U/Jth2T8tAHpiTSSKRlTLyYyFn+eHBzt7lDTbDAhOa5k5
         KIlmyXfH1dVHY4iNnGC+sm/D+hOaZWgY1UC73SGFg2Vh7vM8brrLKN8DEIVWGBLSRvtu
         DsDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=jB26+r1F;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bIEMeUWGV+QuxyHszoC7dcecYHNhTY/I4c/UmXThdN8=;
        b=AHjvre/uWtTm+CMjK6NupEA734stW14UMYvMqxsQdSR2AxEm2tX7nHYtzfklpwLecU
         OmNQI7jjFFcuB1DkZVBodVPURO8MdlP2N/ulL7arsgx9uki4V6/9/dyRu3mc1UmakNU+
         mVqdWdmOSJc6woB5xtE1kvyu73EmWPlGe3uRvdPYEyKPArG8BBNtbo3f5aMQo6y9QYwI
         FcSRJEQtucrITEOq3ltpmn/r+bNyT+BJ4QyUGTYKLmk33HPKSn/wHmxoGyzSTsUPIDof
         bM2wvvk/AZ8YnAsd0yYkS9CjSJahg9KR7zXa5r7p2eWqPMnVkrT1ck4omUuxqsGCQmUD
         51PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bIEMeUWGV+QuxyHszoC7dcecYHNhTY/I4c/UmXThdN8=;
        b=kBV+WsVtgSjZqb4gFtjwUHKa2vbSRxMdqhYy1QUKpu9mbIor9bPi94BUfOUPFDadFD
         9yzRCTcP+bxJXzbK83MCWRX+r+CF5zuboYxdT/hb6BVBzD+/E9uXl5HaeMKJeJl9PqzK
         KL4f60Jgh4haecZz5wwyYYtH5u+Ja2pssCK5XLRR1AqV7xZBe1Yo5W2bh8M4kbAbHqsw
         g4qimQ4n4KGkWDcZQhAthIwCj4FpiL+wFv8Ztib4qzHu7maMVO+omJVM7LtOXBW9msey
         NmwmtLmZsNTn5pT/4MHT7CfAqS8BuLU08PU8AAAesWA5vJ0XVosvjj0Jk0JbscK4xRBw
         I9XA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333hK88J+urm6qvxIj5zpM2xgMIpwrkur6KoRdNZyAn/I4copNk
	RCiD/dXUxOKL/Be/XnPHxvs=
X-Google-Smtp-Source: ABdhPJyBEqAbhLVDLGYQYVkkgX+UQ9GASAtYxnfXxF0vGMCXs9EK8qCl9tmDCsXdwKqAGdoepxTevQ==
X-Received: by 2002:a17:90a:a78d:: with SMTP id f13mr6741925pjq.90.1591284342216;
        Thu, 04 Jun 2020 08:25:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9a84:: with SMTP id w4ls1949166pfi.7.gmail; Thu, 04 Jun
 2020 08:25:41 -0700 (PDT)
X-Received: by 2002:a65:6703:: with SMTP id u3mr4859011pgf.179.1591284341757;
        Thu, 04 Jun 2020 08:25:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591284341; cv=none;
        d=google.com; s=arc-20160816;
        b=WRm3iytFZ+uJrNFCdfzDwLgqe9l3x3kf84eFm6BHHOlnqVx5ozAzxEUv0MUR1oHH+N
         ACiRF3niNQ483iSEPsAVT9rtZFONPh40o56+XvHyAh+oAitUDih7MEe8LwUK+adRqsSu
         r34oSATiKDtOkbq4o1AHakLdhzZyJn/RNU9HfE4EodcRk/7B/0T3lM0wH5J2IISYY0Gc
         CxnbK4SceHMtFdQ9Ojc1wFsfGCv7qVDgg+bLpSm7uUgqUeZgtNPDWkl23Jy0W+cHQ121
         cvpYZ0vHs4UJ8VeLPQZlaAM3H1iy7lbRprhSqSn7dLcGQnqjJtGtgTPrYAAQ/fDHMyWW
         gMAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7nUdXGk9WUnPOP8CYGbU/r6c+Zp3RIzDzbNwRPB+ALQ=;
        b=S8ICK43b928eH5pGPeVvJWKqjYqlwTUU3lDjVHrka0bzFiWVivK4fCpXSOznxHIe9U
         QkANEq7Em4Rt53ch3wflRexIm0O7nnPESJjAgXE+ehNE0JYt0bj2XKchyXW57/y6wsOk
         hUMaZ6DMCh0BLZI8NZgYGneQ+HuA+IkWR2ID8rcxlWL2sNadGS3L7k4Kdpq82raqjuyi
         QuvavVkl6UTf/otv8tThczhsSPJpa8Clpf6Jo0R1r9A72DELZiYj/jgmY25/d0UhmhLd
         2ga+fMmUX1S3a+HJHlAaBXG5Sx8uLObnTLWNwIDgzCGmo1H/4pz1MB6MfSGQaeHkji1V
         fSVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=jB26+r1F;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id m8si239461pgd.2.2020.06.04.08.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2020 08:25:41 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrkR-0004vl-76; Thu, 04 Jun 2020 15:25:39 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 549D4301DFD;
	Thu,  4 Jun 2020 17:25:37 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 4045A20E061B2; Thu,  4 Jun 2020 17:25:37 +0200 (CEST)
Date: Thu, 4 Jun 2020 17:25:37 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marco Elver <elver@google.com>
Cc: bp@alien8.de, tglx@linutronix.de, mingo@kernel.org,
	clang-built-linux@googlegroups.com, paulmck@kernel.org,
	dvyukov@google.com, glider@google.com, andreyknvl@google.com,
	kasan-dev@googlegroups.com, linux-kernel@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 1/2] kcov, objtool: Make runtime functions
 noinstr-compatible
Message-ID: <20200604152537.GD3976@hirez.programming.kicks-ass.net>
References: <20200604145635.21565-1-elver@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200604145635.21565-1-elver@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=jB26+r1F;
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

On Thu, Jun 04, 2020 at 04:56:34PM +0200, Marco Elver wrote:
> While we lack a compiler attribute to add to noinstr that would disable
> KCOV, make the KCOV runtime functions return if the caller is in a
> noinstr section. We then whitelist __sanitizer_cov_*() functions in
> objtool.

> __sanitizer_cov_*() cannot safely become safe noinstr functions
> as-is, as they may fault due to accesses to vmalloc's memory.

I would feel very much better with those actually in noinstr, because
without it, there is nothing stopping us from adding a kprobe/hw-
breakpoint or other funny to the function.

Even if they almost instra-return, having a kprobe on the function entry
or condition check is enough to utterly wreck things.

So something like:

void noinstr __sanitizer_cov_trace_*(...)
{
	if (within_noinstr_section(ip))
		return;

	instrumentation_begin();
	write_comp_data(...);
	instrumentation_end();
}

Would make me feel a whole lot better.

> +static __always_inline bool in_noinstr_section(unsigned long ip)
> +{
> +	return (unsigned long)__noinstr_text_start <= ip &&
> +	       ip < (unsigned long)__noinstr_text_end;
> +}

.entry.text is also considered noinstr, although I suppose that all
being in .S files avoids it having annotations inserted, but perhaps a
comment?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200604152537.GD3976%40hirez.programming.kicks-ass.net.
