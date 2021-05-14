Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBLOB7GCAMGQEO7VSK5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCE9380893
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 13:36:15 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id h185-20020a6283c20000b02902d40a248917sf2089374pfe.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 04:36:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620992174; cv=pass;
        d=google.com; s=arc-20160816;
        b=RwgnFQ010eXN+VVU+o0PmXKkdoaQKRN6KHLJhiuZELCQ1dOkyewdTNA/Vg8djNtUdl
         Ue1+w02Nno+cASgHbqaC8rq++hDEvrOZH1R63gpLmtzozKmSPwyx7HhGob45c+wjZuXH
         ZO21gOJYAz3WgvbNTEFn990d6rg6o7WYilTzUD26cyD3kQt3DjdS8gbARd9mDAJuhWy2
         lBeKK90Q2aBrD4bRQcqjIp32dbb1IM7Gl09OiHkErIsSqqJw0BdaGyJjDXBtjfl7foNy
         ZaTMFYfvyqlAIS/ezBeJQihCzkhPxIwF/wlyN1F21guhHCK5/rPzIcpwpEYw/jWEb/4l
         L+yA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=vVmXgrT07uaHgmsL/jc1qmaFaupfoRfGdb1+pityjLo=;
        b=XZ/M1iSDTkjXEd/JAT+Gn9+O8gaa5iKOqM7YZVyEwCqcoY+0Qi7yyLZ4k6/VBnNs3r
         REX+LvvG8Juq/vUYb06kIYGVgAZj0CA3+TJCen2HrHdt7vwrv1erHSGLoINtA4MgfJkg
         D1DQaGIFNAZUErRCr9k+8b/7awp7IOGVxuGtrhWJfCu5cxFtNkiE3Ou3yHKrNQGDxx8D
         8GupY04+/P3lv5yY+tm7o6cI0GJOvYqLwlIsXLZ5JsIhBh1NmFxyBxg1NOpOnGxcWdg/
         a+j1tFEFXtFMg8Hgwlcxwg2MujLtkTiFJKSjffIlGq0gFWRu/7e6sWzlQP2AGvM0fSFc
         3Pwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vVmXgrT07uaHgmsL/jc1qmaFaupfoRfGdb1+pityjLo=;
        b=fYdM0XtxRV2J5+xe7YGg5Qs8XTCJMMbqSTc6jo3/wl2cVsIQEXsBaavcXqe6EO/sJ3
         8q8T2NyVFv0qS5WK6sIPt20BPPSRWUHNm2YFf/4tmJtp6UmAg6Ory2egEPntHratB1iC
         69+xTx5ZOBpemTRrWku6856XFwKGHVUB0+bZq2yl5WjeSf8hIO0dwnViQRTYbMrtlBFx
         0QjsQvqzHfj1lzTULtkHQyCSPldWM7e3xDcvOuPTp72Wn56LqcvWLoo3yuoOB4+b4H51
         PhFu43RSmlEV/IrKx6GFC2kfLKUyJic1yDE9FjqJRQ7uV5cvGgDPhs1UlGJwLwX0WJuq
         fAkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vVmXgrT07uaHgmsL/jc1qmaFaupfoRfGdb1+pityjLo=;
        b=D3RtFJ5seu2nExrMtK+Ye9JfUaRjIaFO2PU++r1tPI+ol7YGy5Wmdd0oxRX+f4WmOF
         QHwopjRBBFewjNmxeY8ewUG65aTb5OLcYYEk5GRKFdZK2aTPgEsFYuBUSsylHJ6At997
         OQx120bxrMBU20JynlS+1ar8+9XlWteiypag+DXRJdFaECedPpMZL79nx03g9cWwpNN5
         vj/17CNzIzHdulnPds4P5E/AD3BUusCoqAJsVUee4PD8QAehWP+yBQJXTccJ/OzzqmMR
         VRHsrXmU+Wz24h1CkDZeODgWEGFfvsPoSWcTAQy5ffVXy4lZQQ9cbQjRGo/R3t1QrrVg
         v32Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532iAYunCyPzVSLWIHAf57NVM+tg69aFu7JsP2v1C0VpiAm19AVV
	pYj+5ORpaZslRPjoBzI7VHM=
