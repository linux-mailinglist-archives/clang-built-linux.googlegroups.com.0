Return-Path: <clang-built-linux+bncBDV37XP3XYDRBCOJXTWQKGQEWZXATRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5F7E07C1
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 17:47:22 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id n12sf11346333edr.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 08:47:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571759242; cv=pass;
        d=google.com; s=arc-20160816;
        b=YFyz6ZDULW1+Dk8RMPFaqhBlVE0xZ85c25YITyRd2kLiLxCf8lDB71ogvS2vGHF8D1
         3MkLz9ujOCuz+6jesYQXOftivY44cc60KwUE/687/u+Vw8xtdW/wpZl1IJeylE2BaZDi
         hb+hdujGq9lbvgizI9zHQO2iHcxnz4unWxWobntDgA3l02c15r0F2whvixQ7bfuxScNj
         BlHnRAkV+sXokQ24In0nGf61/uM+Ii8yyt4s1Cf7Oz4OaR4zIGPr3jt3bjKUzYoeK3R6
         rFnYdfrnZUrwAfyaqRGhAVLUaJNjkIL+usc6VmqoTcvIeqgpR0v4PHY5u7tWL1ixiOQX
         99MQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9W8Rl0DAqSpduDgtFKfXIibDBIqLTgqj0Bg85LYCG9E=;
        b=UH+e7J4FYAn4yW1Rt1VI4sPWY6fL+aMdfgTkgEoICLSvUdfRny80OD5jtJoaIphNfe
         i4xPZOWl/jB5WAkmFG+dxnaREEnDscq6gslhmqTrTDkKRhwURu/eta5fdEt4hPmPJOyq
         YNgyuDp+dpLWRzoDsMpBpADVpU3+LP68gAxvsxBb+ZztRt5TU8Rfy4KWPjhdxWdAfOsJ
         pRk5lCFFAuHNzDa2GTL6+TrRn+lMHbCQ/5RzawKK0ItdplO8pb9ydYWHXeUFAQy4byWe
         KGp5ppHUM3mFi8wPScODYpLCo6S3QkXKkT9FSwYItylohYkQbkUwAiIr8WTWhQIMAWad
         YGfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=temperror (google.com: error in processing during lookup of mark.rutland@arm.com: DNS error) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9W8Rl0DAqSpduDgtFKfXIibDBIqLTgqj0Bg85LYCG9E=;
        b=b1gFj0bOYWgZAH0ppNLhxo0RAZUy2uoxYm3pIZELkXMRbsagHTXTKqhSXRkLzpwOli
         BAZWOy9PSuk0tWbbFOlbBrutz7x8RJ1I8bDD8U24BP8ecmW9LTxUafZs7S1o7hRAzBpW
         szwi4PYw+ghu9eKpR13r5egU6UClnic4Bon76/y76qVIvwCg880TwUCZAzQGRx129h6E
         zlhexq2hXlIKKD0hzgSbsGpcBocdfJwes2qo3kIxbw+esQvXoXT8burG2WxBqzPL0jD4
         UIobmExnMoCOpZlaAjm+6pSxy2GtkqeS7k1y6IBHrraM18sTNGf9YqDHAtkctAz42Dy5
         Ww/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9W8Rl0DAqSpduDgtFKfXIibDBIqLTgqj0Bg85LYCG9E=;
        b=cVe3Yo89LA4MxI615LIyg2skngQq2hB9xS+4k5du3RWCL5NoSs4qRPCdnNxNlZVVVy
         qgkNua2NKtBf6odqNSb37HhLyiTYTjxfoiHDkl4sioO8AjC/0mMbFMkYidgYSHP4cK5N
         KtgCClhbyOYsv9V9+68fBsyFFjjykLMJzQ726WTABBm0GCUH2U7+xqmHtvTXetyY5VXR
         bFpVzNYMHvpaPUoQqxF4k1xT8rNdUGhILMXDj+nG95fS2gmCQ9ZCgz1u4VFK/c0UQQoC
         UPXupsAcZBE0vfrhcUsKKy5nlM06k8jf18hS3306EwKryL9s/r3XT+B94hcDAzPENuLm
         16og==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXs9UP36feOYSHx2+9YtJqV25eyAhiwXItxy76sc5VCce0Nxi6E
	3CoYoYHQ1XTUe18glwPin60=
