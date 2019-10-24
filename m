Return-Path: <clang-built-linux+bncBDV37XP3XYDRBBWOY3WQKGQEABWIVRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 721CFE3422
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:28:38 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id q14sf1296772wrw.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 06:28:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571923718; cv=pass;
        d=google.com; s=arc-20160816;
        b=WzjChpQ2FpVg9FfvjKfig73vjDFLJzp/DD4WMb15sY22dASW6EHHCUkYNw3j00Vtj+
         Dtny4+Adt4HDzd1k7OU+5AdqD5f/2LHwLkHd7YWO8u1rbCvX0lUxeMoWJOLo9V72KsUe
         3XA8LO/kndysurzUwLxv+iEGJNCXN2c7CLm0gwpn57WUJ0hPtmZiHVNgiRaun49rY1TG
         Kp+2cN5iHU9sL3uG3UX63XIT4kBYvvtS5OrAkWWAgN/zAWiwN000nAIQYEnkfNCbRVim
         nmQZQTwVtgei10mZC6+8JlJkI2Bmn1XW8fNT20mRRHb/7HpLIS0vbBJmJ2E4Nsqw0NLE
         z+aQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=5NDH9rRw/+jKKIYaP5bOOjVxBGPSadYpeocVf1TC+qI=;
        b=GYSlyGdGDkmhEPNjHE3MNyZF/nenpniYxS0EOB25pkqs8nFNBm3+AqOpBSqSSCpDd8
         JS24VTC/b7rfEv8Ft3Re5/DGQ2qbdlzbPAF4xHZhqwnVQ/pU9UTvKnSxunR2kTiu15lj
         EV4fWBPNGxf+RXEje6Nzr00y8J/fYhrR+yhEq3xluLvOqefpVb6Itf9cjRf0ZQR1VBMP
         Qy2hlU7t6VjzWgGkIE8qU1oUxU12ZrY1yfhctMj7ImYvAXSibBrUCxbcZHqKe0Hchl5B
         45fL9pPgwz4Kql5e3zSjSoPMIRWMU7exGSRsICYaBpY8pN9ajFhw2eg3sqzNujB+krHt
         IW4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5NDH9rRw/+jKKIYaP5bOOjVxBGPSadYpeocVf1TC+qI=;
        b=I8vKx4WPZNpsyyBz4LIZ2bY26mbaAiX5lXDvKMIM5TqEtGlU7M3ukT5PGKCAsIqXn6
         RoE0BKXhf+jW5IcNUsuFqFIMCfst8eCSfOrCd2dcfwriJYrbbTQZ4LDEGeTodPZNDl99
         CuKN3P92Fa6xWl/H75n6KV85VOA2UdMbVDog8hLosyIGCh35XRrp+2rwnCvlmPyYoN7V
         NfakeFKtnYb+UoLX+Gph0CL8vHK8sxLJboMgY88fH5xxp/jgGsAPhUNn+usmwzoz1W47
         oVXdFA/omGsiB5esLe6rNrSXjCjBKz6cQvstu5u87hq6uoSpOLM8rCI3sPVVt//FXpE2
         HwUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5NDH9rRw/+jKKIYaP5bOOjVxBGPSadYpeocVf1TC+qI=;
        b=HKvg5WniTIA0MppHtRW5jmXQOI5iFp61nONog5PEoxDfHd5XV6ekbCRnMncu/iscj3
         ZMYvf2v/3Dw3ChG/JusbaVNE4EKeRg5mO9j7xT68NP+DdKHKyki92sPAFr2045jod8uj
         WwyOhJ+gjf0xuk3NdW8FVBVyEIAIZp5ycBr+rgPF1/dK3qhNq9AxHJ/aXL9BhUe3VYkj
         8a/0BpNfNdQHhq9RCT9rIbvam1yGgxvcYi580Zloz+dlgYrrWcLBphZQRkCucbt80c8+
         BgZckg7xmmjOYyzcJYucvgRdp3rwFqk1xJ7daNt5/8cDn0zYggH4EgjuzD71KUrGZRlZ
         yKHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXAPPRXkkxYweGbgzWed0V1Ye0ej79A36ABsc6o1mS5atwvMnvm
	xOoylyos3YuhFyFRfQFPcW8=
