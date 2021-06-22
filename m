Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB2FAY2DAMGQE2NA5YXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBB43AFDCE
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 09:25:29 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id p22-20020a7bcc960000b02901de8f2ae18asf939349wma.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 00:25:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624346728; cv=pass;
        d=google.com; s=arc-20160816;
        b=I01V2bkO2RzDb6uLwmUa2QjUlzgQ27DPOYQwkbDbj0u+o+4VXslFbWm4DtmhCkQPWA
         me0jPd0QIGgz/qLold6DcFNHYcY7OFxID8I6lETAdxXF5LDUgYPdyH2AK6VVWEWT8HsI
         9Pu4qEeKnt9lFVcHRBhftFmdFkxt5CY59PdwCuBThg7bB9UeAP99aBEhnsbl8SyLQK0+
         vIw0+PwtVeXxFM3ijxQx28Ll3R3Aii/CKz5zP3D5Xrgxnon/ip/PNZDoxmy4oUeLAEJx
         yH7zZ7xVcydoVRtYiesSuv4uryrIaJq0fJBjKATBeFVh+ydYUWGVCc7nyW8a6NaaYBg3
         6Smg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=VZwNmPFKYh8BJq6um3fk905/wOObevQJH67/x+K6MMY=;
        b=A36Yl7xn2loDAxxdm8+DT68xL72lxXx+Qv0ez8s98dVk90E0dNcUtdeyM82N7th+0y
         HXA9vOjslBsJ7tf7d89QYi8hoE9r4yVQzGsH7rXEanrR0qXOVrJYDU/NAesU01Pd3err
         vuPTpRpu0f0hsyKl7wAg1CcBCOnG7ddelUmiLzUDhndfblTGLYv3IEVQdjiCss0BHmie
         +fRvka/pn87yP1pZrE8byzXnK4p410HB+fVeYGgowekDIW+P6pJtZVBRkBAwWZyb6hg7
         3S7rneCALm4bs2ojo7mwah7sgczun6DR2eU4W8jjthEj0vme37/FQLIeclFKnSuDd/56
         mzDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=lR9YQ3Qx;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VZwNmPFKYh8BJq6um3fk905/wOObevQJH67/x+K6MMY=;
        b=i3HhGLvlK098JzZsQng3pOonyjcn4AIMjzk+jJNYFPG7rMAqJ4FBBm/xUc4F8RG9J8
         7q3o1DA14164Tpz97QvKwLwgSCymunf9uoOkV/0OsAmx2U8tEHaTlPQU46hHv57BlVaK
         g6W4VaOUBrFilnbH8uZXl4tgNCLuGaafYRLQdO9ukE0o5EClFYBb6KN206goxhOXCqKK
         LK5+mKOEIHhlU+EJu5GquTok44Tv8i05B5THuJwm//Wsqh2MLlYMkKEIWw6ulQZNIWY0
         4UzU31Q6kIpS/xWNuHLlG774XbE8wok6clHZtVDo9lo9N8jzghkJsbLpU2USQvivigZE
         tcKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VZwNmPFKYh8BJq6um3fk905/wOObevQJH67/x+K6MMY=;
        b=oZLkjt24jCKcVYZRsf+cCD8ZCwpeAx77z4b9YLoD3qDs38SKz/NH2EetrQNHjwe9fV
         opyc69ukL3etMvVKtsWKHeHk82Ed+yuBMB/8JN0jSW3tbf8/ivjA9dtkyjE6KMYeWc3w
         BBWNyCpWvaMVSW45khkeXoKoOnV3z7xekt0XwgbEnyUqLlx5b58EajBQbNHsXXfxgk84
         gcIwEoLQovhw9+JZDqEQb1RPkmIdMd6zGfhrXILnZ/HVCzFmC+BY90mWj1SdLyQ/7Q0S
         VfprM5wqURGzqrLNOwT1Lbb8bLc6DjTgT9BGFC+jI2EsJDEVoy5hhhRI3+6SxV+gBtTt
         xWAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UIQKffSrUUYheFYgqyuvplbe3rLUgF/TNs4As2kJQP8PG0N5F
	0ezuwU2jfAZ7+7Aj1tafV8M=
