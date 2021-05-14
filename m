Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFO67OCAMGQE6JCTGDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id ED48E38134D
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 23:43:49 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id c5-20020a0ca9c50000b02901aede9b5061sf474933qvb.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 14:43:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621028629; cv=pass;
        d=google.com; s=arc-20160816;
        b=wk1pEUoOgQXLQc90MWLGkz83efqb7x59uJTChfS1vKFC8/ZYJ4tz6GBiLsFMhNSDQP
         cTxsE17TxBfpuwG+GNqznxNkOigI86tgIkGLkmCH19jtVPVZ18yy7oMrZqBbXE9OVIK6
         SFFPnGpTDup7cfNPb/6E9MMT7/ZswJPmfix7W0oUME9m7Dr7MZ785hFj7u7uIIqnX555
         q0/Z0HfXbh6gDBLAu4lCz7OtlJK8gs0AuUBOKMtHuICUM2y/c3Rdq+uEuTiv/K9KRKux
         XWdYxVoe4sjdyXwy704T/4u6ACQcGi7GHlV5or18CAn3c7279lrtqO673T+o/R8eEA2z
         p9WQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=h4OBAYVyhf7qupnB8A5/wQwJ3H9nf/UvOMruvxrHNdE=;
        b=0e8UpCrVL6m06t/WsQKCQ3Nrm/HjjBXF3536cRBmDctdMsoMvWroaaGQZ//J1LQTLk
         JFwb2JlKXiQIghFFKAkxPsgEdaGquhPH/elFp9XiFM0MzkILoNKQsun4LeaGQLd4D+cG
         JXZa3SpxLBl8rdTJCp6Rc21y6S06CjBQt8nQ1fEnwtbPsMc+v2WvHEZG9USqdaWgjvnb
         krahT9Nc7f5ExbhlsKT/SJ6yl9FLASCKE4YjZicN3Ch2XMpqH3vaI7kF+X/SSRWUeoBj
         C4xTIwroR4qcm8iuql0fQDJp+nz//LmnR4nYvG4WwIy38zpZuy3Gv1zjo76mUOTLzlo8
         4OKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=L5RmQoLB;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h4OBAYVyhf7qupnB8A5/wQwJ3H9nf/UvOMruvxrHNdE=;
        b=a23dcYqHo4m9RBLY53o9qUm5vVRQy6KkZ9pjqC5ZJ2RgLtbxGjkSMRwD1LuveUGSJo
         XdnTA/H9AaIJz4Ioj4rGJ98B9b+obGH+QZ30HB6oQBQ/Tjep/k26R7sdUSwE8vFgFRra
         6683XVy6+AbBvbfMCqZJl1mKm1I+QgkGt1hFYGUhK+II0nDE/sSitOKplbm58eZgcfNr
         QbbA7lXA06FTLS8K2AIrMJ2qUKBEEHEl/muKWtAgdY35r11qZWjnACzAn/OCdw0ZLqfL
         DNtacXjNme3EjK0Q1K2Q12OFv0nT/qbi+dtyenwkpRqac3ZtoAIkO4MsryAPCETwGePd
         6QsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h4OBAYVyhf7qupnB8A5/wQwJ3H9nf/UvOMruvxrHNdE=;
        b=qdZt8M5NU5OTStMxoc3mm8bh53F+Hqwle/ay4VlO4MpmeDyvpHESzy8fLOji15PbXq
         r5HL8LbgCiXlnoGMDO/HaY2rE4vaeKSKNa9EKvR+ClswgVh+rXZ7Kl8GvCHpxl+AgCgZ
         +Iarknp65k2ytCRev4DPoYVcbKLGpjUTUw1WO6f8uQwEh4qEDQKid/N6bAaFu7DvE9An
         +BCXBmzyyMLYFtxgz0KhPPpQ9NGgIHd6sgZHLnTLyeGziq8VAEvjUl1TKdi0czaBbgaC
         nKaxqzDTFw0u9rn7kkqASDTRs2AaB6vlTdHHLJVDA1OnFfGxsKNbMpuD8/iCBcrf0vC0
         m5xQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531f/Yn71GSNoaakAynEA8iEQl9OfL6nD5KQTEgDQsRSpdpytRur
	broYO0Yqs7oEEp3VjzxEN94=
X-Google-Smtp-Source: ABdhPJwxl4Oct/WjqotjWnPr+8HSkhNm6BTWiBKS5W53K4hVc+1oN7dQHcg+OFMJwOJKr+pk7zr85Q==
X-Received: by 2002:ac8:44b1:: with SMTP id a17mr45826112qto.369.1621028629107;
        Fri, 14 May 2021 14:43:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7684:: with SMTP id g4ls5229587qtr.9.gmail; Fri, 14 May
 2021 14:43:48 -0700 (PDT)
