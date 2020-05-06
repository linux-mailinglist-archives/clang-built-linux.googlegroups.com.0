Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVXFZD2QKGQE2K2DKYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9491C6669
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 05:45:27 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id d188sf456017iof.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 20:45:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588736726; cv=pass;
        d=google.com; s=arc-20160816;
        b=wxh9UDwx07SaB+n1LRmjY2/90iHZhB0FWueqgm6+vLKEHJKsPXDhVFNEWljWk59KIM
         NxR8jNeyLkxQ3fpGMu5AXUt+qQTqNK2vF4/4cZeT04OpVeM88RAYDGOABms63JaSMVSK
         b6aqR0fzWmlmcvh7lK/wY/Klr8+L9BWjn3nQn0lDHs780D/mVMUQ92qh3GPOQrgFVp/n
         n42RmqInbzfQXhhOqloW55YMY1sHmlgY8XX9iiUhsAI09uVVysyQRGoea/ccUI3KSfwo
         f1ZPEus2FNTedCpIIc74TRYxLSXwLDTp4qphrOXvj1LUGD2yuBgjUrlHrPVgCnk2DmnA
         vUpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=qJ4rYyX2/Kw6HUw5lbSW4V5iLvK7VslAJymQVK+RuTU=;
        b=ZP0NHAMzmt6d8nkayLCBfxHFJEx+amq3KGqr8y7FMdT0CD0ik3B3KadBngtL1EBsAn
         DyomnjAzrkAeMZxhveqqu/scafZNUUMDf1/45HYuLkdx7btB/O3INu2Wy8OYn16Bc0Qy
         oNoS4HRqc+Y2yw0buB/WdyOR6AcY2MnVjps1lrCB310TSlUKQpeBIQhdLS/H+jTlZuvd
         xSIWE4+YvnHDlr0pTQ/oTY/wfjT3ErnMd9n47ABxNWFVJVFx3QPatDaPdYjB8ACOTLWb
         b1nY+0fM1G+7Rl6z4n6CeiSxm3sO0lH+LNkHujewIhSTn++Y0PIty5Nn6nJJgMQFHdoN
         CuXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OKN4zkBY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qJ4rYyX2/Kw6HUw5lbSW4V5iLvK7VslAJymQVK+RuTU=;
        b=aO491DDo8zR4uADNY97zu01fTLsgthhUaE0gVn0J1Xt4GghZMZK/iW/zw/zknt6lJj
         +5DagPzd1Z5hf0+DO7skjvtI4DJPGZjmPxFVJ1Tj+qncobuRLAY8Xka6T33ckhdjD46+
         cy1y6nNuXNf3kMAWxvJP7zXScOYx/zAVzfN5iQY3e1Eo1BVfLE9ksb5EauJRPVbEXkQK
         U65Q++/TirJ1lNFeM/k5l1rq6wQNuC13bEa7B+11MlrTCmC1Xl3xnlbe28sQMiuRwGDX
         7v5Oe+N4jsR0Y/ofHtOBqmrXtRq39fEm50Mn3sUBaVO6zJsnC0uA0cH65/bTBFQf2DZr
         /ObQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qJ4rYyX2/Kw6HUw5lbSW4V5iLvK7VslAJymQVK+RuTU=;
        b=lDlXIlGENKi3cnniLyN34t0moYvoWDom3K3sC2bvWBUGwuEqXnDhJuCKyfHY5EK5MR
         BrGju4AYUDCqZwvRMR5yakCX8vir++Q9Re7QjfRwyDG65yqjJJBayGjR+IeS4XWA/gKu
         HbvA9fhS3y0OtgwMhaY1JdvHEoL8oRhLgIulWpMiBWILqw1BqxPpvppCt0gsZWx6F4Gf
         EXI+iE1G9TEX5RJ99tEAis0YZPAWqnlUw9s6UppcvuY3NOgnh94Lh/YLKeQIx1cqD0t3
         taqlcjFsaMf8z0RRM8mA5AjfZWq+AO3FhlNm4MvIUzKe1zGzTDWXtUnBxla9XiM/V0DE
         s4uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qJ4rYyX2/Kw6HUw5lbSW4V5iLvK7VslAJymQVK+RuTU=;
        b=n+hRMGjUIiHkCgBiFqkvyWqrlex1X0SFJMM1QOlqDT3OOPd9CrUlLnygIpKXN5sGwO
         i4IdrTs+5oHtziH48QmXxissHG/PKUN3rY6ZI7j5oMesBZud3P089qus8fcxHiZ0dI6t
         ebUi3604oWIWyF1s2QRRH6U6J2Zu6cBeFU8dxSLjzjlogn9whKKD3Przu/Vaj3UptecM
         Fz98TNsU1rMyOczpp4EoqhIF0PicfPZfZtarL0h8cIyQ0Hd/PMf2Q1GbERWISUTK7kyK
         fc7So2ZfQiLttpPVMrQ1S1P7OnSIeLAJnZmM7SBoWkYZ34C64DTrd+Jrf3TO2UrfJ5g9
         5rQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua9/yn1m6KJjvf71dX+Pm00updGO9KCJ13v1TyugnjULK8oBiEm
	kNnjocz7mwSr2xWl6itYgLk=
