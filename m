Return-Path: <clang-built-linux+bncBDTY5EWUQMEBB2647DVAKGQENCP2NXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E71A98AF4
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 07:55:57 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id l14sf4711915qke.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 22:55:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566453356; cv=pass;
        d=google.com; s=arc-20160816;
        b=TGtKw7AfrLeYZiJOCWi2oOb4caU6y/6inCxKwBuS05mIvf2c8JNlK2vpCrxQYi8Wcg
         xyRx8/B91z5Jl7cojHC7DhVuK55AUCg1pDIxt3OjOL58a1oyBsFkgDs5H2CySekg2QAz
         s30S0AUa7NbmnCwPepHTM/9RDFMPVdkIxi2VLBRk822nvkRdR2cI2A976tb2NAU0DU4/
         VTxIORVW7h/MVoxDSrW9V9sUnCVUUcMgiEvyWYBCc4HB7v0e8ePjAXLxHIewdAQl72NM
         Od0gtEy5+AhWkpgd3vTZx4q2ly1JBfJywaZj4XG6dJuwIlyjIFqCixNxSn7udrnJM7fP
         /zDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9o/HGXQuee1HOLU1YfhWZngEqhDyNPJkO6D15SOi6P8=;
        b=0SKlW+XMJ1/iNNXb7Btt8JtL3GcjhYt0JF6scSaZsDhcvqQSt0b6Jdbh7W0QQDS764
         AmoJcNvIvzUpjkV3G07YL87Z1Kvgg6j3g+MZHOkQWl6ObCT4q4LEKL+8mXK0Lk55Tc0O
         qT1NqPTiMNI4Me3uwIl+xmS3rEZTFp1KGZ3eZy5WuNh86scKAlJrNl4+KZBVQyPzafu+
         WJ4+zyqwkkmuTL1TnQ7fZEL4ejdgbTcriRocgwX5fUfo/IUkM9AzOg+rPUoRiDhvjRd4
         0K4ttod/X7bP9uwd5zIjWT1aCIqA6SpTg6chYjXvCioTb7GyZQF6xPnNaVdv0/53h9tv
         VZEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9o/HGXQuee1HOLU1YfhWZngEqhDyNPJkO6D15SOi6P8=;
        b=q40M339WMpl/OIEq1xzyl1pwb30x6M62YPMDbVW+mkiaD8ye8c0vx2kYLXeWBZ4Fcn
         393xvR8Xr6GjfYq9H9iWp94OhGUqZN1yb4a8Sl1l6/ceT9XnUEl6OgbWdHMCSbFD6YsM
         OFJakAGa3cIsOabLXsdWLAiNsSNpGtXq/Pt+n8Clfe0qDCAa7rmrj8aVv9GD8RmfeSKU
         m5ouHAcTaPxyO9fc2eM1P1O7MoCp3MZq5RLsyGXoFNZslVdouu2ftlWM/zkEw6IGa9tK
         B4EwKAJoI7+cfwypPsHmHToRe2A/qU3Iewfdbvf9UqOtNGtGQSac4a6EmhTtq6aB+wKC
         0rnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9o/HGXQuee1HOLU1YfhWZngEqhDyNPJkO6D15SOi6P8=;
        b=RfscZWLla//NEOt4rvyUzMBv8Jq8hkC7z4jtlBIKL1bDmtCmpyboRNUf79yJvsT4qT
         XLCzNOHL/O7aUqUJyXzvqr2if/PtJGpbkxV8UJcdl8l7h27EbMIcKK08r14bwVp4POhH
         7NlcAFbk9TH7mAexhQiZ/DXcYQKo76OdppSDmgSGR6JZLUy3sde7bupjw7yUUAJC3/XV
         huSXHCgNYkCvwHqcvoE3Lq45DR31VS+FZzhEsOGO+xfpTZtUAuDWUgB++vCbjJZVsFpk
         vDuh8HOy/WR/UIVSMT5AeZSzCz6NSUJ/8fQScQwDQlYrNiOVBsEvVQFUIBJNmdSgxmqP
         ZK/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU7t1AYImxeltPOosynnIA+VbtE2MHFP+FbeHIuHZjefVoat54r
	pNWw4G8wRK3q8yDMRo0T7hQ=
X-Google-Smtp-Source: APXvYqyRQLzp8MOtH5djFsW6ht+0fPGeSHTQXy1NDI9gozmPlsx2L728SbqZWf7VoKahAPDAa1dvXA==
X-Received: by 2002:aed:2ca3:: with SMTP id g32mr35370601qtd.359.1566453355903;
        Wed, 21 Aug 2019 22:55:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:498c:: with SMTP id w134ls1505201qka.5.gmail; Wed, 21
 Aug 2019 22:55:55 -0700 (PDT)
