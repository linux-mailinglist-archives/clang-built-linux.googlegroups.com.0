Return-Path: <clang-built-linux+bncBCIO53XE7YHBBI47SP4QKGQEX6325EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id BB161234F63
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 04:12:52 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id a5sf9860460vkh.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 19:12:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596247971; cv=pass;
        d=google.com; s=arc-20160816;
        b=zQ9gj1xuF5irjUaRBb5KniVtuCoHfN9TYgSUiN4VdUt7fJuwvu5+aXeOIVuR+bJk66
         EY7KMc0DggBFAPxg2OPXClfmvbbnXmFjVGb3QNZJHb/ssfw4b4FLVI1FQMt1SoG/4zjY
         CHkCaiLpscKhujfVQpvSefl6PBN5Nc/11iFrTuwLm7CotwKdNcasQ9cdaC1zbySgpEqQ
         TT/cjTRfVmjSFtQMIWlus6rhjFCkSkNx+ZlrzDn5rdtqpTsMiz6LjlUJsqclesQ52ip7
         eAEXIq56uGaeeMYOMN0l0USFNQBg/wZIGUniSXvQyLt1NcanUwvZ2YVq1Gx4S7jyADDJ
         mOtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=QKtuYLH1b/vg2se98DsNUEF0dLdqm1STuI5FQ9N7t+A=;
        b=ci5d6DpqDLQZAmn2FkzNfjy2RftljlCMuPvTGa5nhetBjG1Ye58fON0SlnE7rvRwzy
         uObA/0cnp8wxYscAYJnGXCAiz3DYlvEOGELwlkiXQNW0Ma7tfkWD6WGIq+535mPI7xKs
         7AxScfxxU1C9jEY9+002hNEWI3uoQld0NIlIyqwTcS2Q8GeeMIGYnltGEKmxQ7O59wF5
         4zZZSvQGqQiPYnfJJf0B+jAsBTL/2YhE50ffJN7VZmRwbrmHusbwpt+tACj201tm2HMO
         hLgQwdOUD8ETR6IZEMNid5INcNTlhevqaidsM/Y4LjI0lF3bx6ezDhnFWUuaq4A2kuH+
         HH4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H0j3lwKV;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QKtuYLH1b/vg2se98DsNUEF0dLdqm1STuI5FQ9N7t+A=;
        b=us4W7EAl2k0DfSZpCPzuzb6o+2df/lZwu+q1Ff/V9Xiskl+UgOJFO0ZtIXoWq+yuU1
         PzFST1HnSTaPVt1gJBS0zauNZ9WxHPULm2VqkuGAIWS7ToVOVZk5D4SbiSCj+C7kbsyf
         cHc5yWDEJM5kr4oWwmKq5+z2Or9ROE+U6f1dS1uAIRfi7qgJf+aPj16t2G5adDTvP5qO
         Z1Rk/LKT6W2VlU60WgOnIlMq6yjVPFgz6asW51m6Rf9QoIaWtk3EVD/smpsxr6Bl942S
         br/mVQIR1ugduqkLvy/CsCnIqFcA6FjB5gYir+KPe3tRm3zsCjKNGCY1ThuLdiV9k2Yu
         /yNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QKtuYLH1b/vg2se98DsNUEF0dLdqm1STuI5FQ9N7t+A=;
        b=f8WYCrqzm+qq2l+bL2IykyUDEs+4JW5LWic0z6zNUkvqfKzkbnsNy90KenX+uLtSJc
         f90K04pvjZP760rP7Oz/7Yl1YPHLyvk93XcYLvlaLgaZ8qw63vT/sacQTjDMC4lWcI/v
         Nt02EdzdCm0HrkZstKvmNBYrIHOCM/Aei+yJQIXhu5UbYwA8q5B/iO0s6LUknYf6dq2x
         Y8Du8EFEfwFD2FCyKybfPNSKqW0qAv6WckDQ0w7n8XjsvvDb/eGpQfk5w67UkhwfEtnh
         b6cYLMl70H8uXXrhiYk5mySRM/FL/zmBm3s8RaEMw2WVkQAMeyKV1wMgQ28+uRdOi99e
         PfUA==
X-Gm-Message-State: AOAM530VXvyV2xvwKVhjJ7jyu7ahV6ZBlTm84LXw3uOWj4E5HDAvjvx3
	+JXLn2UZPi7mJ7ZkciUWnOg=
