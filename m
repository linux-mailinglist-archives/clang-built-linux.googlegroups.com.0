Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSV7YT5AKGQEJM2I7QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 077BE25C782
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 18:54:36 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id b142sf2319551pfb.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 09:54:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599152074; cv=pass;
        d=google.com; s=arc-20160816;
        b=0bcfMsDMhIHaXVTh9X+M7gQxqv2pO6v/p7mtJvW6FO7mwPK1zDhoJFXjHplsc6VJse
         8cPIk+u8UO2FcURUt8f6iDcr/b6KdAI2Xg0uvk/fAzTjOGGMcgzToC3qe28LrBTrasJb
         43hfTJMp4SbDLgOGvBrYLC4OrvgLzVqk9DPrS2ibf9xkGIOW6FEz+my4zwiGKqBLAJ81
         UiEHPIMs2B1qSv+e+ThDPhP2+mtzrq5WWhZ+yX0jgPkpDrZieemDINC6xWbxU1od88RU
         3lpL4UP4Yh0GUhj2AYnnGH3NvANPE6JxBMCyaQEHUCPIOr886rlLstVM7WOQf0ZTVJbs
         B2tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=u+x2pKuncZ8ifnQxknEOHgG0nprLmEu8mXXLztkTnPM=;
        b=Hhd1U3yh7zc8MJnjs1wt1MCOlqsOi5G9rfk7czhgH/6jEjJyT0BpBQtk3MGE+ghijb
         w83zMmessC3/MhNCraX8W+QVMtMbOzrgN0abR/dUKFGc2Sq4D2KKT1HwGArI7En5b/XC
         OdJYGu5pi35u1+73WMZE6N1txjlIWr1D7gHwfQ1V2U248guRPoYqFV0H3WqTO8Wn3tZv
         +HOSakJ6tf/w8UznYhx+u5xIp3OeOG5QSaxmQNBGrmyQ2XVDQpmpCoO1XqeQEjhLBMN+
         673g1veLdsqsPXQjpQNuIOKDczSw24PqL5CzBFwosiSqmvtuA3pYukF5M34bxp8bvYB5
         NUKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KBYeEkkp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u+x2pKuncZ8ifnQxknEOHgG0nprLmEu8mXXLztkTnPM=;
        b=BfVrdkgXPCUPEg6lWgbfpg+4zhCe5P+INHQmV1qGuGU95uRMfYHKLQngPmkdViFC46
         lSh6RCAWSm/cR3oA9lbkCvNJL80LvrvALJVkS53hSg+pvi578i4SElZWg0EPNslFKBkz
         J6TESvUOHs9xe02sWxnfgBCpSQSO4ty0Baott7Fd6k71mLdx5wSQTda7rj9q81pLwAEr
         BHQ223QurS4/C5+qFyfwqoMu83vUjt/R7Wt00zniJDGoGIlUTnEtSVPu2MZ+vVKFpSYv
         gVHoxoQFkiBUcJryfYWoR3lPgBPRUVv0ECfQa/uI98r2wUHADMryUW6DNcXprK5SjPU9
         gIBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u+x2pKuncZ8ifnQxknEOHgG0nprLmEu8mXXLztkTnPM=;
        b=B1tB0hytjyJwhSoSvyRInTnLDNCh7qj8hExc3gfpTi5nXjPt/UBI+RpnY4SDvurPuj
         aQeQZsVwKGu+pU/unt/sppOmAIBLvyCKpBQcR/aF+7u4VcLxdUy8mSRc1+8nWbxHa/Zu
         BfUetxKCAgclzwbGyojShuCfzgT1XBxqBm/xPSOKd+RyUqcAjKu40YN7leUDY8O3xzFi
         eEHb+axhuwjfu7wHBxMYs0B0Xw6IMx9+IOAydcyjoJca2tXu1EFbxItycJmW1rKV8koy
         GWnky0ORyumuqFbAuyD2OaEBaDsBigMsU+xcztPnJiEVd0C47IOMxZUOQGN1JfwxHFEb
         4aDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u+x2pKuncZ8ifnQxknEOHgG0nprLmEu8mXXLztkTnPM=;
        b=tcNgHsGME/MHDCWwQ9BMGuuH+VR6k2y3iUnoRRIjU9NMl5S5pDaeSqUHTJXNWT5/oA
         bPDkjk7z0ZQCyQHZVzY++yh3SDU4tZFSnflySRWtG8JEUccoslVqSCWrZMfpkXJm+Q/y
         Zv1XB0dxGvgsfZAKNJ1sCfpkPrQZpcYo0I1HpGGrFGxYsLvb99OU1qTIPlrVumYbVR8o
         SPz7AthbZgpEvCX4u4ut+Hc+wTP3b7jv81Fnp9Zfar3WbWBlJmbsfMcpDnXLbPUMAIok
         POi7poSqDEBBsLNm3pq48FRpgcndWe/RAhfFFoxyor6Grst6uz0P+LYB5mBMpA2VJqUb
         NNCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oBtn40vVJcewGB4Q2adtHp3Hr34szookRBsM40AWpBhXY1c6A
	60BYEBoHlcqh6YS3LR6DLoI=
X-Google-Smtp-Source: ABdhPJzpiDMHDcACHCfjUogwEHRWPctDWw2/b/yjghjmRctAUnXkThSZKyZ/KnTRyCVtrO8XSzubDw==
X-Received: by 2002:a63:2a89:: with SMTP id q131mr3668243pgq.330.1599152074342;
        Thu, 03 Sep 2020 09:54:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7e90:: with SMTP id z138ls2621206pfc.8.gmail; Thu, 03
 Sep 2020 09:54:33 -0700 (PDT)
