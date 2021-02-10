Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBMG3SCAQMGQEC7YSVQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 9598B316F74
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 20:02:09 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id a1sf123976lfr.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 11:02:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612983729; cv=pass;
        d=google.com; s=arc-20160816;
        b=ShaotiVR4u1iK+vDcCewnQYHugQEqwJx4bDwYjdWXfVyqrbFWwzOJtnWAbsAU/9Sap
         DPRBDD7aFoTWNCdQXgYGiZBUBr+SauWfI9u5RpoZdxIQUGfM3QT5SnsrrAqP+w4gOoFt
         8qkTbilM1uOulfwXLOdHEknNnytLVyVKasf/kHSaCyYENKZRZVJwRiXM4+hDPr1In4BK
         dAJA7ipB/o7PeGU086VzUtwaSTWvYFspLsuEbUa4hb13a6TFn9RenvinrcIHegyy798H
         YGOIaQrP2M4B9SdM1avlEGovzJmmYOjNWS+wtkOTAwv9U8ScPqeFd6Vubjn47905AYMS
         YL5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3RgQzBTRCO+fCCwyaVkdP/y/M2NE7Cnq/7FGN4mLuUQ=;
        b=CrcFjD6KcJOtN9G5cF/81W2y6h9ohnUvf/aMVWIw5rgNe+7Y6xE+ICgEHy8s2jmAQ0
         hATCEHKJ0H31fUvT8gmpKDrHstGB5YOgabtn4APw+JAKSrIC7Xi4Vk8ez/R3Us6qm+Hu
         P8lobFLhTjWGtSd4TAs50C41GCrYkmydde11Cf0AWS1nvFJvmlXwFQOzMqiiF0oA8PfM
         7gXkYUF6FGibZlhHqlBCGOy7ixtVWWjHrtMV4Pgjq+XsfhLyYYwp0u0MwTTRe4wqsfex
         2H3HpeNTexMbMAEu1IWy3stKzpb2pJkGFZJLS4kln8BM7RTRS9JMFZy4E56fmGjHcMNx
         0Oag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3RgQzBTRCO+fCCwyaVkdP/y/M2NE7Cnq/7FGN4mLuUQ=;
        b=J7ZhXnkrl1EPMKAojTOxgg15YrBA+7BlMJumceydsiWhGMi5M7O2BavddMXEX99iFU
         pVQ9XF7fwB4sXl0/QqYQIZ3YDYem+KdpK2X+5zgA+WKy8Qkjs6s6K7SPw5MjnJCw2W0q
         74EmvLv5cNRZ5Zf/DvtDmcdgb4CshYWcALt2OJrj5PJTlyG0j3gLXENHnwoWXjZ+8MuB
         pRTuNgox4lRS9yMUpafDA7w199A3X+1Fmzp7gicmpvBsz9E5+0FXctEIJ55BQahkoHvc
         GX8LwAsTqwaJCxaHRH+9zDAN94oAc+qXgi6eaeQw1wWBT5Lh8kcfn7yW47xHhyrIsWKv
         x1gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3RgQzBTRCO+fCCwyaVkdP/y/M2NE7Cnq/7FGN4mLuUQ=;
        b=S9zkfEThQiVsXKbNkXLDqR5wqL72T3QcU0Trd9QT7E0+nhGib/R1sKTegVvXI9IwcH
         sg5JBzlXgrX82wcptaQzJJyT/gCMb9mjvLRTQjj+8B4ayWvoVQSqBKNz/BEngJ43ZI2Q
         MOTWjCTaNhh0VkvgfHPabud+5Oz1bX54s3aozSDVvN1R4O94SqBUmRcB+uCP0TZX2aau
         j5b48lRKM5MAElh0hODu9AZYdOG/wagQ44FtwoCuDgPuZllBdmL4ZQBeIM5Q8vzhvTl4
         bpvwTIkyDFZvmMODbxSMTIMrHJAmCSm5DbrEbgumpVr6vjESIcR4Nb/yttavFpYLqhYB
         /r+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TJhNm5C0ZG8bW6idEcpLxf2C3nv71dKFYrETxu2afTgpQUwZr
	TmVh0c5ijE5coaKRNbBR938=
