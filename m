Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBTEKZ73QKGQE6NRNFWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B1D207E74
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:27:40 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id l3sf4280901wrw.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:27:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593034060; cv=pass;
        d=google.com; s=arc-20160816;
        b=pBotRcvrDQctLaSGP4Og/buHGNMnOU/Bz/2wlNFg7W7227ehXLnUfRg+e9ysTdEObq
         9dSGTaY570XrqI0v5NFsXgkW9J4yigYY7T39VjeCewIHmgjDconLTdcWjHWGKjvzwOra
         BIlIv2GZjESm7rh8OBRG9R39LxWe/zb8kjCMC7O5CBLkyvDssNsqDO6EqtSOToW4hfp2
         dPM6QS3bs0gR+XHAM4+Ub6wVhjVl/sZEXIc0FZAS2M487RGUTZzAFwu/PibmXKa0SsaR
         2mgv30wJAqMudh257pauG0ek7LuImzknTIEeJBstKvdPl6nZ3/ssZdJTN8gAnuRo2tUf
         LrJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Y4EeicuFxN0CwZk9o5krjWRjBZM7siKYiq0WOYYmqiE=;
        b=tL7W1CLQHe4YndHjLnvKoyp0wq4IWidQYUiju73Y73noHhrqE2k9A6oOJC1o2EvOkD
         Y/zh+t5j3tNUGlWr7CNcT3PJ8qRiTujkw2zLozBsfqGBvGC7Tod1pBCy/XfMaEafOGQV
         33g6UKcTsfh4h+1VXUiyFqoZu3IeJV8HtBNwEzJOyjKNFU6hDulFdcoFIvT9VwJRR+yq
         3BcHR0Z84lKvAZQ/WBeWpBr8Lf6xFJnj3GxLZZhRX+VRPOtUcqVQ9PdUvIbWGcujh1d1
         jiOdADFrq2cF0G8Yil7V4POvv7OaOyT9MSIQFLblBnlZ8gUXa6bo/EtGmyu6ZbujljKK
         2Lyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=kW0Gs+LL;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y4EeicuFxN0CwZk9o5krjWRjBZM7siKYiq0WOYYmqiE=;
        b=qjDqouJ4vMSjSiVTtxYgxnnfC4kjUWuja2+q1oyjhSCB1ZTbe4H18RNqcK6lJXjEbR
         ZwoSgf7TcHv5Pxz61rdbUStUuI0LEBme3SolnExCP3Ldik6H7VSBjcTiYX9MDSe64pIn
         AkV9eOCE8+TRwliWm9PT07pQhGXBWrBzrDWPTG5AE270hDz1CA+BMfG5nuZGtSwwmQb0
         xEZrwiiUdxDfmU1Lk4OThcP7kOo2YwSoGwb31dFIhGuZjaISDoLbhi+hMtG1NCCFryXh
         B/HMPgKku1QOSmjDCQcys3GjqFcZRN5zQCr16mnZCGx+6wlvq1x1fmm1uS7tUMGdRxTq
         nyyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y4EeicuFxN0CwZk9o5krjWRjBZM7siKYiq0WOYYmqiE=;
        b=RaOmQizmNLXAxHm2/2zIH7ERJ3NWnl7G5KodmaUVXq5lUpO/iP5gx6/iWct4lEOXi7
         8zta1a5gEGaaDj9mbo6jFJWup/KjBICTblIn/eDeKjK50K/CJ6uzRdYujxW93XuG5yO0
         sarOkp2Lnjw0tX2Ih0Wgz39it5w9WH8e6LI58cIZcJ2alPlE1SjdOOY2UMkAQ2DzMXz8
         bTcUi83oKukOtaMS2c07UtBxsUXKn4I839qjUP6fPD8PHexmRGWTUGKdTwXmzn5FZ2+8
         YtCID3jyW17naSISosahJTLzE2E/vRgYkdKXKjtsIVjhaxTUmkNCk30if32PFNVfBmOC
         lc9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rtLXavxCAZIhOmq33so+CpySPzs4ZBG9IGowsKk8nqvmKuSMd
	JpbHg/WjcuErMuY5EfqK+fs=
