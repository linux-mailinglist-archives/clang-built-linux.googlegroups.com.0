Return-Path: <clang-built-linux+bncBAABBI6D4KAQMGQEYGCPULQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-f184.google.com (mail-qk1-f184.google.com [209.85.222.184])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF3E325E29
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 08:22:13 +0100 (CET)
Received: by mail-qk1-f184.google.com with SMTP id y64sf5273321qkc.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 23:22:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614324132; cv=pass;
        d=google.com; s=arc-20160816;
        b=ADohrxY3oUf13Oz1XI8KadZr3r5klUFkF7gd5Fgoj8biZJzXgR674bVU9+3fOtKmgb
         CZnECiZunN5GuDRRDHU0P04Mpuh+ejWqzPfMQasu3QJf45+E388GH2FOPglZPSsO1BWE
         YOg4DkFXUTy4EhtKXmvP7L4U2prpzDlTLXNTopXHPXhWsmM+bkarkUc1ltwl/BIos+On
         6Z8N0vv1dpzOkyozJumUWCz+8zBESr4ScsP45zBCz+FN9/9MKq4koSX9LAE3QK/woQok
         +/2uF3olXI5X9a8MW7JvdY4Ix/dZpZmdONKNjCFjRawLYjdhf2kl4nw4MYW9NkJFkDI7
         Dpjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=1ezdOr6Qo6bUIOKRsIN07hkmydhjla/6e5N0JWLxm44=;
        b=R+WONF1U3J2IF1ivdpbC1SQy8iJb73X/cljWTS814Rjx9fyLcOL1ywy9lTswrjoGAI
         +sMOShGJJm1xZeseGmMyedtAv7/FUR3XmqHlXMS3X77RgShD9CKsrXIVjhxjTlm7+TDi
         P3YOxqimYmGWSiPBy5bBYMU1N08PX1rt8oq0BWToEnR8vwZfJOx9hldnuoBwrfruSxBp
         en959V0QAfabslXiu9bo5hbWFUai1e+UAZpcqwZK//+2LvZl/JsxwxIM7/YO+GzaPu0Z
         +JppzHqsPVHCOqcxKpRQ+Z9nOQUtlxZbHWuBO+zyJDy5nId07+MglcysBo14V3P3+crM
         GHxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=Po3qDLsE;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.11 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1ezdOr6Qo6bUIOKRsIN07hkmydhjla/6e5N0JWLxm44=;
        b=MVBTIO5sY6Vf4Rp3AkpaKqP4wSyUH9czV6it/xVqm/tJKL/sO/USukS3fZLz/vH4cq
         cUhIeNwhGI4g/zCiTf9F5qHWJi18pLvb1RQT+resXI9oZPLft8ZEWW2QlaPKUm0XVth2
         ezJG4pzbdl+d8EmT4o1LxmeqlSJkqldLoIA5JRso67MtwPNhjV+OQWJ3+2RE0+2lgbhW
         z0mxhl8LM0EY59f5Gc1jsnJiihGdyySA2LC/QPdABvbCSiq8iyQo5eRIPwenUKTCdBSS
         Nlgh0EvI8BX7FALYBa2kYdZUi63MvprFRFsG/wWIDoPnB0KfQuMNfKrupcfNm7ShYun5
         mlxg==
X-Gm-Message-State: AOAM530cvk2D3rr/QVSnThUB2y6EnE3kl8q7uZ37KScJ/1yXsP8JsyG/
	CsmCf5iqQ/97AVR9d7QGGuQ=
X-Google-Smtp-Source: ABdhPJyR9VD1EPJe93GlLhzwZBRaN4lIxE/OMV+TT5OKy1zHBIVbKo+dBg61FOyTAU6iM65HT/8Xgw==
X-Received: by 2002:a37:4e54:: with SMTP id c81mr1352062qkb.454.1614324131960;
        Thu, 25 Feb 2021 23:22:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4682:: with SMTP id g2ls3157248qto.11.gmail; Thu, 25 Feb
 2021 23:22:11 -0800 (PST)
X-Received: by 2002:ac8:5786:: with SMTP id v6mr1653981qta.200.1614324131598;
        Thu, 25 Feb 2021 23:22:11 -0800 (PST)
