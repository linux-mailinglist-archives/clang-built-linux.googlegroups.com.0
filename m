Return-Path: <clang-built-linux+bncBAABBTFE6H2QKGQENXXKGXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id AC10C1D1FC9
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 22:02:21 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id s11sf336507uap.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 13:02:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589400140; cv=pass;
        d=google.com; s=arc-20160816;
        b=hrcneQBEtvhQu+yHb/o1CyKSGhG+acNNFBex3963ODXDuQji/5UmJGZzFid0Qs6hgH
         LwEYyRD+dXe7htbZYHkrH0IjGkQuh8iS4Id0FDXKXrUfM2fh4ryvphJ0Nc+U/Cvw35c4
         krdUZUxJhNSfZPURE2aqEpEmNJOzkIdLypKw+Ia/WH50zrpvLllk75kKGNizRj/8Uk8y
         06HD0Fabcmse/p0cQmuvib3Y6CHaAERN5vOtAa8fgDEE6Cvq7F19J9gd5Egrf3Kpl4I7
         dlyVHaG8yBjL9st51MdKQhi8NIvcrpvb9+AHhpSFS/IJWjdykWG2c1/ldtu73vyQqqCF
         bPFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=lGgEbp5RKimvso2Ipk5VLqx9VSeJLkJyL7SVNdnx5lI=;
        b=fUeNF/7XkIRG34+HjMDUFln3jw33YO7P3rhTj9Ol42tib/nqXIVvZAZwruOG7EhRla
         TtEMFJvgfQk3uCBUioG0y4D7c/Qy8kkUbwX2F8Z2BZYLlendx2z5qHAQGyhvlEJEw3zN
         6G61qWJ6CnXCOMJLCvSgMEMMHPaO+tUl3+NUg3C+CPwSKFwDmGwDmJZ9RpjJgIZcRiIf
         inOWiG/zU2tRTa3z6xC1sb0quTEbj8pY4uJFOkXePCqXZZWu/dfRCICdmcvqsRNAKhnI
         ClvCTgImTE8y5kghWwnMXNkA6iKECRi7M8Lx1FU6byfs2ExEtuvK6ESHxHgzrP5CAZG2
         tZ1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oZX6W3Z4;
       spf=pass (google.com: domain of srs0=h0+r=63=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=h0+r=63=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lGgEbp5RKimvso2Ipk5VLqx9VSeJLkJyL7SVNdnx5lI=;
        b=AVZV1ZwPBRWMKRyyblqE1qtf/8OQKBfRBBmeUwd/Nl7++9TShbIbz3/iyV6IIG6gJf
         g9X9oWLpnbYMCKMybaEGQfMTQqUEZBy5TEAZ9Q8Disl41s/N0+JfPYgJotPUH4LupTUc
         4Aq3LQOaYdYcZ3ccVadxlD0mSpA0L0EFBlq8WvWJFvq8jEP8ONOISyoXkKbwBM3uFEqQ
         Zh3nAn+Qd2wNIVg6GFhPy56zqoEBhcb+M8IvOtS3bRfSu5DdM8OKoWe98ufDS7JR09NJ
         NIsJM6Ad4t7RiDS5p3AhlTf+/ZeeaBwVOsi1iPu/S1NL7aAF5uiZyfDQUc01TKnycykB
         o3eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lGgEbp5RKimvso2Ipk5VLqx9VSeJLkJyL7SVNdnx5lI=;
        b=f0ZeBDFz3aC6hEfwdDJNVqRgjbak12AZl25awscBmeWuhkbU/q4PQns4hIIt+O7uKI
         OutIItiANwn5Psq6oLgN3B5dMQBcmu+XhUELhECcblPxHHUZO5s8eoVvP5fyT5lVwbvI
         g82Wrs8OmeLadwqSEKt2uHLcNlOcUISvJOu4lL8JwfSzqASONqGmm0MJBEOmDdSzVM4M
         AWF2mNGit6JPN2jLjywSU7hMoTqjraDl90VSkw2uS3Mc7EcVV/yapSf5QG3V5hm4QgiB
         L4VEUFkjORnAIVByIKb6CUg9bpwzNqcQk/ZdXMHSx9xJ2TEKZjsfsrwnzsiewNJBkDWY
         98Iw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NyftOwQ/c9kfc1p+aXPYppJbY399TMB/Za/3Us/l/FXL83VUG
	liGmcFHIf7NMh97FTRer9gw=
X-Google-Smtp-Source: ABdhPJx039L+RV/9TXpsZaHKrWXtjFn/zpmk7U9mgvo5wQWvoVVAf78XxDIjuBNeCMNDS5aTq8jhyQ==
X-Received: by 2002:a1f:2c54:: with SMTP id s81mr843120vks.82.1589400140525;
        Wed, 13 May 2020 13:02:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f605:: with SMTP id k5ls102011vso.2.gmail; Wed, 13 May
 2020 13:02:20 -0700 (PDT)
X-Received: by 2002:a67:8743:: with SMTP id j64mr757342vsd.149.1589400140237;
        Wed, 13 May 2020 13:02:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589400140; cv=none;
        d=google.com; s=arc-20160816;
        b=F4pS1Vq5j2iPBGg4Lhk9iykUYfc7NuvoXnRtgsGIAxKEubAV3Xkewhz0WjNozxnoo6
         e1fRA9WjvtEvXCJDCN9S4+KuYTSS7UJ3WHEMLlTpOgyxw/6Y7buoTNJrXHjb3yVsVSPB
         DOigch44yJCWpzw41YmL9bNNrpam1IyivWuLRlGt7rQhgB+xnOk6oXL47zuAgAxZiaNb
         QfLGR+8mnAqq0aOXu+ph16Z0WF0IInW6vXorx3DgOUQTdpdgd9ZaVAeF35E70OdoD3gA
         uGM24R49v8tgcDvyci+Jkdb+0prXBKeXmLznE7OLqUBcvpxKExxFmdLOwyDxcHFey2pm
         CkeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=q8bx4k6HGy5lI9oMQDUvpfRKQB8DBhk2AZO6NIPgo1s=;
        b=YPrvDH0GHZgDduf/LxzKzkKcW15JyRsL8/82y/g3cNAlVd369nrcA33jHSXBZYkKTF
         DY2S1GvI3VMyhWkvW8pxQCgzISre1kSoKgmu3nf1K01C6AL16ZmPaNxEMDXb4jkLG2Wk
         DPXQzNxpPG9Oun+mTIYkAlMsJO9aYt7WkSoEozNN0ioUWw24pq86YuCqdGoh6MDK1EyN
         7AC4KsgFxxSUHqcrkKMnjMzuxxVPFin/m7zZn3zDmklf9wmr8z2Ku7nHjgwX9ISNSJOz
         5GSjrg2RquOOUT98Hi6njePWcUztYAWYxFDdj6+hI8j6OXw5XxFZTfvrLksh+aZMLdFi
         Ukcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oZX6W3Z4;
       spf=pass (google.com: domain of srs0=h0+r=63=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=h0+r=63=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i26si30626vsk.0.2020.05.13.13.02.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 May 2020 13:02:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=h0+r=63=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (unknown [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D9A59205ED;
	Wed, 13 May 2020 20:02:19 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 005D5352352C; Wed, 13 May 2020 13:02:18 -0700 (PDT)
Date: Wed, 13 May 2020 13:02:18 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>,
	Ingo Molnar <mingo@kernel.org>, Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Thomas Gleixner <tglx@linutronix.de>, kasan-dev@googlegroups.com,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [v2] ubsan, kcsan: don't combine sanitizer with kcov on
 clang
Message-ID: <20200513200218.GA25892@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <CANpmjNPCZ2r9V7t50_yy+F_-roBWJdiQWgmvvcqTFxzdzOwKhg@mail.gmail.com>
 <20200507162617.2472578-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200507162617.2472578-1-arnd@arndb.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=oZX6W3Z4;       spf=pass
 (google.com: domain of srs0=h0+r=63=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=h0+r=63=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, May 07, 2020 at 06:25:31PM +0200, Arnd Bergmann wrote:
> Clang does not allow -fsanitize-coverage=trace-{pc,cmp} together
> with -fsanitize=bounds or with ubsan:
> 
> clang: error: argument unused during compilation: '-fsanitize-coverage=trace-pc' [-Werror,-Wunused-command-line-argument]
> clang: error: argument unused during compilation: '-fsanitize-coverage=trace-cmp' [-Werror,-Wunused-command-line-argument]
> 
> To avoid the warning, check whether clang can handle this correctly
> or disallow ubsan and kcsan when kcov is enabled.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=45831
> Link: https://lore.kernel.org/lkml/20200505142341.1096942-1-arnd@arndb.de
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied for v5.9 and pushed, thank you!

							Thanx, Paul

> ---
> v2: this implements Marco's suggestion to check what the compiler
> actually supports, and references the bug report I now opened.
> 
> Let's wait for replies on that bug report before this gets applied,
> in case the feedback there changes the conclusion.
> ---
>  lib/Kconfig.kcsan | 11 +++++++++++
>  lib/Kconfig.ubsan | 11 +++++++++++
>  2 files changed, 22 insertions(+)
> 
> diff --git a/lib/Kconfig.kcsan b/lib/Kconfig.kcsan
> index ea28245c6c1d..a7276035ca0d 100644
> --- a/lib/Kconfig.kcsan
> +++ b/lib/Kconfig.kcsan
> @@ -3,9 +3,20 @@
>  config HAVE_ARCH_KCSAN
>  	bool
>  
> +config KCSAN_KCOV_BROKEN
> +	def_bool KCOV && CC_HAS_SANCOV_TRACE_PC
> +	depends on CC_IS_CLANG
> +	depends on !$(cc-option,-Werror=unused-command-line-argument -fsanitize=thread -fsanitize-coverage=trace-pc)
> +	help
> +	  Some versions of clang support either KCSAN and KCOV but not the
> +	  combination of the two.
> +	  See https://bugs.llvm.org/show_bug.cgi?id=45831 for the status
> +	  in newer releases.
> +
>  menuconfig KCSAN
>  	bool "KCSAN: dynamic data race detector"
>  	depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN
> +	depends on !KCSAN_KCOV_BROKEN
>  	select STACKTRACE
>  	help
>  	  The Kernel Concurrency Sanitizer (KCSAN) is a dynamic
> diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> index 929211039bac..a5ba2fd51823 100644
> --- a/lib/Kconfig.ubsan
> +++ b/lib/Kconfig.ubsan
> @@ -26,9 +26,20 @@ config UBSAN_TRAP
>  	  the system. For some system builders this is an acceptable
>  	  trade-off.
>  
> +config UBSAN_KCOV_BROKEN
> +	def_bool KCOV && CC_HAS_SANCOV_TRACE_PC
> +	depends on CC_IS_CLANG
> +	depends on !$(cc-option,-Werror=unused-command-line-argument -fsanitize=bounds -fsanitize-coverage=trace-pc)
> +	help
> +	  Some versions of clang support either UBSAN or KCOV but not the
> +	  combination of the two.
> +	  See https://bugs.llvm.org/show_bug.cgi?id=45831 for the status
> +	  in newer releases.
> +
>  config UBSAN_BOUNDS
>  	bool "Perform array index bounds checking"
>  	default UBSAN
> +	depends on !UBSAN_KCOV_BROKEN
>  	help
>  	  This option enables detection of directly indexed out of bounds
>  	  array accesses, where the array size is known at compile time.
> -- 
> 2.26.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200513200218.GA25892%40paulmck-ThinkPad-P72.
