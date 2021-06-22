Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBDVBY2DAMGQEDPBXU3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE533AFDD7
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 09:26:06 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id b3-20020a05600018a3b029011a84f85e1csf5209786wri.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 00:26:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624346766; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y4a6UbZWMp1to8MWK9TrqGYEsOUODopxtByxC3TXXAS+UDpb9iGiliMed+w+lKSN8v
         RHbQo+OClVSPV33rvOCEkEoQhbC7c/70lrcGprnMWf+uRp+la6RYJjmddjjf34S8n5zW
         cvM0rKpJn5gAvginNhveGvVc9xgT9upnbZQtHkDi6cD8wdbsIqXgIdKGJPWvC8WrU+5+
         tR16Yh2FTCkwn+ePnRNlRXV/LoEd9Ks3ETZjDNhHixmQyFICgg1OR3s0U5/7boIJt7rW
         cHRtNM7cmsM1ZGmtY0D0JNmBAPbcXqaBnqpQj5n9Ksu2sQIgPZu4OZywj5tp+Ve8OOtj
         uC/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ptJxQvyGqHWBYNXpMhiWM9zFBhSfWocGZUSR4R3cRA0=;
        b=sUb6UGuw8NxOyZJS8EKttK7gchVUaFcYVlEHo5nHYbWvgHf3AZvBtrO63zb4ppyTK+
         0RNlIdIhhFnRwOzKzhNDaMx89VssP1uEHKZaKUsv9RkTYf6wlxkdRbfT0GAiQ1Tw5/+Y
         mWaZ4aug4ghkAboVc/sgDvZfnqBs6voRVk0e5r5pW7YKumHmwrNWRFTRL8dRE4B5U6JZ
         IHrz3OoDT8y3v9sj2VPWDlls7S5UYOTBCUNWzwNCc2Nq4DX95DP0lcAZF63PMmrMRyu+
         R/3+MUb4WEYJfESkZ73ELSI9p9xCEEbdXioYcIUpQ4I9P54hdqNuYkv0Avh4mi9xlWEr
         tO4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=rJKaj++3;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ptJxQvyGqHWBYNXpMhiWM9zFBhSfWocGZUSR4R3cRA0=;
        b=lsjlDsQNt2uQq3m5iSPFyd8tTyVmR1wIdfEv7wwxaQUPGW17lRKoAe1i+DF1OJHoUt
         t3nH8fy4C+HcsIN405+0xLHVtXMEx95wfQUsF+RENmyXyJzGmeCsx0WASUlBqlGIZdUe
         HbeJYSfeSCCocwg4X1pRWelODU6EpM4vw7Y+D/CiYTb7yVjUrDomwDoI0oR7PwXcpGD/
         lTXjRYg0D0BPjP+t+dbmThoQ2JgPD/MQi0QTfJJIXriIP/Xvb1AHdrjWSQKnjFb5YZzU
         aV7fKM769jO9NrDmoTAwKcL1gVgNIXpRKI0sHEf35HgSi6ugT7MzDgTIL8CXKHcXpmz4
         dnxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ptJxQvyGqHWBYNXpMhiWM9zFBhSfWocGZUSR4R3cRA0=;
        b=FEOL1N1L4K1VwNbUB1wWv8eTyMEVFV13lyzbTZNV0qjkdHm2+HpsQoQ7w9cfe+lCQf
         xYXTb9OxQykK/DgMNfJcOdpMdaU5k4t7mApjU/vV9bvmg5seRyW9i1rX+S/b02tCrNr5
         IfQrGaaka8hO3NBH/ksKNW0SihYf/pzQ3yTV/NiguEz5ZS9sOF4xaSIy950jG0Xo09kO
         a2FwTu3SatohfxjfGq64RsYSaRBO/q/DNenhdnabIP9BAe83utgnk7LORwfCL8OJdll2
         uJqLNfeA4EV//mm1qbZw7uMRITdi7y6ES7RGqIuEus9O3YbMY3G4+fF3mreDjqboVsEQ
         uBqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Hovlfu0UPvBwuG2Cp+FbSRTKoZ2rt4FQbg23QCXhlit+1VYcJ
	sWGFWebhRCBLFCkTlCyGnMY=
X-Google-Smtp-Source: ABdhPJwBNSE9vmKad0jwzQhnr1WIW3AO14Dx0JIJ052xwuzBjVqjcCqAQJ/w7vJa7B6BgCCxFyfccw==
X-Received: by 2002:adf:e110:: with SMTP id t16mr2912865wrz.359.1624346766169;
        Tue, 22 Jun 2021 00:26:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6945:: with SMTP id r5ls188875wrw.2.gmail; Tue, 22 Jun
 2021 00:26:05 -0700 (PDT)
