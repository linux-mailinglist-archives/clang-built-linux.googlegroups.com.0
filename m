Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNUR3KAQMGQEGJUKIWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEBD3242EE
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 18:11:21 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id w1sf2159380ilo.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 09:11:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614186680; cv=pass;
        d=google.com; s=arc-20160816;
        b=OpGUQ/Qgz4L+p9rIxKZSe6NJqbM9EdmtdHjWUDMXctg32lqkiVvDlKK0aAPmnx700e
         vSPfEIXkc4kV56E0/jQUHch7n507kFGmrRFDK59aejc5UmYK/9vfqErkunEmME0mp8Vd
         KxII6zDU4q+hyGqW5ZNaR4LHPGPPy5NU5dXgQjgdmGT+sz8DLAr+gQ2eG7hxOGEU4S0o
         P6HxV4ntgxYiHoZQrxnb3MK7jKu87gfAM7ddZY+52lds7m55bZ9wWVtbz7UC3BnEWUs7
         6VPmaKKMAxGfE5jT92gnchvuQHbPYDALKNpwmxycqx7l5ALFtOcJ7oQG+a/tBV6t2hWn
         N28w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Mt6IfQSE9nsCdyXDPcrrxJsvLdGL4rfuXKKczWOtaSg=;
        b=RgUHnD7Sz+eJq2wHgaurUBKWiSpk1F4fHfvVN7RhXJG07mPt8bLzOut4nRf+MBh06M
         TNQ0EGWJPVCC4zuSAwpSaVWF3wX99+7T84VJLGoERxQJQgUdM+EzXuorQZMj5stF5Tke
         +kbl/qgxCqlRv1YEU1qhkeeCPArr0Qg/akTMeja9OWF1uqCPpUKBe/5CuiJ6VGBOubhl
         5NZbMokTt++vUE8c9en7cPVy/XY9Do30JwbgVDTV6W6KhzoVKE0+m2JSTVabm0frULMu
         deM6VerjXMgHRm8/coKkE8MfG9J/hFDPW4YKJkQ7aXMjhPkQH5aX1e6/+ennVohJSu+H
         3Vlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i11fhSKi;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Mt6IfQSE9nsCdyXDPcrrxJsvLdGL4rfuXKKczWOtaSg=;
        b=VkUhkuGMbMPFRVHIERc7GpSfAoGZ+H54hkW5C5lPex3fAS+OW9USzwb/rZwL8Am83f
         1BMYGvByJggU5J0jz6oOQqxK7szdTyHjcm6XDA/KAbGP5aMyR0C7MG1FfVE1POVKEwOS
         KYzlXu2RQRhNOynuIjvkhMlRKf6SSqgDTcvL/mzY/DFZc+XLfYkTtjqOAlJDPwC3FEaq
         Iouh8P/LItnpad34wxbhEjgT2s6S5yfD1SpxSvGYAL1udh9zzn6zxGBWl1u1aoxtOMBQ
         HF/qOKBZKN4uq8EXrvobH98SNWOrUA9oefE+ApCutiHy3rEB+4wu1vZpzvm8S9qJXsrc
         L0LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Mt6IfQSE9nsCdyXDPcrrxJsvLdGL4rfuXKKczWOtaSg=;
        b=VS6+PH+lJ9t7vSpI0x/VtXmyUdomllFs2I98H1em3w0N5rXvaN8jffUkaQmy9czTSm
         HmOvlW4T06GSpj/NC21VkPZptoVPfokITc8yzbgdP7sps4EQ1aQxtGZnAIH8b1hUA6XC
         wNtMEQTFQ8d7QTXzWnocgNaCxJyLP23UX1CpZZ79fmdXDQHAvFqnIIMi1dytldpXzEbE
         H6SwZeQfQbfE8q9xQEycjY3800DBQU1TgE5RBYJ+M/BDFDYegV62TsQ1onclU7YdMXmR
         iMBfhfrfJhqLsKuKlEL4PCMugHnEfwT0/739utX5uC6Kj7JQnoGoZOl5oymwX2FMcwi6
         BpvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531O83nlWALz36c1BcACYqq2s9G9b4oJl8ADwQwijo/vUFYdpNtu
	DdJnPMCrEkpS+/HIZ6PUHGs=
