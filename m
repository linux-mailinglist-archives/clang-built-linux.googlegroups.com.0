Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBUR3T5AKGQEUAPE45I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAA126098B
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 06:28:56 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id o9sf7924948pjg.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 21:28:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599539335; cv=pass;
        d=google.com; s=arc-20160816;
        b=eC+YoCPeWozsxDN6BFs+ySro4jRsObbuy9T7Y4Ni3LppQmzljBTw6zPagI3kGPSRNZ
         IRpEMBsL+uzoINcq8zAH86i4hn8iAeseS1hW9uKACoQbU8Vf8Bu0clnFkLK6Q0/N7KMm
         mP3wvK7g4uu7PU/gGUfEJ66ifopHDUlQzusDZUgMaibLVah/fKwXmBZ1SliVGOzLpZHA
         nTFaCPJM+i5Ey7PPiDOtFsWFv23OyBMCZT9vKOJn8M6tRLzM+NgO/To+VMyn/muT5pK+
         YW6rwmkAZO3h+aXbu+qFdu2bNeu6eY0h7f42mFo/e8EsnGqYzWpNsdUqwGt41gPMVn/k
         b8Mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=jsUG3YQFuUKQMCnvpbp5Ro9gSGrPVN++Ccwf6nLEF0E=;
        b=MyOxM0EBK8QrtU5Xn8wsJcBvVlRc8EWNXWcd8eE9ViaCretM045jqnhNaoh1JIYN6J
         ZaIIpJ3+8d/fOnuimbmuJE4zj/NWg1JWwzfPsrnInNbhV2PDby0cJUsDEzVLtplQP9F1
         A/yv2fvtfHz+CG4mehMNNUgllRZlsS/We1lh0LWQlpkOom91NQhyelQoJliTUJA07aIL
         KNy/5t3cCwVWasC8X+C/l2UNDtkU3dlYVcUO0KIyag3UlL/AGsfMOjls0vPlLbzUFmgy
         0Hm+FFdtCGKjgjSKsihNhXS+S0zO8QtsbL3E54PnZzQ8arAAAhuVk52T0SlLOdfcwztl
         jX4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VM+Up9rJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jsUG3YQFuUKQMCnvpbp5Ro9gSGrPVN++Ccwf6nLEF0E=;
        b=Sa1CXXwZGsOetBccEPdqXU6DLUHI35RC8LUrsgQeCgnKGmjHdqC3oTUzVzrZKpJnm5
         3tY/TGZvBYre7OYEI9LlO1N7kNU1/+SXkWWGkgx9dQ4LX+nJmuHkuMGpQx2Ywf/08uKk
         A4HQ1866JVOBQWd5Hdm9NHe91sXn7amS4wX6ynknI+m55a2ulQxTbQdBLKyzz4gY2abO
         8NOTS6QKnBZo7Y+AF0Ck34gmQQANwm/w5jGVTQyJSY0DivEvGwbC23FEiDRdlE5uxKh5
         /tNPME5iYKQwaJPs3SrIHCgfrPcymLJk4mqA0MZBmJXZlnr8Pa6MTIMcozjewxz7cfmR
         hOrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jsUG3YQFuUKQMCnvpbp5Ro9gSGrPVN++Ccwf6nLEF0E=;
        b=D3b7TbOg2WyJJ9cuJJ8/6ufKci5YbBF38EqgLpgh/e8ySdSHDWhlSXzOlDIozGHdQn
         22J63Z05knfsX7gGUXbTU/ohLYzhGFOx15VXLwivE8IjBantV4r3PnePELTPNURxbBQT
         j7QLuz7C4/9gEzoNa7UAZPyP7Q859/aMEO3/9/awbdaRGRsHF7gzaW8gvCaIk+fC6kIu
         /ZLUgdV9tg5xRzsF2fu+OxecjDnKen2z/jVRzbo4Uz+D1YRGFXKXqoLMFY003gJE1RMg
         oloO0iVEAP6WB9Lil5TZ8iLIA4XXPdBlmR0+8JsQsW3Gmp1gMQ3YhSQbju5unGd4L1F3
         BIQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jsUG3YQFuUKQMCnvpbp5Ro9gSGrPVN++Ccwf6nLEF0E=;
        b=D9uzFI24hUncY7Re3bspXHb3aRW9FcCd4aEsMQYjwxbvBs4P5YgFore/tl9dAs/qET
         UaDixlGWIMNYZ6bZo03IiVLh5DkoVIrX+QUaU7oFujxJXuyvrWWq7QHHBH+3d3DgjB+4
         vOJUTkwZZtOPqrLgSSsbwBdoFNBifSq6FYhQaIWZJtamlZG0AHJ9tz5TS2KAVkCi/VNP
         MkWm22PxM6SN6xmW2dxxRk0Rwk04Fn7dl1r32g5Ftwj7sS64IZil+veDEh9txvNeVHD3
         +vkd9VLN69PMx7fRY2JZz5w+RxDcbH8q1L1TwgkOqtL1+e5cRD66AgabwNBFNPcLPD5q
         nDsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RekPNw7LaINdrzC5PQ2mpNGCSCREUv9phFBiKpMy4XizAHXyB
	cizprtcxn02Bed7j75GI9Ac=