X-Google-Smtp-Source: APiQypLxxQsbDUOUhWiEkt1zabU4SR7+8FJvutV1XJxJS8KOINvj1cSb+MF9SDYFDnjQeqCEbLmOmg==
X-Received: by 2002:a92:485b:: with SMTP id v88mr6987710ila.271.1588736726145;
        Tue, 05 May 2020 20:45:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5fd5:: with SMTP id i82ls510339ill.0.gmail; Tue, 05 May
 2020 20:45:25 -0700 (PDT)
X-Received: by 2002:a92:4152:: with SMTP id o79mr7333282ila.198.1588736725930;
        Tue, 05 May 2020 20:45:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588736725; cv=none;
        d=google.com; s=arc-20160816;
        b=slLLfWyw8WkP5ex8qGLgc7VCKT6sS+PH+v3Th9pwzGcJxpF4h2P6ty14cjW3L9XarM
         pojYuKC9UcDyG/rpDNDMC1kc0vu73kd7In3fDIVFhapDNx2f1cshZ2sr3IdpvoxVwkl8
         GpEs/h7h5FVnkFQov+GreGItHDULRDtEX2X4chcRx8LtsqkylgEc+oWJUThfv2zukxSj
         921cy0avnyHc7b06HEONVVRSkexvKmur2fgfdMyhsoKhlEywnUKuT0wVK1fPtKFLW6MM
         Xgfpot5oQB8XO2EI2RgdJmybhy4wE8Dh4zHXAAZ6HI7X3Ii5qM3YdR3zudiyxMVbc5Zw
         LkRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zWB6cWjMNsKtRxqY/kkJuBnxLsHqY4CSraBHoWMjqp4=;
        b=WDamk2sU1aZArz8MIg4yNX6j5HD11mNx2EjuDs1XUwhgtDhL900tenyrPfb/O0WjnV
         L+XiBmRy9Nlu9DXVJtUH4aT8Tq/zjhTkso4qeJEqhGi9BILEX1araWkFUKwtSO3NZdgu
         QwTjXw7BQ5UaAS9xrfpJyB0atu59jpODBfo4amBeRopLvnvLM1Jwa0VdgIaR1T2gEcBH
         lyWU4buWahYntgoEnCtD20r9w6vQ/YIJJfOP9DYlmiw5kM/ZHPo7twMqtqMP/UiOQyOu
         AwkR/vWhCPd+9R9sWW6ZtbY40+guWslhM39TruxmYtbAhdMKuYA0pGAHMDQqYlg7jVGu
         TUGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OKN4zkBY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id x4si77334iof.0.2020.05.05.20.45.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 20:45:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id a2so320085oia.11
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 20:45:25 -0700 (PDT)
X-Received: by 2002:a54:409a:: with SMTP id i26mr1403854oii.50.1588736725456;
        Tue, 05 May 2020 20:45:25 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id r6sm304439oom.26.2020.05.05.20.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 20:45:24 -0700 (PDT)
Date: Tue, 5 May 2020 20:45:23 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Torsten Duwe <duwe@lst.de>
Cc: Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Torsten Duwe <duwe@suse.de>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Julien Thierry <jthierry@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Marc Zyngier <maz@kernel.org>, Kees Cook <keescook@chromium.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Kristina Martsenko <kristina.martsenko@arm.com>,
	Ionela Voinescu <ionela.voinescu@arm.com>,
	Steve Capper <steve.capper@arm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Fangrui Song <maskray@google.com>
Subject: Re: [PATCH] arm64: disable patchable function entry on big-endian
 clang builds
