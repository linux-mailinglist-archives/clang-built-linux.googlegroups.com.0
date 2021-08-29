Return-Path: <clang-built-linux+bncBCQYFH77QIORBLHOVSEQMGQEIN22Z3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-f184.google.com (mail-qt1-f184.google.com [209.85.160.184])
	by mail.lfdr.de (Postfix) with ESMTPS id 402AB3FA9EB
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Aug 2021 09:28:45 +0200 (CEST)
Received: by mail-qt1-f184.google.com with SMTP id u16-20020a05622a199000b0029f37b5c4f4sf1545530qtc.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Aug 2021 00:28:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630222124; cv=pass;
        d=google.com; s=arc-20160816;
        b=EFqAeAtYIhIOoPIUztLHIX6EER0CKNM5WWsjs6ImOByND31B54X9WBQE4Dy/Vaz9LG
         DQ1zwNfbhjg/D4o+mDLqAMQ3jJtZk8nAg5FG6lscUkYpPd5zEiaJdzuhy/KVTcYARCW0
         gUq1vk7+w7d/Hk8i1OR4Xgz5quaxelEN01kobG3mVTtXUWheAk2bm6l2AvUBsd3mSv2o
         95nwx28IRZhYl1rRfH9zZRKOORN+SEbFwhm/3xUFz7/6XGqzrzrb4WNDZh9IdcQBaXHu
         1SV22InXZ991heG/5tlwqbn4cp0yEVyW43X0txm95z4a+/TEg7TKkeCYWsVS4rhXB/VH
         GsXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:mime-version:dmarc-filter
         :sender;
        bh=saKI7vt11h9RWYQK8RIV8ZoOLHnfnoZlZbldojOaAyc=;
        b=PIWfnaWBq+oWwlc6wWfN2rJ1+iX1pRnxIdSVDPJB6gQusUk4LgyeLQwAQ/r3iJwvSj
         3pAuNo8WXuT3kcHthGSKJfF0YcyjSeUlKFNRvpRm+PbE0NncSRU8IgZIi1mXpjqsATKU
         ibrZcNBe3pg8j3QTmRCBC2CyjLAmjyCskNu2zGk1anRSb+t3Q1BbVZtLkFP0KG4h54Zx
         S5/ITHqR5KuO4Cz0KJb98C3GZG7cj3dfX1AlceG9rvl5zpv99YJQFPGd8YrVsA8UwvtB
         RSFJg0rVKGR7h9htqeCoQH00SxLgvgaWRbN2/4sSYZA1iKxHL7xJL5+n6lUC/MV5p28d
         rL7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b="MR9/0t8n";
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=saKI7vt11h9RWYQK8RIV8ZoOLHnfnoZlZbldojOaAyc=;
        b=gm6/Uu6B3tQKAp1PEqhAWHJnB1m6f6Z83b3zj80pbb36KmgVqrhT/bC3tMs69YNZtN
         jIFvtByD0O0WnruDvxtTxq5L2+SmfJEa9qsgV9PdkNwuiZw+CSf0469w65Oacv18z6ZJ
         OaX9GtmYwHF3qhB8mtw3IQGayRjjr7guLA6C6gSgvC2Pm48KEXRXSXe1Fy4WjORWJGGp
         5HJ9Of2Qtg8xY4u1DTKvQ2AdLCLe1KyE9XIntJnUBqM1eeq7RfvEspoiwNJKQEE60LRc
         UjEIkCCozaKL/AplBd1mvZ8TABkgzhUKyNBfatece+7dp/H2QpomQu94/p2+6cn4uXRz
         18MQ==
X-Gm-Message-State: AOAM531sCkRErC1Ra1Mo1xVKve9e0l2UVVYBOrRqV96iZ+gK7+C2Cph+
	OY7L20qMyOiGWs+LQya+yoE=
X-Google-Smtp-Source: ABdhPJxnOlc0zdxq76ZFg4tNcLXr7yrdzE8xJ2sB8AxRgErTwEcheXfK6l50PHaq3wHavvygQAXiFg==
X-Received: by 2002:ac8:7ee4:: with SMTP id r4mr15621316qtc.148.1630222124129;
        Sun, 29 Aug 2021 00:28:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6782:: with SMTP id b2ls6113623qtp.11.gmail; Sun, 29 Aug
 2021 00:28:43 -0700 (PDT)
