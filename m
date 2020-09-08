Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXEP3T5AKGQE5ZQRNVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id C480426097F
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 06:26:05 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id z14sf3697428ils.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 21:26:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599539164; cv=pass;
        d=google.com; s=arc-20160816;
        b=dAf6ZE2DINV888X/o9P6D2S0Vo0I1crO68698BZNSccEJLuL/qe9Y+SL429jRJMVsl
         fFgrXSx0guOJOBlZ4Hl+MzpfeZTygi2T5cdEhCd60aWwfJnUE1JY/XJbwq/0Ea2en+rQ
         THg0zMeqjUnqppQU5KsEOWexfeSC+P5DLO27gT/Y+fpQI7koFsqikemj0upJ0sqzCkm1
         0n3Nc2jD2lJ6qrkFiiGC+iZoF8qn+EuoEIvUt5SGEPHYXTVGsVSlBrJIIiZPB22LP7Zu
         dgFtA8k0He68+ypmyQZPoXSr6C4kedErgLZ/XyoEe7kw/OOrAQ84o1t/coRnm2JXw+Od
         RSxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=2Aogw/xOzNZRHbyky6kAq/8TfpYQm75EXVWN19CYvCo=;
        b=cHQUeTAD/U1pm8X5BaaBeqKlVMuqFaiTLCAiywqypIbormdsw7gkXkvaSeyfF0XEy1
         IR7YeRDRkvJ65hffxkE/DXttHzkTEhgO+V9YaUupoyzCmwey3vnCXNKxlbTIkAvQxS27
         2A9zqG2Wh/xUZdi8cMvlLLqipn6yUmm+aAxSzYUtMUiFdo8DsAFqzkIsZOx85vn8OtEE
         GwhcIESSmsFrAgSS7wxnZ9mHFf4vroLzdqp7Cyv+0PaIiSAt/6n4JwzJgjgPNDfddOnW
         t+JPCvpf9t9UReN6rt2/VtUKtoBPCoQQ6bx47AcfKcZTnWhngwcjwK9Jwq9DWxXUv15F
         yCEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XGIgUmdp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2Aogw/xOzNZRHbyky6kAq/8TfpYQm75EXVWN19CYvCo=;
        b=TviRJ8eg7EGC/O4zgi307gBtQEJ2km5DjUR/QcTQsKUpepMfxY/Jo0Urmr73xYlHrz
         bcH4Af96eY5YuLaDuJJa35zz+Cy+sjuwXc6hFdjSiZjRCa2fJDRCsyzICXE1WbCeuuCM
         o7s2jsp8dUaGrbNEQekmR9umgEiyxn2goVgYF/V5EcDq7Mc4RNiyqj6qs/4yMevKNmF3
         1rcgR5MHwOV6i51Ff44EHmMagu/U+7x01ij9ylD0AkPrGjVnAjtiYNYjyessZRHsUEWp
         pwtxEpXDX7kiu1OP3ikPOmq3lfVJFE3uzWZ6jWFnj0HrUf2WDx6+jK7BGmhxslVfx//m
         WO9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2Aogw/xOzNZRHbyky6kAq/8TfpYQm75EXVWN19CYvCo=;
        b=s1IU8QOLLhh2GvwNoSVECO/E9ihNumRy1gGw6IVkU2sSmJ1qsNnMyw0AdVflZ5MBZC
         VowsNHjzpMPeljVfiSP1n/TjJuVbo4I+rnLOri6K7HzaxgFTJ4hL16m+s3Zc8p3IHe/P
         GcyTTexcVRXD5fQzD8rHrux2czQUymr+AfPC0SHxd+mc80U9+5octW2qGpRdmWgicNiP
         VWJR9yilSXLdrkIc+BS+ie7LOZX7z9LGp+7QPctXQZ0gpbahLGBckGEr7rSfhBY/PkLL
         TzCDwfexxwnQQlYF5Q9Oky1C2a967HVBpKkUwSes++gtmWzgqJ+YjED5RSVMwasUeRoq
         6YjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2Aogw/xOzNZRHbyky6kAq/8TfpYQm75EXVWN19CYvCo=;
        b=ZzCQeXt6JpCqbelA2hMyAvxZdsCuJJDo+tF9pkM/B8h/lmSCwXy6xciQYX41zixaZ3
         zpdjjtalCx6ZHY4dZYAv19eiMjtct1E9g/C0JKvi6dMB2+EekkxseRRCzIcO7pyshuLF
         f4OdTX25HAl/cUaXlEH77NdZRJGuYD0CIckpEwrh9cli4Rx7o1s9XBscxxNGVyER7BKP
         JUoARWhzSNGyaAyn6P9YphR2/HDvm1yuJPAInotaHuPA/vZHQ8GSy0iWoufNaVT5IWKn
         c8GPx2EdGXstkcchjpLhuK6HmsaZH++64L3MHwv6N6y5L5lLHYcCIAsWgd+vMyJVRcFR
         T9lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UCsyFjsq5lwsgmKOyTZwerizyTT7ORrB5j5psWpMpALBu3PYS
	Gb6bMTeRbTH1RlyiwHsgbvU=
X-Google-Smtp-Source: ABdhPJzTjjBpLCKOH11f9DqGrUQwRS3wFpZen9BEBFbbTjuQGMhXeuvV7MqlNoKH7w4pEhH3ZNlFnA==
X-Received: by 2002:a6b:194:: with SMTP id 142mr19333761iob.18.1599539164440;
        Mon, 07 Sep 2020 21:26:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:104a:: with SMTP id p10ls4522577ilj.9.gmail; Mon,
 07 Sep 2020 21:26:04 -0700 (PDT)
