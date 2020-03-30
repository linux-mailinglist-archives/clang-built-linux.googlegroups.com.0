Return-Path: <clang-built-linux+bncBD5LDHXSYUMRBLUZQ72AKGQEC435LRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCD819796C
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 12:40:47 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id 2sf8600402wmf.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 03:40:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585564847; cv=pass;
        d=google.com; s=arc-20160816;
        b=mXIvABASIZ3WT+zI56hyVchOB88wWDw/1f7fPOBaLHSuwlUC6l8Hnsm7ZTC5VayB9D
         gR7sOotfxcASbJeFZ2s+ITG8rN9OUZSyDQepesJFgJUQ4F+Zpmf3IablE/5CEbJAtvtS
         T+WLiuq6pGtJsmIHZPqW+i7/Yr5fnI8Ivh3Jp+/dzTAftrCmAlY1L0T112xPAJyTN4Ku
         5KZS3yV5ik18dU7sFJyvoUIF6jC7HYG0YbaGgFF/mgzpRSCiCAasZHFjGrdn/dIiLNyq
         xHH5KWvjS1Q0L50+si/SS7BlnAkV1/kTKW7UROgUpMoa5qYfvIQYWqxmSNzKWCmMzZab
         T0cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ci284A/SxIf3dolPZQF19NxEh1kPvfM4tfbL7f7B6B0=;
        b=cjE6obNxfqnBytaRt5NKDzqAl8/Pr3prvjK4nc8Rxw0N1lBB+AdeGFxlR+deQDpCG5
         Z91ruUOLCpW0Mxqj/1v1mwFnKkK1UTl80TLKXGWCmWzE9hw7zRX73o8PFG0ipfQI+7Zv
         f+bXUSRbAD8pt1wWMu7Ff2+TgQBo4hfFCY5gtI8fzI13gonh9VBTA0PpQZFD2MlPq4eS
         7TnDh9qTQGbameBL7uKB8u8U544dLSf1HZhySAiMoIyigEPdhezS3t3awDsfw7iS4ako
         oi4cHCcGe47W/0s2OIFb/Fd2A6y339tVPVfEZY7x921pYAXtFToEwu4cmz1woHebFqMC
         h56Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=jack@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ci284A/SxIf3dolPZQF19NxEh1kPvfM4tfbL7f7B6B0=;
        b=EtN+WNMb9bEalqq4E1Fq6ZIctUW7iOLb6B6Zj9gmq7KaLxrehRSL8raDVsgmpDUYcW
         ELKhexKQWxfC0Qyy+KE3xIAwqkxJP5bUX8j1otUmjx16Up39jnKVOGSNI8ED4AdSWT8W
         lGRDbg6txPdGvxHQjmQ/1eUf3Pb+rVQ9HNjDOv0Gf5O8hWMRifteR0/gMb//I4y9JXBz
         FhPz6nlRaqokLxUUKZd3Wuk64M2xbR9DBaO9cHxnErrr48tECDdftcahtMYyKs6wh+57
         fBakWFxMVjLwwYGSIm0pa+GAHCJE6r8pZUIF3UtaWNUQdQy2JBVPJT8pZfRR9Y2cReAb
         tFMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ci284A/SxIf3dolPZQF19NxEh1kPvfM4tfbL7f7B6B0=;
        b=TohqJTuJU9ZhEzhgbBujiAgfLbP0dMb4B4FKZZq0uTlWbR68Xb0azUFDbT2u3T8TV5
         HJcUIR0hb1fBvhULIrJu/dNJhjh6Ex2aU3oPcwm/7zf74v3YsqwAxZmJNKv1YZxbpxM8
         0GOaH705vP9X/EZipsJp5Di959tonCCoin8jTr+5Tl7TSyk08wY9JUhG0dPM59Ct4adD
         QyE7bMuFPRmWiQEUNondgcZIutJiqCOhuUSoOMPvofxC8q855XR4v+gvy7Son2pEHz+z
         21MhJoNeTiSH+4i9pyqFgmg+j31hPX4Qluv3NaVuqyMArJ7aBF5ibFTj13yOwWaAPZ/a
         l3FA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ29s50ZiBRYOhyHvEG2V22ojIQjFFQXMxGeVXpQ7axx8pmSBoLd
	A/pdJghlFC/u0YJXU6ZPyJk=
X-Google-Smtp-Source: ADFU+vuo51rfVS6i9UGtkd45OO1sivf0HRjIiI6hq7hg4pFoZ9D9bpsuF8X/5xY0cL9mL/ldljfuYg==
X-Received: by 2002:a1c:4c0f:: with SMTP id z15mr1575856wmf.95.1585564846946;
        Mon, 30 Mar 2020 03:40:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls301350wrd.5.gmail; Mon, 30 Mar
 2020 03:40:46 -0700 (PDT)