X-Google-Smtp-Source: ABdhPJx2HsopgMF0VdvnXiCj4k0hjw+oowPS0464Q9vtMvF3Isn6PjQQFHdM1BKl9fuTbveDHt6pTg==
X-Received: by 2002:a63:5218:: with SMTP id g24mr41816358pgb.309.1620992173953;
        Fri, 14 May 2021 04:36:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:530c:: with SMTP id m12ls4002275pgq.9.gmail; Fri, 14 May
 2021 04:36:13 -0700 (PDT)
X-Received: by 2002:a05:6a00:2482:b029:2cf:2ec6:878f with SMTP id c2-20020a056a002482b02902cf2ec6878fmr11823032pfv.4.1620992173277;
        Fri, 14 May 2021 04:36:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620992173; cv=none;
        d=google.com; s=arc-20160816;
        b=YcNYRkBzOTC+sDDic7hXNZGGDlounPiDuhY2l752xNEFH+CjKuSBNDfT2yBd3q0aqP
         EdANiYQt5N3bEEziAtASEoI7xz3XaImmHhmeOtRsrCDUk7O4a8gyNVYFaGNNR3PP+e27
         h2diG2nnL8N3hzBCOhYvqpzUoZkjv8ZYvsVVDZr/btbt3OKF9LVd+sMTI0We27cujhwF
         ABunM8Xb/mymKAj3neIn449Eh2g6xlQjUjZrH25Zfa9vkpLEFpcYMIK5pq32ARLOAlvJ
         anr4sZODvlvw7EVSteGG5TUwO36Eqy5gzBG3KJ/EkWgrynT361yM9XZJvmT6GFhAz4VF
         /aBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=8puFzY1GhFJqCDP8rhcpqXzMzVzj5RxgkZ07yFzHw3I=;
        b=Bwo8Po6f0dGCJv00haxumhBC78rOAdDhYNrQnRK7gKwnk/zKOEdnS656I0YXed7158
         /tbQ5RUjieQmRa2noeHfLFEJ3RlaLyv9yIN5lE4H1T0SPxYalnCIAHp26nQi7BUG5Juo
         udWjzLVIEQAtaObkJFYepSvTNfCUNx9GHX8z94V14OsbtW/FdgUIgdOhJc8ID1xdUuZR
         oFPEsjW7Tda2HmExDbSkoFOLU4LBPmzZL9djNY7jUSxxQeur4Zskh4Il0/mCYnwXfHLd
         vkaT3c6lqX4Yn1zKkNgJ53/YD+UzPSGVu5g8v/8+vk3GO1HC0R5v2DhAaTff7cDcXpDr
         3/ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from deadmen.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id j5si1340938pjs.0.2021.05.14.04.36.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 14 May 2021 04:36:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
	by deadmen.hmeau.com with esmtp (Exim 4.89 #2 (Debian))
	id 1lhW6v-00031Z-VC; Fri, 14 May 2021 19:36:06 +0800
Received: from herbert by gondobar with local (Exim 4.89)
	(envelope-from <herbert@gondor.apana.org.au>)
	id 1lhW6u-0002Yq-Su; Fri, 14 May 2021 19:36:04 +0800
Date: Fri, 14 May 2021 19:36:04 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: davem@davemloft.net, nathan@kernel.org, ndesaulniers@google.com,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] crypto: cavium/nitrox - Remove redundant initialization
 of 'sg'
Message-ID: <20210514113604.ovkdwijzqmm4el3h@gondor.apana.org.au>
References: <1620381417-44442-1-git-send-email-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1620381417-44442-1-git-send-email-yang.lee@linux.alibaba.com>
User-Agent: NeoMutt/20170113 (1.7.2)
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

On Fri, May 07, 2021 at 05:56:57PM +0800, Yang Li wrote:
> Pointer 'sg' is being initialized however this value is never
> read as 'sg' is assigned a same value in for_each_sg().
> Remove the redundant assignment.
> 
> Cleans up clang warning:
> 
> drivers/crypto/cavium/nitrox/nitrox_reqmgr.c:161:22: warning: Value
> stored to 'sg' during its initialization is never read
> [clang-analyzer-deadcode.DeadStores]
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/crypto/cavium/nitrox/nitrox_reqmgr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514113604.ovkdwijzqmm4el3h%40gondor.apana.org.au.