X-Google-Smtp-Source: APXvYqycwRL0HoprQAzf6Cuw4tWAVZPyVdP8FDmBUohdBWef35iQv6oRnenSQL6/FcEYwcScDmWVjQ==
X-Received: by 2002:a1c:7f96:: with SMTP id a144mr5261497wmd.143.1571923718085;
        Thu, 24 Oct 2019 06:28:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:960a:: with SMTP id y10ls1041991wmd.0.gmail; Thu, 24 Oct
 2019 06:28:37 -0700 (PDT)
X-Received: by 2002:a05:600c:214:: with SMTP id 20mr5133012wmi.45.1571923717460;
        Thu, 24 Oct 2019 06:28:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571923717; cv=none;
        d=google.com; s=arc-20160816;
        b=YoIsfs1FzH8zfqjdz1H9tlIeKTDzT3IiO+yG5rud6eNWAvTug96MwIJV6KI1r3LkA1
         HmsGNJ67pw+N8z4oEAEdzJ90+B2quFPFwoOYgb7RQv6MCxM9ABEN0sCRB7EBB5B+23+B
         cUMIvb50nZwYk780iJZ8Kr2/aSHHpnN3dDBOqlgZvksnvLe8T2vyO7ThepeRgV4q02/M
         yNr1GEoG076cESd4RQ6n0x+6Sw7vUFssJI7WqaEwhS0aVz7dOh+1N8H8/Bgk7CtjZLEn
         efB23Z/agPNCydPRoDUgI1O0jc7wk4ljbkl0N2wcEOMB59sP7XCQlWJzcomxfLC/JSD+
         Ylug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=1hMW9BZuiRWc87hGAuP1hQJ+7xLMSANHzzPJrHeXCMM=;
        b=iMM2RCH4BMdvkpbn6XY8l+T55w6Rt71LeTMyeXA8lPPCwQhsX5QQQoawHI/+UJCzf8
         hWjy8Qi7d7QpDe2K94WHZMvoztwAAw2OMnSHueHAPWmtroitugMjAodq44FwYZhHcxIK
         tevjjk5aO8aiDRm3vsAnuu3qRUg+kOCHFHhMgrYvGeXSRSuSVgaLOHcaYs28wBNRictn
         xZyG5oW5jDmln7S4/p/ySqJPJd5ZrO3Ji6fA7Mgdy/fyOYjHGicrrMvAf73bqowEpcz4
         DilTn3ZxnWFbDhBjH+BIB3e4W8m6DwFHkzC4dmYIyxd7Ytt6UzVcgQswnRN9jF2+3xJC
         1J7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id o185si154331wme.1.2019.10.24.06.28.37
        for <clang-built-linux@googlegroups.com>;
        Thu, 24 Oct 2019 06:28:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A65C3C8F;
	Thu, 24 Oct 2019 06:28:36 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 004113F71A;
	Thu, 24 Oct 2019 06:28:34 -0700 (PDT)
Date: Thu, 24 Oct 2019 14:28:32 +0100
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
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20191024132832.GG4300@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
 <20191022162826.GC699@lakrids.cambridge.arm.com>
 <CABCJKudxvS9Eehr0dEFUR4H44K-PUULbjrh0i=pP_r5MGrKptA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKudxvS9Eehr0dEFUR4H44K-PUULbjrh0i=pP_r5MGrKptA@mail.gmail.com>
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

On Tue, Oct 22, 2019 at 12:26:02PM -0700, Sami Tolvanen wrote:
> On Tue, Oct 22, 2019 at 9:28 AM Mark Rutland <mark.rutland@arm.com> wrote:

> > > +config SHADOW_CALL_STACK
> > > +     bool "Clang Shadow Call Stack"
> > > +     depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> > > +     depends on CC_IS_CLANG && CLANG_VERSION >= 70000
> >
> > Is there a reason for an explicit version check rather than a
> > CC_HAS_<feature> check? e.g. was this available but broken in prior
> > versions of clang?
> 
> No, this feature was added in Clang 7. However,
> -fsanitize=shadow-call-stack might require architecture-specific
> flags, so a simple $(cc-option, -fsanitize=shadow-call-stack) in
> arch/Kconfig is not going to work. I could add something like this to
> arch/arm64/Kconfig though:
> 
> select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
> ...
> config CC_HAVE_SHADOW_CALL_STACK
>        def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
> 
> And then drop CC_IS_CLANG and version check entirely. Thoughts?

That sounds good to me, yes!

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024132832.GG4300%40lakrids.cambridge.arm.com.
