Return-Path: <clang-built-linux+bncBDBZNDGJ54FBB37UROEAMGQE7SR5QYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0C43DAB7E
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 20:58:57 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id f9-20020a1709028609b0290128bcba6be7sf5654292plo.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 11:58:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627585136; cv=pass;
        d=google.com; s=arc-20160816;
        b=eQZE6YKJRa+rDePzNXaE/0BgC3ZuEL9lTZ4ZgLhY8iMzBGswTpteaZpc/JgQ1BY+tG
         xPqGMNBNAPH4ZntQ+qA7ThkMsVkVsJ7k6u8xtUpDWtdeEHNG4l3Uv0fgfYJ5oIQoTD2J
         WJ60odrMvM8rhq2lpKTDGoGao0QkcUYmS2yyIc6rr6u4H8YUmoCKgP77V1krj8pMa5Xg
         bNOtOMk8rmARPxFl2ni8xlWV2dZNLqB7u3fKUBqvf0atjFz1uT92RGsjpSSarSBkSByq
         Bf/coClz5GI5nfDkzcp3wXgJsBvP76T1IlBfmwEOeeRH6cJOSno3rC2naTNFBM4Q6eBi
         Sc8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=wkVqrsvUDN0UhRWt4TKmjBNSotadfPL7CrIzjE6bG3Y=;
        b=WmOSPaFSFYXIf8oALuLEG8xy/eisEtW4/acCqb10LacjWFlHnWoNcj8tp6Xb7xmEmC
         6vRT0tlO0JXBkq51eftYB+XLnr+EsQ7VjheTzoWh0jzGNk8hPmag9/nwfX7+tXqO7BQw
         BRbhu4bN/GfplBtp7a9VKPUoUsKzz0BVY0lu2nrrmq0mYEiJSMINvfVMv1jBrokmbhMM
         GCTwJbWq63ae+L5kPh48bcFZJYIrTNwe4asWbr3D8wF/s0W+Wf/tGYEIXj9JmIURA/we
         6LDKy0XFSSjIENZAmwHOPH7A2Bb/3gwQNRKdqXfGf3Clm37erT7VJ0cEKh2n6n1an+3L
         jXNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QwbKTXNK;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wkVqrsvUDN0UhRWt4TKmjBNSotadfPL7CrIzjE6bG3Y=;
        b=KTTYuHvINE6m5TrOfQoMbSHcNOpO0qOt2HO1VN0Azs1wqhI+Hd5CMQ4KkBAnQu+Pkt
         DiQhZvEGFpay+jbNH+0SLW3jdyhRbTHzG4AqR6exmoOP1T357e1FnKMOhHwap2NTQWK6
         b0TVpvckH5q8cheGcrZ5ls6xmn9rkUvjMUT/5iWYPreADplo39EMwNNWJ/gDQ+2vcnAx
         a9u3FeTn7wLKEMEVCuDMUwrS8xarWWMtEa3+KSdW/dXDaBuAH9OoHUOweEWwXb/zKV6u
         gM6QFhXLLRsVLH2HbaDeVrFHusAjVN/8AgkEPEfd0Ecp7q9g77YMLv/5py/or96WTDyY
         S0hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wkVqrsvUDN0UhRWt4TKmjBNSotadfPL7CrIzjE6bG3Y=;
        b=MAl8xazyF+yV9Vg1+wDy9gZYjBCGpXHcUdiFbnljNK8eo85kz54ORxtGJUNh+myy3t
         OQccoO4WEqHotscFYS2BLsLbGD+4gyuhBla2nyoylach28+R9WHX6m5tVmzuzc61+Daq
         xN9rkZH09XWg/qDu3DJXZJvVKIH4gIgfXrAaXTeCNpmAp2BVVmd1ppg3g6ddqxxmqe1a
         2ENsvDNueKvfi3IBKHXNVW6C4ITJ+Jonixa2Bw6IiJo3kYeBeuzY/4TS7q70JvpPHmnV
         iQADvY8ztWhgh1kpaO6+8BEFNTcHeOomT0Nweak7gVEDNXoEuvY3Zh2lQJ14i74kW5/L
         rnUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Fo++RDz9H1e+BRrBjRX2BkGNbyw0dsYbaZCICdGS3wyAPT409
	M5XExDuRUT7s3pYlOGMbYAg=
X-Google-Smtp-Source: ABdhPJyX+n/SwEYoaSAVxODOAX4HmANzODVekM7G8NZKeFqxa3obHDJUVrWZ749kF2xXjgS6JdwDNw==
X-Received: by 2002:a17:90a:c24b:: with SMTP id d11mr16479750pjx.91.1627585136087;
        Thu, 29 Jul 2021 11:58:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e23:: with SMTP id d35ls3405480pgl.5.gmail; Thu, 29 Jul
 2021 11:58:55 -0700 (PDT)