X-Google-Smtp-Source: ABdhPJwP9g3mQT0bnmICWWpMQ+O77Y8qXWsepnXMX9kxaQEnNz6BtfDsOBS2n82Gj8aKtAIwyfhTBw==
X-Received: by 2002:a1c:ed17:: with SMTP id l23mr33485655wmh.73.1593034060518;
        Wed, 24 Jun 2020 14:27:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ca:: with SMTP id 68ls4092338wrc.2.gmail; Wed, 24 Jun
 2020 14:27:40 -0700 (PDT)
X-Received: by 2002:a05:6000:1008:: with SMTP id a8mr1820490wrx.416.1593034059999;
        Wed, 24 Jun 2020 14:27:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593034059; cv=none;
        d=google.com; s=arc-20160816;
        b=k3FQR4xCg6G8o7fPoj5RM3PIMfI76EUH4J7xD5EJwtuMseCVd1SK/Xs6LqtQrtqvNC
         EzOjYSbxYSzD4JUcA81IOlCnQi2uqnq/TPcE24ZN4OP9bKPuieg+pYmnh5HA5kdU4uFM
         1leIkmI27G2jWvVPB4eDx6hzzSCvVdVQdrwLeRqsNtS99RHdWILJsYeCyByObtYRw9Jc
         YbRwDMqgOTvTQMNuWrR9e64e20CqfvTNgSrN3zQrMHyq929R+VZyYM+XvjybUNG876oU
         KPzlLYW2LUwEh6UlmpKTtgECmelr0WphCW83S3CIhMVC34M+q5QGjEWisQo/e9IJDU0a
         9gfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dcJg1Pmd9f78D6vA5vvd8lv5yiCcj7aT/KXUxx3p85w=;
        b=k/i6BEOUs/PdZeP6zrcYjm8JMJBasykya9aqshxRPsbRqJtBV8Dh2A11cJrr756ycn
         xJMy1J6ZsldA/iZ5u2oSHWuoKaGAlx24ojqIlJ3fH7u+i9Z2x7Ivq8Z1IDbZw77dLwmN
         C4H5HssLKvHg3UAWQqJ12HhdAkxsA8BZyqRCpTDzXVn/9LlwpGP6M1E5i+ylOsJE61aZ
         07//6uhFyl70SCi+vIxL7WAP8evkRNd6KYFpwLzO8By0ThYeq7YzWkewfeXw2J5xvFOS
         LE4lbpeuxtzjhaTvPY3dmPtFCIPqFUMQvNxL1tyDsiueURMVzixhwWIR4zCnjB2ehFFf
         IiAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=kW0Gs+LL;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id g14si355313wmh.3.2020.06.24.14.27.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 14:27:39 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joCvi-0004ro-5P; Wed, 24 Jun 2020 21:27:38 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id B90E3300261;
	Wed, 24 Jun 2020 23:27:37 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id A61A722B8EBE8; Wed, 24 Jun 2020 23:27:37 +0200 (CEST)
Date: Wed, 24 Jun 2020 23:27:37 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH 04/22] kbuild: lto: fix recordmcount
Message-ID: <20200624212737.GV4817@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-5-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624203200.78870-5-samitolvanen@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=kW0Gs+LL;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Jun 24, 2020 at 01:31:42PM -0700, Sami Tolvanen wrote:
> With LTO, LLVM bitcode won't be compiled into native code until
> modpost_link. This change postpones calls to recordmcount until after
> this step.
> 
> In order to exclude specific functions from inspection, we add a new
> code section .text..nomcount, which we tell recordmcount to ignore, and
> a __nomcount attribute for moving functions to this section.

I'm confused, you only add this to functions in ftrace itself, which is
compiled with:

 KBUILD_CFLAGS = $(subst $(CC_FLAGS_FTRACE),,$(ORIG_CFLAGS))

and so should not have mcount/fentry sites anyway. So what's the point
of ignoring them further?

This Changelog does not explain.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624212737.GV4817%40hirez.programming.kicks-ass.net.