X-Google-Smtp-Source: ABdhPJzo9lYEpbZLVefc8NEJXximL+4sXByjJUWTjqq7H63+g70cPT1WK9RCm7YZJhL79e/d+e6FWA==
X-Received: by 2002:a5d:6dae:: with SMTP id u14mr3038182wrs.148.1624346728756;
        Tue, 22 Jun 2021 00:25:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6945:: with SMTP id r5ls187095wrw.2.gmail; Tue, 22 Jun
 2021 00:25:27 -0700 (PDT)
X-Received: by 2002:adf:f689:: with SMTP id v9mr2898023wrp.314.1624346727916;
        Tue, 22 Jun 2021 00:25:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624346727; cv=none;
        d=google.com; s=arc-20160816;
        b=itx2Vb/nkwF81xN5pi8mTfkOPUCkYC4RphMuok4sqvJ4sfSNC0pUGKD+pZtc5ntxzs
         uE5Q1OEcLKt7kmfNJ+L+5e4htahTSt1EP2LhNJJzlgk7zq+uvey7wjD1eBe8LqnLeO5P
         RJrg+Mq3P4dyLj8NAyXFWpJXe/E+9Zy9q0he8aiY/SvDgZMRz+4dMz+ejZqCRqiYDbev
         fLTTfQaQwoJkzRYMEP0O8vo1rCTrNQLdn6K5olzmOtukYjnhASJlOu/yCgSeOhU6/bUy
         w/nKwzIlWAzhhoaEjNiix4RnztUkAeBXzzftR9no8MosULWfBLhQPyJZZ6kMAHX5I5Of
         401g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zxpyGwgTl2R9s7Hd1depIUm48agHvd2MrcEyfmPlz1o=;
        b=eIDU1L86qsGS7S3VPQQdgWyyC6lfZn3ssvxpgtT98kWR+iq9xcJjx6nh2O1Etac3U5
         Ay1TYYX6CdixlW0g7/sNqi/IOiR9UMAs3Q2Zk4no3Qu5dY76rh3OGa7zZnqP4YC3y7cB
         ZaxDGnaoaNmK7xmN3WLGoEE+g+ea/qgVJl+7Jtz3BfaKDbqaR+JJcBYdO+8grccpEXU4
         2qmDEVaK9HcMMKqNrYgrIJrNmmMs4vA8pyV1/STOJ9LjsQBUtqoi12pNMgaA4hqCmGfh
         S5TIbV0suUOObyqmZZ0CHWxq6cUKuAwo8mRpwMYNfOuOgo+y0WjCHtH8N159nacxBjhR
         LOyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=lR9YQ3Qx;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id v24si31389wra.1.2021.06.22.00.25.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jun 2021 00:25:27 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvamR-00AWJy-MZ; Tue, 22 Jun 2021 07:25:14 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 95F3C30005A;
	Tue, 22 Jun 2021 09:25:11 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 78D272C6EEC7A; Tue, 22 Jun 2021 09:25:11 +0200 (CEST)
Date: Tue, 22 Jun 2021 09:25:11 +0200
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
Subject: Re: [PATCH v2 0/3] no_profile fn attr and Kconfig for GCOV+PGO
Message-ID: <YNGQV09E9xAvvppO@hirez.programming.kicks-ass.net>
References: <20210621231822.2848305-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210621231822.2848305-1-ndesaulniers@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=lR9YQ3Qx;
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

On Mon, Jun 21, 2021 at 04:18:19PM -0700, Nick Desaulniers wrote:
> Nick Desaulniers (3):
>   compiler_attributes.h: define __no_profile, add to noinstr
>   compiler_attributes.h: cleanups for GCC 4.9+
>   Kconfig: add ARCH_WANTS_NO_INSTR+CC_HAS_NO_PROFILE_FN_ATTR, depend on
>     for GCOV and PGO

Thanks for sorting this Nick!

Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YNGQV09E9xAvvppO%40hirez.programming.kicks-ass.net.
