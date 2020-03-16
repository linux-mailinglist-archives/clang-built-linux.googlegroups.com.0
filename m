Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBKVBX3ZQKGQEKBLHSGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id DF003186DA0
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 15:43:54 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id t10sf2833651wrp.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 07:43:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584369834; cv=pass;
        d=google.com; s=arc-20160816;
        b=B7SVgLt4VU/dEMQ3JHJL8fj7y/5q2LaZmknnbyKGoqTvaA3apvlRUoqRfNLu0k+zGt
         qsyeQrKADwpcjuMU2gtYARF202zFnM2b9CxohoBHMPxq4gq3ZvvTxu/TQyAWbFam4dBX
         CMTWVVth1Fure4OfP1QBiyGpJE5BGROCCWF3hUfu2PTDVZMUJ7Qds1ksmYrJroWXrhiw
         Ws6dBai2eOKJyhjBfPuFpY7HhE5Q7S6grv1daGBH0KHrZT4Znm6CBVdkHLav2GENuKos
         q/7bAsZ/79grAlvxm+wjPtKXx9zNgpTccku9K9MmYHOvlvYl7yJQumGYAnkLE7eQaQ5M
         WHKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=pe3ybYO/B0xupFrzmqlEC3uiz3r/itkstlKIJNMnKOE=;
        b=lNCVM2jhHicQMXZbCv9sytyQFgX0KTAPYKlKsvEzk44zMxer4toHeMlO9wEUJ/SQ/0
         CwdIFjgPFk+9C3qnnlynEYTbL4fPwBddDE1YjnI6U/9c/ZAZOvGhgyMyHNznAq6Ogr2f
         EXJgc+kR1tnbeLJfpXJrogQYmhs+onuoh0S21JhtW5p3szBDqAagm0ScZguPNK4rP3We
         JzFV75evGcKuP3Bs2pbSYttIHRpPRCmW2KF+gh9671KqznWfoYwjwGfI3kwLGK7BsfKZ
         hKYBxkTSABBeuKOnC1KdUOywnypvXyZ0JOHuXDVGLSdLCAYCDIxgLCkpaCwbCe0eI6P1
         ULTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pe3ybYO/B0xupFrzmqlEC3uiz3r/itkstlKIJNMnKOE=;
        b=K2OGQELpG74SnlMS7hnuL5etQWeX+9tlpfelNmd3p11CswXtZHYE6/3+l2PnX+fpof
         FkHrMrv76C1gOkoa5JFKYrA7hltdMPqKvsoNJrK/ZJobPwE00YlA5xO6J3GLNPrLLf/b
         9YUzkyISHrBW6YC0l5g1ljU50w2KA4Ilm0zkSZC4jEfnjoWylf+VnyC0JRG6d1zHd0B8
         GdU9Q2A6IHAKX5nAGyBoxHpSuMpyZ8z9HHcl9I0dvA4849tdqYuQSYsBTPVfDLCFrSrc
         qJqb3t9UmLXV6xZygDguQTv2UBvEOSXaB4cCqlufAt+kNCvz8+FwnGwUXRsiC55QLOcj
         Q/ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pe3ybYO/B0xupFrzmqlEC3uiz3r/itkstlKIJNMnKOE=;
        b=hd7Os9X6k6s+XnBM+OSDgmokJQN1XsxlqswCeHnEwxXgT1rtDz6MJLyGw28gETVUE/
         D/sfZivfkWLpIKvhT6RoDtcDv9aybasjdSR6uOKAIBM4gT9FKnOGNOzPEFR3dvKSQsHf
         9achrxQ8N9LQzeLp5a1Oj3hCJ5EWsJE5BtWhaa+YXuIbF2ZvGAN25m1I9ePXh1b15fn8
         B9JmrUEQPmgOSKY5ar4PYQjgaWgnXmiKIH/15DHfdHqRKI46FVvnOP+/5b0Qoe+SfHmb
         cc9/Os5tlVgE06+qA9NjxvRvJFa2uIXkRESvdkaAK6cvHhp/HG8Cli0tmCz+r40hK9MC
         VFRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2HFZ/Ccvmlw09ZDMjRZE2H+lyG1pLGAcj41eYA86dmHFK67IcI
	mRTNJNVxvseQGfVVJ+r/Xlc=
X-Google-Smtp-Source: ADFU+vuqbL7lMqLErncNUaOUNclIS9+r1DxG4VVoS4LBb4CMEUfkxHc56aif6+Oy/PSifCVrCa3PtQ==
X-Received: by 2002:adf:ef0b:: with SMTP id e11mr37782094wro.115.1584369834658;
        Mon, 16 Mar 2020 07:43:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:208f:: with SMTP id g137ls6945850wmg.1.gmail; Mon, 16
 Mar 2020 07:43:54 -0700 (PDT)
