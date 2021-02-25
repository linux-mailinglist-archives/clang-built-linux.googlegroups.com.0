Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBT6K36AQMGQEN332IVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id D2381325504
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 18:58:40 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id o27sf4374633pgb.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 09:58:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614275919; cv=pass;
        d=google.com; s=arc-20160816;
        b=YVxvsc7osLuYSw/z1sHsRlPmJhPlHsFrPaGfg6B1srDWYmrYkAukqYLAI0JwObaqoQ
         0faNzqfaPgkzSjuyeeSSmOFBcGARrBEHyROe6Od4mBLubax2hOgB3zha4f1l1TZYftrH
         4n0VXJWokWtV6KPZ2q/vMBsY5f4N8XrSHGNvNoeECJsEOwzrz80GrzYqa7hghPrOZkT5
         lCi5zoXo/WzqmXSNq0MD8LF4ZCAp/PlSZVsFKn2bYq8pTeptIrTmGC+1Dx16WR415dLf
         19SGhAJMOfvtRjyKCGdjxsbNlfKDstxQ5sc1hxwmyE2IdZfEk0TdjGstRwxoi7Zg/hXN
         c3NA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=G5Dv93khCHoRD+UgTHJ98Cd/uDRPzi0hYX4tdAj7YeI=;
        b=m/ZSQCMG8kDMWR7FYraO9ac3cvlLSu3mf1MZQ1WDPzA+/iNxpp/zoYZTkPTqBDW0y3
         FFTHI0S34U0sO4ISgr5gK9DcE/sbSUIKxVUmKSo+F6TuwTXINYJdZhw3HUTzaKGLNyIN
         ZkUo4GHjyuHYrlZb/q82T23fAYLCoUNn/4kNfemFwpGn0fcDtf9vx/eRNo+mHZXb3Y8u
         yQt6XK3VinTM3+XrHqEvMcs7k79fe52crsxDgap4RmNsowooq5ggifH/thGKWH1goxAf
         yE3cNOUtblk70FSrOLUzhoMO+QomCWnIAj+WTQoS00rnXj+v58iw03YsksijEudINm5g
         eB+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ev8I77FF;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G5Dv93khCHoRD+UgTHJ98Cd/uDRPzi0hYX4tdAj7YeI=;
        b=io9Pd1Y7XHBVXKo3pIuGhsjrkXaSWJ8CkEfRiMtZAgFyC05FYTeDjc0wV9IE5bXSCJ
         xId4l+eSjDVJb3a1ZIjZMH9+AC2IEpxP8yIe00ie1VWzyWmuNBhtZjTUATstuCgsVrrE
         4NUCONUiWUP3QOvH+0R5g09qTg4NCkSEeMe33l+xLwShKij9TTDcMNt1oTCXs0yKV0VE
         8AwJCE0GeJRreuW2LOhQblR6AmYhaY9CnTHLY+iUsTs6EdxD73hOPIwWzkZ5TxOYuPBF
         sz4XQ8BNhi5IaK99f18H85mFLyXDwiOiTDfO8IMEz49LhyA8LVzYrdQGi8rBin+SE5H4
         UKaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=G5Dv93khCHoRD+UgTHJ98Cd/uDRPzi0hYX4tdAj7YeI=;
        b=KGqj7TmftN9Dol8KVIA4n7l21ty7APMecd8eArgEOWlcQo7EXa+oAbvOEr9WkEntpP
         k2qX/7Ddg5XSNgtfIe7T1w9q50JXAnkDmTsklYpMGLo+qEGjtKjGAr7zANROKsSCZt5I
         PI2cJeYfw0PfTaiKFcF+YD0FjNIrq0EHr8Tid0J2eZocILw4Qef2FnfdaC4rnpzfqykd
         BRrAyf3gqoAmvqv+6gWL2lVf8CGcmybpuaqPIdpzTBjkEKUf82/Jsi6BcYUIfg2SEV4R
         Gs5RJ5ifBXwOFB6/eJmkg/aYLEb8bVtpnxnJ+fLwYJPAL3OR+DTOxqOZH3QxSDPw7uLQ
         ixjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302T2S5uTMNGadQvE3efb9JxZUbpuyFVhnjDe3+a1hi0up4Dbpj
	km9QQdz4wC1/cKdzA9mEbPI=
X-Google-Smtp-Source: ABdhPJyjZu2RpMbjIqOo2B4XC5dOXFlXRrjL94o3gkRNUQcHuauLr+Ps2dpNp2dFKxYBKID2NmiqRA==
X-Received: by 2002:a63:f44:: with SMTP id 4mr3995545pgp.178.1614275919421;
        Thu, 25 Feb 2021 09:58:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:15c8:: with SMTP id o8ls2778509pfu.8.gmail; Thu, 25
 Feb 2021 09:58:38 -0800 (PST)
