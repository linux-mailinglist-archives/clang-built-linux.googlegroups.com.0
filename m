Return-Path: <clang-built-linux+bncBCR5PSMFZYORBDWQ2X2AKGQE3O5YBXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id D99BE1A74E6
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 09:36:48 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id a67sf11007128qke.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 00:36:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586849807; cv=pass;
        d=google.com; s=arc-20160816;
        b=znc7HPgotmjnHq72tOHinEW2qopXgvmqlk628YdmLrvkHKOoTi31Vk4sGu0zzrZnwv
         kdvIoE7hdcXjX6pwvH6Pbc3EF8AsMmLUHmp3CSrm8JV4R7jmHzz0+Ukr/pV2hMQgx2oK
         5FXtKrxdI2IFv7fvogqh+gdk54A8/jPotacGIVxLxSh6zl8ukiQXnXmIA0yUmhKBMXpg
         EK2RVXpXBoxElIhUOAclpR5E1c6xBT8KWWheCqcJJFuqESPwDI++IoMvshoeUrA0oTX1
         USG1EoW+vOYirQe5IcUQ8yb0qdn2wFehBB0NUtXod9B7GsJiD3mccXOKifmpWSPofbBj
         MIkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=Tm6RHQRuMvHcu9ZsUMeSjmr+9omfDhYJyUQM6Dynri8=;
        b=BWmZfm7pqrR9ZY+M0RE/W1ctrcj4BTdnq8ysfpF2gQjAfcrMgbpp6CuMpWXNjbzovy
         8BEAwSuUW4dWbtBn4TlcydriBJqVHsQ9RafvdOLCssqwShLE8c8toEw8bqHdULNOUImT
         h/TnvF01sTpQRJAGa/y7h0s1nRtkGqTHUFgFbRJBnPGz2XOn/cn9kKoc+GlExssRuvUk
         kMVBgUjvuyA0IYD1/JmkUUgnhQwVQ+KffbvQHPfI/Fjh7EcWrx9q8hoyweu/A29r4Fd4
         tJ45KVcMkTu2UEwCDrIoRJ1UuYkCVlHWc/0c0ojqzjXiXntaxbvixBeTTGXGOfC8WBld
         zYaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=rpaI2zP2;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tm6RHQRuMvHcu9ZsUMeSjmr+9omfDhYJyUQM6Dynri8=;
        b=H5jOhelgRlo1V+d9vTOyD0lvShAtBLNRv4V2zn16bwgBK0+yB3qEZ6lv7YPaUvMdt+
         nGSbL0tQJDe+gQG3aZziM2jzrICR8hXUsGDYP+S+L4s2+Dy3i7uCu7G1XD6Gre/DKB44
         3+96X2t5vQIwi6XOrReWnMYdvlidCmHAqL02vt/DCz5MJXd5YxBU8SWXD1pl6YWh9O6f
         svjyaHzeIYuBhNW7E3d2PxdmFbfRK2eYUhX+k6c1wIcn6VxqOT8hrKHq/abXITL45Jl2
         WaamcldTvXrXIJYgtoNZzDX73obhNSXPaYioCdI8lxS4UkoVX7NfHJqoxY0+xMcPqx7J
         15LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tm6RHQRuMvHcu9ZsUMeSjmr+9omfDhYJyUQM6Dynri8=;
        b=b8skn3BP2cJ15xdN7xXY+Bt0/VEwyj/UFQ+8oR3dRUNxyjdVMl3tayNiNoMElwyI60
         UgDuSZGHBimqwYzF9KjKA/bAtTUBllHn7gvgy5Yum5cbNKReWQ+06cuoF7rZoMK67qd6
         EWipNU0ziCRJXeO58tbHpEuDYrD9a4/Xsoqnw1Vusm/VBhlKbs7lrelsT6WP3lwy0wXD
         Px6Li9GlHA/7P1Nit2vThhxh4PZUIxUnJkPbNmBQj7/ZxjYQKLtoIyvqm0IsZg73SSxk
         2RcmaVCWl5K+L56SLDSG9vmFUw0pT3N04Y+Uh6aKIKO8CHAQ9o+7e3wKkKaGAjpBeFop
         QKaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubzoBLmsvi8swvk6S/it2nlo2mqQShfvm5L+W3AqHBG8ridCq8Y
	RdAQmxrdnzWuJ4L91h2V+4c=
