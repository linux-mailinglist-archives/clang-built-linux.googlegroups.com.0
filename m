Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIHZT6CQMGQEZ5WANBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E03338CD7E
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 20:32:02 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id m6-20020a0568301e66b0290319b27baf50sf9799113otr.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 11:32:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621621921; cv=pass;
        d=google.com; s=arc-20160816;
        b=tvDq2RGDA17VBkcLiIrPa7pMY3YZrHAiGezQ19qMl2s6LTE5Pd3Id9CblCAmGuv3hT
         H+lOwE5fbEm+RCwCkWnUxXElL08/SLoLR8CiHvHcsZT2IeSOB7FjdO+DlmptDZGAVMFy
         FGCZ6kDeeW0qb3/tnkxdxRnNMaTL5SlQdaMRxr0l4+AFn18Cf90eY6LiFRqJMdFbgALp
         Ld2bHV6GFBYTe5sRb1CRLbVwYciqik359eT4hKINfQNJnLSNJB8O7kOgoMdgbWsD3E7n
         Tzy94mCieOGiU27kl+J7ufyuj4PBLuTmbio79FIjRW629lPH48xqwjoVo+ol3qxunWNb
         CzbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qtQBSVIt8KWqyYTdtdtwWx/SnT2zDOyeUAgXcqej4JQ=;
        b=F7eVCqCYfldo3Htjy8w/HBEI1yr8w9zwn7lalMTiQuW0kvAuLtsqqOA0nVXwM5gvOy
         WanPVA9qieS0ufY7rwW17IjHXlgFdsWNPi7jA80q4CJ8BA3bnO17tbOU+Eal6JgdGmbU
         CaCM5WBYrCT5daFGLzbWoUMfj/yLzt1/utqORlxdcSBnNxNCHF3ZpIvkaKHeK6QjiDam
         fLBT0KigAptzBpgPSVVEFdmR5UsXB+GAOEGLDrqaR6mhXuctsZbnnfdLJV41lfiDutha
         Q2wxxoLoHchncsCbCLNFdfTjDSezZGMOZ22e1xl2KQPZMzo0kVPw6gh5ECEmutBj6O2L
         YLvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="WceCxk/9";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qtQBSVIt8KWqyYTdtdtwWx/SnT2zDOyeUAgXcqej4JQ=;
        b=DEhohdQPElnJ8xSmdJ6I7vUznbNyVU7GRLe7jtEZ5viFClwetI/5G6JJWhPJakRQt2
         atlkahl4XnAnH7L1ZHEDhebiE06RZXDSPPyhNJ6aa7EFUIfyPFPUBZWmkyXWL09T540t
         fJGx5CfbiKN3XFA46t8+gvstaC+Xi94hqXmpS+EHyluJNQ5183fmoGmcBz6Wae5VU8+f
         JfLs2CqXtmEQtqwZyR1h8zQjGPk65AhCpufmHM72gqUFkKkMbvfp8dIP5CzM6icDRF+H
         QaAXl7lGBxg3MzJxq/if6kSZr95giw6I+y3pMCmrWlY2rHxv+li6faeAfnKgvGhPaEhW
         quHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qtQBSVIt8KWqyYTdtdtwWx/SnT2zDOyeUAgXcqej4JQ=;
        b=NpekjZW/web5ETZb1fg0LOWSTTTtNhYV4DsLExRQCIjwp7zYfXVGyad4WtxHSZ70K4
         TZOqWXLkMFRBkIZyz/BxhGpK1kRYBrZAZTcuJ+aZjl6Z0/tJb9W2w+l8zgGAl47bed3e
         p+9Y7DNU3ZRj+g37xr5wZmYAT8l0GwjBc2sKv4KlQ1Sa7mBt1rYEyxG1ZuwGItYFSh4n
         3sxLOyjEo5cisYsDg43lkqcb1UCeALGLTHPwKyZu4ReWh/Zyyd1U1lNC6h/XtRJKw8zL
         eBieLSG4eR81glF3+nTM+IvKx5nS9x2k2yShkUMBIDu1sG5o6QczUw1UQbwrF+QtNAtS
         sf4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jZzFNSNFkaK3IlBiLPh3uCxhfXFicsuMST+Xmb/juKt6VZGDT
	TB+6xV76CtewTLC5FI2TXwg=