X-Google-Smtp-Source: ABdhPJwYvY94WlyNfUAKthhl5yHHSfRuGHJk/C/D8X7QwtngZESzUm/rkA7FCKKg9IFXDM8aREePGw==
X-Received: by 2002:a19:17:: with SMTP id 23mr2453896lfa.528.1612983729056;
        Wed, 10 Feb 2021 11:02:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4adc:: with SMTP id m28ls875935lfp.0.gmail; Wed, 10 Feb
 2021 11:02:07 -0800 (PST)
X-Received: by 2002:ac2:4842:: with SMTP id 2mr2499835lfy.440.1612983727873;
        Wed, 10 Feb 2021 11:02:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612983727; cv=none;
        d=google.com; s=arc-20160816;
        b=eyIwtv9sIMc/lvl2TWZdnDll6kQ3WSGD6kaFTDM5jIGOhLG5L4tAWqxdtFu2g+GXZh
         FJIOs77GXAMO8eCw4SoUbl1S+TbYD4hn4ITJWRtEJH4aI7R2m7JKcG2x6UU+BjJcGqVe
         LiHlENGSVc8UZwuXo6NcdkaR556D/hmrDY8UVnId9uqSVyCT58aGoz4aa8gMpNNiEzHm
         tSO2ERSpCZRqAGcRKi6luB6sJxyzo46A6rVTpXD+XTkBwAwsuiZCQJLux9PYOexw/pRq
         lCnje+k8yMdli63HS/MDE9nKtgLp+8G5TlKlKPzHTg7l6dPD8KCV5Iuh5yX+L4YGH99e
         Ha4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=9a8cX2RfaApNsZpGPm6zeEnFvvmo5A9b2cesmUFtals=;
        b=lOavt3lpzD7WeW/QBvn1N1dtHCZXcMqSqnyIuwmj0xSofrrr7Zn88yPwBkCqDN0d4S
         64gkTJe8vXwSA9/KaxhWswmd71neyix9W4g5RkA4COAcAcbz5GvfyVmxG1wDjAkyisl5
         hYo++FcK+4w+fhK2zLkJx4rMUA8TBWZPi7qZe/iUt321twH7XD5N8xEV/X5mtb5Jj2nD
         zCVA9/6Pw1TkW9mLOrKvK0V+gQQHlxBSEIZmoohvCmg9XFRzx+1p05gG0W/79g3Sd4k+
         cqJl2f1uW54pJ/+aMvUiJI5Dg7d3fBfMkmQNaoWL2VhaCnX+DgHSqKyA3ohLa0G7PDC0
         7Fuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id l24si131254lji.0.2021.02.10.11.02.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Feb 2021 11:02:07 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1l9ukL-005NMX-Ou; Wed, 10 Feb 2021 20:01:53 +0100
Date: Wed, 10 Feb 2021 20:01:53 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jason Gunthorpe <jgg@nvidia.com>, Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH RFC/RFT 0/2] W=1 by default for Ethernet PHY subsystem
Message-ID: <YCQtoYFZzfNmGhd/@lunn.ch>
References: <20200919190258.3673246-1-andrew@lunn.ch>
 <CAK7LNASY6hTDo8cuH5H_ExciEybBPbAuB3OxsmHbUUgoES94EA@mail.gmail.com>
 <20200920145351.GB3689762@lunn.ch>
 <20210210183917.GA1471624@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210210183917.GA1471624@nvidia.com>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
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

On Wed, Feb 10, 2021 at 02:39:17PM -0400, Jason Gunthorpe wrote:
> On Sun, Sep 20, 2020 at 04:53:51PM +0200, Andrew Lunn wrote:
> 
> > How often are new W=1 flags added? My patch exported
> > KBUILD_CFLAGS_WARN1. How about instead we export
> > KBUILD_CFLAGS_WARN1_20200920. A subsystem can then sign up to being
> > W=1 clean as for the 20200920 definition of W=1.
> 
> I think this is a reasonable idea.
> 
> I'm hitting exactly the issue this series is trying to solve, Lee
> invested a lot of effort to make drivers/infiniband/ W=1 clean, but
> as maintainer I can't sustain this since there is no easy way to have
> a warning free compile and get all extra warnings.  Also all my
> submitters are not running with W=1
> 
> I need kbuild to get everyone on the same page to be able to sustain
> the warning clean up. We've already had a regression and it has only
> been a few weeks :(
> 
> Andrew, would you consider respinning this series in the above form?

Arnd has worked on the core parts. But i lost track of if his patches
got merged.

    Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCQtoYFZzfNmGhd/%40lunn.ch.
