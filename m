Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR7RS6BQMGQEJ4QFD2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0243516C2
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 18:46:00 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id x8sf6396793ybo.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 09:46:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617295559; cv=pass;
        d=google.com; s=arc-20160816;
        b=qVJk6txbEDsFgO0wUar+FG64Cjzo9/VsfqivDeHam/kiLMdWDHIZEwJQgP0Laz+p34
         L9ESnuqowsvVMrb6Aj6F2I9jyYor0ZAGN9Jrl92UMJW/wtKbNFh6TwbYpyt/LKGOvZEF
         oXyhMG1tpR3sSD5W2LzAQXSjvVw27F3NreyWq/jrZdLIcjGNC7/JqejdvQykIhIifPtb
         hIqBlwa6DKUmMQ4dx6RH14YodZGwbjyhrhhPEF+ZtrBadXjqIICsJyM/BcsMUVZW1q21
         BVMSFn2xktOoc9SqtXoC4LznZkUbx1bAXuulPokX7mc83Ellcc/W+HHvmoE3wub3CCIQ
         dj/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iNwudCZttvKs9Ge1q1TpKMPfsnoXFL5qHLdSsg9bOFo=;
        b=gQ7Osm4UuOHiZG6c2Flxhe6y1tQNaq+ZXojPUutlHrzIjzTBlIjQ33wBCO4v5pvtUw
         TCQwXbsnuNGRsSYEDWaBFXWbs5l2G11a8+v9TiLwkzHGIsdwlCpfdHSIbFjRivhPk5vS
         GtIfwTWGaPRaTl9M98pBJpAPpDeoBIMrn/i6Ubohoc0yERdX6/bLPLwtI5EApwewKLHg
         kH3AnF7eHTKQw9Svd85LFrLorlaDqT0EG8kXelcNSFIVZ6LMoOq31RmsaUyexa4Jvz9a
         NJejg/Y4L77b1RGscGcA0nqwXpUsaHgr7PKyDr0fffdcfbToJdpbEhV3mzzHuko8Tm8K
         IgjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Gk4Z48zC;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iNwudCZttvKs9Ge1q1TpKMPfsnoXFL5qHLdSsg9bOFo=;
        b=sycufzSjW+4khoKYgkYsYfBxNaczibf60x2f5rqHelFuZlf9jW3rET0+It+Y4/m1Kv
         H4mnf9WLNxJzfhalC/xCqs6lb8el6zC2VFrMhsKHxdBCPp7XzfRntEeIWxwORsD4r+iA
         MKXKtutv/FVbGrTtC2KNdTbBBv6PoPWti5TQH4OsWvDvrDlIzno83jDOJU7lDRAPZL+D
         ZAm/LdnzHJaLb6aKO+pjdvrfDK9xCHVQg2tijaC56avJOuDWb6bZV2HP2iE8VhpSQuLP
         tw/7LfScTMTvyKITVVm8xWsS/LSu2MkbLDw8WCdx4P0nRu0b5HNW9eGqxYbtw8qpS3th
         0FIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iNwudCZttvKs9Ge1q1TpKMPfsnoXFL5qHLdSsg9bOFo=;
        b=fzhjC7RCF59VoDDBShkPB8yNt96SBHEu8UY2UTlHkXuHIZF5uX5jYIa+9P9+M1HrQB
         cqsx6SuJkdXmqtFEtI/EnHzu7Hl045UdiLpll12EwrkQMenjPla8NxaXZB3xdblG1xDJ
         3pnkalPNJfeunpYuoRY79mNHN1y6CC1VRowzt28mVF6TbRhYEAPBzF3qhWyH2+L2jrAB
         V2Dum/LnKgnrawGOV1nlu8d+JmoogcqOo70SFGUBjVDy4oqQeOpFa8lWrAS22atVcjSD
         WVr/GDmHolB5NmVWBQGdWwpJU0l+GLxNObiYfIS9fZ6z23btITf54yY4KNRNiIvETHhA
         biug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531udw5xMSdyHPLofZY+1hesXn7U0SG1O/YJoLZSyqjos6rivwKp
	5IFcAl0n5om6Lx06svq3KkY=
X-Google-Smtp-Source: ABdhPJwI7UibSmLcv4zBJv2Tok3YKifUoS+ZNSdBUXoxKV77i0+BV0cWkJ7UxZ12J2o4pYEOaQE75w==
X-Received: by 2002:a25:4092:: with SMTP id n140mr13036733yba.276.1617295559200;
        Thu, 01 Apr 2021 09:45:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:fc23:: with SMTP id v35ls779962ybd.4.gmail; Thu, 01 Apr
 2021 09:45:58 -0700 (PDT)
