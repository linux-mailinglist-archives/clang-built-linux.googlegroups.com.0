Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3GR533QKGQEQLBCBMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4098020FE70
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 23:04:46 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id u64sf9558848ybf.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 14:04:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593551085; cv=pass;
        d=google.com; s=arc-20160816;
        b=oIoc5zIXU9AplRaU9AhqRuVaApAbNXdF7xm7sEBGOXTytYMnJIRLCaXTzNxtwLu/HM
         KKqnhZYzhyex8z/lutXaL+NmwshZbh3IKTGEREhvaMcEx/uWBNCBGsU6e2VOqX6rZMct
         v9TvfehhN7pdFWW3/I3FP3yKUPoDxd02R9gm14KY3yOVa35s/CSbEsFTm5Huvay0vg1J
         AqUg/tqKthoYI2DyyDj5A3t8E2t5EJKnTRYtw2rRerbpRiQrDofMZ//ST+o/LuPs3cuP
         PuaPha8Gi8F5hIFA2jrcgATQeo9T1zGpNem6soTHS2zaqen6+hR6o2MS0S4adOUCDoMl
         WeYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=ltreylXv5HvsBux8i1xEbuYs1UZq5YH9mYQOVLD3ajo=;
        b=g0FINBtlUb1bypIUeiN5gmmpampqlev6KR/71XbWnnW9Fy1t9Womby62j5c3JXjWl+
         UOLzVMjNnhoZB9RvEmvvXpOmoSD+3Q/uPViYSsZZUjIrWbMUQZMLimEpH73vEXkM50mZ
         SSz5bL2F3j3SExjGZ6uokYNyicr8+hj0Mtk+6HK0j9N8/lnEDTmhQqP39Yj2PMI6s+gb
         iY6QKh8RXzWh6uvuv8b9vVl16OzAHsD0AGJsyQpyIBT7ZIaMTGzGaFoM46udhKO4ijqg
         1DtZmzMVu5AAVHS0zDk43i5Z0MuNuPHyitvIlfIz8PcYZuZyBOx8ryKPGo5/Nn/AUQqB
         MJIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=apeVYBO1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ltreylXv5HvsBux8i1xEbuYs1UZq5YH9mYQOVLD3ajo=;
        b=fbKGUXVfhhRe2tVVu8cMU+6LAx1EQNnc0Oq+M5AWgxjLBCR0PQPkTHjDXpivT89GPI
         z/JnB/R3hKXuLmKyUCxDFYomT9mfReMAPWs+JD0P+W+Ah56Osq2EHop6lTvNN9qt1G4H
         pEHeL5onSabEy4hz7Pj4ggRtQE7WE7CBRS6rqy/SrMVpJnP+guWKLzSUhySjePqNY7Yk
         aCVOXZehwgPITVz300kRipufZ2qvuh0YnVG8hneTJe9F4KwZuYgVEnLQzQsg+rawZl08
         Ew/d2WNgXSQK0QrkJ+CECRnAen6KILA0pceEtPH2BVzEDCzFlB6qqW2q3xNRynYcYWoM
         pljA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ltreylXv5HvsBux8i1xEbuYs1UZq5YH9mYQOVLD3ajo=;
        b=lJp0aun7Y4+yGxgQRsBJfR/QXumPPtkrIWVKGemZ+i0I0LOjmAAEv9rfSDZCfaqpDy
         W+xaqINXShSLgzfsq7ODDZEfNrUEN0zCdo7VV5C4zZbp9gXbgVH7F5aErfZ7tXiqWIH0
         uwq45X3XgAKlFCGpSsQLOEcNmmAQOdQMgbNkyuIPrJNpwEbpZaSvOLtyLR9/W2g1G/RO
         6oY+PRS+99O6ek41y0Dr3DmvyiX7wvbhkdN+b+w405Vt+J7kixapEMLro4NYFHy8QQEa
         2h1CPywuDyR8pVkfkmvOU24ZNvQzsSXNv59L6tHeF+UCz/QwVi8J7bqeFjC0dc55ylVi
         216Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ltreylXv5HvsBux8i1xEbuYs1UZq5YH9mYQOVLD3ajo=;
        b=BxOTgqhtQq/CtETIBAscnhj9JrBNtK0TmqcS1JwXlTyaSSBzEDNUWtRd7yc5eWZ3Td
         zANfWmUuFWneXb3I0WbTBiXboGYMDG3IEYQ+dCvH9mBA/E96Erl8wb+/5I3nIjEbkBfj
         rmREUDkSVivHely14K61xbkKQxWHfPI0I048wyUnC4i/9Z1D7VJUewm6TmC5iEva1nd7
         3+GEAnawzA8saVJSAY/mQFBg7PfWs63yt8B2OqeadxcXLeJBhucI2S/AIByrhDhjjx6x
         i/o6mFs6g5y7pEH+D7t0BayZedmNuzOioIKUKLHnnDwzPDDbxRVqogVAi9eftOcgw2ey
         eNnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BmamsscKBRpl+h2lzVpKu+zvlLlVOAzHRFAJgeEg+LMmkCE48
	+/2smW3rbWjhe+GydLTMOWE=
