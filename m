Return-Path: <clang-built-linux+bncBDTY5EWUQMEBB77L4WBQMGQETJDYQMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5D1361ECA
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:33:21 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id a17-20020a4ab7910000b02901e59020d520sf2374873oop.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 04:33:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618572800; cv=pass;
        d=google.com; s=arc-20160816;
        b=f6V4Gr7WZlL/4I+UZ9GofCAEmWc2wKyw/3DCDZyFs9vvcXUqk3hiPHPsTWSpz4yHBn
         kRNBIy0j39azvHbpqstK16+iiAnv+qZW3cyOyV/Aq9ruXszH5kmtfIHYSf8pcZrsbl59
         1nYpgC9PUpbZgESf14CkEsJjD+ozHuS87LKJl0MrX8bOsOUEdS6UpDCukKqOWE2InUaR
         XnShTLgAJ6xqIlFipq0NftgLFzX01YVtZBriAe1yDwb7rVLUvxp5uOcxM5MjqOOFDYOO
         w482t38ZHyoXCTZ6hbsy4qv11a7gyZqNCBZY4UJiXHv45o2rCPG7PzB06bgKKWrWoEMM
         EU4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=cYE/Zh6xj25MnQ1tNBVmEdthzgCGioXFqM4WwV3Up8I=;
        b=MsIKA52iJDZRDCb6o5UlmosBiupmDtBbwg5HnCQg6sWC0nnBmGbJl1QH99nEdzCYJx
         mVSal8sL1MALkTSOaIFtE3arDjv14IVJOBGZoEc4r0v5eqWrzGd+OWBpie/wv8kXFosI
         fBtqlDPzeSWkb2ulqV7cUIXyk8WOpvZoCmVV7mxALjOJZXam3gGhU2qVgcw7jgGovUEa
         IBWVF+gAJO/FMX53mzs0axWsIV8ZB7B1+PI0rx/iIkTRIl9ziPOy+NXx7SOuWLfJZcIX
         594Wagra4eVArGVJbfMMVjuNfgMqJa8Qn6Lx2F0JF+P7JgPsJhJgiDTS8Dgh3VoTV5Fa
         a/Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cYE/Zh6xj25MnQ1tNBVmEdthzgCGioXFqM4WwV3Up8I=;
        b=CRDTVSRNtT2XN2nTYIyEKTxJ8ZI8REBzuuajX208OOTosho+8u3M9VgQkdMdssxplN
         wPPm7PIcNQYTJQD43/268A7Vvdic0ecWL3AgWa/WSKNX4kF0tcyE3DjRGiYAQhnTrcu7
         c1DLIA4aff5KezxWxYlF9Su5U6jUm0VKyG5mlWM3S0lg9Hb1SN8wetAqzCLCvVMhj0bz
         8bU/YQ2xNvgxtZtTp8/tTvf5SoQLPkKq6L//rHcC+n4/nCEPu/AedxRhondyIpmOHt62
         PlWNMSFpwpeuJbqF34fy07jhoqMdLOfpY+9sDd0TNRJt4ngtXi1R2+9kpjJ+b4110hIq
         WUQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cYE/Zh6xj25MnQ1tNBVmEdthzgCGioXFqM4WwV3Up8I=;
        b=mn6WMkaZh70W7jb4z9TkxFTTxxTOxnU0tv9EqwzhTgM2zVaJPzod/0sfq5lAksM7iB
         XkCbKkuiVYtHyswDQjRmleUWasGbOu4wB01W4Shdx+fnXv/03H2Xpte0Anmsv5/umigL
         BjC+EB18/p0iZAnHSUzkoCX8yP9NUOfVRwIhk+bJEJCi4wUUFjofZpfcG5VHVLoPLKtb
         NnWFDpHvJu0s43bCOXkkjmp+8EJe2CMD0DaOdLGMD74RNRwpcXv0PxLEx2riUysoIcV0
         hK6m1Pom0JSL1WeatO17OoZTxf8SRVrvd+hxnrpPEqnoYSxhgOB5DheqwDfYkoPTmKKt
         AmqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309vcUcvB/3HnQM5oQl4a14v/20Wi/69+hNFwKh57of55yLv8UN
	hN7+7yMPxEHiiZKG9A7IF7M=
X-Google-Smtp-Source: ABdhPJywNjpVmnd45KSVlEs0w5I0oJ398KK2cDCJ9Kq6f5Iy6coKaXElzLes+SbWXSipX73wpnqtUQ==
X-Received: by 2002:aca:3888:: with SMTP id f130mr6242694oia.54.1618572799970;
        Fri, 16 Apr 2021 04:33:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5c5:: with SMTP id 188ls2173598oif.6.gmail; Fri, 16 Apr
 2021 04:33:19 -0700 (PDT)
