Return-Path: <clang-built-linux+bncBAABBHNP2T6QKGQEC56VBFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id C178E2B7DBF
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 13:46:21 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id z9sf543831ljh.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 04:46:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605703581; cv=pass;
        d=google.com; s=arc-20160816;
        b=fXGM8f8PyfCH+0E/qA2hn/0Bxj/cRt0WMduRzONJtgst4q6p/JY3fMKduSvXB16UEo
         Qh/buQ240SjSRuJ3Dh0lqY7Fi6J0m5pmBV1e2DXhmJMgoOZRMGtznB0r478lwNqApFd7
         AChHkVbXdNpGil7BFF14gka/ZWutI5/XbxiwZIXRRL6v6fCeBmIZEnVLwCH5cjXAyutw
         +ZV1KBPB+llJ2m+fGRFvFO3B9G21MZfA4HVfTjJ27v2YP3kE6vBwVhX7tjy5jJII+M4o
         lH7/TXt0Jb/Uzc7SqRjPJ2jDdiUwg+fnZyOrKl0Z9NqcQVF0j8dNPUJHnI/mwUqMFPrg
         gJuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Qz/4xvMVzwqHhEbOdoKkoDxSKU4iUm/aMc6JWJE9bmM=;
        b=WHMiOy/oh0lmUPDQEZpQ1/HSKvHgoG07QGUYym6y6ZlBCBXDdRX+fNaDXL4BubuU2R
         XOB+ViFJZ5uryPumJ//+cF5sb3VAeaTY0n6EhaNbRU0pOpKAFPmm1oNdMjjkRtjzZf8R
         t5UBuNIZBuwjDPRGDGsGq97wRvDYp133tjlIMEUFehmWzcoS2z8Uk+bVuVJqAmEXUurQ
         pFDWMD8WqcKVOBR4LyFae9HFYsmvFhbOQ6wNipiNMlAL7gtyRd1JTZlsxK3XrO862kAh
         nNldKxaM/sIgclwX1P8vzZWL0IMCvWknt6YspJ5UAw6V+S8jOMDPzd7Lecxq1GXGm3pZ
         kRiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=WCfWgtAO;
       spf=pass (google.com: domain of mhocko@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=mhocko@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Qz/4xvMVzwqHhEbOdoKkoDxSKU4iUm/aMc6JWJE9bmM=;
        b=Vb+aXT4qtUYqj8u8soglZe0t4g+ne3M8CrpXClqnJjRmjejyFbCuZW5h26J/otn+GR
         ch7AyrdbHWn4aRTx9qqnBgXQXvFrTVeVfUcSMit4OFHEivNr7HN4OG9PNpggAhuSd30R
         wUSg6EeHOblIWt/yeF+txHjfvVnTkcuGN1fXyzx4/PUUNbc8G1KkPKpSu3OYJIaTM8gE
         dskRSkX29PjRxo3tDlZ859yDO5l5zXFeMA77q7YGWxeds48CPai8WSZbwoVonX5Y/lui
         Pdd51uV8PXx1uyreOM9ejLlp4sqLLJk0YPUsUx87LMDXg+zPAAYNSrjjWZjdH1RtflZR
         J59g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qz/4xvMVzwqHhEbOdoKkoDxSKU4iUm/aMc6JWJE9bmM=;
        b=sj4WUeOxohkw86J4CvQ/r80bX15fs1r6aZhVNCVzjgwEUG2XPrFM2SzBqNn0UcjqEy
         xLHUWfiTQMrDa1NFhzL8+/70FvPW3/2Uqh081cqbO3BOzbeFmlbfSWiWegix/cajj6WP
         hMdMGyw4IXzUggblZEg59G6rOI0AIBwzchWnH7ZwQ3movynGld3y1sUkh9nPZC/aLHWR
         IIxH+4UVFdyUJ9AoX1jaWRBiepL313j4wRURvMgSPODWb+YRFy93qKo3rGfT1c0nOtn9
         h5sYV2pwdXnQ6mXuyMjsfSZLpiat2P2spCp5lzLz6igY+jV8guZGhpRMAn1ls1o2iQ9N
         1BMw==
X-Gm-Message-State: AOAM532UwlEf5qPzX26QEyy6TRv6b5Q6Ahy1M6hwQGNft+Ww8w+A7QDN
	I3D3ZRfzeChpKdy3preNtfE=
X-Google-Smtp-Source: ABdhPJywBupAIyyFFFR2V/is25rJMUFl7Uq68cNVrA9K9259Qy9ywFGP8jsev2S+nJGBNROaKAbbBg==
X-Received: by 2002:a2e:8496:: with SMTP id b22mr4295338ljh.252.1605703581285;
        Wed, 18 Nov 2020 04:46:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ccc2:: with SMTP id c185ls13176552lfg.3.gmail; Wed, 18
 Nov 2020 04:46:20 -0800 (PST)
X-Received: by 2002:a19:ec09:: with SMTP id b9mr4021099lfa.178.1605703580057;
        Wed, 18 Nov 2020 04:46:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605703580; cv=none;
        d=google.com; s=arc-20160816;
        b=s6mZRO8SHzpIdnVqqfYYrSp8kpgvbvXYr+EzfrYP2ZPTqn6tl8ne4QF4LuJbK77Yxi
         5UPNeIPk9+7GbC1vgrWoBbKTyQvkdvZQzkSeI/hqvVe1eBok4/sg7oqa1BCuZPSxzuZS
         2kEK5O46U4H7GMQZVjeYDEx5CPlZPahs2PTP/tKy2xeq++UDOXe2kKjsjrsIC7LZsdUS
         bITAP753fsEblUev9DsgiiC8zuUkraz8OzyfadPdJIFb6P7ag7gBDMVAH9dAWqD2Qop6
         Zzc27J3ZKh88FMTb2qjAZd0KtQRTKJo3FBHEIM6/6e4ghWkpBmb8QRniAFs1bxbt+YtC
         Lc+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=I+Qzkkhk4C6GtBU8xVUeEofjQe9CXbPuBs8NdbyYcoo=;
        b=Wj7K9oiUTMO/jT89knBmwxjnlfGl4fxsS/UoyAiXKXYtSYrYEH7oRb9no3epicv7No
         w/uACaJBsx8Q3e3Z2kkCSOM1IjavR2WRp15ab2wZfssmpxoOLgKC1cxen+tOu9rqoh0I
         U4LZA8WJDZtCzo6ca09CgVeTYjyQDnRM9IpE+8eoVnc6WJI887CwT/jda1BhMINZel7g
         cZ3Z/mFWac2xjyT9AyYBBSbRuSQIk1c4yrK2Xm3o8cemyUJwfATgEn8zmlYFwTEq4TpH
         pNhXqfmLuiTTAWYf/7yqmuweDWeAyNnwAp78558jnTimx8fUhnXmZnpQP5FtRvKS4Rpi
         IXow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=WCfWgtAO;
       spf=pass (google.com: domain of mhocko@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=mhocko@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id q189si557922ljb.1.2020.11.18.04.46.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Nov 2020 04:46:19 -0800 (PST)
Received-SPF: pass (google.com: domain of mhocko@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 3BFBAAC91;
	Wed, 18 Nov 2020 12:46:18 +0000 (UTC)
Date: Wed, 18 Nov 2020 13:46:17 +0100
From: "'Michal Hocko' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Roman Gushchin <guro@fb.com>, Johannes Weiner <hannes@cmpxchg.org>,
	Andrew Morton <akpm@linux-foundation.org>, cgroups@vger.kernel.org,
	linux-mm@kvack.org, Vladimir Davydov <vdavydov.dev@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] mm: memcg: remove obsolete memcg_has_children()
Message-ID: <20201118124617.GR12284@dhcp22.suse.cz>
References: <20201116055043.20886-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201116055043.20886-1-lukas.bulwahn@gmail.com>
X-Original-Sender: mhocko@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=WCfWgtAO;       spf=pass
 (google.com: domain of mhocko@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=mhocko@suse.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=suse.com
X-Original-From: Michal Hocko <mhocko@suse.com>
Reply-To: Michal Hocko <mhocko@suse.com>
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

On Mon 16-11-20 06:50:43, Lukas Bulwahn wrote:
> Commit 2ef1bf118c40 ("mm: memcg: deprecate the non-hierarchical mode")
> removed the only use of memcg_has_children() in
> mem_cgroup_hierarchy_write() as part of the feature deprecation.
> 
> Hence, since then, make CC=clang W=1 warns:
> 
>   mm/memcontrol.c:3421:20:
>     warning: unused function 'memcg_has_children' [-Wunused-function]
> 
> Simply remove this obsolete unused function.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

git grep agrees
Acked-by: Michal Hocko <mhocko@suse.com>

> ---
> applies cleanly on next-20201113, not on current master
> 
> Roman, please ack.
> 
> Andrew, please pick this minor non-urgent patch into your -next tree.
> 
>  mm/memcontrol.c | 13 -------------
>  1 file changed, 13 deletions(-)
> 
> diff --git a/mm/memcontrol.c b/mm/memcontrol.c
> index f95ddb3e9898..d49d7c507284 100644
> --- a/mm/memcontrol.c
> +++ b/mm/memcontrol.c
> @@ -3415,19 +3415,6 @@ unsigned long mem_cgroup_soft_limit_reclaim(pg_data_t *pgdat, int order,
>  	return nr_reclaimed;
>  }
>  
> -/*
> - * Test whether @memcg has children, dead or alive.
> - */
> -static inline bool memcg_has_children(struct mem_cgroup *memcg)
> -{
> -	bool ret;
> -
> -	rcu_read_lock();
> -	ret = css_next_child(NULL, &memcg->css);
> -	rcu_read_unlock();
> -	return ret;
> -}
> -
>  /*
>   * Reclaims as many pages from the given memcg as possible.
>   *
> -- 
> 2.17.1

-- 
Michal Hocko
SUSE Labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118124617.GR12284%40dhcp22.suse.cz.