X-Received: by 2002:a25:6fc6:: with SMTP id k189mr13248225ybc.171.1617295558394;
        Thu, 01 Apr 2021 09:45:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617295558; cv=none;
        d=google.com; s=arc-20160816;
        b=l0E4LDSTiSzBdbNUrXglqrCjnOVjDWmGrIvRlaqpJ0KhO1ssYNVkWSQyF32DtmdYix
         sfYPA5mmlyrozY9TdL+gdd2qORuXxpehQNM1/O5f5XygL661cCDsaZEsgN4fDB672xuT
         JC6VI2s/NbhLnHGbRC0jJM/WDf4S/H/VZxSyqxklHt6n+E2aLm+GtLIXmvuyASzy/5lc
         3aj71OifYeohnqXD9N0xgT3M6HJnzbCi7RXxJSvw7Tr17WEwXV4ZciKYnebl1ekqdbxk
         f3xzmGOK+hlhInbEPGxxCPYLVxFBaX0OyeTd3edf2bOs0ISfHMWNKu2MVUs2JtU4r570
         Xs9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=t2/GAIe5XHlQJR3nFkEqNBB8rdZ8yqTZYMRPi0eDHqM=;
        b=Tk6q1upTzPKES703e9dxJvagkR37W1Yj9ZSLH62X0KkEl8TU13PITFaFhpx6181xSA
         NARtBXBeuEL0FuoNkjCriBxvg5xfVqeuUBSEZoeufbzB+Fq9zxSeIOGX1j7bwMSDWDjc
         FG6FauZURO2o2Cuxk8Ojm+KcAaos8HGIpwGheMgSXXp9WQzXmUkSemPRmJiXBkVQE32d
         6D/WQG8LaIYw+IEElmXuj1z1boLwr44M8npctnEYXmbbhw+vf2vsxnIY0NLt7ZLTu9AT
         AXmJGv0rNe3leUPX2YPHb5Ir8OIdovRxCtTLeYXfU8VBttaiSXYUuMIYsp1KUMUvC2cV
         VX9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Gk4Z48zC;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k6si415616ybf.3.2021.04.01.09.45.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 09:45:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B51106138C;
	Thu,  1 Apr 2021 16:45:55 +0000 (UTC)
Date: Thu, 1 Apr 2021 09:45:52 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Maciej Falkowski <maciej.falkowski9@gmail.com>
Cc: khilman@kernel.org, aaro.koskinen@iki.fi, tony@atomide.com,
	linux@armlinux.org.uk, linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: OMAP: Fix use of possibly uninitialized irq variable
Message-ID: <20210401164552.n4nuwvqz5mofdblg@archlinux-ax161>
References: <20210401161127.8942-1-maciej.falkowski9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210401161127.8942-1-maciej.falkowski9@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Gk4Z48zC;       spf=pass
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

On Thu, Apr 01, 2021 at 06:11:27PM +0200, Maciej Falkowski wrote:
> The current control flow of IRQ number assignment to `irq` variable
> allows a request of IRQ of unspecified value,
> generating a warning under Clang compilation with omap1_defconfig on linux-next:
> 
> arch/arm/mach-omap1/pm.c:656:11: warning: variable 'irq' is used uninitialized whenever
> 'if' condition is false [-Wsometimes-uninitialized]
>         else if (cpu_is_omap16xx())
>                  ^~~~~~~~~~~~~~~~~
> ./arch/arm/mach-omap1/include/mach/soc.h:123:30: note: expanded from macro 'cpu_is_omap16xx'
>                                         ^~~~~~~~~~~~~
> arch/arm/mach-omap1/pm.c:658:18: note: uninitialized use occurs here
>         if (request_irq(irq, omap_wakeup_interrupt, 0, "peripheral wakeup",
>                         ^~~
> arch/arm/mach-omap1/pm.c:656:7: note: remove the 'if' if its condition is always true
>         else if (cpu_is_omap16xx())
>              ^~~~~~~~~~~~~~~~~~~~~~
> arch/arm/mach-omap1/pm.c:611:9: note: initialize the variable 'irq' to silence this warning
>         int irq;
>                ^
>                 = 0
> 1 warning generated.
> 
> The patch provides a default value to the `irq` variable
> along with a validity check.
> 

Might be worth a fixes tag:

Fixes: b75ca5217743 ("ARM: OMAP: replace setup_irq() by request_irq()")

> Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1324

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  arch/arm/mach-omap1/pm.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-omap1/pm.c b/arch/arm/mach-omap1/pm.c
> index 2c1e2b32b9b3..a745d64d4699 100644
> --- a/arch/arm/mach-omap1/pm.c
> +++ b/arch/arm/mach-omap1/pm.c
> @@ -655,9 +655,13 @@ static int __init omap_pm_init(void)
>  		irq = INT_7XX_WAKE_UP_REQ;
>  	else if (cpu_is_omap16xx())
>  		irq = INT_1610_WAKE_UP_REQ;
> -	if (request_irq(irq, omap_wakeup_interrupt, 0, "peripheral wakeup",
> -			NULL))
> -		pr_err("Failed to request irq %d (peripheral wakeup)\n", irq);
> +	else
> +		irq = -1;
> +
> +	if (irq >= 0) {
> +		if (request_irq(irq, omap_wakeup_interrupt, 0, "peripheral wakeup", NULL))
> +			pr_err("Failed to request irq %d (peripheral wakeup)\n", irq);
> +	}
>  
>  	/* Program new power ramp-up time
>  	 * (0 for most boards since we don't lower voltage when in deep sleep)
> -- 
> 2.26.3
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401164552.n4nuwvqz5mofdblg%40archlinux-ax161.