X-Received: by 2002:a37:7cc3:: with SMTP id x186mr11100359qkc.169.1566453355223;
        Wed, 21 Aug 2019 22:55:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566453355; cv=none;
        d=google.com; s=arc-20160816;
        b=dwDyAWjFE5OnoSVUZi33deNvAhT7HHuJhEPk/NyB1GNaIDKPht91FxonkY4FvPuZmi
         2EKkG2gzvKp3bA2ozwlJ5hqV6gf3dJEyJSDuNvRghJ/DJeIA4c0cebHsAEK2gv3LUMSx
         liDzpYDfst/qNP5yTNx1wLrQpImOBU8F3vnBvaNzq62e8II0yqNutG6FC0n7MymqFtNf
         YHGfspvmwYaR8mLnwZNs6V/jGM+xbbhH81GS7hWH+ZCL0n5QSEwkY2HqB1Hi9yc5L77M
         p6G8+iFNmUE5awLmAxIev1jOAynWmj19DqJjDeCc+fsE1bHfJPuEKbFrMm/6Hcmrc/oE
         2SWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=xvQ9U6A3hOzi8fTI5VNRurjIGQMdSNNLgAFwzPueqZ4=;
        b=n6g3MSY0eXGWJbHw+dA4toj+tzdOJYx+tcqX83Mm9ItuMUIeP0pW/4yGttoS64I8Tz
         DW3QkTztPyvpEml0VDWOssG6E3NRj+VsszmUU/4x/GhJ/5gkW5OkXiNEgQ37hIl6jeaj
         dwvhhNmNcTlL3y1Z4q9TuY+EvnktI3gPWDH6W21EZAgubd2OkokyUjXifip7r54QHj0Y
         XbZRKkfj3ozH/yry84aOwG+VvWkzh6B3lmUL6WQW9L9WPxchI0wD5Q5i/Gys0lgoy/rr
         qmrmwp4H7sWDDhYYPCxvufUgluHMwydQ/f/Td0GSkd7dj+LtxWLn+ONFg2H861bySv6x
         QsjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id j10si16038qtn.5.2019.08.21.22.55.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 21 Aug 2019 22:55:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gondolin.me.apana.org.au ([192.168.0.6] helo=gondolin.hengli.com.au)
	by fornost.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
	id 1i0g4T-0002wN-LB; Thu, 22 Aug 2019 15:55:41 +1000
Received: from herbert by gondolin.hengli.com.au with local (Exim 4.80)
	(envelope-from <herbert@gondor.apana.org.au>)
	id 1i0g4P-00011O-Qy; Thu, 22 Aug 2019 15:55:37 +1000
Date: Thu, 22 Aug 2019 15:55:37 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Ralf Baechle <ralf@linux-mips.org>, James Hogan <jhogan@kernel.org>,
	linux-mips@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] lib/mpi: Eliminate unused umul_ppmm definitions for
 MIPS
Message-ID: <20190822055537.GC3860@gondor.apana.org.au>
References: <20190812193256.55103-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190812193256.55103-1-natechancellor@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
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

On Mon, Aug 12, 2019 at 12:32:57PM -0700, Nathan Chancellor wrote:
> Clang errors out when building this macro:
> 
> lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
> inline asm context requiring an l-value: remove the cast or build with
> -fheinous-gnu-extensions
>                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
>         : "=l" ((USItype)(w0)), \
>                 ~~~~~~~~~~^~~
> lib/mpi/generic_mpih-mul1.c:37:3: error: invalid output constraint '=h'
> in asm
>                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                 ^
> lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
>              "=h" ((USItype)(w1)) \
>              ^
> 2 errors generated.
> 
> The C version that is used for GCC 4.4 and up works well with clang;
> however, it is not currently being used because Clang masks itself
> as GCC 4.2.1 for compatibility reasons. As Nick points out, we require
> GCC 4.6 and newer in the kernel so we can eliminate all of the
> versioning checks and just use the C version of umul_ppmm for all
> supported compilers.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/605
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> 
> This supersedes the following two patches:
> 
> https://lore.kernel.org/lkml/20190812033120.43013-4-natechancellor@gmail.com/
> 
> https://lore.kernel.org/lkml/20190812033120.43013-5-natechancellor@gmail.com/
> 
> I labelled this as a v2 so those don't get applied.
> 
>  lib/mpi/longlong.h | 36 +-----------------------------------
>  1 file changed, 1 insertion(+), 35 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190822055537.GC3860%40gondor.apana.org.au.