X-Google-Smtp-Source: ABdhPJxB4C6JHBhny0tlGKZbyFf2La3+IIxH7ZJU6K9sp+ChxCVblfT6fXeGdWa9AE+xM91MP1Aaeg==
X-Received: by 2002:ab0:18a:: with SMTP id 10mr4613381ual.143.1596247971804;
        Fri, 31 Jul 2020 19:12:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4906:: with SMTP id z6ls780096uac.6.gmail; Fri, 31 Jul
 2020 19:12:51 -0700 (PDT)
X-Received: by 2002:ab0:37d3:: with SMTP id e19mr480033uav.64.1596247971411;
        Fri, 31 Jul 2020 19:12:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596247971; cv=none;
        d=google.com; s=arc-20160816;
        b=aDth3nELJtEtyOYTNb0LLRMgXEKM7eMKYo0hamgA4Jvjk8FDmWNwvK+PNAct05VrD4
         Q+kbuqn/rFa0t7MC1DlJG1jWHTKtemiLCal91p4dZ8ov7FecHFZ0bio8dXcAj85UfpSm
         L7lUVaiUrpwqa8EeJLIwrt49T5P81J+AQwKq/5cPBhBokIlxI7IbkWxPGFYEITssyFqX
         c/Q1GYV3TfPPW71RStOij+tFi7JuoUbarxcrOskjkpUC9A9kHdwHSucA/1D/C1sT1N5g
         OwLnM0dd9GvkZO/wxK8IEyAagv6DpBTXvWizIqDlseyNLF8uo1DGdfl0sbnUhsx1LXOX
         Aq+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=RcNuzy0I0GlSHPsgjAin26OQE0adxaomHrcIgCRJLsA=;
        b=q4Cun8K1J2kv1eqVXKj4ZAG6oId2sU4oT43tdQKu9ynqKOg/1IZXL6+w9SvCecZ13N
         1KT9olbPySpJ8LVLERzvpzEYZG5AzduIyPqwZQUCVRe92Zy35Nq71JJ8INwXo0DelGTm
         ut5ZM1F6m4R4aFFwqIW0aSUwDjKX0Buvv1UwSZWsDeg0gl6MbAMkdYP9osOmx6+5mbfp
         A2nz25pU+Nt02+xkRNUlOGD66irMfz4u+AS82l3dEX8rUWG+5x3DhzjMoW7I2htAt+uW
         vZNpigHtGSE35w2x8jr+NEWy5m2DaowisP9GNps+zv0BNKLFoNM1xLe1YiJ/BgaLdQuF
         cz8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H0j3lwKV;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id l129si693326vkg.2.2020.07.31.19.12.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 19:12:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id y11so12059564qvl.4
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 19:12:51 -0700 (PDT)
X-Received: by 2002:ad4:500c:: with SMTP id s12mr6997719qvo.101.1596247971068;
        Fri, 31 Jul 2020 19:12:51 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id u42sm14062820qtu.48.2020.07.31.19.12.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 19:12:50 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 31 Jul 2020 22:12:48 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 29/36] x86/build: Enforce an empty .got.plt section
Message-ID: <20200801021248.GB2700342@rani.riverdale.lan>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-30-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200731230820.1742553-30-keescook@chromium.org>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=H0j3lwKV;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Fri, Jul 31, 2020 at 04:08:13PM -0700, Kees Cook wrote:
> The .got.plt section should always be zero (or filled only with the
> linker-generated lazy dispatch entry). Enforce this with an assert and
> mark the section as NOLOAD. This is more sensitive than just blindly
> discarding the section.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/x86/kernel/vmlinux.lds.S | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
> index 0cc035cb15f1..7faffe7414d6 100644
> --- a/arch/x86/kernel/vmlinux.lds.S
> +++ b/arch/x86/kernel/vmlinux.lds.S
> @@ -414,8 +414,20 @@ SECTIONS
>  	ELF_DETAILS
>  
>  	DISCARDS
> -}
>  
> +	/*
> +	 * Make sure that the .got.plt is either completely empty or it
> +	 * contains only the lazy dispatch entries.
> +	 */
> +	.got.plt (NOLOAD) : { *(.got.plt) }
> +	ASSERT(SIZEOF(.got.plt) == 0 ||
> +#ifdef CONFIG_X86_64
> +	       SIZEOF(.got.plt) == 0x18,
> +#else
> +	       SIZEOF(.got.plt) == 0xc,
> +#endif
> +	       "Unexpected GOT/PLT entries detected!")
> +}
>  
>  #ifdef CONFIG_X86_32
>  /*
> -- 
> 2.25.1
> 

Is this actually needed? vmlinux is a position-dependent executable, and
it doesn't get linked with any shared libraries, so it should never have
a .got or .got.plt at all I think? Does it show up as an orphan without
this?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200801021248.GB2700342%40rani.riverdale.lan.