Received: by 2002:a37:a097:0:b029:27c:7058:d7d0 with SMTP id j145-20020a37a0970000b029027c7058d7d0msqke;
        Thu, 25 Feb 2021 08:00:51 -0800 (PST)
X-Received: by 2002:a37:b801:: with SMTP id i1mr3294635qkf.133.1614268850874;
        Thu, 25 Feb 2021 08:00:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614268850; cv=none;
        d=google.com; s=arc-20160816;
        b=u+DSQHKFnPndiN/4J/D9gnH9UrptDLF0WmgeWv62iT4xKyXXXcGJ6MSmyuw9fV9SaB
         quWTESzlu2HEX3fSqiiNlpOhD2MMzCbos4CCr0Fw23ryW9grkJTx3uaT7HzmpbM5PRPr
         SBiR9lxIXt66zJFon68mllKXwA4mGeBy0PlsUYWN0DDMEmYsqTqBQGOZyuBrpr0tHSuT
         NoImMDch+L7nnDHX6gLIITgDzy6ey9qd6JvzaJUK5WfdRBZEs2SqFxfaS/wOtp/P16Q7
         H1HuRqt9VRJgeKD12LU8Hte1k4oeL3quSQsptfVRv/kfaJGVIyi2BD5ZGehzGL6Y0CxE
         R8wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=nax/2qkYZxFNNsM/IxQmHhHuh8ylQMIKgrDBwB+k6Ek=;
        b=LYgFycWZhXxhtiESJC1fVQ1w2m7DV1N51S52N7TdWRJVVN084q54CX3y7ktFbgbZJx
         g65NaQRgWjFDe17HBjbnmfDBPzW47vK28sELnXbWLC4n9tPWkGzJ+Z96sW8DI18Yd/22
         tQ9yHC27AFnztR4xEjcSXi4yezMZIkXoZFfwQeaPW4aX+Za6C4/vIcetv+K4esUuNHUf
         WRjzdi8aqjjWg/nCijjS1hsFKHq0eVYnKt7+SUM+7sshHN3r+YU6YmU8FGQSwscDNUtA
         1pnQQJ0YhuyF9o/ZR82BMclF/k3277bKMGbw35xd6VPdeP1847czoHPPau+Z/zleKZl1
         hw2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=Po3qDLsE;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.11 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from z11.mailgun.us (z11.mailgun.us. [104.130.96.11])
        by gmr-mx.google.com with UTF8SMTPS id p21si418886qkh.6.2021.02.25.08.00.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 08:00:50 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.11 as permitted sender) client-ip=104.130.96.11;
X-Mailgun-Sending-Ip: 104.130.96.11
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 6037c98ea27401dc653baaae (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 25 Feb 2021 16:00:14
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 39FF0C433ED; Thu, 25 Feb 2021 16:00:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 51CAFC433CA;
	Thu, 25 Feb 2021 16:00:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 51CAFC433CA
From: Kalle Valo <kvalo@codeaurora.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Felix Fietkau <nbd@nbd.name>,  Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,  "David S. Miller" <davem@davemloft.net>,  Jakub Kicinski <kuba@kernel.org>,  Arnd Bergmann <arnd@arndb.de>,  Ryder Lee <ryder.lee@mediatek.com>,  Matthias Brugger <matthias.bgg@gmail.com>,  Nathan Chancellor <nathan@kernel.org>,  Nick Desaulniers <ndesaulniers@google.com>,  Shayne Chen <shayne.chen@mediatek.com>,  Sean Wang <sean.wang@mediatek.com>,  linux-wireless@vger.kernel.org,  netdev@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,  linux-mediatek@lists.infradead.org,  linux-kernel@vger.kernel.org,  clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] mt76: mt7915: fix unused 'mode' variable
References: <20210225145953.404859-1-arnd@kernel.org>
Date: Thu, 25 Feb 2021 18:00:07 +0200
In-Reply-To: <20210225145953.404859-1-arnd@kernel.org> (Arnd Bergmann's
	message of "Thu, 25 Feb 2021 15:59:14 +0100")
Message-ID: <871rd4f88o.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=Po3qDLsE;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.96.11 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Arnd Bergmann <arnd@kernel.org> writes:

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

Felix, can I take these two to wireless-drivers? An ack would be good.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/871rd4f88o.fsf%40codeaurora.org.
