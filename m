Return-Path: <clang-built-linux+bncBDV37XP3XYDRB5WC6GFAMGQEY443PRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2DE422B0E
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Oct 2021 16:30:14 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id k5-20020a7bc3050000b02901e081f69d80sf9154537wmj.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Oct 2021 07:30:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633444214; cv=pass;
        d=google.com; s=arc-20160816;
        b=mJ4PndnzPmiuPUS9aQ7Aoi2nFkdxfBKAk6WdlN3uyEM3BOLnLm6VgEfOAJmVzi3Hj7
         51jIbvTlD+enEJ5rKJ1sDfWEIOPwzIqh+P0vWnDMGvS4QTmJvmuJ9pf+yhPn6+kku0RX
         FqRZR8tMRtrEqxaj33G6o+gLqJ8wkksis4KmzPNAq4WTlzoJcA0F/2oKi3sT51eIoKKH
         q1GjP4rGQcpOID+GwmUAV3dNDJjsZ0B7RFuHHTN/7sPii64HCssYmIQqQkUTD1Z/XGvx
         jId61hY82nfc+8EA1KPH0cNIpWtJXNjh5H8da2pNqlY4/PnSNkXSz14vIudQibs5i9F5
         Iq2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wkt9luHIpkzYKUhxRtk+BDZxdVheNMKIkWMaIfRSjpM=;
        b=gy39+SlOAQNUEJDvd2noxrkvm3CBOmjY4VdGY2DwEquPEtI4gc65OrrTNaAyVWCcYI
         71IIdg0SkCfL8U+JyriEv7qp+mHjvhEA33bPT8oCS9tbIIGLrM06y6Hr9lzu/u509adP
         CzdnqABJMLsWS5codkXYrfoKVBBW63sLS9aUwU8Uo+3czdocPB9AXWc3HJnjPlvSbjhD
         oov4xd2JYZ4Zz3cnqEqZEHd77xV6QYMUspwCzo6Tig5AXyah3Du4mCOlnGc3REk6a3u/
         ue5jyf+qmHh16gl1xaLYXMmhlh7MWAiPapKQJcrLU7cNt9M0m7oTM3GiETljzKWZDOCM
         igIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wkt9luHIpkzYKUhxRtk+BDZxdVheNMKIkWMaIfRSjpM=;
        b=QqELnaZBCap6xNDKL0CxYuekd5cc5uK8kWgyN5JpeMETmE37z4Omk6sV9m8sCuA4CX
         XkDxI8PlId7WujHkn2LVMpYJhQa48AaSLoqWrYp+BnKnt6IVl5Bs1OpkYGAROmfRqIC7
         fV439Tqyxsa6DZmlgjvaSOmalR4KR2JXSoeiHAUZYDpdumsRNTqnkIWwzw53Cmc5Sx21
         JWxYODyDV/c5acMvXVrCjBFnP1XGQos2zbcrdTQfcgerbHW247scSmQ7rzl90h2HZHa5
         IneorNCays391IIFIgd4YylphE/E0mJ94mUlApbXuqFQA+cBbyJ7D9cy+GoTFU8FpdvQ
         t6FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wkt9luHIpkzYKUhxRtk+BDZxdVheNMKIkWMaIfRSjpM=;
        b=bDCCTM4zeKkNvsoK8kxiRX7YCRgi1TRh8EMxKeqFmFiMjkSX6nIjCm9MZxbFnoMJ71
         nE4hWv5wyE1T8CXLeAmF1T1g+erKsqIx+JX5BpsZn5BgIQo+3+3ch9kb091EnO2NhBwg
         6O+5oSHX0ftLY5Y0djngug3xDGVU3xaSHceomiTDxQuDOoCtp1VzmpezwYIcXj9yBmnf
         xnEo2JoT5aIKVcMFqVfSk8I3kawOC8Y8qAcrKD534dLjCI45qoVCADrO/ZRpyI5GtGwr
         x8VrfwAyyl5GDnUOqDksC8Z2aH6F5+V+aTTu6XDvlgPdZDSWDDKwtFkW3p6svtkakWRe
         Ag2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531P6zYWO3jcJSlX+d1oYyhtwtPZsciQEeNZzIM/8ksDeL7wG3gk
	qk6AFYKecmDtbx3xQZEzEkA=
X-Google-Smtp-Source: ABdhPJwcDXpXoeMeBfa2bDZ3fvvlE1YHc3/F59qaH+tIk1P6nd33DUbskYnKcfLu8UfPiWd9b6VX1g==
X-Received: by 2002:a05:600c:4ec8:: with SMTP id g8mr3910606wmq.56.1633444214308;
        Tue, 05 Oct 2021 07:30:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a285:: with SMTP id s5ls2848850wra.1.gmail; Tue, 05 Oct
 2021 07:30:13 -0700 (PDT)