X-Received: by 2002:a05:6808:6d8:: with SMTP id m24mr6005745oih.170.1618572799558;
        Fri, 16 Apr 2021 04:33:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618572799; cv=none;
        d=google.com; s=arc-20160816;
        b=KYrJadnwRWR1wgvzf14lJHjo2AVI1VXUbq+sU4qirrqC0JIkjq6iVRbnhMB5PozDOZ
         XCn+PYj8TzqltWxspR3kUnTfFiTCnnvogtFbOeum3iBr4EsH+gRd5NyhdBJNhrARO5dE
         jeK7QzqWNz1wCxT+lIIE7bbjLNrfLQ0t2TVZki/ibZTxnj8gmSZ6fcqXyY2M/n0ca5+n
         264vejzmgpa8yGomGnCQhVSwJIV5b9HkHGsIF4q/7XjkN4SzRgxayMy1pqYmqnD8/J0V
         XTjXj/dW0+LMmQdWRv3HdrFaC8GX9wwIk+M4CG7b1rI0KMFq80JQi27gJRWEvUVwxhYe
         Wzcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=aW26p2Q6N/O07QBMHOdc2s6idy4Vshl65NzTK91mYWw=;
        b=eqcuoI+Lv8NKOI2ERdAXPC4fRt+P9xw1KSAR/QqUCqKXcC/NTkFL0ESkLs2Ul2TSnW
         hWoaIhMs8Wmtjiwdzg8nVMkCxQCJHFePEBHBWNA2USWMny/BO2iBRVOvd1kK0J/rN7/t
         SvcSEN5DZZxmz4JbcPw75SK2pFZ4nZGrTRHq+fbN0kvzi6yNNXoz1eezetnnJE877sdD
         V/WC7zbbSeznfM+B2DoRu3RW1q/ptCe+xOi1dcW65wLj29M8o+SgfmSqqJWPddLwbIit
         Qb0Zv+EzamSAZZpdRpuH4ss2+f2qCDPTzf1GydA5sgtg57i6bX+aPd1rCH09hQYHxg09
         pehQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id p9si394643oib.2.2021.04.16.04.33.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 04:33:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.103.7])
	by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
	id 1lXMiO-0003We-Dy; Fri, 16 Apr 2021 21:32:49 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Fri, 16 Apr 2021 21:32:48 +1000
Date: Fri, 16 Apr 2021 21:32:48 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Nathan Chancellor <nathan@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>,
	Russell King <linux@armlinux.org.uk>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	"Jason A. Donenfeld" <Jason@zx2c4.com>,
	linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	stable@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Jessica Clarke <jrtc27@jrtc27.com>
Subject: Re: [PATCH] crypto: arm/curve25519 - Move '.fpu' after '.arch'
Message-ID: <20210416113248.GM16633@gondor.apana.org.au>
References: <20210409221155.1113205-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210409221155.1113205-1-nathan@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Fri, Apr 09, 2021 at 03:11:55PM -0700, Nathan Chancellor wrote:
> Debian's clang carries a patch that makes the default FPU mode
> 'vfp3-d16' instead of 'neon' for 'armv7-a' to avoid generating NEON
> instructions on hardware that does not support them:
> 
> https://salsa.debian.org/pkg-llvm-team/llvm-toolchain/-/raw/5a61ca6f21b4ad8c6ac4970e5ea5a7b5b4486d22/debian/patches/clang-arm-default-vfp3-on-armv7a.patch
> https://bugs.debian.org/841474
> https://bugs.debian.org/842142
> https://bugs.debian.org/914268
> 
> This results in the following build error when clang's integrated
> assembler is used because the '.arch' directive overrides the '.fpu'
> directive:
> 
> arch/arm/crypto/curve25519-core.S:25:2: error: instruction requires: NEON
>  vmov.i32 q0, #1
>  ^
> arch/arm/crypto/curve25519-core.S:26:2: error: instruction requires: NEON
>  vshr.u64 q1, q0, #7
>  ^
> arch/arm/crypto/curve25519-core.S:27:2: error: instruction requires: NEON
>  vshr.u64 q0, q0, #8
>  ^
> arch/arm/crypto/curve25519-core.S:28:2: error: instruction requires: NEON
>  vmov.i32 d4, #19
>  ^
> 
> Shuffle the order of the '.arch' and '.fpu' directives so that the code
> builds regardless of the default FPU mode. This has been tested against
> both clang with and without Debian's patch and GCC.
> 
> Cc: stable@vger.kernel.org
> Fixes: d8f1308a025f ("crypto: arm/curve25519 - wire up NEON implementation")
> Link: https://github.com/ClangBuiltLinux/continuous-integration2/issues/118
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Suggested-by: Jessica Clarke <jrtc27@jrtc27.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  arch/arm/crypto/curve25519-core.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416113248.GM16633%40gondor.apana.org.au.