X-Received: by 2002:a05:6e02:673:: with SMTP id l19mr21186717ilt.121.1599539164090;
        Mon, 07 Sep 2020 21:26:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599539164; cv=none;
        d=google.com; s=arc-20160816;
        b=VRqM0aaWUkpdLq8WBblrgp4XIT+Tzd6SiO8T8R+ODjJ2sa/+zL3ZaPwNvXqZNyQ1fq
         ydOLpBwZxL6skrjWRxTVTBPBnEZRSgbKkEFuasyYYQs7cOY/nhO9qy4VeQpoQSiPaRYD
         ON/tBvINRPa/E0WOdt/1/aBgA7LMP6QrrRpaRoobU0ylGFCAakW9CfgzBYFys+Q72Xjz
         fPtYhHuknr4lDbFEaKPA1yveNCLn3e8awDD67yoUBmB6AbtuhA1YPkfw8W3pzhhWDk71
         9yqzYspEhVAaDqbgbc0Ut2un4PqHFf5dwwfsbZRQR1bmE6Xo5KZWvACgC99Wm73IwwpO
         FEPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6wIvzc8U9COMkIGKunN+WS3730A3DmsP+jQFwcsoR08=;
        b=eJo5ehR3HRvzPKd2oqAqenRjFay2qjDJG9ZSe0dOBJzaaHgJ369FNOvVoVulq3K5dz
         P3M6702lBXr7uu7FSUqFr7GG3uwxouwZMxEtYr7sZdPyizK1W7T6ES6QV4lB1RXKlwOf
         gx2POxE0wqmPMp/TqUcHwPWXCcBeks7i6ysyKq97ylTUsCiZzPHV6TlTxrYr9J3xk1Xv
         gV10DVdkWjjGscN3OvAVOka5v9hUvbV3lY6i2HikOc0oi96fZRux8oeHLFf3dAKZJsdw
         rrxgZxPtg9Ipk+NkW4zWJA+Syye04Yw+xmvbJlPMg8uPoAx1xtHzROsyzicauVeVMsHw
         A0oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XGIgUmdp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id f80si1211726ilf.3.2020.09.07.21.26.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 21:26:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id g72so14166607qke.8
        for <clang-built-linux@googlegroups.com>; Mon, 07 Sep 2020 21:26:04 -0700 (PDT)
X-Received: by 2002:a37:a495:: with SMTP id n143mr21941493qke.394.1599539163498;
        Mon, 07 Sep 2020 21:26:03 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id p29sm8096819qtu.68.2020.09.07.21.26.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 21:26:02 -0700 (PDT)
Date: Mon, 7 Sep 2020 21:26:01 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: trix@redhat.com
Cc: kvalo@codeaurora.org, davem@davemloft.net, kuba@kernel.org,
	ndesaulniers@google.com, mkenna@codeaurora.org,
	vnaralas@codeaurora.org, rmanohar@codeaurora.org, john@phrozen.org,
	ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ath11k: fix a double free and a memory leak
Message-ID: <20200908042601.GB111690@ubuntu-n2-xlarge-x86>
References: <20200906212625.17059-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200906212625.17059-1-trix@redhat.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XGIgUmdp;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Sep 06, 2020 at 02:26:25PM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analyzer reports this problem
> 
> mac.c:6204:2: warning: Attempt to free released memory
>         kfree(ar->mac.sbands[NL80211_BAND_2GHZ].channels);
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> The channels pointer is allocated in ath11k_mac_setup_channels_rates()
> When it fails midway, it cleans up the memory it has already allocated.
> So the error handling needs to skip freeing the memory.
> 
> There is a second problem.
> ath11k_mac_setup_channels_rates(), allocates 3 channels. err_free
> misses releasing ar->mac.sbands[NL80211_BAND_6GHZ].channels
> 
> Fixes: d5c65159f289 ("ath11k: driver for Qualcomm IEEE 802.11ax devices")
> Signed-off-by: Tom Rix <trix@redhat.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/net/wireless/ath/ath11k/mac.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/wireless/ath/ath11k/mac.c b/drivers/net/wireless/ath/ath11k/mac.c
> index f4a085baff38..f1a964b01a83 100644
> --- a/drivers/net/wireless/ath/ath11k/mac.c
> +++ b/drivers/net/wireless/ath/ath11k/mac.c
> @@ -6089,7 +6089,7 @@ static int __ath11k_mac_register(struct ath11k *ar)
>  	ret = ath11k_mac_setup_channels_rates(ar,
>  					      cap->supported_bands);
>  	if (ret)
> -		goto err_free;
> +		goto err;
>  
>  	ath11k_mac_setup_ht_vht_cap(ar, cap, &ht_cap);
>  	ath11k_mac_setup_he_cap(ar, cap);
> @@ -6203,7 +6203,8 @@ static int __ath11k_mac_register(struct ath11k *ar)
>  err_free:
>  	kfree(ar->mac.sbands[NL80211_BAND_2GHZ].channels);
>  	kfree(ar->mac.sbands[NL80211_BAND_5GHZ].channels);
> -
> +	kfree(ar->mac.sbands[NL80211_BAND_6GHZ].channels);
> +err:
>  	SET_IEEE80211_DEV(ar->hw, NULL);
>  	return ret;
>  }
> -- 
> 2.18.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908042601.GB111690%40ubuntu-n2-xlarge-x86.
