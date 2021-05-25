Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBU7KWOCQMGQE43Q6SXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 13449390192
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 15:02:12 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id 7-20020adf95070000b02901104ad3ef04sf14573911wrs.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 06:02:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621947731; cv=pass;
        d=google.com; s=arc-20160816;
        b=rJdtaWg/dyGg6k6YsETJk7oE+8vIrkbNTEQRxuNFvycHBraOQVjUEPAgsdQS/23VVT
         atSA257KQGfijVF3h50A7lC/YaxaYvd4/AFQgSUJI2R+uTky3fdaDuiuSFT6yKAL2Jul
         8s82TsLt3FCrGQeyzrDN3QsOKoMgwjr2qg/Q5Du68nQhzfPZ9znofl7VKIlXFFyEwYty
         Sy+MS/PO6VvbXDuvn4Z0bQQKM9gJeDU8AI7eyZr9UwqKiQmMTFroMN9gYZ7XptfglJV8
         ETv0GdUV3gXBAt3lSXEqKeuJ7a5U1QBTnajuI2dYrRAWeS6/jZn66R0llNEmIajzd+jy
         /I3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kLI6E2Bwqu4e1F5Fej2fJNT7kn96Whq9Bm78YTft8+Y=;
        b=vfT4huyNHBMRreu0Pd32IAdMK+m4COcRUimbm3vqjHtYsNuWMMq7EvJB0FGieKHMiO
         uxwnIL3kIgRi7sijMTl4SugllEppXqOJN8k9yoKHdjsoR+d8znFHob36yAaHsrkWzO9s
         bS5FUP63hv57/gEpXoF6yxgcs9te7YsiAqZYDO5gyf1lSLJ76xdBXS++dl2tFkA8stS7
         mmOzOw4h3nNQUwT/IiNVSuT5iE0XZTGZZuWWmvR/FZ+dFdHL+dc8d+NOBlRJm01INcj7
         jWREEzv9YH5rdIi60zSFj3YE3pXe2jqpci9Xy+GOgBfAlVCBl0Bm8FoEEZsRb6eG82Tt
         z0KQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lunn.ch header.s=20171124 header.b=jOxQo9c5;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kLI6E2Bwqu4e1F5Fej2fJNT7kn96Whq9Bm78YTft8+Y=;
        b=dSrrLp/+MXNXnEmlatjvGyJ8CpN8sLnP+S6GsVr+uF7oFMuPhcjguKGSEy8kWtExce
         SQ5NG/53GTGE3XdKjW5cu1uPTCNHKPvkJnzZNcz8zX2IMvPqopBUSZTS9SfZjuNqexj7
         1yQnH4hf6RvpyI2tuPcHy6sjvXqE5ivQIFvH3RptFpbT3HXjTwtY60ZQmQ1KrMJ5qKJq
         56HMiG3RELEym9H13T1+Xp7jw8SHQqsHu0dJN53YczueE1VV4ogvl0xP3PhA9vMvrSXM
         Pmqy7QAeNXLzEbBRR3qs0riT5+gghSNPeQWvsKLRy3ev5LVEk3qVnOxEwkpx7sfNRKJH
         x/gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kLI6E2Bwqu4e1F5Fej2fJNT7kn96Whq9Bm78YTft8+Y=;
        b=nJBEboMMQ+syqunbwegFh1ht0W+pgvF8/UJ6/9blZOr/nhVrPEiN2gL5ZHhUlfhXbw
         YSMcDEEqPxPI0LUSee6rCdioeWZLMtx+CdbqtkdMzP9e26TjUs86nHuE846GztdZAJGj
         vPoMjA1ahfdpzxf+/pXPpoLOCVNQEff8w0TOOjyo+7whbpFPidES9u5LQL4B33qKIczz
         Bd7aahTaW7oR5sK09hh6FhVR3Wv0qGo8Z42ftgZS4TzMgyqact06Gcys1sqHRjPZfoTz
         xETu/zGvEeopJonVs9cT14kB5vifm5upjR5LDoeStdjYtD05Soax30kLp5GrHr3wWL0E
         qWVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Rd4W4p4nyPbP906as09x8MeWunZlwPrJCl9gZzn7gSVgtvjf4
	uZEZ0uKI2IoMujSxtUtV6zg=