X-Google-Smtp-Source: ABdhPJzYxLWB4gi2Xh+4fg/hYEyru60EzNkSZRVxAOO0F+WzQezURb4LUzSfTZ3jtc1YLT+4PoUDyg==
X-Received: by 2002:a05:6830:611:: with SMTP id w17mr9481530oti.225.1621621920907;
        Fri, 21 May 2021 11:32:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1d6e:: with SMTP id l14ls2322089oti.10.gmail; Fri,
 21 May 2021 11:32:00 -0700 (PDT)
X-Received: by 2002:a9d:4b9c:: with SMTP id k28mr9794573otf.183.1621621920588;
        Fri, 21 May 2021 11:32:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621621920; cv=none;
        d=google.com; s=arc-20160816;
        b=p8oz69+YwAPBvfVLYpt+eCRqNLx02MG3gkfR9LQSSp8En0ZVlqQJtkM1xEFHDQGBT8
         URjZMzZwqBozlRHGMC/ghKRVyscjg1/pu90T/LI6OLyHN/zWxNj3xRE8TniokWVXuY14
         Yd3QZ2yNQiLaAkR26b2y+YrHxaMqROt82S8UKdZXMqAsbxfuTEUlho0+wqdm9AiGmcUj
         b+bmisYmQMaAHCCjCKL1N6KVn2tDqvA+5BTZNcr2zm8WeKxkD9wywfhiy4vJTugkBg8k
         ZAARsw8iQ0vV7mztuWr3alQoICvNfm1u6wdgT9fo/gAOzxDaqgd8Ik7AuIqeSbyDIcSa
         Z7ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hr9ds5H/YWWjHgfy6+GSSCTpmIBu87QYMBOm6WDsaN8=;
        b=NyQvfRQjqv9ZGbjW8MQQuELm+kqCKe1vb0hVZQ9YrfmEhNECo5MR78y8RD07+AAYsw
         Qke3STgs+z4XU2GbLciZFec9PtyTeVY7hRrpbt6/9c8YLR48Tk2jfMJjj9OP7b5rJjbS
         Is0ORz5yb9P3EJYEJbCQz1qhCSEZivTGDQVwzF7oVQS2WbV1HKlWnNpFKrDGquaKa94n
         tImq+T8X4BK6vjKs6VK47rZXK5PUUKtX1/gXyAy8EnYwv8TMNBL3ltdTYUJWFgxU0qIC
         yqFnytEFKgHe0KtszJHwoOZtIpGsO20TFb2/Gmy6n8GPs2I+og1FwhJFBNoZF+eZeovo
         KsTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="WceCxk/9";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k4si868741oot.1.2021.05.21.11.32.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 May 2021 11:32:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id ACD8961163;
	Fri, 21 May 2021 18:31:57 +0000 (UTC)
Date: Fri, 21 May 2021 11:31:54 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: x86@kernel.org, Sami Tolvanen <samitolvanen@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	clang-built-linux@googlegroups.com,
	Anthony Ruhier <aruhier@mailbox.org>, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org, "H. Peter Anvin" <hpa@zytor.com>
Subject: Re: [PATCH] x86: Fix location of '-plugin-opt=' flags
Message-ID: <YKf8mvg4diHLSJDt@archlinux-ax161>
References: <20210518190106.60935-1-nathan@kernel.org>
 <162161994470.2028902.331062863146834934.b4-ty@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <162161994470.2028902.331062863146834934.b4-ty@chromium.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="WceCxk/9";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, May 21, 2021 at 10:59:10AM -0700, Kees Cook wrote:
> On Tue, 18 May 2021 12:01:06 -0700, Nathan Chancellor wrote:
> > Commit b33fff07e3e3 ("x86, build: allow LTO to be selected") added a
> > couple of '-plugin-opt=' flags to KBUILD_LDFLAGS because the code model
> > and stack alignment are not stored in LLVM bitcode. However, these flags
> > were added to KBUILD_LDFLAGS prior to the emulation flag assignment,
> > which uses ':=', so they were overwritten and never added to $(LD)
> > invocations. The absence of these flags caused misalignment issues in
> > the AMDGPU driver when compiling with CONFIG_LTO_CLANG, resulting in
> > general protection faults.
> > 
> > [...]
> 
> (I've slightly adjusted the title.)
> 
> Applied to for-next/clang/features, thanks!
> 
> [1/1] x86: lto: Fix location of '-plugin-opt=' flags
>       https://git.kernel.org/kees/c/5d6c8592ee5f
> 

Ingo picked this up in x86/urgent so you should not need to carry it.

https://git.kernel.org/tip/0024430e920f2900654ad83cd081cf52e02a3ef5

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YKf8mvg4diHLSJDt%40archlinux-ax161.