X-Received: by 2002:aa7:91d2:0:b029:1ed:b10b:5a7 with SMTP id z18-20020aa791d20000b02901edb10b05a7mr4442917pfa.2.1614275918725;
        Thu, 25 Feb 2021 09:58:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614275918; cv=none;
        d=google.com; s=arc-20160816;
        b=oQNX238Z8yx89RQDUdykNef/6dL4+TI3YlpxykMFVIoSN5JR25pNhhd5OsgLMikbYc
         c4Os4x/bYoU9b20d2A3S70BR4+Mnd0yopyE5UtjSuu9Ec4zj5OncfcpkkD04CiZ9ykjX
         Y92vp54b4IjCrn8I2FZE00donN0Hc31oY9nt0Pe3/wpk+ogQODgg5T4gpx5+Y+0IhyVd
         RZ4gftfrxkUKr/icXMXSgHjtAnoAF85KetCh0dfFPaPDEK+BTbwk/+Ez9sD5fSLwRWmv
         wDzX28mxRBb4fkzyFhZIefFVjLFxnk04ATyNww5CkKUzv3e0cj8ayQgtg6c0S6/jkGEl
         aNAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=VbHyl7niLI7KR7Mu+XEWvDUSaIBldcnZLYcnuqX48W8=;
        b=EOxKzeZpmnM7Ofzd8OrvLvrApoUPjPuI3+nGciEOxGyk+/biFXdDQNeA7zruKXi9v4
         wjJmhpYG/eIgcRBVXRjvIF4qQlJO6AwC21iHZ/wXWvyiv8RQj/4YoLU7lObdZQQc4FDz
         bka7/pbCp7Zx3yK4E0AKtWyk7+ZkwzcYrHzyVQPoOHyJOfDZ45OXF7+d3vmEf+iXPpO1
         8kkD4ZYe9XgF6z3w9ZTKG5B+Tg7Iq6br7LEGTbLwRupnG+kN6MNzkj6Trl0rqEjjAppD
         GuT8BCav4fYY21I2TzflDiAQs/SmlrgYJ+aOjIPhr5argzAx68td7zDWsZL3jnZom5Hg
         UNNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ev8I77FF;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m2si241262pfk.0.2021.02.25.09.58.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 09:58:38 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9F73964DE8;
	Thu, 25 Feb 2021 17:58:37 +0000 (UTC)
Date: Thu, 25 Feb 2021 10:58:36 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Felix Fietkau <nbd@nbd.name>,
	Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Shayne Chen <shayne.chen@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] mt76: mt7915: fix unused 'mode' variable
Message-ID: <20210225175836.GA23011@24bbad8f3778>
References: <20210225145953.404859-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210225145953.404859-1-arnd@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ev8I77FF;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Feb 25, 2021 at 03:59:14PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang points out a possible corner case in the mt7915_tm_set_tx_cont()
> function if called with invalid arguments:
> 
> drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:593:2: warning: variable 'mode' is used uninitialized whenever switch default is taken [-Wsometimes-uninitialized]
>         default:
>         ^~~~~~~
> drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:597:13: note: uninitialized use occurs here
>         rateval =  mode << 6 | rate_idx;
>                    ^~~~
> drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:506:37: note: initialize the variable 'mode' to silence this warning
>         u8 rate_idx = td->tx_rate_idx, mode;
>                                            ^
> 
> Change it to return an error instead of continuing with invalid data
> here.
> 
> Fixes: 3f0caa3cbf94 ("mt76: mt7915: add support for continuous tx in testmode")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/net/wireless/mediatek/mt76/mt7915/testmode.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/testmode.c b/drivers/net/wireless/mediatek/mt76/mt7915/testmode.c
> index 7fb2170a9561..aa629e1fb420 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7915/testmode.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7915/testmode.c
> @@ -543,6 +543,7 @@ mt7915_tm_set_tx_cont(struct mt7915_phy *phy, bool en)
>  		tx_cont->bw = CMD_CBW_20MHZ;
>  		break;
>  	default:
> +		return -EINVAL;

Remove the break if we are adding a return?

>  		break;
>  	}
>  
> @@ -591,6 +592,7 @@ mt7915_tm_set_tx_cont(struct mt7915_phy *phy, bool en)
>  		mode = MT_PHY_TYPE_HE_MU;
>  		break;
>  	default:
> +		return -EINVAL;
>  		break;
>  	}
>  
> -- 
> 2.29.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225175836.GA23011%4024bbad8f3778.