X-Google-Smtp-Source: APXvYqyYreEomKSLo6cwrPH2ymB+y82AXzw6yWF+PO+Z3G0Q/GDDxbU+EMzVapjdcXgwd8un1F6yOg==
X-Received: by 2002:a05:6402:7d2:: with SMTP id u18mr32640177edy.23.1571759242067;
        Tue, 22 Oct 2019 08:47:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:af86:: with SMTP id h6ls640772edd.3.gmail; Tue, 22 Oct
 2019 08:47:21 -0700 (PDT)
X-Received: by 2002:a50:b6f8:: with SMTP id f53mr18324644ede.29.1571759241388;
        Tue, 22 Oct 2019 08:47:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571759241; cv=none;
        d=google.com; s=arc-20160816;
        b=p1BIQxV61hN7s6Y7GO7LgK686bNyI/3xqDZa2z3eBbO4ittDfz3zQBVaxVGvMbYluS
         3ox+eEHKlowT1nuT4HscSYKUTubfPTaZu9inSPP+ROg1VCGE72RJhkMWOwcNaVa5hc3b
         4zpxyG6s9Reunqztu6xyyX2EnftzS5O+IGIF9oBuM/M7EWtGFjUuxbSFoPps0M5009K5
         Tkk8tmSjqCaFVd25BoS8lD5mSVlD2GC5+oZSHGV3DcMZNDWWM0Qqcd9coI6LWD1tMHeY
         hROxPWXtzrIQ/1t4jdGJO6pi0yg40tF6fnWiStyLp/YHIEBgl/vYwz4Z8rMmaP3go671
         r2CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=hnSXl26RwlZH/A0zSyDK2IGAooS2oMUmHEZVFk6VFdY=;
        b=OP0Vdu2lNfsy4r0mDDFPl7JXxgEY8yESujXOwLGKd7F93vKnD8uYS5z9A50xe5EyN7
         aFXJthJ7WB1qLeCzzoaKiT+WNA0SkZ/NAkNKcT0xYT/bcTEFP+UGVo85XwVBJaJTEcJd
         I4JWYnr6xbBLpo5j28zPILNQ7cCB1uDCMBsC8OtJyMTjPxiDg95sHJz9V3FKtuOfd/Ju
         DuXuwUDXEyvvyIj/YAAFaY8FQYd860LSi2Mp2UIofqQbtQAehr9wTrH3daLP/QmvOW2M
         NJthDRlaI6yRPlU0JqZK/x0HEZcWruUIl8zHptNUrbg4FY3fvKQOS5AYw49NbiFFHbw6
         k3YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=temperror (google.com: error in processing during lookup of mark.rutland@arm.com: DNS error) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com ([217.140.110.172])
        by gmr-mx.google.com with ESMTP id z18si782363edd.5.2019.10.22.08.47.21
        for <clang-built-linux@googlegroups.com>;
        Tue, 22 Oct 2019 08:47:21 -0700 (PDT)
Received-SPF: temperror (google.com: error in processing during lookup of mark.rutland@arm.com: DNS error) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 977AC177F;
	Tue, 22 Oct 2019 08:47:18 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E54FC3F71A;
	Tue, 22 Oct 2019 08:47:16 -0700 (PDT)
Date: Tue, 22 Oct 2019 16:47:08 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 13/18] arm64: preserve x18 when CPU is suspended
Message-ID: <20191022154708.GA699@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-14-samitolvanen@google.com>
 <20191021165649.GE56589@lakrids.cambridge.arm.com>
 <CABCJKucm2ETxe2dgJhb4Ruzq72psFMGsx=0D6TVnJ-_DL2FgfA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKucm2ETxe2dgJhb4Ruzq72psFMGsx=0D6TVnJ-_DL2FgfA@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=temperror
 (google.com: error in processing during lookup of mark.rutland@arm.com: DNS
 error) smtp.mailfrom=mark.rutland@arm.com
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

On Mon, Oct 21, 2019 at 03:43:14PM -0700, Sami Tolvanen wrote:
> On Mon, Oct 21, 2019 at 9:56 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > This should have a corresponding change to cpu_suspend_ctx in
> > <asm/suspend.h>. Otherwise we're corrupting a portion of the stack.
> 
> Ugh, correct. I'll fix this in the next version. Thanks.

It's probably worth extending the comment above cpu_do_suspend to say:

| This must be kept in sync with struct cpu_suspend_ctx in
| <asm/suspend.h>

... to match what we have above struct cpu_suspend_ctx, and make this
more obvious in future.

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191022154708.GA699%40lakrids.cambridge.arm.com.
