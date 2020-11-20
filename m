Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBWWR3X6QKGQEXMMNEVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AADF2BA2B7
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 07:57:32 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id b4sf3734684vkg.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 22:57:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605855451; cv=pass;
        d=google.com; s=arc-20160816;
        b=y3+Bix281Cxv/8iRRlsHjEiU25qu3FvgG5coLSyIcpsob5fLyGOX/+0JbFaphWS3QH
         DQVLNp5Va3MvUDBQeTiOE2+2dlvjsuwUG/OiKjZFmDoMNwGEQ1IRZg7s+B1uzsYLhTVY
         w9yPbkXzLanCDBL4IAgMdvEIlQiP86/aEK3nXSentDz1p+JZMkcMD17mISdlbvsbxCcx
         RDBGQb253inRPyU9ce5u/FPWNdXthdlUfwc6rm/Bg2ABtvelKWy9moThqVtdBfE/Brz+
         epUUQkmpZRLtOG+i7h31EOnLzHqZf3a0qugZlBHzKuoYm9rtmqNScfCmZcaAX20yVt0e
         EiFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=2sZF4lZQPPo+4ywhtbhayLg/RwMDyEVp9JrRUSuBajE=;
        b=dxR/nD8KE+hzun+1539NPT6YBmCzhLJo80AhDUxNV6WVWmLq20KFo6+c9bnbq64ggu
         klvowbOSzayunY9gqYrd2cBSyPN1jUumo6UkZEdmxbqg69b7jLp9SvuVu4ckgSvSeQ4u
         h/ywvEP2OiHfgkao4jhfhCIh66ScILVdQmdIguy4WloZ3G2YorMd/3M9QpYyjIFnUQGt
         0hz1kS3PRL9+9R2gFTAqF8pDmv3ORAnGQbdsIoVoKSOaw7c21l2AuA+iSdtJmiFglmtL
         7gNkgwek5vTuAyS0naVqDqbJ+oV+dsDEd5kbGcyVm/EFJE88yKgHimqCUtSoroVTk34P
         eECQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2sZF4lZQPPo+4ywhtbhayLg/RwMDyEVp9JrRUSuBajE=;
        b=qNuApdJAr4eyMLGHX5ebatQ8UfbVrGGcdpFe7gCe+EO47TZXdhAwP26afm8Ya8Soe4
         +37hkHkcWwGtv6Zh3PqGH0B3KEKI3o67y9drC7HWd205UZGQR8VcXo5594Z/OQltPu5l
         v90YN2LYBVqOjvV96t4XBYyEN/6hooDg82oyXewm76Ci6qgRyqdx4Mqezc7Jz3LBiAIf
         k2wfd4v9OfJcWf1KCgTHTMOEDLNaNkF/Ee0EXQpY/xZMrEUXLm84asAOJS+FjxL7vPqK
         2oZirA8wfLygLzI30GxWXmwaUxRQrtU51ibHaVWSbLBBS3tgCmdfHK5rjDb1l9LWYuq9
         GFJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2sZF4lZQPPo+4ywhtbhayLg/RwMDyEVp9JrRUSuBajE=;
        b=XWt6X2ER3cNo/G9zRqNiBVBtCfccnAIJVOzfp/MUgmuJFNgeM6eHOhV1aES0Yd2UCJ
         bU+QY2wqyrGCh5P5xj5xI/s64V6ZbjbpSz4Ku+nz36GP9kfIs3gZ98M3COEd3EyvjMF4
         6Af4C5OF/9pM1pcAuKipZ6peO1+uenjnNYWA35J2ulwzESeTysv91hCy4FwFuS1POrgm
         2KMQN2H1kPx++MZryVlLzQ1sZB+r7C/G3/pNQd2EI2LhTHuv2ECHKIofti6QHpbfMQ4d
         MB9N/94wv6zTXRo6CQ1PpPzWmAcjw5NS6tQqH+XK6kaM+3HFaXtc+f0b9pXxPiI1Y0vg
         +yCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LSYXqqaFPTSneTcBblQrtdInKH/ozuK7CNJbqY3upEUgSlsjF
	kz2uR7JyFLSjVD8SQ/xkISI=
