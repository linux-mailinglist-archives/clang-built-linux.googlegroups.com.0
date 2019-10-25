Return-Path: <clang-built-linux+bncBDV37XP3XYDRBV4GZPWQKGQE7PRKRVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D53E4789
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 11:41:43 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id y20sf1016328edv.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 02:41:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571996503; cv=pass;
        d=google.com; s=arc-20160816;
        b=sSXRaDlBduUlV64PY7cG+wInLnjpPIyljFk92bDohbKZ8y7vQeLFqfNcQr+x9gv/sC
         Kx5jWQQzR1BWiEfFZu63535A2r43w8skgQEaFeBpcIq11SPDUYCTMYd+HzafviysI2tU
         Mt80azxVkNjqCPs+CiX9+xXT5Wt0KWMAT3YxiF6FRJw86CZ7Y0PT8AI9sJVIZFexjHow
         ZKzwZXvaUmr2nCmGcw7n94bCMHH8O7dEeQl1swjqxlwcuWf3/B6SOheKoIMOB+iYo0Uo
         vUSyQx6WGD/a15NeAZFBBC4KDx1Ia19Gke/8CRuBhoTwrABC1orqdKRjKgAhCh4yWMp6
         WCIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=UQZPsC9rGPTUwqwgb3f++UT7HuLRhYa+Dsyg5PGC0s0=;
        b=jZAoH7iG+ZyCx9gzZvWnrJQwixBsCC1cSZ4bXgvl3hkH3WfL42CUf5QeMzrNR4Hd1g
         RZq8nW8ZCWKDAgea1eomBj5CN1I6f429CZcI0crn4D8dFy5pOL9qspGvHPjt5g4reR03
         LhgRfN4zDh1qzS4b6L/b1jd4eqSBHX7yug4oToKnUHwYVEWUKt21bFH7CoGM9u3GlmfG
         vdinaqEdH87FOYH73qLtjgvv06eO6mctq7x+V9RSii1HNSOmZ96ietMdrfy6HO3Q0Kda
         Euka3XzxPi3NCDbSQvG+X3VOy3DO/0NSta0ayLoSh2RvbEMVKM8qqjslszD8mEy35gly
         C1xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UQZPsC9rGPTUwqwgb3f++UT7HuLRhYa+Dsyg5PGC0s0=;
        b=HW+dUYp9kyPYA8EI5TtE5Hs8nUMUcZXCKVmnaziobA5AJReA3HQ6wU7eVSD6Xn//Tg
         pVDaGouWFzfSh4QsSJdQn6MN99LTfjNtKZjSGzTJpTv6DCgC2YAwCGKJabXtQ14BMY0Y
         aCGO/zQrHCehFCBWypwR+MJ4D5WvUg/bVO/jIpIzmCFwp+S9uRh8rUUTs5YDyWuRtLGQ
         A1d/10TH/uPR9PntlL0g7Sw9hlUB3W4lrJU9llwCOFwUbvtxWu5dfug/w6qKBHrXH+1B
         +xUS9N4q8YD37fmp0rPwX9Fasx4I/wegygCMo6I8zXRB5mJqybZbC5fCMdtYjXc7urNk
         pF5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UQZPsC9rGPTUwqwgb3f++UT7HuLRhYa+Dsyg5PGC0s0=;
        b=N23xmG/PRRopq99Iv+qOmAFIoe7ZGIPq5Mtw9bdE2IxxI4LJNtl3IdnJhLJHCiwbVM
         ZSLrb13WAhF3i2EYMA1+7UTBjFco1pJIlkHX7/v6toYyULTKRxR9Q6gsQMhbRJvdJhX5
         6OzLXYFq1finLKzIh9t/0eNZMemEvOZrW8viVK+p00rvmED6aXWEPGNikdum2PVfZdNp
         6+dTytUj164LRWfSCqYSRqOJlD8JpqJsy9PuMwTIeqds+7xPQOiwOyuM8w42RokTP4iP
         29YFboRcphuQF28H7IDdjiDU1Bt1QSACZvcX+K+4Tzlqdb/nK9ntqvCL9MugbfCGIvYC
         /62g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVLi22PwvmtLl9Nhq8i6CXL+DilNEEo/ZULF2SdP3HOV8CjMz7J
	Enz6D5cZJvFKCmuqmxj4kkI=