X-Google-Smtp-Source: ABdhPJyrfNgJ6Q3f9aEtsUaiwLCSXLFmBilKsCZg8qWFdlgNM9UTd5PHj5NbM8F2zyBzI4XSISL5VQ==
X-Received: by 2002:a05:6602:1799:: with SMTP id y25mr24206909iox.55.1614186678636;
        Wed, 24 Feb 2021 09:11:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:13c5:: with SMTP id i5ls401975jaj.1.gmail; Wed, 24
 Feb 2021 09:11:18 -0800 (PST)
X-Received: by 2002:a02:b159:: with SMTP id s25mr33403387jah.41.1614186678312;
        Wed, 24 Feb 2021 09:11:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614186678; cv=none;
        d=google.com; s=arc-20160816;
        b=owNYXP0QgizJou3tZWL4BAwUmdP0Se9/awY/M1Gpx2CTOjUtBuV8cHX3CB+Eh21uLI
         e1RyOU0Q9kLtjRzLcJnTAe1QTG8K7sujYLYmqRzxKp1wMXdabZLN0etk5bHwditGgsoM
         yzVqTCd5LTHj583ZPbm6/sJO+BshSwLZAWArV1fVwRJDnJoIa2ujxW8FyJq7AkLoKZw+
         xD+o8bIaxas1uWF5lKAjWcayuqv59ejK/R8iETSIxWMvkHt82wsYgc/I7XTdetbkmtwn
         Kn+nklsVVmqxDVsHbB+m8rdZU2RNnFU65MnXktWPFu4iI/wCvsfjPIOoOhr5IK7ieJc4
         nhYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7lM3m8RgjRTMH9q1ysXjwY/Bv8842NdeK12raxDKfzY=;
        b=pFtiWWR0weKFypykxbfCLP5iJ4GDoz0xI7DZV01TnEHBZQC50+Fo2kMjuwzAvoPbCe
         O9IkzMRWlm8dmtbTgu53R2Uzw78gs9SnQW9Ng513cZsWDlpr7fTgjFVChpnvV8PSm3Ya
         rZ/SMnIHv8P1wl71GbSWj5d2cLt1PuqP3R8clEda6wFpGs3PDDNf/MMvadB0Z0nHUWEl
         gblYwmVRJBJmHG3tRxXcP2f05xxOE4hwq63vzpaeY5qZqQsjbUeQlIElMm8wv/Q0mSiL
         0vGUcmSIDh9ck5iLJOPenmAeIJTMIIijRjdxV8TH95TtEPNE8mQJGjBbuuBdf/6/LPEq
         Bydg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i11fhSKi;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g10si268616ioo.0.2021.02.24.09.11.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2021 09:11:18 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6EA5364F04;
	Wed, 24 Feb 2021 17:11:16 +0000 (UTC)
Date: Wed, 24 Feb 2021 10:11:14 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>
Cc: ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, kafai@fb.com,
	songliubraving@fb.com, yhs@fb.com, john.fastabend@gmail.com,
	kpsingh@kernel.org, natechancellor@gmail.com,
	ndesaulniers@google.com, masahiroy@kernel.org,
	akpm@linux-foundation.org, valentin.schneider@arm.com,
	terrelln@fb.com, qperret@google.com, hannes@cmpxchg.org,
	keescook@chromium.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com, rdunlap@infradead.org
Subject: Re: [PATCH] init: Kconfig: Fix a spelling compier to compiler in the
 file init/Kconfig
Message-ID: <20210224171114.GA38192@24bbad8f3778>
References: <20210224081409.824278-1-unixbhaskar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210224081409.824278-1-unixbhaskar@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=i11fhSKi;       spf=pass
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

On Wed, Feb 24, 2021 at 01:44:09PM +0530, Bhaskar Chowdhury wrote:
> 
> s/compier/compiler/
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

I agree with Randy about the awkward wording of the title.

I think "init/Kconfig: Fix a typo in CC_VERSION_TEXT help text" would be
succinct and descriptive.

With that change:

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  init/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/init/Kconfig b/init/Kconfig
> index b77c60f8b963..739c3425777b 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -19,7 +19,7 @@ config CC_VERSION_TEXT
>  	    CC_VERSION_TEXT so it is recorded in include/config/auto.conf.cmd.
>  	    When the compiler is updated, Kconfig will be invoked.
> 
> -	  - Ensure full rebuild when the compier is updated
> +	  - Ensure full rebuild when the compiler is updated
>  	    include/linux/kconfig.h contains this option in the comment line so
>  	    fixdep adds include/config/cc/version/text.h into the auto-generated
>  	    dependency. When the compiler is updated, syncconfig will touch it
> --
> 2.30.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210224171114.GA38192%4024bbad8f3778.