X-Received: by 2002:a63:4423:: with SMTP id r35mr4954505pga.358.1627585135397;
        Thu, 29 Jul 2021 11:58:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627585135; cv=none;
        d=google.com; s=arc-20160816;
        b=ZdPIGYQZv8BoXEi9fWtnMvKw3J/3uOh3CrF2MCiyAz1sGQhwWoHjP3uAXmQ8UOhxp+
         JrUu0SaJZxFj1R9WBWrHz4unCUVaX3tZSmEO7d9mbdQdplPufHdzhOFLDF+IQ+nYnHMq
         tgBzcMN/MraxVtLEtFvlXH/e4aDyw8RUwxz5U9F3jV/k4xZYyBAyP1XClIhVs2w+j22L
         +w4yl9ORA0hnPRO8wGtJSbCq+rPortAiR0StaNG8gLHBApMT1mzdNcujDQyof+CdoTAD
         F+tkj0PZIYClVt1+zbHpKcQAKeheGZQW94rJily3FD9PlREp1qtK8L/+gNU2IUtNHw8N
         bnow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rzNKwIgd+C7t0uil3ET2XUn+O6Zr687dA6Xb2Xh2KR4=;
        b=pbe5nXYQ2esEmy0RjARA3wJNhXjy6z47zgZTTngxIureWH5QWK120DKPSmGs2BMb1+
         CwkV/ji7WbzEsZrctkNQqK4Pn/DvB4YZuuSVXZy3XiC1bLkylLoxE5Sl4tIYB5uMAhqA
         pNGsdfc5rLaOfiqf0VzHtadig8VkLpX/9wevRimPDZtgl56J17W8Qi516oZFST2Albci
         T4k38AxkXjY+QHUwYQbozlboSCFh/9ore5TE818cMp3GoBO6timXSEj0yiJbVwTQ/cXz
         srE3HoozcZpTRpZbTOWwiEO++lcV1wvAQ3AC2gV83fJCrJYPJ5Gc6wQm3HauNuW27MrF
         P93w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QwbKTXNK;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u5si826722pji.0.2021.07.29.11.58.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Jul 2021 11:58:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7D1F9600D4;
	Thu, 29 Jul 2021 18:58:52 +0000 (UTC)
Date: Thu, 29 Jul 2021 11:58:50 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org, "Gustavo A. R. Silva"
 <gustavoars@kernel.org>, Keith Packard <keithpac@amazon.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Morton
 <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH 54/64] ipv6: Use struct_group() to zero rt6_info
Message-ID: <20210729115850.7f913c73@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210727205855.411487-55-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
	<20210727205855.411487-55-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QwbKTXNK;       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, 27 Jul 2021 13:58:45 -0700 Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
> 
> Add struct_group() to mark region of struct rt6_info that should be
> initialized to zero.

memset_after() ?

> diff --git a/include/net/ip6_fib.h b/include/net/ip6_fib.h
> index 15b7fbe6b15c..9816e7444918 100644
> --- a/include/net/ip6_fib.h
> +++ b/include/net/ip6_fib.h
> @@ -205,20 +205,22 @@ struct fib6_info {
>  
>  struct rt6_info {
>  	struct dst_entry		dst;
> -	struct fib6_info __rcu		*from;
> -	int				sernum;
> -
> -	struct rt6key			rt6i_dst;
> -	struct rt6key			rt6i_src;
> -	struct in6_addr			rt6i_gateway;
> -	struct inet6_dev		*rt6i_idev;
> -	u32				rt6i_flags;
> -
> -	struct list_head		rt6i_uncached;
> -	struct uncached_list		*rt6i_uncached_list;
> -
> -	/* more non-fragment space at head required */
> -	unsigned short			rt6i_nfheader_len;
> +	struct_group(init,
> +		struct fib6_info __rcu		*from;
> +		int				sernum;
> +
> +		struct rt6key			rt6i_dst;
> +		struct rt6key			rt6i_src;
> +		struct in6_addr			rt6i_gateway;
> +		struct inet6_dev		*rt6i_idev;
> +		u32				rt6i_flags;
> +
> +		struct list_head		rt6i_uncached;
> +		struct uncached_list		*rt6i_uncached_list;
> +
> +		/* more non-fragment space at head required */
> +		unsigned short			rt6i_nfheader_len;
> +	);
>  };
>  
>  struct fib6_result {
> diff --git a/net/ipv6/route.c b/net/ipv6/route.c
> index 6b8051106aba..bbcc605bab57 100644
> --- a/net/ipv6/route.c
> +++ b/net/ipv6/route.c
> @@ -327,9 +327,7 @@ static const struct rt6_info ip6_blk_hole_entry_template = {
>  
>  static void rt6_info_init(struct rt6_info *rt)
>  {
> -	struct dst_entry *dst = &rt->dst;
> -
> -	memset(dst + 1, 0, sizeof(*rt) - sizeof(*dst));
> +	memset(&rt->init, 0, sizeof(rt->init));
>  	INIT_LIST_HEAD(&rt->rt6i_uncached);
>  }
>  

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210729115850.7f913c73%40kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com.