X-Google-Smtp-Source: APXvYqySHwO7s9UpHNLCsRq2N3tl7XaNw80AsNabn/vZJwVx8YhvsdK3pw9nm3ONwXDQsV8T13Yeug==
X-Received: by 2002:a50:cd53:: with SMTP id d19mr2762716edj.197.1571996503460;
        Fri, 25 Oct 2019 02:41:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b846:: with SMTP id ga6ls1956964ejb.15.gmail; Fri,
 25 Oct 2019 02:41:42 -0700 (PDT)
X-Received: by 2002:a17:906:1651:: with SMTP id n17mr2471585ejd.220.1571996502745;
        Fri, 25 Oct 2019 02:41:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571996502; cv=none;
        d=google.com; s=arc-20160816;
        b=nlgYT6NeBYIpF2ooGFwgJJYEazDlDBlHnihQeWQNdNPCPkwghBRu7EWPczdqwXa54a
         OG1ITa7xAlj8LczgnhiL4Ux51xhxIPbrFZ8tPnGuZUexRs2rAcDhuJFd/e13CHttqQYq
         Ohez/BtuU5MOKEgsqgCD+wWeoT78kz14TjfkigXEW69ywEpsPpQKZ1TMZ9EwqUUQWtX/
         S4DgrqAKhL73ujWqf8sCqpygQP5O8FAvRlccPAwQe8VmeOVQRLzmEQl7cNjsQIVX2wii
         fcw+Q5oi2JrLunGiK+UQ0b0Rr79xxls5FH5ONTETvAKoDhbflnZgLzKTcqFZzFR5PRKp
         4hew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=nIgnh24TPceUqIN96mZDtpRbfKZSe5i6ynPPCaaAUWM=;
        b=sWhTxPPNnOooIhyqz0zkQUKXU4enpQnDI8+mbnIEVAOn4IvXD3poFM9yjXlMqDlDt4
         N8QTrFs2b+VcBDbhZuKTsLiz1+Ew/mAeTGBUsKkGSIOjFWn6IsKtPNRYp4f9BsKKsPPr
         Y+h4xS6NxLl63Ja8/kZIssphaE0Bz6b9djyaCzxoanOLpmwBCBdhY1puYiliSrFT/LRI
         oD2I01PkQ5yzyEdLe+/tsy/QQND6oBr7RTdKu8QUB2Hx8fYGVH78K702v0Ka64Yj7cD2
         KP9HuosCD/D32CowO9rW+QK93nwFMs7dODin3Sy15X+Ivfsc/hjRMOfcDeZTE/bqgdim
         idvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id q17si122291edi.1.2019.10.25.02.41.42
        for <clang-built-linux@googlegroups.com>;
        Fri, 25 Oct 2019 02:41:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E8EB228;
	Fri, 25 Oct 2019 02:41:41 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CA8C73F71F;
	Fri, 25 Oct 2019 02:41:39 -0700 (PDT)
Date: Fri, 25 Oct 2019 10:41:37 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: samitolvanen@google.com
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 02/17] arm64/lib: copy_page: avoid x18 register in
 assembler code
Message-ID: <20191025094137.GB40270@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-3-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191024225132.13410-3-samitolvanen@google.com>
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

