Return-Path: <clang-built-linux+bncBAABBIM2YHVQKGQEXMMJZXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CF2A9756
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 01:47:46 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id k70sf333404otk.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 16:47:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567640865; cv=pass;
        d=google.com; s=arc-20160816;
        b=nDbb8ETLi0hWRnbEvRrx1vWWRvD9CuViRfFDZI8pLzEMD2GYezrOqlggQ07UF1Z6BV
         qwCzl9LUXvF+PKQQ149s5Hqlc4so/sfIA9vsCUu82Q4Lz5twRQJ/8vGT0g2iJr5bsS2x
         VePynO7qvZlhg+gdqhw0OUDL6NPaCzIwO5h1t7bR6OPtX5xrDG+7p6kFPR/NAyQcr/79
         tC0SK40WjfvmTeZQocBw+lccXnN2z0/R3kNP64iSNtYFu1QO1XDFsf4bQ9xwjQGRlHd+
         uSwyVTur9xJmyJCURO3kDFS0Thu9G4IEB+CMWwnINrlT9StAW3cw/N4XktdUHc3f371q
         m1Pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:mime-version:dmarc-filter
         :sender:dkim-signature;
        bh=v7oXvukR/l+UtK+9NnUakWQRs3+HruGnt0WQn7ERdGE=;
        b=COs26fTEammBpYbc6ZuVpHGlqH/HOZ+QyUpG+d0/3CgyEL9FzzjYwJkDpqICUCtok1
         DOAFoeJ6c6zzYJr0/KXXyTeFDvzCNaIPWbIBv07ln7XozgE0jXM+maiVjq/4NelwlovP
         SAYKO6E5WZu5PcTn8/IFUWCqA4pXz9r80xeCUvC4SXWnBJVDuRh0SNpB96D4agO6DcYD
         tEpnmSkFxViO4NQOz1PsAKQkcBWF2LA+db8vP401noM7WSpJTjvm4SaVr089CBghbdLw
         UQ3eZArw+ZpX20TsCKzEwUBzN6Z3QGWO8px+3QfBfGJ1sx9XrBBfJkA9QdMYf80SQr62
         MM5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=G45S1fHk;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=Zowoyk2t;
       spf=pass (google.com: domain of kvalo@codeaurora.org designates 198.145.29.96 as permitted sender) smtp.mailfrom=kvalo@codeaurora.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dmarc-filter:mime-version:subject:from:in-reply-to
         :references:to:cc:user-agent:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v7oXvukR/l+UtK+9NnUakWQRs3+HruGnt0WQn7ERdGE=;
        b=sXpBjisF7PVpwl2dY5GIvmjJOkZ9WJiTE7lG2cImc7DulpLbxhAvAootUgOAWzp7Tk
         BpFSqPfD691wOLfksJdC+mB5Zni7r80Ezxkru+MhkKkQSQKtj8C91r+E0XlREDK8dpKm
         kmBuDJQsYpflIyPB3Bv44AeW8RRW99brTdp03x+0Z2o2qxJSnuftM8sNX41d3Mt6UnVB
         qK3e08LkI9VXirSNNQbIB79NzWMcn78IWk6n192c2FLSBCZRCkEBC+98hogUxG1f3Ezf
         FVkFtDzOF6aB6jrEPtpAFsg3cX1zqhibuOr0n7qHbwDmlgLYSCbU4MOBW5/LUX3CKb7+
         FGfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v7oXvukR/l+UtK+9NnUakWQRs3+HruGnt0WQn7ERdGE=;
        b=FfOepNf+FGDL/9vAAIsHxUoAJGbnpw2FkO+O0tsi+fGrG/7sUPYwDLvD577e+hZGkE
         /J1RAmg2MsT5plOySTqyaifBM77zTQu9YMbxRi3McYD12TPi68PmQSBNTlvwS5rJrae/
         u2nH0AeSK0MsNQ/Cr6NNhYlvns3YlO2z2vdAeg0+QddD2tpMptne+B8CYKCS+p/60X8H
         uJ5tvNP4sq4VumtZe2mSK81I1Xqy5jWuISROPIlr5y3H3uZ/Ci3yioA9wPKatVIvbijj
         cRW/hB60sVVBokDN5BuHc7fdboB/4TQtYQWs/YMcme7k41up5eXNB5yJmCdFl2TiPBdl
         EEsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXPWra5otmYW4FwCEdsAWZj/8nAUEfx2y8s9YPJ1ZeaypW4RSjV
	n7Zc30tlKSuTrQ7HTaKYJZA=
X-Google-Smtp-Source: APXvYqyGdfqTGQ4WuLSiwIsUUGaHyKhZrJZ8CfAnw6lZCsdWEmbGq6wQmF2n+g53Mv6IjJFLqImzqg==
X-Received: by 2002:a9d:404a:: with SMTP id o10mr180478oti.94.1567640865057;
        Wed, 04 Sep 2019 16:47:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:187:: with SMTP id e7ls112796ote.0.gmail; Wed, 04 Sep
 2019 16:47:44 -0700 (PDT)
X-Received: by 2002:a05:6830:184:: with SMTP id q4mr184449ota.128.1567640864954;
        Wed, 04 Sep 2019 16:47:44 -0700 (PDT)