X-Google-Smtp-Source: APiQypLQfPOl1exldgSipfBJTHqS+b9S/hrLidCMKawdieyDhtfJ5tFqkt+lOYnGl69TBeie17CFiA==
X-Received: by 2002:a37:84c7:: with SMTP id g190mr19585009qkd.335.1586849806817;
        Tue, 14 Apr 2020 00:36:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:67c7:: with SMTP id r7ls1277922qtp.8.gmail; Tue, 14 Apr
 2020 00:36:46 -0700 (PDT)
X-Received: by 2002:ac8:66c6:: with SMTP id m6mr15055995qtp.25.1586849806289;
        Tue, 14 Apr 2020 00:36:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586849806; cv=none;
        d=google.com; s=arc-20160816;
        b=RB89cuctY0O0zx+87uUwldEE4I6Jfjg02RY5YXwO/EAmG3hwKu48Kvj3OUfrJjTZSc
         thC0sa10YHuNxTO9ks6T5X54u9kRpaBlnDhAvzI4xjgvpiymNsqY5LfgXKS7MgK9i7zJ
         5V9/IhKpaCcFaGddNoxmc8Ln2Mu8a4JmFNT5krTOPBO0+Z/NaioDCM9uPftwyDJV/5da
         fe8ntcb+uMSqv8L4PIDDszbKVQ8DDWLSXyehxhFAQ5uxnjJweLjkcddv2jTuX9qjyJHT
         +HcVMi1WdhQll3i1zAdjiQT0YQ/QHBtRPPuBXrdHVfbPQY43aVBH4F73XWB/+VMTX7+5
         AcqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=E6UJPcTz/tVP37tS77PKtG9/zYdUSK0VQvF6Hi0BWQs=;
        b=UsNPbG+8n865X9GbugwF3ctEoej2Bv8FPAnN8pe468JQPEJJfoz1xAyAhyzitF/Ocp
         dQ4Ld9CrRoG/ZUsSXr/qDv/U4hTY+qr7uaogXJp0opsN/hMUIGur+9h5wkjWG5z/n9MM
         P+O9ca+yW+zxU4O87CQfUQDh/GUxtFtAPvDaYTZrCtusR3U8JCRTGPDUupxzrE18eeGt
         UboxVgzgyX+MY5tDJgOwQriWpwzTCpO+FFZ+7dgvY2QqIHe+WlsLB7dzwWICPBVu1ucX
         0IKrvCpnBJfZKaRmqsvujQq26aP9BTDdxtudfZ0LqkRCd7aDRScRdKNfEGmt97LOP9ux
         ioWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=rpaI2zP2;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id l23si464390qkl.0.2020.04.14.00.36.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 00:36:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 491ckH0Vbkz9sSG;
	Tue, 14 Apr 2020 17:36:39 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>, Herbert Xu <herbert@gondor.apana.org.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, linux-crypto@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>, kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH] lib/mpi: Fix building for powerpc with clang
