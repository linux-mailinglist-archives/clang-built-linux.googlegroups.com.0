Return-Path: <clang-built-linux+bncBCQYFH77QIORBA7EW3YQKGQEB2J4GEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-f186.google.com (mail-yb1-f186.google.com [209.85.219.186])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A842149B72
	for <lists+clang-built-linux@lfdr.de>; Sun, 26 Jan 2020 16:36:36 +0100 (CET)
Received: by mail-yb1-f186.google.com with SMTP id b144sf5795773ybg.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 26 Jan 2020 07:36:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580052995; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vj1Vmi7xAWajTF1E/CMrzttzRBfK8CBYQQs1tQ5h43aeE3TH+0sc4gZg9prDWzVDyC
         Sa1pjSa5AOH/eqraY61mLtusaiRX7VR/yDlupDKOgFLt8TgQu1lmjelPYqf6DuFlv2RN
         iDIJuUoe4Qszy9TWNDKYLwq9A2qyURe2tel/8BR6qFoUvTQa8lFLLZbDtqCNrHbmTF6h
         PthLK7/eQKQyFLsGE1vBAPGvJMn2BbG4D2Qk2XbUPDV6DhB8OsWNh8Y63MJ32NYW+oOl
         wiSNfbIOOioJynVCHo+fUJRNvjHuIogCxGAfdV1GQeKJJn4CW0+VNmMgVWkDrhhRZrQ1
         zseg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:mime-version:dmarc-filter
         :sender;
        bh=qGipcB5fRTfyhENwHEJO8Vw9RhM1LAoYlJqYSQae4vk=;
        b=FvxhLsplmEN+Q/auGLXtgyT+GrF5JB7I5+BlVWv//XAe4ax5fLMkgrVZnbmlexo5WS
         Uk3nmEJF7a6tjz5Ldi4QzgeI0zX1oJuHKUJcTLs3SMqHXePed42tFyI2nXXKGAJEgwXj
         i6JifE5oGjMA78gnhyKeMhjdZKsgcfu6FZqulffTDIxU2b/8iRUr1KQslZ5ous4ixwFy
         V7xR8RHO4lcOYwZAUZhpVSAzXgAJY5OfbLceUu49rk/7ujbsFs/jluUgdGRSbe5KtC2k
         ORKpdxsnC+7aFPmm/KTMlAnVAY63ghOyfO1FBOeUvunOrwTy/GMMpNLYXy0+zR+IufmK
         3o2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=I2poTRm9;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.26 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qGipcB5fRTfyhENwHEJO8Vw9RhM1LAoYlJqYSQae4vk=;
        b=WOK+S2uWxMsE2LBeDKUvCJjBtEL7PkjMqPdK3t4EXn2VgBptXlt1xOP55nI4Pon86v
         pvO0fGMpp4AxiT+5idk18aQtzZNTYgFjF2Q1XeTCv7M6k8M0aCaXCC6t+Av6GcCzd7W2
         snDojop1i+pJDrNUpuilYhLLgcscUgnCrVQgLAZAt2gaSjFOaJWlhgoOTup9deNXBETz
         X/E7WB2JWtV3mFwGn8ogE2y0mI0NxKnizAkXiKWdoL398cdCej/QnwMp9+UXVahf/XPU
         Rvpa/WalzCFizUlD2fhsfEUd1nD8TasO2ParUa0IVIvkEX7YPC958iV7T5xDAnx89MRQ
         2u5g==
X-Gm-Message-State: APjAAAUrU2J50tY8f52+OIJ+A1Z2NtUcoR7hXWxTcQi6K8l8G1lpZ0VI
	nJHgnrQUoHrJvP9+Vohjp2E=
X-Google-Smtp-Source: APXvYqwqxy2vJEY28eUea4606LrtTG/MUyLgKXsnzXpHuuFF6jgnpFzXrUwOH5S0JZWwNbt7N9b+1A==
X-Received: by 2002:a0d:d2c6:: with SMTP id u189mr9946581ywd.290.1580052995389;
        Sun, 26 Jan 2020 07:36:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5d09:: with SMTP id r9ls1515018ybb.2.gmail; Sun, 26 Jan
 2020 07:36:34 -0800 (PST)