X-Received: by 2002:ac8:5995:: with SMTP id e21mr32721311qte.222.1621028628685;
        Fri, 14 May 2021 14:43:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621028628; cv=none;
        d=google.com; s=arc-20160816;
        b=RwHlxIXxziVfs/pgFWcsuF9mv0FNHzJg9ZFRJrtiZP/+vK7IEFoE6vcVIa+SnP4CuR
         UKqRqhuxJCCL7LAeEsk88SPdbvLZT6TtSlaUiJXXnQqLZOzXGCdEQf88vYENrFgEJxTL
         z6deiCTYwWanKBvOPt+eId8Xr7Nk34OdWmsnwVAL4X2n0ciEyaDUoUdDRJYBWEHdkfHD
         GQwCkhYugepkiVimT5qzagLE7P7e80jOleNY5oeLHY7FQ+KgAAG5fhbp3PMTY+dZvtCc
         B03QhpoGP8cr+KFiXJxC1uSQp6aef2wDZ5LX7IjSd0vfssksRkx6UZXYo1jtgGnNMWpY
         TRPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=DM5Q9+OtdKnTOYJYXU4PoUARQT/1Oe8E4Qyd5OUZO/c=;
        b=pORTb/que65MNd1QFcQlaeuXVZHoZH83UQMFLaaYG7uN7t6bXnpQoJHUpC8kgr7Wjg
         AihvlnXX53I8E6IJcbyUx7jFxlsSn9MtPJYRLJSe2FhLt589wn3gxpABW1qpaVyv9hUR
         Xv9wt5DMQs+D6PndlL78WcfTMqrLqtu8f6fttVcCw4MSMJA5hkbM01JQp9qOp7+BzDwS
         GhEV1cLEsAhT2mFfhdCNxS/Ql+28AlPTyr5udQXkltJdk0DYQaiuw5ryhOqsswT+OE4Z
         IJHvzN0VE8GB9WLfpx+7rVbpQ4XtLpkVzxILEBrpyD0KTnTXuktZigW2c2dMP6XHFJ0n
         LYRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=L5RmQoLB;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v64si748378qkc.1.2021.05.14.14.43.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 14:43:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CCDDD613BE;
	Fri, 14 May 2021 21:43:46 +0000 (UTC)
Subject: Re: [PATCH] drm/msm/dsi: fix 32-bit clang warning
To: Arnd Bergmann <arnd@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers
 <ndesaulniers@google.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Abhinav Kumar <abhinavk@codeaurora.org>, Jonathan Marek <jonathan@marek.ca>,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210514213032.575161-1-arnd@kernel.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <58a35b85-eb0e-bc02-29be-0cae46bd75b8@kernel.org>
Date: Fri, 14 May 2021 14:43:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210514213032.575161-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=L5RmQoLB;       spf=pass
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

On 5/14/2021 2:30 PM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang is a little overzealous with warning about a constant conversion
> in an untaken branch of a ternary expression:
> 
> drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: error: implicit conversion from 'unsigned long long' to 'unsigned long' changes value from 5000000000 to 705032704 [-Werror,-Wconstant-conversion]
>          .max_pll_rate = (5000000000ULL < ULONG_MAX) ? 5000000000UL : ULONG_MAX,
>                                                        ^~~~~~~~~~~~
> 
> Rewrite this to use a preprocessor conditional instead to avoid the
> warning.
> 
> Fixes: 076437c9e360 ("drm/msm/dsi: move min/max PLL rate to phy config")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> As found with another patch, using __builtin_choose_expr() would
> likely also work here, but doesn't seem any more readable.
> ---
>   drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> index e76ce40a12ab..accd6b4eb7c2 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> @@ -972,7 +972,11 @@ const struct msm_dsi_phy_cfg dsi_phy_7nm_cfgs = {
>   		.restore_pll_state = dsi_7nm_pll_restore_state,
>   	},
>   	.min_pll_rate = 600000000UL,
> -	.max_pll_rate = (5000000000ULL < ULONG_MAX) ? 5000000000ULL : ULONG_MAX,
> +#ifdef CONFIG_64BIT
> +	.max_pll_rate = 5000000000UL,
> +#else
> +	.max_pll_rate = ULONG_MAX,
> +#endif
>   	.io_start = { 0xae94400, 0xae96400 },
>   	.num_dsi_phy = 2,
>   	.quirks = DSI_PHY_7NM_QUIRK_V4_1,
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/58a35b85-eb0e-bc02-29be-0cae46bd75b8%40kernel.org.