In-Reply-To: <20200413195041.24064-1-natechancellor@gmail.com>
References: <20200413195041.24064-1-natechancellor@gmail.com>
Date: Tue, 14 Apr 2020 17:36:52 +1000
Message-ID: <87blnujz6z.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=rpaI2zP2;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nathan Chancellor <natechancellor@gmail.com> writes:
> 0day reports over and over on an powerpc randconfig with clang:
>
> lib/mpi/generic_mpih-mul1.c:37:13: error: invalid use of a cast in a
> inline asm context requiring an l-value: remove the cast or build with
> -fheinous-gnu-extensions
>
> Remove the superfluous casts, which have been done previously for x86
> and arm32 in commit dea632cadd12 ("lib/mpi: fix build with clang") and
> commit 7b7c1df2883d ("lib/mpi/longlong.h: fix building with 32-bit
> x86").
>
> Reported-by: kbuild test robot <lkp@intel.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/991
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>
> Herbet seems to take lib/mpi patches but there does not seem to be a
> formal maintainer so Michael could take it since it is just a powerpc
> thing.

Oh you mean it's inside:

#if (defined(_ARCH_PPC) || defined(_IBMR2)) && W_TYPE_SIZE == 32


I don't mind taking it with Herbet's ack, or he could just merge it.

cheers


>
>  lib/mpi/longlong.h | 34 +++++++++++++++++-----------------
>  1 file changed, 17 insertions(+), 17 deletions(-)
>
> diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
> index 2dceaca27489..891e1c3549c4 100644
> --- a/lib/mpi/longlong.h
> +++ b/lib/mpi/longlong.h
> @@ -722,22 +722,22 @@ do {									\
>  do { \
>  	if (__builtin_constant_p(bh) && (bh) == 0) \
>  		__asm__ ("{a%I4|add%I4c} %1,%3,%4\n\t{aze|addze} %0,%2" \
> -		: "=r" ((USItype)(sh)), \
> -		"=&r" ((USItype)(sl)) \
> +		: "=r" (sh), \
> +		"=&r" (sl) \
>  		: "%r" ((USItype)(ah)), \
>  		"%r" ((USItype)(al)), \
>  		"rI" ((USItype)(bl))); \
>  	else if (__builtin_constant_p(bh) && (bh) == ~(USItype) 0) \
>  		__asm__ ("{a%I4|add%I4c} %1,%3,%4\n\t{ame|addme} %0,%2" \
> -		: "=r" ((USItype)(sh)), \
> -		"=&r" ((USItype)(sl)) \
> +		: "=r" (sh), \
> +		"=&r" (sl) \
>  		: "%r" ((USItype)(ah)), \
>  		"%r" ((USItype)(al)), \
>  		"rI" ((USItype)(bl))); \
>  	else \
>  		__asm__ ("{a%I5|add%I5c} %1,%4,%5\n\t{ae|adde} %0,%2,%3" \
> -		: "=r" ((USItype)(sh)), \
> -		"=&r" ((USItype)(sl)) \
> +		: "=r" (sh), \
> +		"=&r" (sl) \
>  		: "%r" ((USItype)(ah)), \
>  		"r" ((USItype)(bh)), \
>  		"%r" ((USItype)(al)), \
> @@ -747,36 +747,36 @@ do { \
>  do { \
>  	if (__builtin_constant_p(ah) && (ah) == 0) \
>  		__asm__ ("{sf%I3|subf%I3c} %1,%4,%3\n\t{sfze|subfze} %0,%2" \
> -		: "=r" ((USItype)(sh)), \
> -		"=&r" ((USItype)(sl)) \
> +		: "=r" (sh), \
> +		"=&r" (sl) \
>  		: "r" ((USItype)(bh)), \
>  		"rI" ((USItype)(al)), \
>  		"r" ((USItype)(bl))); \
>  	else if (__builtin_constant_p(ah) && (ah) == ~(USItype) 0) \
>  		__asm__ ("{sf%I3|subf%I3c} %1,%4,%3\n\t{sfme|subfme} %0,%2" \
> -		: "=r" ((USItype)(sh)), \
> -		"=&r" ((USItype)(sl)) \
> +		: "=r" (sh), \
> +		"=&r" (sl) \
>  		: "r" ((USItype)(bh)), \
>  		"rI" ((USItype)(al)), \
>  		"r" ((USItype)(bl))); \
>  	else if (__builtin_constant_p(bh) && (bh) == 0) \
>  		__asm__ ("{sf%I3|subf%I3c} %1,%4,%3\n\t{ame|addme} %0,%2" \
> -		: "=r" ((USItype)(sh)), \
> -		"=&r" ((USItype)(sl)) \
> +		: "=r" (sh), \
> +		"=&r" (sl) \
>  		: "r" ((USItype)(ah)), \
>  		"rI" ((USItype)(al)), \
>  		"r" ((USItype)(bl))); \
>  	else if (__builtin_constant_p(bh) && (bh) == ~(USItype) 0) \
>  		__asm__ ("{sf%I3|subf%I3c} %1,%4,%3\n\t{aze|addze} %0,%2" \
> -		: "=r" ((USItype)(sh)), \
> -		"=&r" ((USItype)(sl)) \
> +		: "=r" (sh), \
> +		"=&r" (sl) \
>  		: "r" ((USItype)(ah)), \
>  		"rI" ((USItype)(al)), \
>  		"r" ((USItype)(bl))); \
>  	else \
>  		__asm__ ("{sf%I4|subf%I4c} %1,%5,%4\n\t{sfe|subfe} %0,%3,%2" \
> -		: "=r" ((USItype)(sh)), \
> -		"=&r" ((USItype)(sl)) \
> +		: "=r" (sh), \
> +		"=&r" (sl) \
>  		: "r" ((USItype)(ah)), \
>  		"r" ((USItype)(bh)), \
>  		"rI" ((USItype)(al)), \
> @@ -787,7 +787,7 @@ do { \
>  do { \
>  	USItype __m0 = (m0), __m1 = (m1); \
>  	__asm__ ("mulhwu %0,%1,%2" \
> -	: "=r" ((USItype) ph) \
> +	: "=r" (ph) \
>  	: "%r" (__m0), \
>  	"r" (__m1)); \
>  	(pl) = __m0 * __m1; \
>
> base-commit: 8f3d9f354286745c751374f5f1fcafee6b3f3136
> -- 
> 2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87blnujz6z.fsf%40mpe.ellerman.id.au.
