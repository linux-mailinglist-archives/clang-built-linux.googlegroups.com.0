Return-Path: <clang-built-linux+bncBCIO53XE7YHBBC6QQ6AAMGQEB26DKZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 362162F850D
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:07:56 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id f190sf4860402oib.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 11:07:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610737675; cv=pass;
        d=google.com; s=arc-20160816;
        b=YLSqiuI/wYKkrJj8lP7mNPxNeUYHDO4GWxvSKdc32mMnEprV9sJZpm7R5Ry4Ye7/vq
         P8PxrvbC9BwUvdY/Wb8N6o5LIIKF6vNnpdBIaoIM2aid4vtYJaj65eVXy9TeQdRhRqdg
         uwPtGuN+XH6AU4HrakIg67B9uOEdwbkpzu8hUgx2lWuyDmq/OrAXhfhq2HQ5pEyqjld4
         EQsbYt5SOc9vOZfRVYm1h32RwlOmUUxOi68sds8kJp1ljmkn3ncYfG9E25Iyb73osoq8
         T+u9dv7cXzq6i9YlT2aiXEbzI0C67xadzSvo818B4KsAm5gfrvBDvHavllENyfq+iumI
         A+dA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=l1IsOBsXOApXEQEbJEpoQqvPmCwWtf4I/MQDBcPE2FE=;
        b=Nnb00GDC/nBGdJRunN4YAZcO7mUTZz8/xSlw/39lyU8avoLpa73WykcBYrqKb1uLYp
         xCe3ml5ezcI3IbyVtkJ575IytWzBNpywfjDOfFXKjmolGvZjPVM/kY6nE1SZ0it6LuDo
         IEsfbNhWeKgHqhvmrLWNGC0nlAcubsNC/p8N5XgjEpO3Av9T+5+8MfHFeMyGPeU3Ecfd
         W/QYfyz0hvYTfcsSf5hB8toXCRmoA4cRUqC7kHRj42fBrb7d0jGvFIj7GkFod8WNIsnx
         r+LcYBAyZXu105WbMmAOsAFokyYrQxloENgLa/QWmPES0Fl6rxRHlm+CfDP/X0NFmI7S
         e7+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h91vSr45;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l1IsOBsXOApXEQEbJEpoQqvPmCwWtf4I/MQDBcPE2FE=;
        b=tIQW//VZX/gjBzJooMi1H6//vJrWwgsMGKrFQ+1BP8zKwpPTjhTQkaIqhwR2mLSGKf
         RpsobbqDffZOBZDKU6v070oAmBy3EQk6rXiBU79agqx4A+o0Dme81AszQxFy9rUtVNZX
         2SVtFu0S3r8gBRs/zMyk6ldjeRfZL/mdy5i9rwH0YcKmS/zTsOljgh8oJH3vk41yqc2X
         4K87Gzy4EVgleZPGhr/9ybwM7a+1SwL632ny/ciRw5NQta5EqGiONMWQLQb0+Vt44e5Q
         W/kQl6ClGhFWwoSQcGVwcl2Pa+1v0gtLF5LuOamq2VhI2k6GXMFJ1LFg9Qw2vRDGibL7
         g4bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l1IsOBsXOApXEQEbJEpoQqvPmCwWtf4I/MQDBcPE2FE=;
        b=mdyTIKksy/Yqw5qfjoOwQDB/hzFlHSVLsrjPB+bdMPJD122WVYV2gA8Jl9gTsSSKlK
         Imz/8CHOd2K4S7JWOf9T0o0KKoH4YUn/D8PdAUU8P/Hg08J+qQWX9sMQydRvtm5Goi54
         m4EyS9AQfqNJ9dZIWeI63OunPoYXEIL8aKqjqKtcwEhjy01k4BTx5KAtREprcMu4MUsP
         Kl9sqRLWRakgQXlgXWbibB87tQsR8a3rrkb9793Fnqa3MwKVrQn08J9sAL6K/hte9ipj
         EwZyU9qfzQjIBmvRSHAKS/HIdh5Q9XY0FYguu5cZ8DmwIydcxcwZqzhf1bEl7zifdU1j
         15Vg==
X-Gm-Message-State: AOAM533sX92XVUApdwJpox7SUgCvGS/ld+ykiiRAllbAhR7eOdTxfAku
	mRihFPM4tEBwS2vLIPNOcNk=
X-Google-Smtp-Source: ABdhPJxKZFPzOuu1heqACV5MpkYhWg5cTZXx/ABVLP4WnyQk+ej3AZLbz6IvmWjzXicEmIcT2/m4JA==
X-Received: by 2002:a05:6830:4b5:: with SMTP id l21mr9661607otd.321.1610737675204;
        Fri, 15 Jan 2021 11:07:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a843:: with SMTP id r64ls2410945oie.2.gmail; Fri, 15 Jan
 2021 11:07:54 -0800 (PST)