Message-ID: <20200506034523.GA564255@ubuntu-s3-xlarge-x86>
References: <20200505141257.707945-1-arnd@arndb.de>
 <20200505142556.GF82823@C02TD0UTHF1T.local>
 <20200505194243.5bfc6ec6@blackhole>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200505194243.5bfc6ec6@blackhole>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OKN4zkBY;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

+ Fangrui, who implemented patchable_function_entry in LLVM/clang

On Tue, May 05, 2020 at 07:42:43PM +0200, Torsten Duwe wrote:
> Hi Arnd, Mark and others,
> 
> this may not be worth arguing but I'm currently fighting excessive
> workarounds in another area and so this triggers me, so I have to make
> a remark ;-)
> 
> On Tue, 5 May 2020 15:25:56 +0100
> Mark Rutland <mark.rutland@arm.com> wrote:
> 
> > On Tue, May 05, 2020 at 04:12:36PM +0200, Arnd Bergmann wrote:
> > > Clang only supports the patchable_function_entry attribute on
> > > little-endian arm64 builds, but not on big-endian:
> > > 
> > > include/linux/kasan-checks.h:16:8: error: unknown attribute
> > > 'patchable_function_entry' ignored [-Werror,-Wunknown-attributes]
> > > 
> > > Disable that configuration with another dependency. Unfortunately
> > > the existing check is not enough, as $(cc-option) at this point does
> > > not pass the -mbig-endian flag.
> > 
> > Well that's unfortunate. :(
> > 
> > Do we know if this is deliberate and/or likely to change in future?

I am not sure this is deliberate, I don't see anything about endianness
in the commits that added this:

https://github.com/llvm/llvm-project/commit/4d1e23e3b3cd7c72a8b24dc5acb7e13c58a8de37
https://github.com/llvm/llvm-project/commit/22467e259507f5ead2a87d989251b4c951a587e4
https://github.com/llvm/llvm-project/commit/06b8e32d4fd3f634f793e3bc0bc4fdb885e7a3ac

> > This practically rules out a BE distro kernel with things like PAC,
> > which isn't ideal.

To be fair, are there big endian AArch64 distros?

https://wiki.debian.org/Arm64Port: "There is also a big-endian version
of the architecture/ABI: aarch64_be-linux-gnu but we're not supporting
that in Debian (so there is no corresponding Debian architecture name)
and hopefully will never have to. Nevertheless you might want to check
for this by way of completeness in upstream code."

OpenSUSE and Fedora don't appear to have support for big endian.

> But still better than cumulating workarounds. If clang's flags aren't
> orthogonal then that's a bug in clang. If I get a vote here I'm against
> it.
> 
> > > Fixes: 3b23e4991fb6 ("arm64: implement ftrace with regs")
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > 
> > This looks fine for now, and we can add a version check in future, so:
>                                       ^^^^^^^^^^^^^^^^^^^
> see what I mean? And in the end another line of code you'll never again
> get rid of.

That's a rather pessimistic attitude to have. We've been rather good
about trying to fix stuff in the compiler rather than hacking up the
kernel.

> I suggest to get a quote from clang folks first about their schedule and
> regarded importance of patchable-function-entries on BE, and leave it as
> is: broken on certain clang configurations. It's not the kernel's fault.

We can file an upstream PR (https://bugs.llvm.org) to talk about this
(although I've CC'd Fangrui) but you would rather the kernel fail to
work properly than prevent the user from being able to select that
option? Why even have the "select" or "depends on" keyword then?

That said, I do think we should hold off on this patch until we hear
from the LLVM developers.

> > Acked-by: Mark Rutland <mark.rutland@arm.com>
> > 
> > Mark.
> > 
> > > ---
> > >  arch/arm64/Kconfig | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > > index 4b256fa6db7a..a33d6402b934 100644
> > > --- a/arch/arm64/Kconfig
> > > +++ b/arch/arm64/Kconfig
> > > @@ -151,7 +151,7 @@ config ARM64
> > >  	select HAVE_DMA_CONTIGUOUS
> > >  	select HAVE_DYNAMIC_FTRACE
> > >  	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
> > > -		if $(cc-option,-fies on y=2)
> > > +		if $(cc-option,-fpatchable-function-entry=2) &&
> > > !(CC_IS_CLANG && CPU_BIG_ENDIAN) select
> > > HAVE_EFFICIENT_UNALIGNED_ACCESS select HAVE_FAST_GUP
> > >  	select HAVE_FTRACE_MCOUNT_RECORD
> > > -- 
> > > 2.26.0
> > > 
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506034523.GA564255%40ubuntu-s3-xlarge-x86.