X-Google-Smtp-Source: ABdhPJwbFrvnH/S2ZIUzCr06n03AJ7I/Sj4/+w7JVgWjlN5uusGs7n79eNCluMrl96s7R4BZgEYwqg==
X-Received: by 2002:a62:1a08:: with SMTP id a8mr22937885pfa.168.1599539334809;
        Mon, 07 Sep 2020 21:28:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:714a:: with SMTP id g10ls647561pjs.2.canary-gmail;
 Mon, 07 Sep 2020 21:28:54 -0700 (PDT)
X-Received: by 2002:a17:90a:ea08:: with SMTP id w8mr2301507pjy.124.1599539334246;
        Mon, 07 Sep 2020 21:28:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599539334; cv=none;
        d=google.com; s=arc-20160816;
        b=Liydyh6q/OwLfslkvP8UefdVB6xR3neYYYSCP1wxSWSXtKa0GjhOw4wSehrcSw1ez6
         EzksYA3dsMWAvCTN148l8rUffQDViGnOKdlNS/DQpLgPbp19aelfgiTjrzrhAs1bur2h
         dYSIt9zWY7wWEb0G9RJ9/TmSZYi4RNJ6Blfn/cJ5VSjCDTUnE6cc5Yz1I0HpzT4a7phK
         yJL0+2OZsMRiyIG+VEHwFJAITCTnb5zS2uv8zNzTMwbURjSaEW5Su6JNkK/c7EZ9VSyb
         /kLAEDsg2aVKsmNRuFz+NBtyGF2m+uuBBtjkUiJxFNHYv+hFXWM49cFptWCbYPdnOihF
         9gfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SktCofgYUSpT84xC9qw3Ohre3yug4nlJxNHub1OTSd4=;
        b=p4D8wonuY2LLDgTHQYp9KdYCUaoAzSxswL60BpArIsryJ7UWBN/wRmQehVZU6rql3x
         mXA23W0eiAaW+CjrJC+R3bUbul5h9BWNuDUNU2jGgLvX5kvdEJwqPdxBCx1MP+D5XqaY
         mF9kmDW/8wGE0sYmvK8bnZn2/he+oWOh9bHfEjtdI5MBUVozwwiTqsreRA077r0UyBwa
         ruqp2n2LvTzsTttv87J9DL8OLhAIYnOyiOCbG7/cRJFEZLXlPWup2SRsBx0UQbL4h3Yw
         ykL8/aeuqTvRUW3geNvxwGdSLZ0WSyHET70oBOD14MnNxUfMsgkejzy8WodysWT4rr4F
         TREw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VM+Up9rJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id s60si208899pjd.2.2020.09.07.21.28.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 21:28:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id q10so1439413qvs.1
        for <clang-built-linux@googlegroups.com>; Mon, 07 Sep 2020 21:28:54 -0700 (PDT)
X-Received: by 2002:ad4:4d42:: with SMTP id m2mr22019223qvm.163.1599539333464;
        Mon, 07 Sep 2020 21:28:53 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id e10sm13376346qtq.59.2020.09.07.21.28.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 21:28:52 -0700 (PDT)
Date: Mon, 7 Sep 2020 21:28:51 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: trix@redhat.com
Cc: tony.luck@intel.com, qiuxu.zhuo@intel.com, bp@alien8.de,
	mchehab@kernel.org, james.morse@arm.com, rric@kernel.org,
	ndesaulniers@google.com, linux-edac@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] EDAC: sb_edac: simplify switch statement
Message-ID: <20200908042851.GA1422621@ubuntu-n2-xlarge-x86>
References: <20200907153225.7294-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200907153225.7294-1-trix@redhat.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VM+Up9rJ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Sep 07, 2020 at 08:32:25AM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analyzer reports this problem
> 
> sb_edac.c:959:2: warning: Undefined or garbage value
>   returned to caller
>         return type;
>         ^~~~~~~~~~~
> 
> This is a false positive.
> 
> However by initializing the type to DEV_UNKNOWN the 3 case can be
> removed from the switch, saving a comparison and jump.
> 
> Signed-off-by: Tom Rix <trix@redhat.com>

Some maintainers have a preference for a default case statement but
presumably this case statement has been cutting it as is so:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/edac/sb_edac.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/edac/sb_edac.c b/drivers/edac/sb_edac.c
> index 68f2fe4df333..93daa4297f2e 100644
> --- a/drivers/edac/sb_edac.c
> +++ b/drivers/edac/sb_edac.c
> @@ -939,12 +939,9 @@ static enum dev_type sbridge_get_width(struct sbridge_pvt *pvt, u32 mtr)
>  
>  static enum dev_type __ibridge_get_width(u32 mtr)
>  {
> -	enum dev_type type;
> +	enum dev_type type = DEV_UNKNOWN;
>  
>  	switch (mtr) {
> -	case 3:
> -		type = DEV_UNKNOWN;
> -		break;
>  	case 2:
>  		type = DEV_X16;
>  		break;
> -- 
> 2.18.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200907153225.7294-1-trix%40redhat.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908042851.GA1422621%40ubuntu-n2-xlarge-x86.
