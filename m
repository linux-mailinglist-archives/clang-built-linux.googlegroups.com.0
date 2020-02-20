Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZ4JXPZAKGQECFGI3QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id EA87016651A
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 18:42:00 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id z5sf1632239pjt.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 09:42:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582220519; cv=pass;
        d=google.com; s=arc-20160816;
        b=qutRj/mt3MWVf3nX7ARUYQDzGAVtu8uwh5yVj8YOdeE+ILWJxxwy5kG3ljHc02tR7a
         cyIFOsdkPJvtmaBNtViBODvAEVUKLwLPwicb3xOk6zjFLTPAWLK23WtSTaBWDz0LeBHq
         q+EYkIqU/+/5blPamKB+bxY6e2SxJbjtikRBY0iiPYyHpop3axvK+tiSt1whHJRTObfn
         6v1cAe14s11y1a+KPALw+yFIhha8T/jYL9zYWpVUBBzMRUzzbkT0+vnjf5ENWbHzy2cf
         wvILr62K/I37YXyhkzxdk8Ub58Zixe3t4ShquF60QAOBwn4+u+2HW2JIaG4LfQUCXaM6
         bPmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=c0zNB9VwrHV5pjPpbvGAap0P1ltXCrFJPd9Bqznmfu8=;
        b=Yg8n96RetHYIeJ8keFR+asXax6zr/5ywJVXVZcGjO6jIEgZfF0nck6K7P5P388qb/V
         R0pwY5R2UgKu2ijtCJ0vKOUaGMPg4lKPTgQvD0aoVkv20Hi3xE/so9DEyvxCfYBMhmdx
         NXuv3wAGXN0nl1xd/yrLhJUJCLJJfoC3YmQJDbamuN79x+hmSIzqoo3/nTvvBQfstDYy
         FwFM75KpJDQmkhnjVIddWQMIR1WFHibGJWQmzdoJEDvM4auQCapEPxfTFLveo1E1NOud
         SK0GguVsn7f+mIeLQ2BeJGX/LpsYUOtQESvH9mM229zKyZ8Iu+jt5TN+RrQczlMcQtKa
         xt0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IX4BJedh;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c0zNB9VwrHV5pjPpbvGAap0P1ltXCrFJPd9Bqznmfu8=;
        b=s/fuGE/c0sEJR0XP8Tj7rbIJ8Mo1rgodzP81UrgJMyFcpUgXGqBZIuvHk1IS7USSea
         RuxgGgzDMwgu/CwSKChgbR8QtaueQ4hTzijMSnWiKfZA77dyhiALvyDhj3lk/la7GU3L
         jPSidSP8VPPsJaFxcnH3I/Jzsr9vGbCs4m+emvlQWOySzGfEdA52qXJKunhqGYE9CHPW
         42a5445BX5HFw40LouOsinTVYyzX1/0CEGXD+40nP2aGICVfbcCk9Qc+r3BPwBlrg/0R
         PRFa7qK1oq1W3hNlJkoej2mxC6OAQcgr+eAMi8bGk4iiBA088EEuneTwjARMJlSos/Ik
         ulbg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c0zNB9VwrHV5pjPpbvGAap0P1ltXCrFJPd9Bqznmfu8=;
        b=RlfB1GjhFBeMU6BRmyM7+gBdk0e43c4Unp1ZSj1+Ozof3YA5ZW+XwdZlhBllhBB7R6
         XQ082EslhX6JFWQXg/SfSUMBn0GpufoDJluI0MTHwpLWnVXDV42aUoBUIv3XDPljusoa
         yEo7DD9sOz2OTW52y7NJQcSHClHSwEv0L8Sv1GWSCkfSqT9rDkLLPa8fUiaS/oYlptfh
         UGyia7NZ/ycfhYkNQUkHFxQ7RwDdlP7VAt+svyUi/MwgFMX3r49j7Q9sJPIA9oZznFa+
         OVUffS1E8jqQeL4MlfjMezslCys5ZDJvNHUsCVcGBQqFDJHD6z1n5ue9IjQYPpjJtjv9
         bpTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=c0zNB9VwrHV5pjPpbvGAap0P1ltXCrFJPd9Bqznmfu8=;
        b=op+QYwtj/cc7dXLKDUTA3Nsbv6xQZn7mMMLAN1RnWzon8Vy/2xqdREKVoGShHatkmg
         Q3L2djlDdzJRjsYqTJ88Wf49EvF7sZKQWKB3f6LSc6ZNWD88fx9rjswuw0u+BrzxUg2t
         GMpJ6CFEOCStynnsCviSfRILO/opKEe0hthlI0xzY33I6SvseIFNq7FYJyzF4jSkulRe
         2HKCyBo/Yb7m5fL20fltaLgj02dRIz0LKFnHi3gyhqPifl8ShwnztDOpWF+esdHAWmew
         svd/magAhWBfzJ+wgApUDbi0NBTNeg0kcj4Z2EYb2qLf1qdVZnxYvuOFQy35+NW2sheo
         tM2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXurb0JbK1bRq9ciivmP2AgSHHM/ch+e24Vmc2TPsTp3DrYHct6
	0+tvWTUKeXSUVzvzW2P2Gpw=