X-Received: by 2002:a5d:54c8:: with SMTP id x8mr14918375wrv.357.1585564846421;
        Mon, 30 Mar 2020 03:40:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585564846; cv=none;
        d=google.com; s=arc-20160816;
        b=CDtaVUi91ddRij6QljE61iHKM1FF2SsE1OhU+BEJV4bX8IhxKU3gKdaRmMmH24kvgk
         wpgtFS1K322APJ46BdyIa616YKOYPkuoW8A4USFvbKQVpj5y0G4LT3hzffLo01t9TmNt
         CMc1tw4uxUVPhhx3fMupEk/h2EoS4bMSoA6whX1jaFtYhpqMUA57JFEG9E4yfdtrleIS
         dNeh5PMdTubq04r0+6OwlQc/pPFQzgMNPZnyD8LwArQ1AcAPQNfAJfnBa3Hc1hqCdaZC
         I54ZwOWM116g8VpUiznuCxsU+ukLAqbHe8px9MyFOKy+TnPfoLBdvhOjopZirrwdZziN
         cfoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=eMmz2FQqC5ukqIw9/GEdM4rADN/L5cgj5TJW8GvJ6lw=;
        b=WK9Gl+1iWVM1hE/LnN4Bn5I6q4efsDgTpyzoBA9NB2fpvNHao3BAJF8a4YaOCMhnuu
         KlS8a/YlQBmMTWhgrBfH+2bRZ4R99lrOwHh5NX6ifXSW5V4zb6TZs5ImaeAIATUnwdqs
         d1mT+htEiUOS4JuXzps40Yud3PfIMbruly3IF9Cx2PSeFbqFRVoIXUh863THeZq422vd
         eodrYcXrRKA4WZfJ0jcYOWrVRXB+46T+5QGsoTOLaUqO//AbKdQgc6cSdCezA3ptj3gc
         k7A61AJhcetTw8jMKSIUARHgv7NhMHttjyc8UvXqvIhE9S8/ROjm4Gma3stXye3m4oHB
         sqHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=jack@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id y83si465938wmb.1.2020.03.30.03.40.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 03:40:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 0BC6AADDD;
	Mon, 30 Mar 2020 10:40:46 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
	id D40561E11AF; Mon, 30 Mar 2020 12:40:45 +0200 (CEST)
Date: Mon, 30 Mar 2020 12:40:45 +0200
From: Jan Kara <jack@suse.cz>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jan Kara <jack@suse.cz>, Amir Goldstein <amir73il@gmail.com>,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH -next] fanotify: Fix the checks in fanotify_fsid_equal
Message-ID: <20200330104045.GA26544@quack2.suse.cz>
References: <20200327171030.30625-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200327171030.30625-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jack@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jack@suse.cz
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

On Fri 27-03-20 10:10:30, Nathan Chancellor wrote:
> Clang warns:
> 
> fs/notify/fanotify/fanotify.c:28:23: warning: self-comparison always
> evaluates to true [-Wtautological-compare]
>         return fsid1->val[0] == fsid1->val[0] && fsid2->val[1] == fsid2->val[1];
>                              ^
> fs/notify/fanotify/fanotify.c:28:57: warning: self-comparison always
> evaluates to true [-Wtautological-compare]
>         return fsid1->val[0] == fsid1->val[0] && fsid2->val[1] == fsid2->val[1];
>                                                                ^
> 2 warnings generated.
> 
> The intention was clearly to compare val[0] and val[1] in the two
> different fsid structs. Fix it otherwise this function always returns
> true.
> 
> Fixes: afc894c784c8 ("fanotify: Store fanotify handles differently")
> Link: https://github.com/ClangBuiltLinux/linux/issues/952
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the fix! That's a good catch that would have been pain to debug!
I've applied it to my tree.

								Honza

> ---
>  fs/notify/fanotify/fanotify.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/notify/fanotify/fanotify.c b/fs/notify/fanotify/fanotify.c
> index 7a889da1ee12..cb54ecdb3fb9 100644
> --- a/fs/notify/fanotify/fanotify.c
> +++ b/fs/notify/fanotify/fanotify.c
> @@ -25,7 +25,7 @@ static bool fanotify_path_equal(struct path *p1, struct path *p2)
>  static inline bool fanotify_fsid_equal(__kernel_fsid_t *fsid1,
>  				       __kernel_fsid_t *fsid2)
>  {
> -	return fsid1->val[0] == fsid1->val[0] && fsid2->val[1] == fsid2->val[1];
> +	return fsid1->val[0] == fsid2->val[0] && fsid1->val[1] == fsid2->val[1];
>  }
>  
>  static bool fanotify_fh_equal(struct fanotify_fh *fh1,
> -- 
> 2.26.0
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200330104045.GA26544%40quack2.suse.cz.
