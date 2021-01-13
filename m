Return-Path: <clang-built-linux+bncBCQMFSVRS4ORBQ5P7P7QKGQEG7OI76Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C82A2F49EA
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 12:21:40 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id l22sf2331749iom.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 03:21:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610536899; cv=pass;
        d=google.com; s=arc-20160816;
        b=ccD0k5LqEsyjBU/zdthHOHLIXF8pN6toYioUv0YhnmeTFwre0lDZj12Pw6szSqYCmd
         kcXnJTYcfc/RV4Rk6x13VLLK5yVrC1j0riKvn80JDX5O3Q99GYg8//Gq9/xChrR/1AXV
         E+QAZ1bBfqdT6N7RzEuArH4HvBzC/F/Hg3zjDlI+eOjSeOKpAj+xTNExD7uGQ5iUovEV
         Rpk++3+EQDO67uO4go0KPJ4UoUKZUIbQ8WgcFRHzANuGqFoMI/TGS1lgqOQA11SM/HlW
         FkuzP2rHz8OnrRgF1Ugu9qjUw7dbQs4JajddKOGs4FFXoTZiVGgVxqMkzHhU94ukDOxH
         VJ5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vws/rtssNOguyhpZSeWAMwIFM3IZA7FVixAhnqR1VqI=;
        b=0bBYLziC3vNSvwPBEBwObCQ8s4xGiUwk0gAM2acidhktqzcCDnvul5NyltSu1AVS5I
         xcSir2gaoqRRX7/0SPhOsGCrGaDZuJ0Z0cylCjb/JueejIdq0/17vMhrdfzEhtOcsciC
         MJIBq1HLVyQxw9PdqsH2Ko4y8EMRaJQlAqdsPHFOcj40kezNuvq1/aR4r/Vy9jO9mHMW
         qfNQXh+YtxERZmYUC4oS7I+AdryckZQ/hZoE5EXwE+351xMDOcieEh2Ru0tCurae5p9+
         XlVj6XzuGVQe+v9QuztTHVRK8lwaCPZgx+FTrTBiGL430Az74OVjuNe8je8erKkIY6Zf
         1KBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=otMtiQT3;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vws/rtssNOguyhpZSeWAMwIFM3IZA7FVixAhnqR1VqI=;
        b=FJO3B8L0R+kVg+Lez4d43uTGB2gxc600WvEc1NAqpsiRwUrviEnpoYYa9CDe9TBMez
         ocGgUJam2Rz24+qzhT5lWHBGvkFzu3eJ+HW3cjjncjhSQONM997RW/M6hnWezKQmXxzv
         z9/dPh/kizgqsPUuEDHG0XNfWg6TO/zU4tiQVmvtsGOyvMAVkQZwUBzsXjntQIvIBEYo
         xI6Axa2KopskWXbQ+GDqDHOqnoqVz66SGfXxVpSaqcdiAd4gL244iP3mdyexPBpjaznu
         Sxo7VGJbpWusPOAZWdd3y64mOcNbh1Wg9HSsJylHCLeT7wRjJel6ZF26Y8O/EI8DAU+P
         F3iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vws/rtssNOguyhpZSeWAMwIFM3IZA7FVixAhnqR1VqI=;
        b=oH/pvOiWt3QuG9wkuZxS8x7pzWfTd0Aqh2cgjIna6nCiGp9ehHCs5BoT2N2OEmgQzq
         JbRUzXT4ap1KLmm/iaYkv6RkydZj2A+n1ASJ/pN3a1AF/PYwGFNpWqfbj0E0NZEk0Pub
         nNLcBFA5xIRLxg8LJm+A0BZ5sG61/bPPJQf0X2xCWaTx8PfiSrYQpBQjxdxUaBFhHjhI
         SYk2P16pt2sjlYd6jhfu9zsnefFGeXS67VCyjXSx3c+CneYl6U57cyv9nCnRKZ2JStvq
         sFSmSrGpUGEygGaGPh81xbiWwqipv99Lk6U+FqqVkQfefbmBcg0bLe5dmIFg/0oWQXR2
         XUaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LGAnDkYZdl52afa8XlcuRcUdt72/eUON1vOr1+jSmciM1b5aq
	T18TC9wdMssw7Cp0RRU4fTg=