X-Google-Smtp-Source: ABdhPJx27jfDjWXKLVs3FfCc0xiAKJ+OEyHUygUVQN/qqst3ktdv1vcgW/yz6MSJ79Rt0ifSBG72OQ==
X-Received: by 2002:a67:e981:: with SMTP id b1mr11848640vso.47.1605855451248;
        Thu, 19 Nov 2020 22:57:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2046:: with SMTP id q6ls831173vsr.3.gmail; Thu, 19
 Nov 2020 22:57:30 -0800 (PST)
X-Received: by 2002:a05:6102:ce:: with SMTP id u14mr11890002vsp.10.1605855450480;
        Thu, 19 Nov 2020 22:57:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605855450; cv=none;
        d=google.com; s=arc-20160816;
        b=hqqiHNWBa2o4T/mjqq1XHTBoykFkf3R+XidYdfy2e834NpO4EfwRihRcLOW7OAPlmB
         xdlg/9e+c8xUcK8A/eXmcMzlu3YCwE8hc603kBKDIg3v/A2gxgIbgIfmx0pOUC83aLAw
         WFqqh/SKFboJQ41FpzI3a89xJFh615RUT5AwRfwi/5W/R+QsrQze6taLFMaNdHhhGRIn
         qovWvCdjqu+k+sY++0xOrHr3EBYLjsV85rHJF3uhZVvQiR99wQ+YGtOIaYioE/eELOwH
         nbXujUES/7JThMp/oK+pbnJs4Dy3uyrakIWLzBqfuGh9nOgo1GlthLhLzUZSIjPBt+uK
         vEkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=4gIrHzb0G+nknuWnO7VDZhwDa5j+SEZVFMpD3SKV7Ic=;
        b=ltqTYXJzH/uMjs1F7/3155uM/XNMC58OP8ijRTFmrU2+pGPOPDsYvg1TvWTULyc5s4
         lLhUpXX+DXuUWg+GKbpgVDFxVVj4MEX9q8ppYicY/BVUE8xaYRWF5CXoThOw/A37M1jr
         U3BBP/ktmd6oB3+vZidTunni0RCCWQxutNFkAmlFGL93GLff3Veac1T7YH6i9heu4TQp
         0Px+v76KGpIljnk//GNxerBqz2kVYRvP5/ubRvHxoe9gcWBpjfifTKxkSeraPFpxxFO5
         101M/+LQgo6c+QM4a0tzGcgICdEkRVrLYbchXZjON9asxKJuINHx7It4fw4WoIO/i0hg
         2DEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id c124si190647vkb.4.2020.11.19.22.57.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 22:57:29 -0800 (PST)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
	by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
	id 1kg0MA-0007kc-02; Fri, 20 Nov 2020 17:57:19 +1100
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Fri, 20 Nov 2020 17:57:17 +1100
Date: Fri, 20 Nov 2020 17:57:17 +1100
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Christian Lamparter <chunkeey@gmail.com>,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] crypto: crypto4xx - Replace bitwise OR with logical OR
 in crypto4xx_build_pd
Message-ID: <20201120065717.GD20581@gondor.apana.org.au>
References: <20201112200702.1664905-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201112200702.1664905-1-natechancellor@gmail.com>
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

On Thu, Nov 12, 2020 at 01:07:02PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/crypto/amcc/crypto4xx_core.c:921:60: warning: operator '?:' has
> lower precedence than '|'; '|' will be evaluated first
> [-Wbitwise-conditional-parentheses]
>                  (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
>                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
> drivers/crypto/amcc/crypto4xx_core.c:921:60: note: place parentheses
> around the '|' expression to silence this warning
>                  (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
>                                                                          ^
>                                                                         )
> drivers/crypto/amcc/crypto4xx_core.c:921:60: note: place parentheses
> around the '?:' expression to evaluate it first
>                  (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
>                                                                          ^
>                  (
> 1 warning generated.
> 
> It looks like this should have been a logical OR so that
> PD_CTL_HASH_FINAL gets added to the w bitmask if crypto_tfm_alg_type
> is either CRYPTO_ALG_TYPE_AHASH or CRYPTO_ALG_TYPE_AEAD. Change the
> operator so that everything works properly.
> 
> Fixes: 4b5b79998af6 ("crypto: crypto4xx - fix stalls under heavy load")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1198
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/crypto/amcc/crypto4xx_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201120065717.GD20581%40gondor.apana.org.au.