X-Received: by 2002:ac8:5905:: with SMTP id 5mr15504309qty.286.1630222123733;
        Sun, 29 Aug 2021 00:28:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630222123; cv=none;
        d=google.com; s=arc-20160816;
        b=lfly0VlE7UFwcmdEtDuSIkPJ90G6b/p2onRomIyj0phevkHymU9BUzVeZ7ftc2X8Bb
         857FI5W8CZ8PXpezVkJo6sf+GDh4hdRwoCTS47s386W9GL3Eh3/7P7/9/JK3oHhwIJVv
         1cfGHTPZVx0Mm65PT+ufLLbBT+YE3WmbZa8MEImTzHXrTDWArI1D+JbA6/c/yULv/Ass
         hHc1ERNBtl8iZJ7rE2Pw29zPlhVtgfSR2XxD2xPwY3F/JfhDUL3Co/VeKGRt0gItUs/N
         AychF5BzDTk+VIjebBA0oljQb7MCUzwN/mKznhIVoo4tTXIzSqNWdnBx7TpLqMekr1EN
         W2VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter:sender
         :dkim-signature;
        bh=op3VyKg7O4sdLRM2oeeBnJchO2NcFBh3uBIxrEvd7+c=;
        b=jN8z5qOnkmKuGTnkYf/3Z49E/eH/ZNolTb9+naZZstpnznj11l7m6y5/ux9Ywl/Qfv
         ptBgyib5PWaUJu/1zYXABlGKyfNwZDJJPRL+zdtUE+YGE4M+OyrXaoZncAO8sHYznlgI
         qXtiFy2ur1ybm15ohR4ZjMD7NAeT54hLTkI6ZEcq4sgX84NbWKFE6dE9F5pa94fLZI/g
         tD1KF4XfKC1xJdAd4fvfB/fFTbQjU9pxr3xHApRA6Z6YPlR1HQjOmb9OAdW0DchVO7/K
         JR3u2wiYUthDiLU+M/6xQNdSQhw8+DbYkd72LnW09sB2teAFIPCDPwsAYtJxbiJ0YyoI
         MMBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b="MR9/0t8n";
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from so254-9.mailgun.net (so254-9.mailgun.net. [198.61.254.9])
        by gmr-mx.google.com with UTF8SMTPS id m8si881093qtn.5.2021.08.29.00.28.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Aug 2021 00:28:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) client-ip=198.61.254.9;
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 612b372bf61b2f864b5a54ff (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Sun, 29 Aug 2021 07:28:43
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 56DF9C43460; Sun, 29 Aug 2021 07:28:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	MISSING_DATE,MISSING_MID,SPF_FAIL autolearn=no autolearn_force=no
	version=3.4.0
Received: from tykki.adurom.net (tynnyri.adurom.net [51.15.11.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id A20A4C4338F;
	Sun, 29 Aug 2021 07:28:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org A20A4C4338F
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] rtlwifi: rtl8192de: Fix initialization of place in
 _rtl92c_phy_get_rightchnlplace()
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20210823222014.764557-1-nathan@kernel.org>
References: <20210823222014.764557-1-nathan@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Ping-Ke Shih <pkshih@realtek.com>,
 Colin Ian King <colin.king@canonical.com>, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, llvm@lists.linux.dev,
 Nathan Chancellor <nathan@kernel.org>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-Id: <20210829072842.56DF9C43460@smtp.codeaurora.org>
Date: Sun, 29 Aug 2021 07:28:42 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b="MR9/0t8n";       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Nathan Chancellor <nathan@kernel.org> wrote:

> Clang warns:
> 
> drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c:901:6: warning:
> variable 'place' is used uninitialized whenever 'if' condition is false
> [-Wsometimes-uninitialized]
>         if (chnl > 14) {
>             ^~~~~~~~~
> drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c:909:9: note:
> uninitialized use occurs here
>         return place;
>                ^~~~~
> drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c:901:2: note: remove
> the 'if' if its condition is always true
>         if (chnl > 14) {
>         ^~~~~~~~~~~~~~~
> drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c:899:10: note:
> initialize the variable 'place' to silence this warning
>         u8 place;
>                 ^
>                  = '\0'
> 1 warning generated.
> 
> Commit 369956ae5720 ("rtlwifi: rtl8192de: Remove redundant variable
> initializations") removed the initialization of place but it appears
> that this removal was in the wrong function.
> 
> _rtl92c_phy_get_rightchnlplace() returns place's value at the end of the
> function so now if the if statement is false, place never gets
> initialized. Add that initialization back to address the warning.
> 
> place's initialization is not necessary in
> rtl92d_get_rightchnlplace_for_iqk() as place is only used within the if
> statement so it can be removed, which is likely what was intended in the
> first place.
> 
> Fixes: 369956ae5720 ("rtlwifi: rtl8192de: Remove redundant variable initializations")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> Acked-by: Ping-Ke Shih <pkshih@realtek.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Patch applied to wireless-drivers-next.git, thanks.

533ccdae76fa rtlwifi: rtl8192de: Fix initialization of place in _rtl92c_phy_get_rightchnlplace()

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20210823222014.764557-1-nathan@kernel.org/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210829072842.56DF9C43460%40smtp.codeaurora.org.