X-Google-Smtp-Source: ABdhPJwJ80N652nQANjM+GZpbDqCnrayykSLLokjS4EtWgMoq2nsHaS7DcHq5SqJ3e5SUu+dfmgh9Q==
X-Received: by 2002:a92:1589:: with SMTP id 9mr1792580ilv.39.1610536899408;
        Wed, 13 Jan 2021 03:21:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:7f0f:: with SMTP id a15ls466834ild.8.gmail; Wed, 13 Jan
 2021 03:21:39 -0800 (PST)
X-Received: by 2002:a92:c6d1:: with SMTP id v17mr1865040ilm.156.1610536898989;
        Wed, 13 Jan 2021 03:21:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610536898; cv=none;
        d=google.com; s=arc-20160816;
        b=pvyiKcE8sm66+Z/SoP1q2RYz5WxAAaexlIU2w6YheMqmo7OhXeYHH5pogkmJCu2nAM
         vAylFdBPXIXiRQH6OKip2oYGOcBPNusiUGq5z5rjDecyfvCjcXogzvtvYgiqoMS/W2z0
         z16M7ek3Tz0JFlzu0Q/wmmmtqjkVNc1y/bPYG1Hkn4JsS5JMmaqkhjU1BxhuZzbA0gB/
         JlMEnmaRJWrmo5R5r70UsGfNZJAKtXLDl3Fnf2d+y0yAmUc+UsvwO9/ksKZSCfHi6np+
         8cT9Fc5A5K4807h2rlGorW5CZOdrBGj37MI3ddNHoSOL0REDDolKKSz4FIKstIDUrwmz
         Z5xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XHPC7OstSxgYQPSXt6s0SmK1bDUNy0OvHCcTnPO9JZs=;
        b=Tjljs/dhjeejqfakhKG+430jyl0yYEDmQgfYlF9Tdz7aa69E30gTNF79Lmq+/MFjwE
         8LA/UvTKcIlfOJ09G3kdaSBb9Rrb6v9uuTzh3j2t61Rd4o9UbcStBlMy+x6l85FBAFYi
         4G41T78tk/foAguggraNQMaTalDYeub7npHthcgr0MRuGu03wNfV8g3u+WvXyPgr/OYu
         xTT5ib3YMp9opyeoAzm9DY3tvR8pFKRiEATxZoPQEZ11hi5Sg2zHZ1+SnSFXFNKcrFJv
         0ZFoFYuY1rqXrs8ioxsL9PbSHpcV33mIXsKUlCH6hpz/k9/21IZg8FTF2AQFsSON/G+V
         XmKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=otMtiQT3;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b8si258919ile.1.2021.01.13.03.21.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Jan 2021 03:21:38 -0800 (PST)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CDAA62336F;
	Wed, 13 Jan 2021 11:21:36 +0000 (UTC)
Date: Wed, 13 Jan 2021 16:51:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Dan Williams <dan.j.williams@intel.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] dmaengine: qcom: Always inline gpi_update_reg
Message-ID: <20210113112132.GA2771@vkoul-mobl>
References: <20210112191214.1264793-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210112191214.1264793-1-natechancellor@gmail.com>
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=otMtiQT3;       spf=pass
 (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=vkoul@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On 12-01-21, 12:12, Nathan Chancellor wrote:
> When building with CONFIG_UBSAN_UNSIGNED_OVERFLOW, clang decides not to
> inline gpi_update_reg, which causes a linkage failure around __bad_mask:
> 
> ld.lld: error: undefined symbol: __bad_mask
> >>> referenced by bitfield.h:119 (include/linux/bitfield.h:119)
> >>>               dma/qcom/gpi.o:(gpi_update_reg) in archive drivers/built-in.a
> >>> referenced by bitfield.h:119 (include/linux/bitfield.h:119)
> >>>               dma/qcom/gpi.o:(gpi_update_reg) in archive drivers/built-in.a
> 
> If gpi_update_reg is not inlined, the mask value will not be known at
> compile time so the check in field_multiplier stays in the final
> object file, causing the above linkage failure. Always inline
> gpi_update_reg so that this check can never fail.

Applied, thanks

-- 
~Vinod

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113112132.GA2771%40vkoul-mobl.