X-Received: by 2002:adf:a402:: with SMTP id d2mr21902983wra.266.1633444213254;
        Tue, 05 Oct 2021 07:30:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633444213; cv=none;
        d=google.com; s=arc-20160816;
        b=KJTwmcBgs6AKxnfnvkgVoyVGQWPononhPwpfyeKw8bEsQFip6WCV2F85dhR4qXWFu8
         Lnc2UkNTyvq9AEqWzasz9UV+lqV1pI1oeHmI5VbGHhwE+WsP3WL/i7o54/p8oxxvB+eq
         5WXblRqQ/4DBgGw/Nz8oDxYzSoDG8GVq6Qtwtaw+StneEUXw3DgEu31bIx4jmQzOvzUK
         ab/xJhBBwiq+5OP+3IS6DKLHvRTvTCroap961iBuu5ozap6S4+aG7yIjhDUwFOJT49sM
         cSi8naxGWB87Pv2O51/GsDDySpuqSTVfC4wB9G7+Ar+lx95XhAl7xqzPgaR8ibNt5Q4t
         goQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=gxrMVAw/5LLkca458yv6tDVS/EMHpBVVAHIqFcJ2i40=;
        b=ILX8a6bzdGltKRvEPITOsmFYoZWuAJyAi+LUStR/3BeVzLDUmB+EOmN4gOLHlHhdUQ
         U6XpDl3JnNGvCaq8legLGUOy0Fmzi0q2CMVsyLJFMUJLZxJ2qcgWNR0gxJu01eEL0+ng
         DBbgxOz16OolYwiFGbWF8NznXNqy3TN2f+vcHcqjukgQ1+oxMo8aiogGKme5ULWIxa58
         DajbY5Y1ZiPCgyB2BPU5enf5Af7EncNJ2Fj4xOmTstIylbiaPkTevqOP86GkL812UNVg
         NnEQINrRQPr/KfGHY5UGYzx2NQ5LzNgDixz62nYezrXm+YbtuOssPlsSiBTUjkxxUjHq
         9kMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s194si127952wme.0.2021.10.05.07.30.13
        for <clang-built-linux@googlegroups.com>;
        Tue, 05 Oct 2021 07:30:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7E7621FB;
	Tue,  5 Oct 2021 07:30:12 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.23.50])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4CA793F70D;
	Tue,  5 Oct 2021 07:30:06 -0700 (PDT)
Date: Tue, 5 Oct 2021 15:30:03 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Daniel Axtens <dja@axtens.net>
Cc: keescook@chromium.org, catalin.marinas@arm.com,
	clang-built-linux@googlegroups.com, hca@linux.ibm.com,
	jarmo.tiitto@gmail.com, linux-kernel@vger.kernel.org,
	lukas.bulwahn@gmail.com, masahiroy@kernel.org, maskray@google.com,
	morbo@google.com, nathan@kernel.org, ndesaulniers@google.com,
	oberpar@linux.ibm.com, ojeda@kernel.org, peterz@infradead.org,
	samitolvanen@google.com, torvalds@linux-foundation.org,
	wcw@google.com, will@kernel.org
Subject: Re: ARCH_WANTS_NO_INSTR (Re: [GIT PULL] Clang feature updates for
 v5.14-rc1)
Message-ID: <20211005143003.GC6678@C02TD0UTHF1T.local>
References: <202106281231.E99B92BB13@keescook>
 <20211005131015.3153458-1-dja@axtens.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211005131015.3153458-1-dja@axtens.net>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

On Wed, Oct 06, 2021 at 12:10:15AM +1100, Daniel Axtens wrote:
> Hi,

Hi Daniel,

> Apologies, I can't find the original email for this:
> 
> >      Kconfig: Introduce ARCH_WANTS_NO_INSTR and CC_HAS_NO_PROFILE_FN_ATTR
> 
> which is now commit 51c2ee6d121c ("Kconfig: Introduce ARCH_WANTS_NO_INSTR and
> CC_HAS_NO_PROFILE_FN_ATTR"). It doesn't seem to show up on Google, this was the
> best I could find.

Unless I've misunderstood, the commit title was rewritten when the patch
was applied, from the third link in commit 51c2ee6d121c. For reference,
those three links are:

  Link: https://lore.kernel.org/lkml/YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net/
  Link: https://lore.kernel.org/lkml/YMcssV%2Fn5IBGv4f0@hirez.programming.kicks-ass.net/
  Link: https://lore.kernel.org/r/20210621231822.2848305-4-ndesaulniers@google.com

> Anyway, the commit message reads:
> 
>     Kconfig: Introduce ARCH_WANTS_NO_INSTR and CC_HAS_NO_PROFILE_FN_ATTR
>     
>     We don't want compiler instrumentation to touch noinstr functions,
>     which are annotated with the no_profile_instrument_function function
>     attribute. Add a Kconfig test for this and make GCOV depend on it, and
>     in the future, PGO.
>     
>     If an architecture is using noinstr, it should denote that via this
>     Kconfig value. That makes Kconfigs that depend on noinstr able to express
>     dependencies in an architecturally agnostic way.
> 
> However, things in generic code (such as rcu_nmi_enter) are tagged with
> `noinstr`, so I'm worried that this commit subtly breaks things like KASAN on
> platforms that haven't opted in yet. (I stumbled across this while developing
> KASAN on ppc64, but at least riscv and ppc32 have KASAN but not
> ARCH_WANTS_NO_INSTR already.)
> 
> As I said, I haven't been able to find the original thread - is there any reason
> this shouldn't be always on? Why would an arch not opt in? What's the motivation
> for ignoring the noinstr markings?

IIRC the thinking was that architectures which have their entry logic in
asm could/might avoid the problematic instrumentation by construction,
and we didn't want to break functionality for those.

As you say, if that asm has to call code which can't safely be
instrumented, that's equally broken, and that might have been
wrong-headed.

> Should generic KASAN/KCSAN/anything else marked in noinstr also have markings
> requring ARCH_WANTS_NO_INSTR? AFAICT they should, right?

I suspect so, if we could otherwise get unexpected or unsafe recursion
between instrumentation.

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211005143003.GC6678%40C02TD0UTHF1T.local.