X-Received: by 2002:a7b:cbc6:: with SMTP id n6mr28822017wmi.144.1584369834028;
        Mon, 16 Mar 2020 07:43:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584369834; cv=none;
        d=google.com; s=arc-20160816;
        b=y007wBahPKf0osFtpwVyjgXyVOSKMnKK1K31IhXnZnac76hQNVxfRoJJXs/izdntIP
         X7/qgaiH0XoN2Ks0nU8c06YYoeWdV74Rxxj8oRA+rHt2zrIDjsZukQ/S/u1Rj+Yh9wnS
         vu93W5VP5HXKNxRJWXg2WVOdJbRBany/9erKmN/ARYkm6t7UskIfbrTaeVh4dsvPBTzf
         zTaF9eLfTR5XmaBHgKbKZfkogH5WB7CscMOs5s83Lqt1JHCTHQUSGevioD1RNcP8UAxd
         KRQoW+l7u3Se4qgo093q9YI446i+MwXFqR1/uDrLJUw3viW+BcNLXYrmzB49OEETI8pg
         64FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=uox7JGxm7eMucpbn5bGLX2VybOQ3fywWBxWM40sM2+E=;
        b=fkKNazCTmrfDSiwPisiRIM1/hJ1hPpGXG5wQcTEpKcmU+/4GNNXkvHwzm334XlBEwv
         vMv787zL1povYHMtjgE/sEUZkGzO14OkGNNM96sAyulr6xdPuvcrnFfVWQBVd3+wqKQH
         8nC6ryj5sgSuKwhsCqk20iJMcxKkuNUiDcFRMCQjmJctPfUPcFTX4+BMszEN9/Zu/HpP
         GNlU98a7ClapGysuTq4FfMgh+9r413e0emYj5IWKjjShBLox9VmVrW4zQwwq4bIwvs02
         xGeVvQzPAGeL+idNeUDgilbq0dnPcwKEL5FeojJbDI+Ls4TdvV9Bhpp4J0TrgUfqKcdT
         I95Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id m2si901338wmi.3.2020.03.16.07.43.53
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 07:43:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA63E1FB;
	Mon, 16 Mar 2020 07:43:52 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C84B43F52E;
	Mon, 16 Mar 2020 07:43:49 -0700 (PDT)
Date: Mon, 16 Mar 2020 14:43:47 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com, x86@kernel.org,
	Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
Message-ID: <20200316144346.GF3005@mbp>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp>
 <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
 <20200316103437.GD3005@mbp>
 <77a2e91a-58f4-3ba3-9eef-42d6a8faf859@arm.com>
 <20200316112205.GE3005@mbp>
 <9a0a9285-8a45-4f65-3a83-813cabd0f0d3@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <9a0a9285-8a45-4f65-3a83-813cabd0f0d3@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Mon, Mar 16, 2020 at 01:35:17PM +0000, Vincenzo Frascino wrote:
> On 3/16/20 11:22 AM, Catalin Marinas wrote:
> > As I said above, I don't see how removing 'if ((u32)ts >= (1UL << 32))'
> > makes any difference. This check was likely removed by the compiler
> > already.
> > 
> > Also, userspace doesn't have a trivial way to figure out TASK_SIZE and I
> > can't see anything that tests this in the vdsotest (though I haven't
> > spent that much time looking). If it's hard-coded, note that arm32
> > TASK_SIZE is different from TASK_SIZE_32 on arm64.
> > 
> > Can you tell what actually is failing in vdsotest if you remove the
> > TASK_SIZE_32 checks in the arm64 compat vdso?
> 
> To me does not seem optimized out. Which version of the compiler are you using?

I misread the #ifdef'ery in asm/processor.h. So with 4K pages,
TASK_SIZE_32 is (1UL<<32)-PAGE_SIZE. However, with 64K pages _and_
CONFIG_KUSER_HELPERS, TASK_SIZE_32 is 1UL<<32 and the check is removed
by the compiler.

With the 4K build, __vdso_clock_gettime starts as:

00000194 <__vdso_clock_gettime>:
 194:   f511 5f80       cmn.w   r1, #4096       ; 0x1000
 198:   d214            bcs.n   1c4 <__vdso_clock_gettime+0x30>
 19a:   b5b0            push    {r4, r5, r7, lr}
 ...
 1c4:   f06f 000d       mvn.w   r0, #13
 1c8:   4770            bx      lr

With 64K pages:

00000194 <__vdso_clock_gettime>:
 194:   b5b0            push    {r4, r5, r7, lr}
 ...
 1be:   bdb0            pop     {r4, r5, r7, pc}

I haven't tried but it's likely that the vdsotest fails with 64K pages
and compat enabled (requires EXPERT).

> Please find below the list of errors for clock_gettime (similar for the other):
> 
> passing UINTPTR_MAX to clock_gettime (VDSO): terminated by unexpected signal 7
> clock-gettime-monotonic/abi: 1 failures/inconsistencies encountered

Ah, so it uses UINTPTR_MAX in the test. Fair enough but I don't think
the arm64 check is entirely useful. On arm32, the check was meant to
return -EFAULT for addresses beyond TASK_SIZE that may enter into the
kernel or module space. On arm64 compat, the kernel space is well above
the reach of the 32-bit code.

If you want to preserve some compatibility for this specific test, what
about checking for wrapping around 0, I think it would make more sense.
Something like:

	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316144346.GF3005%40mbp.
