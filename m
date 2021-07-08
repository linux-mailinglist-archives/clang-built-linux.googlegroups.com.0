Return-Path: <clang-built-linux+bncBCK2XL5R4APRB6NDTKDQMGQESVZR4BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 293DD3BF550
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 07:49:46 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id a13-20020a7bc1cd0000b02902104c012aa3sf2963399wmj.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 22:49:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625723386; cv=pass;
        d=google.com; s=arc-20160816;
        b=sym6gj58EX7sHG/ICVqwk3taaUJh+FKsT2Inb4QQNaYkmGeKJJsODsL9RVI6ip5cdV
         ofw72ixywhHzpK3sjf83W6esp10h5BzmA7p7GWL8IeqUcTfq8IPxyeIIvhVzY9osWwzh
         p7SxBrCZKSIGf5jIkoC+QoF/NqNxGUA4e4NIGL5wSHj5LR8M9tjebjQY0GVinvct2E6J
         CcK5ZqY7JTHlI0Z2+55XT9gngPCIUvvmf3zDKkR6Fm3sXypFRmmihINR5Rza457GG9OH
         G0sSzuIgFViBKJNLovPjW7vliIyExyLbMGELf5XSFEE5sn/okWjRGMc+haO0wTutNWSV
         41qQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1ewJklXbPfeqMGCvsop6Pz4J6mEdK5dU4NfORN5ft+w=;
        b=YZinHB8odZInc8OatFnJD7wRRCNVjBAz5nKb/4THmiw35CnX2bQ5U0WUqsZXxonkgg
         0KfBIwX4Zl4Rxzki7vOYROn7taLClXIIK9vMV6/BE436yhA4is0e7uUfDFPv7ZF2YB0j
         x12WtL7mmNDfBhoYj0KeF60Q71VNDU1nEH4jX+s29OctlvVT1dCF3V5twOH+vR09AQHN
         nmMNPTVWWumV5il8sRrLWrClS/TdS6ehecAXQfkQVZhq4omg/FVFQ15lDx/xnltWKnlc
         xl6FCfQxLm8PZVguT6v2bvTLvxMLvz0YtC4NdK90CmYmMrs4C2oOlpdjqXp7QtsrVhDW
         Z+Ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=MJOHj97M;
       spf=pass (google.com: best guess record for domain of batv+c9795e5add95b3471ca5+6528+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+c9795e5add95b3471ca5+6528+infradead.org+hch@casper.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1ewJklXbPfeqMGCvsop6Pz4J6mEdK5dU4NfORN5ft+w=;
        b=b6J7LUhKqvpjmz+Jg6JQZnGIlaAyZ+6N10+1h9lpH7xU9r0f5AI1ZaiJKuwANS8qq9
         OgrMwkYcHY5HFtIXajU3m9voIC66DJrBYQixDT27E/qssBJXSL9hiQuu3LisVmxmIRtP
         YPN7RScxHtLx18uChV9ym/B9Z8pYMKMoDQCYjlVxF6Dz7/h2CrUdI/1CqK3wlwfYH7DR
         hE5zMNKC4IDX6FmU0AJnOX6hM4gk+9bLWd0zE9G01JiXJatwftKCpA0iKABo2pexMgSI
         sefw76nrsNpAUJmBi9VV0KFm2SBniyF0g3fT7dtd04vnKOWTlh68Cn3zn0WMoFjAX7z5
         rebg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1ewJklXbPfeqMGCvsop6Pz4J6mEdK5dU4NfORN5ft+w=;
        b=OXgYFgrQ+Cl5RJohXoTMhSmyEzarMYKZA4ominfQmrLWg49uGTwSD/S0SrAfV8cUcT
         4WqcLtlzRleuMZKOd2CV9xqtLujCESZ+WFSV6ymYrIOOa4w4G2sZ8av0ynRYfDIhkqCW
         8XYKIKwtqyxR68aLXhb7tx41Jn0mzijFuo3y3ET51wuQbvZaV43O5K30+qF+A+AJ5kMD
         MlztYJ7mtyVoyjJ6//1MRefhGA8gfJIs5Ez1xoZIjEKETCeEPzZ9TE2LUBuXEZkn15bf
         Hu6NiXsXujxqnNpSjiWP/OY2Ct8liOBlQtD9muUVCYFtjxxOzTqxRKF8Rif/n0OmTAJa
         JeyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530M9T0GpHslo+dzidYmqnBvipLnQ0lE2Gahbkg9WRbQ7JthROvJ
	ZnQktMIhDRW5wI4DcJRv1/o=
X-Google-Smtp-Source: ABdhPJzoFNIHpCmpayPUxKb8wy8UF19IHDYxS7kb+f4ldkya9Q7PNubeFlakH1xk8sjui3SZgknv5Q==
X-Received: by 2002:a5d:5388:: with SMTP id d8mr31562953wrv.423.1625723385857;
        Wed, 07 Jul 2021 22:49:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1c90:: with SMTP id k16ls4744773wms.2.canary-gmail;
 Wed, 07 Jul 2021 22:49:45 -0700 (PDT)
X-Received: by 2002:a1c:9886:: with SMTP id a128mr13756289wme.150.1625723385045;
        Wed, 07 Jul 2021 22:49:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625723385; cv=none;
        d=google.com; s=arc-20160816;
        b=A5KVBjoVczFcA4tTWVGIcue2UKNb31EnrgDxiqPYEmj+lrVsK5L5crEmn2gnORR74p
         tPwgqo4fS5T5+PBmwZaCPCnl8jCeRith9fgi3wPjKt60W8/ONIV/dP2RkkXwvUZZRQxC
         7OFmTYb2KCVjr5W+/SzON4O9XTLR0JNjYRT5VUr8z7MHvSzN8JRnB82R4vayRMfyAH8Y
         7ejRu2U0PrvrM0S+MEEeqVslZzzlg+MU1l5Nt5u9JSpXEL6i7DTsKbKb0B5P8AD/8ySf
         WyVjSpT93iYRW911AI/XZynjmc4tZr8+Vdg3qbtc45mJKPermbDCW8eu7Uq1WuHhYPZ7
         WY0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mWfljA4QruRpBEIi5sIMdGx5T82sFFv30vncfANMf1g=;
        b=BoMegeLNFqU+4gOlPZL+OHsKAylSXbX5VtwTkD4ky1ElPQoUtRsUP2ytVo+v1TWFbB
         8kOkzrg6fOedoebKGH0VNYa+e1sMPQn6UjgKdI3c/UXNsQtBAvMOtxIhrxWkOY3nEC0o
         EvwGWSyHGV0O2707kfdCiIBX6zuyNTXSI7Oz4cHmrJxCgHK2dXDitG0hCHcVeuxqXFOS
         hfPT8z+gUKQENtQI3LUecyfqzcIjo76RY9NVbPjD55I+6fegEC4dDvK+PsuySSIYv/AG
         cN1FA3OXx0VUyfQhBJL1VqsSKm2g4hei5BrqJi4WPv0HqN0Vwp2RMwjxe5MzveITxIQ9
         wdAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=MJOHj97M;
       spf=pass (google.com: best guess record for domain of batv+c9795e5add95b3471ca5+6528+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+c9795e5add95b3471ca5+6528+infradead.org+hch@casper.srs.infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id g22si52044wmh.0.2021.07.07.22.49.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jul 2021 22:49:45 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+c9795e5add95b3471ca5+6528+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1MuL-00D80v-2u; Thu, 08 Jul 2021 05:49:16 +0000
Date: Thu, 8 Jul 2021 06:49:09 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
	Fangrui Song <maskray@google.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH 0/2] infer CROSS_COMPILE from ARCH for LLVM=1 LLVM_IAS=1
Message-ID: <YOaR1ZjToP/kgNsC@infradead.org>
References: <20210707224310.1403944-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210707224310.1403944-1-ndesaulniers@google.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by casper.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=MJOHj97M;
       spf=pass (google.com: best guess record for domain of
 batv+c9795e5add95b3471ca5+6528+infradead.org+hch@casper.srs.infradead.org
 designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+c9795e5add95b3471ca5+6528+infradead.org+hch@casper.srs.infradead.org
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

On Wed, Jul 07, 2021 at 03:43:08PM -0700, Nick Desaulniers wrote:
> We get constant feedback that the command line invocation of make is too
> long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> target triple, or is an absolute path outside of $PATH, but it's mostly
> redundant for a given ARCH.
> 
> Instead, let's infer it from ARCH, and move some flag handling into a
> new file included from the top level Makefile.

Why only for LLVM?  I really hate the mess we currently have with
ARCH and CROSS_COMPILE.  Being able to set both in .config (and maybe
even inferring CROSS_COMPILE where possible) would make my life so
much easier.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YOaR1ZjToP/kgNsC%40infradead.org.