On Thu, Oct 24, 2019 at 03:51:17PM -0700, samitolvanen@google.com wrote:
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> 
> Register x18 will no longer be used as a caller save register in the
> future, so stop using it in the copy_page() code.
> 
> Link: https://patchwork.kernel.org/patch/9836869/
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/lib/copy_page.S | 38 +++++++++++++++++++-------------------
>  1 file changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm64/lib/copy_page.S b/arch/arm64/lib/copy_page.S
> index bbb8562396af..8b562264c165 100644
> --- a/arch/arm64/lib/copy_page.S
> +++ b/arch/arm64/lib/copy_page.S
> @@ -34,45 +34,45 @@ alternative_else_nop_endif
>  	ldp	x14, x15, [x1, #96]
>  	ldp	x16, x17, [x1, #112]
>  
> -	mov	x18, #(PAGE_SIZE - 128)
> +	add	x0, x0, #256
>  	add	x1, x1, #128
>  1:
> -	subs	x18, x18, #128
> +	tst	x0, #(PAGE_SIZE - 1)
>  
>  alternative_if ARM64_HAS_NO_HW_PREFETCH
>  	prfm	pldl1strm, [x1, #384]
>  alternative_else_nop_endif
>  
> -	stnp	x2, x3, [x0]
> +	stnp	x2, x3, [x0, #-256]
>  	ldp	x2, x3, [x1]
> -	stnp	x4, x5, [x0, #16]
> +	stnp	x4, x5, [x0, #-240]
>  	ldp	x4, x5, [x1, #16]

For legibility, could we make the offset and bias explicit in the STNPs
so that these line up? e.g.

	stnp	x4, x5, [x0, #16 - 256]
	ldp	x4, x5, [x1, #16]

... that'd make it much easier to see by eye that this is sound, much as
I trust my mental arithmetic. ;)

> -	stnp	x6, x7, [x0, #32]
> +	stnp	x6, x7, [x0, #-224]
>  	ldp	x6, x7, [x1, #32]
> -	stnp	x8, x9, [x0, #48]
> +	stnp	x8, x9, [x0, #-208]
>  	ldp	x8, x9, [x1, #48]
> -	stnp	x10, x11, [x0, #64]
> +	stnp	x10, x11, [x0, #-192]
>  	ldp	x10, x11, [x1, #64]
> -	stnp	x12, x13, [x0, #80]
> +	stnp	x12, x13, [x0, #-176]
>  	ldp	x12, x13, [x1, #80]
> -	stnp	x14, x15, [x0, #96]
> +	stnp	x14, x15, [x0, #-160]
>  	ldp	x14, x15, [x1, #96]
> -	stnp	x16, x17, [x0, #112]
> +	stnp	x16, x17, [x0, #-144]
>  	ldp	x16, x17, [x1, #112]
>  
>  	add	x0, x0, #128
>  	add	x1, x1, #128
>  
> -	b.gt	1b
> +	b.ne	1b
>  
> -	stnp	x2, x3, [x0]
> -	stnp	x4, x5, [x0, #16]
> -	stnp	x6, x7, [x0, #32]
> -	stnp	x8, x9, [x0, #48]
> -	stnp	x10, x11, [x0, #64]
> -	stnp	x12, x13, [x0, #80]
> -	stnp	x14, x15, [x0, #96]
> -	stnp	x16, x17, [x0, #112]
> +	stnp	x2, x3, [x0, #-256]
> +	stnp	x4, x5, [x0, #-240]
> +	stnp	x6, x7, [x0, #-224]
> +	stnp	x8, x9, [x0, #-208]
> +	stnp	x10, x11, [x0, #-192]
> +	stnp	x12, x13, [x0, #-176]
> +	stnp	x14, x15, [x0, #-160]
> +	stnp	x16, x17, [x0, #-144]

... likewise here:

	stnp	xt1, xt2, [x0, #off - 256]

I don't see a nicer way to write this sequence without using an
additional register, so with those changes:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

>  
>  	ret
>  ENDPROC(copy_page)
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025094137.GB40270%40lakrids.cambridge.arm.com.