X-Received: by 2002:a5d:6acc:: with SMTP id u12mr2904365wrw.414.1624346765448;
        Tue, 22 Jun 2021 00:26:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624346765; cv=none;
        d=google.com; s=arc-20160816;
        b=fJaW+JGJpf41mHQV7Y4WUJHgXRMb60+vbVZQfYqmbrbPtqc05FZl/cugXyGj48msmC
         OxMp8rjN/LoWQgSQnOrNI27uk/CKsRHoCtlgSQ9jOx9xrZXySJAldfhgj/sKu3fFzYTz
         UaxghjfNsnrpIIxaXADOViwmYnemXwVy3+9DCoGlBqstoaXNeEQ9xmqQHPk9/X1BgGL7
         XuQR7h9Bw52SDYUYAtZiw+zH/x8T3/7hBQvTCPrgQEN67b0Z2rXNAo5RI3sZ/jIXF/JO
         TJNMuseQ2OTaMZXWnuJRLknmE0Tzqvf6s9wgq+ePR9ER/NReHPeODxw7m4WP3c5e0sOX
         BnUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ChDiBXqAGycwZ327ht94EElL6EgZhmaY+P0RC9fzg+o=;
        b=DCi/0lTxCKtPow+tMhY8M0Zz76X+mHWdaYEsfS3sLzHW2fwX7T9c4xxG0Sy+5gz5bI
         graC/S5r7e3Hvf3DRiy3dQqm/jHs9RIQoO/3KGjXEGKCg54ynBq3MwAXH4Lkz1KOpyns
         Jp+bwMxGeHcwUCOSF3Oqlwo6Bx1scpOLHAOTfDsbEWCfXChxBm+Q3a2Yf7xeKxExzjVE
         JYctDamjR572QH99idjcC13wOTbLZcmXlwShGB6wLzmq2Glw/30by6N8gbUgq2acpzBL
         e7Sves7TtKLqfRzSLZlsjLjnBuLBPIsYw1S9xDBG8cJmNgyocRIl/0AsPnEVvYEMRtm3
         yrJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=rJKaj++3;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id t7si102758wrp.5.2021.06.22.00.26.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jun 2021 00:26:05 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvanA-00AWLV-FD; Tue, 22 Jun 2021 07:25:59 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id D55373002C5;
	Tue, 22 Jun 2021 09:25:58 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id C45BD2C6EEC7C; Tue, 22 Jun 2021 09:25:58 +0200 (CEST)
Date: Tue, 22 Jun 2021 09:25:58 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Bill Wendling <wcw@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	x86@kernel.org, Borislav Petkov <bp@alien8.de>,
	Martin Liska <mliska@suse.cz>, Marco Elver <elver@google.com>,
	Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>,
	linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org,
	Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com,
	linux-toolchains@vger.kernel.org,
	Heiko Carstens <hca@linux.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	linux-s390@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2 3/3] Kconfig: add
 ARCH_WANTS_NO_INSTR+CC_HAS_NO_PROFILE_FN_ATTR, depend on for GCOV and PGO
Message-ID: <YNGQhgKd9Ruti5qZ@hirez.programming.kicks-ass.net>
References: <20210621231822.2848305-1-ndesaulniers@google.com>
 <20210621231822.2848305-4-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210621231822.2848305-4-ndesaulniers@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=rJKaj++3;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Jun 21, 2021 at 04:18:22PM -0700, Nick Desaulniers wrote:
> We don't want compiler instrumentation to touch noinstr functions, which
> are annotated with the no_profile_instrument_function function
> attribute. Add a Kconfig test for this and make PGO and GCOV depend on
> it.
> 
> If an architecture is using noinstr, it should denote that via this
> Kconfig value. That makes Kconfigs that depend on noinstr able to
> express dependencies in an architecturally agnostic way.
> 
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Cc: Peter Oberparleiter <oberpar@linux.ibm.com>
> Link: https://lore.kernel.org/lkml/YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net/
> Link: https://lore.kernel.org/lkml/YMcssV%2Fn5IBGv4f0@hirez.programming.kicks-ass.net/
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V1 -> V2:
> * Add ARCH_WANTS_NO_INSTR
> * Change depdendencies to be !ARCH_WANTS_NO_INSTR || CC_HAS_NO_PROFILE_FN_ATTR
>   rather than list architectures explicitly, as per Nathan.
> * s/no_profile/no_profile_instrument_function/
> 
>  arch/Kconfig        | 7 +++++++
>  arch/arm64/Kconfig  | 1 +
>  arch/s390/Kconfig   | 1 +
>  arch/x86/Kconfig    | 1 +
>  init/Kconfig        | 3 +++
>  kernel/gcov/Kconfig | 1 +
>  kernel/pgo/Kconfig  | 3 ++-
>  7 files changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 2b4109b0edee..2113c6b3b801 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -285,6 +285,13 @@ config ARCH_THREAD_STACK_ALLOCATOR
>  config ARCH_WANTS_DYNAMIC_TASK_STRUCT
>  	bool
>  
> +config ARCH_WANTS_NO_INSTR
> +	bool
> +	help
> +	  An architecure should select this if the noinstr macro is being used on
> +	  functions to denote that the toolchain should avoid instrumenting such
> +	  functions and is required for correctness.
> +
>  config ARCH_32BIT_OFF_T
>  	bool
>  	depends on !64BIT

There's also CC_HAS_WORKING_NOSANITIZE_ADDRESS in lib/Kconfig.kasan that
might want to be hooked into this, but that can be done separately I
suppose.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YNGQhgKd9Ruti5qZ%40hirez.programming.kicks-ass.net.