X-Received: by 2002:a25:e7c9:: with SMTP id e192mr10497864ybh.253.1580052994761;
        Sun, 26 Jan 2020 07:36:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580052994; cv=none;
        d=google.com; s=arc-20160816;
        b=odIUA/nWo2TPp4UkC0ZDemZAGeyyiXOjP96nx5yHmZaveV1iGQVwn4ZoOrPdPUjOgF
         H/uddyvgx4Saqt64UrvHAsC/FcofDcJMNXnhifJEWXBk3xtMHiFagBuBizeH/ZRUrJsr
         bKHLKzUB8OxF3icpHcWJ5Kc9go1kCoV0Pq/GR54Ra/llfXTMZu+OK1jqr4RFYihh2HtF
         XQs7kRkLkeKFlgFqcGDCE03tSUL7KORAAn5c0xYimOfvN+XOcDE1pJWYh7neLcktlJmo
         T4bqdSrM21Xd0hAzpZnrGsqrhJuFYV8CfwooWANVRumxP4vmIMMTt93GWM98F9vZgFlx
         fDMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter:sender
         :dkim-signature;
        bh=fB+9Ig6BEvL0LASv8D9I/HUEKOK3HLWIXnz4r7aDix4=;
        b=njg28poHkzKfM+hn5IZ59xK87jj4RvC3I8IgBSVtOFE91IpfFpeeSA7odbQAzV4mq3
         WnrdrhkkBdMGp1nVy3bhVyHnEs2Ra7SIMF4Cgzbh6xETtpPawxT/dCxv+cbOx8MZhPkU
         PThBy7CTJLGt9R8dJtTmtn73fTIhl82M8lZomtWou+prrqDK5f2adf82pvxdGOgTAcYS
         6yi0QlzUdEV+LssLtslcUH9hDjOhNkod1T1+nnu1n4dVv+4skFuzTbb0w7pkAdimY3KK
         6Gf/kvIC/W7NLb4hl5yWWeT4dIzH/x1JDSrPmoIewnZN2/9BDyGxsxrvsll79Oys4teR
         91kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=I2poTRm9;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.26 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from mail26.static.mailgun.info (mail26.static.mailgun.info. [104.130.122.26])
        by gmr-mx.google.com with UTF8SMTPS id 144si540225ybe.3.2020.01.26.07.36.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jan 2020 07:36:34 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.26 as permitted sender) client-ip=104.130.122.26;
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: from smtp.codeaurora.org (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2db201.7f7055ba0d88-smtp-out-n02;
 Sun, 26 Jan 2020 15:36:33 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id C9709C433CB; Sun, 26 Jan 2020 15:36:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
	MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 2E70FC43383;
	Sun, 26 Jan 2020 15:36:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2E70FC43383
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] hostap: Adjust indentation in prism2_hostapd_add_sta
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191218011545.40557-1-natechancellor@gmail.com>
References: <20191218011545.40557-1-natechancellor@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200126153633.C9709C433CB@smtp.codeaurora.org>
Date: Sun, 26 Jan 2020 15:36:33 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=I2poTRm9;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.122.26 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Nathan Chancellor <natechancellor@gmail.com> wrote:

> Clang warns:
> 
> ../drivers/net/wireless/intersil/hostap/hostap_ap.c:2511:3: warning:
> misleading indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>         if (sta->tx_supp_rates & WLAN_RATE_5M5)
>         ^
> ../drivers/net/wireless/intersil/hostap/hostap_ap.c:2509:2: note:
> previous statement is here
>         if (sta->tx_supp_rates & WLAN_RATE_2M)
>         ^
> 1 warning generated.
> 
> This warning occurs because there is a space before the tab on this
> line. Remove it so that the indentation is consistent with the Linux
> kernel coding style and clang no longer warns.
> 
> Fixes: ff1d2767d5a4 ("Add HostAP wireless driver.")
> Link: https://github.com/ClangBuiltLinux/linux/issues/813
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Patch applied to wireless-drivers-next.git, thanks.

b61156fba74f hostap: Adjust indentation in prism2_hostapd_add_sta

-- 
https://patchwork.kernel.org/patch/11299247/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200126153633.C9709C433CB%40smtp.codeaurora.org.