X-Received: by 2002:a63:5160:: with SMTP id r32mr3895934pgl.112.1599152073875;
        Thu, 03 Sep 2020 09:54:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599152073; cv=none;
        d=google.com; s=arc-20160816;
        b=olqu9yacLp6GeJPZlJG5E+fF62h0tDoiJZJ9eLqPJ1C0EDShc9/Du9vO3vsfdoRPu8
         OiHLHKmlXAzLLJg1KTqo1EJUYE7Pszj3CrqByJ6Evd6VlZ1DbTAPMwIYGZOsW80utTuG
         826rdewlOog0KtYQERbBSXDangiSe5HPcWOQkquqP9oJN4DcDb2CelgXhnuahEr4rXu8
         BGLs3Mx9vJOPJyiLO+8AyVJPKK9wiEGsKw7ngrX9oxMGQWeE/0nrfNRFb6j7BDGeHJyB
         CZIqNQPSRBD07YjsvmODuRFDBx/ytz72kS9HriHXmUaYzu6nwLfmBB21tPFxdShxAeB2
         eY2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pPIlhO83NbYR2Iu+Rl8jTDV2i9P/pTQITMRP/d/Npl0=;
        b=RO0es+xSx+co8SEn8ALcSXWcTVryjK5vUaBxuIViyeHnh+8jZzdT1FK1BwmXeYHpoe
         EMPoblqK3RoQ1tSDKc48oELnrrULVtQTiH0ZNe4mrSHiJobj9zx94DlIiVdO1qK3tdzJ
         VfnkTdgy2YWwfuHUm5PHa2C7tL3m0e5hH3OAJ+BJvISB6JWOUGPfMGuoOizxkgt5DM5j
         9QGuj519ddbbJREqN0Mjxw2kN+ZqpdpybXrUESOVIK25CEPpJOVALeBbBx5DPG+MP/Vz
         5mvxCqtjRPLNNs7ayaBBrobyDqgiNKDErGX6L6i5UnD+UJtwYts/arU4sJmWt1HzsBDZ
         b9sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KBYeEkkp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id lj12si241641pjb.0.2020.09.03.09.54.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 09:54:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id cr8so1625552qvb.10
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 09:54:33 -0700 (PDT)
X-Received: by 2002:a0c:c988:: with SMTP id b8mr2989741qvk.192.1599152072939;
        Thu, 03 Sep 2020 09:54:32 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id i1sm2531306qkd.58.2020.09.03.09.54.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 09:54:31 -0700 (PDT)
Date: Thu, 3 Sep 2020 09:54:30 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: trix@redhat.com
Cc: mchehab@kernel.org, ndesaulniers@google.com, brad@nextdimension.cc,
	mkrufky@linuxtv.org, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] media: em28xx: fix function pointer check
Message-ID: <20200903165430.GA894500@ubuntu-n2-xlarge-x86>
References: <20200903145038.20076-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903145038.20076-1-trix@redhat.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KBYeEkkp;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Sep 03, 2020 at 07:50:38AM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analyzer reports this problem
> 
> em28xx-core.c:1162:4: warning: Called function pointer
>   is null (null dereference)
>         ops->suspend(dev->dev_next);
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> This is the problem block
> 
> 	if (ops->suspend)
> 		ops->suspend(dev);
> 	if (dev->dev_next)
> 		ops->suspend(dev->dev_next);
> 
> The check for ops->suspend only covers one statement.
> So fix the check consistent with other similar in
> the file.
> 
> Change a similar check in em28xx_resume_extension()
> to use consistent logic as its siblings.
> 
> Fixes: be7fd3c3a8c5 ("media: em28xx: Hauppauge DualHD second tuner functionality")
> Signed-off-by: Tom Rix <trix@redhat.com>

Seems reasonable.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/media/usb/em28xx/em28xx-core.c | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/media/usb/em28xx/em28xx-core.c b/drivers/media/usb/em28xx/em28xx-core.c
> index e6088b5d1b80..d60f4c2a661d 100644
> --- a/drivers/media/usb/em28xx/em28xx-core.c
> +++ b/drivers/media/usb/em28xx/em28xx-core.c
> @@ -1156,10 +1156,11 @@ int em28xx_suspend_extension(struct em28xx *dev)
>  	dev_info(&dev->intf->dev, "Suspending extensions\n");
>  	mutex_lock(&em28xx_devlist_mutex);
>  	list_for_each_entry(ops, &em28xx_extension_devlist, next) {
> -		if (ops->suspend)
> +		if (ops->suspend) {
>  			ops->suspend(dev);
> -		if (dev->dev_next)
> -			ops->suspend(dev->dev_next);
> +			if (dev->dev_next)
> +				ops->suspend(dev->dev_next);
> +		}
>  	}
>  	mutex_unlock(&em28xx_devlist_mutex);
>  	return 0;
> @@ -1172,11 +1173,11 @@ int em28xx_resume_extension(struct em28xx *dev)
>  	dev_info(&dev->intf->dev, "Resuming extensions\n");
>  	mutex_lock(&em28xx_devlist_mutex);
>  	list_for_each_entry(ops, &em28xx_extension_devlist, next) {
> -		if (!ops->resume)
> -			continue;
> -		ops->resume(dev);
> -		if (dev->dev_next)
> -			ops->resume(dev->dev_next);
> +		if (ops->resume) {
> +			ops->resume(dev);
> +			if (dev->dev_next)
> +				ops->resume(dev->dev_next);
> +		}
>  	}
>  	mutex_unlock(&em28xx_devlist_mutex);
>  	return 0;
> -- 
> 2.18.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903165430.GA894500%40ubuntu-n2-xlarge-x86.