X-Received: by 2002:aca:3c8a:: with SMTP id j132mr6549195oia.73.1610737674740;
        Fri, 15 Jan 2021 11:07:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610737674; cv=none;
        d=google.com; s=arc-20160816;
        b=Et3+jukatSxMj8IDAp3AltGKWVUN/FCQgydzOQiQrbRtgpUqgZqLnEDBxlZcWrOKCH
         oz+JjU+YgxD0EGXb++vequMMJl9mY2kWRMuQaKtamjc1KBhqS9/0zmiqPkHhmiTrtz1x
         oZO3yzqGzRfyaFckDN7IpufyrL+8O5a1Zq5q6mTgrWRwKHkFj34ghVBAX1klFmFu4aj4
         ruJiZREA//hRivpE+zAj22IXQO8jWZ3ah/HwxEOMhWWjH03ARPiUt06yptkW59870KnP
         /RUx62C9uhpiwyWD7EdyMbdBOJcCjEczm9xzQYvtQ9Q9zI9yClaOhUC+lO/yg6UByoK0
         lfzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=6VFAEqW7kc3cIpTfEOGsqZWNF/6PRxbAffbJEVT5A/E=;
        b=wdd+1MxuHlO5Go/gPuJxEtF4VhOarkihU/yGU0kz2GF372FGCLjEHC7LBk6Z8CLM9h
         K8kwypLtvPKNG9t2DmjatZzvLN6qSKnaNEuqSf1Z4wkEH7mmn4cT0W13TS2JT1ZO7RDE
         SQdZxv112xmnn4ozm4y/mbF0qokDv9PYy4FUJygK2pHxk+pujluwaMyBOWz5tvIWFHfZ
         2JqkjO6O24ue4X5EpgQubweOIq/+lyrW09SGUJzBrcCgXAsV9Mjt9BZOh3La+753ocCP
         upHGS+0YV0xOPzJnrdw9RdLw7CH4iy/zThoOHeQBgB8t/kFu9SWITYouE5lQ0wGLa1Al
         byKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h91vSr45;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com. [2607:f8b0:4864:20::82c])
        by gmr-mx.google.com with ESMTPS id c18si647056oib.5.2021.01.15.11.07.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 11:07:54 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) client-ip=2607:f8b0:4864:20::82c;
Received: by mail-qt1-x82c.google.com with SMTP id c14so6820794qtn.0
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 11:07:54 -0800 (PST)
X-Received: by 2002:ac8:6f41:: with SMTP id n1mr13036465qtv.170.1610737674080;
        Fri, 15 Jan 2021 11:07:54 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id k42sm5469974qtk.17.2021.01.15.11.07.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 11:07:53 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 15 Jan 2021 14:07:51 -0500
To: Arnd Bergmann <arnd@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>, linux-efi@vger.kernel.org,
	platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
References: <20210107223424.4135538-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107223424.4135538-1-arnd@kernel.org>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=h91vSr45;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::82c
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

On Thu, Jan 07, 2021 at 11:34:15PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When 5-level page tables are enabled, clang triggers a BUILD_BUG_ON():
> 
> x86_64-linux-ld: arch/x86/platform/efi/efi_64.o: in function `efi_sync_low_kernel_mappings':
> efi_64.c:(.text+0x22c): undefined reference to `__compiletime_assert_354'
> 
> Use the same method as in commit c65e774fb3f6 ("x86/mm: Make PGDIR_SHIFT
> and PTRS_PER_P4D variable") and change it to MAYBE_BUILD_BUG_ON(),
> so it only triggers for constant input.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/256
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/x86/platform/efi/efi_64.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
> index e1e8d4e3a213..62bb1616b4a5 100644
> --- a/arch/x86/platform/efi/efi_64.c
> +++ b/arch/x86/platform/efi/efi_64.c
> @@ -137,8 +137,8 @@ void efi_sync_low_kernel_mappings(void)
>  	 * As with PGDs, we share all P4D entries apart from the one entry
>  	 * that covers the EFI runtime mapping space.
>  	 */
> -	BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> -	BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> +	MAYBE_BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> +	MAYBE_BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
>  
>  	pgd_efi = efi_pgd + pgd_index(EFI_VA_END);
>  	pgd_k = pgd_offset_k(EFI_VA_END);
> -- 
> 2.29.2
> 

I think this needs more explanation as to why clang is triggering this.
The issue mentions clang not inline p4d_index(), and I guess not
performing inter-procedural analysis either?

For the second assertion there, everything is always constant AFAICT:
EFI_VA_START, EFI_VA_END and P4D_MASK are all constants regardless of
CONFIG_5LEVEL.

For the first assertion, it isn't technically constant, but if
p4d_index() gets inlined, the compiler should be able to see that the
two are always equal, even though ptrs_per_p4d is not constant:
	EFI_VA_END >> 39 == MODULES_END >> 39
so the masking with ptrs_per_p4d-1 doesn't matter for the comparison.

As a matter of fact, it seems like the four assertions could be combined
into:
	BUILD_BUG_ON((EFI_VA_END & P4D_MASK) != (MODULES_END & P4D_MASK));
	BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
instead of separately asserting they're the same PGD entry and the same
P4D entry.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAHoB4ODvxSqNhsq%40rani.riverdale.lan.