X-Google-Smtp-Source: ABdhPJwxvSsOS0g1R8VynfKPR62Q2OtX2jJJngmAnHM/dMgsFxLklKUPU4qAETF71nFVyt52pUzEVQ==
X-Received: by 2002:a25:8392:: with SMTP id t18mr23546569ybk.397.1593551084855;
        Tue, 30 Jun 2020 14:04:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7003:: with SMTP id l3ls65278ybc.2.gmail; Tue, 30 Jun
 2020 14:04:44 -0700 (PDT)
X-Received: by 2002:a25:2d2:: with SMTP id 201mr39097519ybc.344.1593551084491;
        Tue, 30 Jun 2020 14:04:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593551084; cv=none;
        d=google.com; s=arc-20160816;
        b=wCIQvhpFRuFzPxk2muHLuym2UTWvFJ93+BpALc7Sxa/xn43+r3xjLmOmje14zX9tRb
         AB7X7qzOkGHsVO1XbX92wBLRhpzTWciaVfIRcTJ8mAyHiT+9MjOkvafWEQCzOjyV7Uxg
         XPObbibW78gZd5nh8oYf3ScXsUOsVK4ji0jMaMzU7QmpRWHJmBeSCRuSg1SCK2kHp+Jq
         LSPx3yH6nSaQWXKHD0F3m3g1ynRyPcyNsUJ3PM49HVjlZlDB55VDlOQgRXS/B7HXH8hG
         Y9z7x/Y3Yfk0hVEJbz0x0w4ruoYpnRsRxSgGSlEJOa17ith5JyExjlegTK5sjAKs0sQj
         HKBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xNBGyQANiqILlDq1wBEsbi38cozHmh/XihUuNGYycM0=;
        b=iGECrhhxW273r5+58kO0XmME3T9jUz0/S3QggLenfY5ObUgykxcoQy4QOSMmOE4wlG
         BZeB+U1zu5UHETpA15mLDDm85MxEletmoV4WwH0ZgjontfuxcsbgD9RXFYRz2gN/z7De
         siyZ489o7IJYu6IT4nfAL66eMjflkt4AEda3d8C09hz5ZbQ7sua0W1PMgR8If+2g1iZK
         gdeaMzdkHUNbrWvvP2Y+fpMiLl5+Qe41zRFX3zWUVxff+jJK/2Nth0LZ3Ac3ua7pHIw3
         llPeYgGFku5O04D3GuHSRuVLQZ17we3NSL10lSqjU9SKfkfKqOzVzgjBzbrhN4VpRwum
         ZBdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=apeVYBO1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id l126si200133ybf.4.2020.06.30.14.04.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 14:04:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id d4so10517500pgk.4
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 14:04:44 -0700 (PDT)
X-Received: by 2002:a65:5682:: with SMTP id v2mr16489451pgs.231.1593551083729;
        Tue, 30 Jun 2020 14:04:43 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:1000:7a00::1])
        by smtp.gmail.com with ESMTPSA id 204sm3623211pfc.18.2020.06.30.14.04.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 14:04:43 -0700 (PDT)
Date: Tue, 30 Jun 2020 14:04:41 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Cezary Rojewski <cezary.rojewski@intel.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Liam Girdwood <liam.r.girdwood@linux.intel.com>,
	Jie Yang <yang.jie@linux.intel.com>,
	Mark Brown <broonie@kernel.org>
Cc: Sia Jee Heng <jee.heng.sia@intel.com>, alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ASoC: Intel: KeemBay: Fix header guard
Message-ID: <20200630210441.GA3710423@ubuntu-s3-xlarge-x86>
References: <20200617010232.23222-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200617010232.23222-1-natechancellor@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=apeVYBO1;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jun 16, 2020 at 06:02:32PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
>  In file included from sound/soc/intel/keembay/kmb_platform.c:14:
>  sound/soc/intel/keembay/kmb_platform.h:9:9: warning: 'KMB_PLATFORM_H_'
>  is used as a header guard here, followed by #define of a different
>  macro [-Wheader-guard]
>  #ifndef KMB_PLATFORM_H_
>          ^~~~~~~~~~~~~~~
>  sound/soc/intel/keembay/kmb_platform.h:10:9: note: 'KMB_PLATFORMP_H_'
>  is defined here; did you mean 'KMB_PLATFORM_H_'?
>  #define KMB_PLATFORMP_H_
>          ^~~~~~~~~~~~~~~~
>          KMB_PLATFORM_H_
>  1 warning generated.
> 
> Fix the typo so that the header guard works as intended.
> 
> Fixes: c5477e966728 ("ASoC: Intel: Add KeemBay platform driver")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1053
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  sound/soc/intel/keembay/kmb_platform.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/sound/soc/intel/keembay/kmb_platform.h b/sound/soc/intel/keembay/kmb_platform.h
> index 29600652d8f4..6bf221aa8fff 100644
> --- a/sound/soc/intel/keembay/kmb_platform.h
> +++ b/sound/soc/intel/keembay/kmb_platform.h
> @@ -7,7 +7,7 @@
>   */
>  
>  #ifndef KMB_PLATFORM_H_
> -#define KMB_PLATFORMP_H_
> +#define KMB_PLATFORM_H_
>  
>  #include <linux/bits.h>
>  #include <linux/bitfield.h>
> 
> base-commit: 27f70ec4fa0e0f419031f1b8d61b1a788244e313
> -- 
> 2.27.0
> 

Ping? This is a rather trivial patch.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200630210441.GA3710423%40ubuntu-s3-xlarge-x86.