Received: by 2002:aca:1116:0:0:0:0:0 with SMTP id 22msoir;
        Tue, 3 Sep 2019 23:22:55 -0700 (PDT)
X-Received: by 2002:a62:ab1a:: with SMTP id p26mr14064105pff.2.1567578175450;
        Tue, 03 Sep 2019 23:22:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567578175; cv=none;
        d=google.com; s=arc-20160816;
        b=KjT+KAvGF0RaKz/AY3DEZGikvFZzHDb9XnOL5IfEGKMqN6lYTGCxl2Ydi9V0makseD
         Aj075hA3wp7CD+cjy2K1uDWwAizApdToQY7BWLI75R4Z5AbdH9pN9rxEwY/w2OFZckdf
         W08B/+yrdMPyQshaOefUwuscHOFxSdROZ9iRbsCvpxWQrCrV5odHuDmz9lPkSP6jEtAl
         FeJtbW6qp4eGIwzNi5VbB2Y6RUx3fi99Rw1TjAkiG4oAnkMaLCxZt1H0/KgDz12lmHx0
         xLWHzndih9/bQVOjkexW9ZCddkqgEgIZ3fUVaqUfmYLmMw6aZnQuRBBdkD7aDZ1hyHNT
         JJCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter
         :dkim-signature:dkim-signature;
        bh=GecPHV4kykzcHGnqv6LdYSALw9AFAl1hhtdbs4tQ81w=;
        b=viAf13uSRq3FhfEyEpnbpkmtKZD4YMlaH+nBF4FHS3mcxLXh58zCH6eU76zBxdVJFr
         wIwbXXQ6so1gxCgHzSfMtY4BRI0oUl6OY1yZHHHKLU+YJv1DjIhOFoTU8y0P7VM8VuYI
         Kk56q95A7vVsBASu0S1cEMWhUdZCYdcMh3TU3v2t7XKjrPnPeXW+j7oyB+A/s3llTCZB
         p7pbDL4WM5nFs9ylSOYNiIXYoMDbcSqUd9XHUcy1gyn7waGLAqEcjo898ZeDTc7Fzjp8
         DJyxE0IFMfZId7uApRDF0m5I0WHC3LgfeJPowev2ymTnOsDJrEFyNiWIHVgYDg72sW4P
         SXeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=G45S1fHk;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=Zowoyk2t;
       spf=pass (google.com: domain of kvalo@codeaurora.org designates 198.145.29.96 as permitted sender) smtp.mailfrom=kvalo@codeaurora.org
Received: from smtp.codeaurora.org (smtp.codeaurora.org. [198.145.29.96])
        by gmr-mx.google.com with ESMTPS id w72si1357938pfd.2.2019.09.03.23.22.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Sep 2019 23:22:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of kvalo@codeaurora.org designates 198.145.29.96 as permitted sender) client-ip=198.145.29.96;
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
	id 16518602A7; Wed,  4 Sep 2019 06:22:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo@smtp.codeaurora.org)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id D386E602A7;
	Wed,  4 Sep 2019 06:22:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D386E602A7
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] wcn36xx: use dynamic allocation for large variables
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190722145910.1156473-1-arnd@arndb.de>
References: <20190722145910.1156473-1-arnd@arndb.de>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Arnd Bergmann <arnd@arndb.de>, Eugene Krasnikov <k.eugene.e@gmail.com>,
 "John W. Linville" <linville@tuxdriver.com>,
 "David S. Miller" <davem@davemloft.net>, YueHaibing <yuehaibing@huawei.com>,
 wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190904062255.16518602A7@smtp.codeaurora.org>
Date: Wed,  4 Sep 2019 06:22:54 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@codeaurora.org header.s=default header.b=G45S1fHk;       dkim=pass
 header.i=@codeaurora.org header.s=default header.b=Zowoyk2t;       spf=pass
 (google.com: domain of kvalo@codeaurora.org designates 198.145.29.96 as
 permitted sender) smtp.mailfrom=kvalo@codeaurora.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Arnd Bergmann <arnd@arndb.de> wrote:

> clang triggers a warning about oversized stack frames that gcc does not
> notice because of slightly different inlining decisions:
> 
> ath/wcn36xx/smd.c:1409:5: error: stack frame size of 1040 bytes in function 'wcn36xx_smd_config_bss' [-Werror,-Wframe-larger-than=]
> ath/wcn36xx/smd.c:640:5: error: stack frame size of 1032 bytes in function 'wcn36xx_smd_start_hw_scan' [-Werror,-Wframe-larger-than=]
> 
> Basically the wcn36xx_hal_start_scan_offload_req_msg,
> wcn36xx_hal_config_bss_req_msg_v1, and wcn36xx_hal_config_bss_req_msg
> structures are too large to be put on the kernel stack, but small
> enough that gcc does not warn about them.
> 
> Use kzalloc() to allocate them all. There are similar structures in other
> parts of this driver, but they are all smaller, with the next largest
> stack frame at 480 bytes for wcn36xx_smd_send_beacon.
> 
> Fixes: 8e84c2582169 ("wcn36xx: mac80211 driver for Qualcomm WCN3660/WCN3680 hardware")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

355cf3191201 wcn36xx: use dynamic allocation for large variables

-- 
https://patchwork.kernel.org/patch/11052589/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904062255.16518602A7%40smtp.codeaurora.org.