X-Google-Smtp-Source: APXvYqwBh1axG0mMkFkPsk7FKB8+cz3lqal4U9K6g9y75H9jAF3Mf3DcF9Vu0e+lC7MkWBaWETZgpg==
X-Received: by 2002:a17:90a:1f8d:: with SMTP id x13mr5059793pja.27.1582220519268;
        Thu, 20 Feb 2020 09:41:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad06:: with SMTP id r6ls104049pjq.3.canary-gmail;
 Thu, 20 Feb 2020 09:41:58 -0800 (PST)
X-Received: by 2002:a17:90a:f985:: with SMTP id cq5mr4956423pjb.19.1582220518718;
        Thu, 20 Feb 2020 09:41:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582220518; cv=none;
        d=google.com; s=arc-20160816;
        b=bWzLqVlSanQB+Di+bK7ZeM39Q7X67M8XtHIwKYaviYzm8EKXNQeRAXTvRNqdEAM8+o
         mDTWL9s7QKCuKqj+bUYfjzp0MbEvT4hR0BR3Ob4kBONz5dvPp1sW6c7AqXNq9CKTqHce
         v48XX2OoEK1RdvusbmvV5wzqfEk9QwVkeXhq9Ax1sNU5++47ON1gM2QSq1NDkGNPZ9R2
         Hc7LErXi6/S0oqX6e2EaJ2qOcnzRPpIraxlFs2c+aYrEd4MWwl7pEBYSdTLoEbtOyUpm
         CaBxuOhFaM9TdZmc5us5HVf4QRdt4aRU7cM7AR7lpGRBq6FxRrky9m8hoq9J3QgXDPwO
         GrCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uUxjn0JHsnAyYM3s9DI1K/kaI5mGJzrCsTVv+Xjv7Dk=;
        b=jsuhw7d+9BFgTDXPpJ49WmYXNUeISQr/2HkKCWhSNslnh7bDBRp1nW9icMGQpglgaL
         caM+Z5XC+rYZyF0V/+eOlnD+/vF1obY6/dQzPYj1qZf6jJLynX2nyrw4j/YfNUmzB5R4
         3zPrwN75iPooCtPLnmxosSmXU9S2wdXlpK41FsplDjvEX2m1fd5Il3napQrxw55UbGCJ
         bmO08Uqz2iDL1DsXGpGwNB7C0WxBMOytnj9WfcU8H7MtFesOqm8eM5elE4AsZbvcEWWr
         MU4vxrpLcIx45RRZb7b8R9Fvq4SuAKwXxxJmrOHFei3pqSBbsVUjmjVydTXsyIsIUE5k
         0ymg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IX4BJedh;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id d14si7745pfo.4.2020.02.20.09.41.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 09:41:58 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id z2so28378980oih.6
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 09:41:58 -0800 (PST)
X-Received: by 2002:aca:2b04:: with SMTP id i4mr2935125oik.21.1582220517946;
        Thu, 20 Feb 2020 09:41:57 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id s128sm1321002oia.4.2020.02.20.09.41.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 20 Feb 2020 09:41:57 -0800 (PST)
Date: Thu, 20 Feb 2020 10:41:55 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	sparclinux@vger.kernel.org, Andy Lutomirski <luto@kernel.org>,
	Borislav Petkov <bp@alien8.de>,
	"David S. Miller" <davem@davemloft.net>,
	"H. Peter Anvin" <hpa@zytor.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] sparc,x86: vdso: remove meaningless undefining
 CONFIG_OPTIMIZE_INLINING
Message-ID: <20200220174155.GA40621@ubuntu-m2-xlarge-x86>
References: <20200220110807.32534-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200220110807.32534-1-masahiroy@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IX4BJedh;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Feb 20, 2020 at 08:08:06PM +0900, Masahiro Yamada wrote:
> The code, #undef CONFIG_OPTIMIZE_INLINING, is not working as expected
> because <linux/compiler_types.h> is parsed before vclock_gettime.c
> since 28128c61e08e ("kconfig.h: Include compiler types to avoid missed
> struct attributes").
> 
> Since then, <linux/compiler_types.h> is included really early by
> using the '-include' option. So, you cannot negate the decision of
> <linux/compiler_types.h> in this way.
> 
> You can confirm it by checking the pre-processed code, like this:
> 
>   $ make arch/x86/entry/vdso/vdso32/vclock_gettime.i
> 
> There is no difference with/without CONFIG_CC_OPTIMIZE_FOR_SIZE.
> 
> It is about two years since 28128c61e08e. Nobody has reported a
> problem (or, nobody has even noticed the fact that this code is not
> working).
> 
> It is ugly and unreliable to attempt to undefine a CONFIG option from
> C files, and anyway the inlining heuristic is up to the compiler.
> 
> Just remove the broken code.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220174155.GA40621%40ubuntu-m2-xlarge-x86.