X-Google-Smtp-Source: ABdhPJwWfMQ00zOPr6MjBalzTxOL3bExgorha/eL/iljY7u+zyM1czvp80f/XDID/sstig+inacLoA==
X-Received: by 2002:a7b:ce8d:: with SMTP id q13mr3708402wmj.109.1621947731740;
        Tue, 25 May 2021 06:02:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:5f43:: with SMTP id t64ls1115490wmb.3.gmail; Tue, 25 May
 2021 06:02:10 -0700 (PDT)
X-Received: by 2002:a7b:c191:: with SMTP id y17mr3778679wmi.19.1621947730651;
        Tue, 25 May 2021 06:02:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621947730; cv=none;
        d=google.com; s=arc-20160816;
        b=m8WISsQnXPg+LU52+pyF7ztPX4v9RC2zQHdrNL56R3vyoDZLduHpo8N2sSLqAI8/k9
         GosIIxX/2Ex+u61iOVd/DKDtAJVi9tB4voCmp2CC+nNaPbsM7D/u64/iM94IJV3I5wx3
         6XxYGoBxa/hE7++0B2SkdRUKri+vlfhTNY/NZe2YcvvPlBZ5LAIaGnyWgr8XT5O/Mo0M
         niO+thnBunxniFouZ2jjYXv7nCqME8qFELbUgRs4cuRXDsDPhvQFfMoa3Ipmjyovdins
         sTQUs8MjhcBcB3CduN4EBcIkm/UktHLdW12fn0+/W68ZNxlruwX9xl7vqIuUHFkhXGJc
         YDNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Bgwi0ddPG4y3izYFh7owVZ/gyl0+tfy9P5xD+jXP9VA=;
        b=gaIQAfLJjpA/cTnGd4hUWPCYSwXpTA/J/TjY9a7Kk8biP1qzcuFB7lb+XTrifP1IN6
         Nys7jjw9Or2w7P+6AQWuM8ovsJ3v4TSx8R4W8t4FQc/dxqCnYJx5PHZd3b49t5mlnKyZ
         leDwMMjkXWBWpVHjvvbm/yJSiaB5ttF4IRvlaIXIQ+/HkBL+Js0bG+jd/JAlAh37iyBl
         5MVwiUlQMGwJmvgiaJGoqR9CztaBWTdnZHqjSAErNCx0f+evo4f4/G6+xA/4noAyTby0
         o3mlrIt/TJuMlYNGt4fk/WNMXJvsDZg4ZFnMLg2p2JrNwFKAUKod7SMa7q77+6WrSimo
         Xkrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lunn.ch header.s=20171124 header.b=jOxQo9c5;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id r26si433813wra.1.2021.05.25.06.02.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 May 2021 06:02:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1llWh5-006AgT-CM; Tue, 25 May 2021 15:01:59 +0200
Date: Tue, 25 May 2021 15:01:59 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH 1/2] net: phy: fix yt8511 clang uninitialized variable
 warning
Message-ID: <YKz1R2+ivmRsjAoL@lunn.ch>
References: <20210525122615.3972574-1-pgwipeout@gmail.com>
 <20210525122615.3972574-2-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210525122615.3972574-2-pgwipeout@gmail.com>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lunn.ch header.s=20171124 header.b=jOxQo9c5;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

On Tue, May 25, 2021 at 08:26:14AM -0400, Peter Geis wrote:
> clang doesn't preinitialize variables. If phy_select_page failed and
> returned an error, phy_restore_page would be called with `ret` being
> uninitialized.
> Even though phy_restore_page won't use `ret` in this scenario,
> initialize `ret` to silence the warning.
> 
> Fixes: b1b41c047f73 ("net: phy: add driver for Motorcomm yt8511 phy")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  drivers/net/phy/motorcomm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/phy/motorcomm.c b/drivers/net/phy/motorcomm.c
> index 796b68f4b499..5795f446c528 100644
> --- a/drivers/net/phy/motorcomm.c
> +++ b/drivers/net/phy/motorcomm.c
> @@ -51,7 +51,7 @@ static int yt8511_write_page(struct phy_device *phydev, int page)
>  static int yt8511_config_init(struct phy_device *phydev)
>  {
>  	unsigned int ge, fe;
> -	int ret, oldpage;
> +	int oldpage, ret = 0;

Please keep to reverse Christmas tree.

With that fixed:

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YKz1R2%2BivmRsjAoL%40lunn.ch.
