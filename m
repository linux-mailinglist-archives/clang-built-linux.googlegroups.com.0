Return-Path: <clang-built-linux+bncBDAM5T5O4IGBBY7N42CQMGQE3EFP7WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-f185.google.com (mail-pl1-f185.google.com [209.85.214.185])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E97539B1DB
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 07:15:17 +0200 (CEST)
Received: by mail-pl1-f185.google.com with SMTP id b7-20020a1709026507b0290103ee45ae76sf3673466plk.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 22:15:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622783715; cv=pass;
        d=google.com; s=arc-20160816;
        b=HBw2wCxlJ2qjGFUR6I9e0Ws+SSHwnexDy68Th5y3XkVnJdwGFEz9yCHWno4lbP1Yaw
         0HEfRUImtWBgLPM7Xn4F4Xb9E9x4hNyEhjapF794mmhkRlkmTfNVs6rNLMKPd2CTncsA
         nGAAkGm5Y4RBhy7UDpJiWXQ/Im3mMkvQqJawBcmaeW+lF0NE85EbfKq2sfgytwwadUtj
         znD7lxUlmfV3g79UG6f4nXnzCnjZidPZC3331zfQp8Wts42EQDqTVBCQtZsWUCIVGDOy
         jnLK84dijJ2sgIpXb7y0dia1QoEj+AG2C4/YgKNHU3eWrCOWyM8xchayJjVitRhUJcf4
         0pDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender;
        bh=CyXuBCAzYEGr85Nf+OXZ3vJDD+Gkyfsa6lsXBjZMnl0=;
        b=ZsQIMcZo/BMx+ybS77sEl6l8YPuVZ2y3aL7P2Nheoj13dQHram5yp7Mir7hGTj+hr7
         8VB9orQIjuPvsmkbfzZwG13toMuL01IDyL1QfzdU/Gc2LN7fFhSfq3HrjeRXRtofmQsN
         WZirQtSjk1vlnPzlwlBSzcMAY6hy1aRU84a8UmRA4mbfhD/oQGqrYRm+EYlKdK05NZWV
         WEYipVkgabbv2lEY/USgS/1eELiLam5KCubXct2tfHyriT4LH7gozC5zvmFNxLJAT9pT
         mhIQF/w+sWWGP+6Y5rG8VUFph0pDkX+eI8Ofoj9BL7FvkORzTr0EBgfi0wUdvdCUUnD+
         gh6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=nTQyQVeV;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:mime-version:date:from:to:cc:subject
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CyXuBCAzYEGr85Nf+OXZ3vJDD+Gkyfsa6lsXBjZMnl0=;
        b=mouIUozp2HsgYcbBjswMFtZtIt9Dx83gw2vm7VfINFb1KWMsA6kfUf5A6pgleglomt
         9BYpW4Bil32JI8663GzqnDuTeXrWbo3CWX1oZeyptMKJftz075eoIzXhyFtV+gYHOgaE
         JIHBhqBM8Qblf6DZhoknZEMJoqMwjNpMlm0sbvC0+qGFboYXPHspb85NG54E5iU/iYCx
         eSLAjwfKU8qE5rAm1c93zg3V1LWwShfH1BzukEl/hvWTJQdP2oe7OVOuoZcv8gFilvQ7
         R1uCJlo3kWD6iVHkL8poBS+hcUCpDXHs4CL0vCWhkX/wr5t0wGXCkaq+rU72nVfSD4l+
         Aanw==
X-Gm-Message-State: AOAM5320YsZ/v6EGAGp0Ja8x2FVhBBa+3xJMoGb1iBXyP9A28vWygsnE
	tR19k5hmFyFpqFmV7qTNeQ8=
X-Google-Smtp-Source: ABdhPJzTlf1tzS4N1U5ZLXHYUrV0OookLTGpZQegOJi1U6Fn4PfzRost9yu1xDhzsad8JWAwu873qA==
X-Received: by 2002:a17:902:bb92:b029:f4:4a28:3ed0 with SMTP id m18-20020a170902bb92b02900f44a283ed0mr2752360pls.48.1622783715737;
        Thu, 03 Jun 2021 22:15:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b282:: with SMTP id u2ls3133219plr.10.gmail; Thu, 03
 Jun 2021 22:15:15 -0700 (PDT)
X-Received: by 2002:a17:90a:db04:: with SMTP id g4mr10901050pjv.81.1622783715153;
        Thu, 03 Jun 2021 22:15:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622783715; cv=none;
        d=google.com; s=arc-20160816;
        b=vjkFHk/x/jKGpWfs6TzvW24mLkz/omEaqL8htITQf50XNvHsNave+XV15tIpLC0UzE
         961sooZmeG0JAN8GlLBleX441CUc4yON53+58l4F+koMoyeqy3biPGThCLHi3ZaPG9Ws
         tmjlJ2gEO8JLofuDceKaWv/SsoC8jY6/obMVvxy3vO61Mc+1CDDNHmEEpFeTnV1iO1RP
         HK8awQbq/hfH4ayfzuGuQpAd1SBii687V+el/diF2Bb+m203MmiJruF+BtTAMilxVTx6
         wHjD9idqVNvLRknOZNLP6FwEn7IomHAITbwkWOhDEFw4SAECKvwxiUOqSJRpIrrJB+K9
         +X3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:sender:dkim-signature;
        bh=uRQ5+HAqjf1zI3L21gFTmAKCk0wOVTgllZo9/C7+/WA=;
        b=y3YNABVucStR/CrjmwL73thuAuvzJXiNvEIp5THXAKpDRaNc+P4zHs41LfOusE06TB
         M0/a9yeAFcl/rl+eZEZY9CrrJo9MyHT575CFmT3DGg/v2KGbRpgRe/8hU9SQdAMQVJhe
         SMcOBN4beUelKBz5Ym3k96deP9KQ6YuLlC+Aw403dJLLc5hXbPV3VWmVXBNFIsAKXTXZ
         LpE9ZPMW01tBBZA3oJcxAs6Yed+hdXnOGaliSz3C5pclJi3S/GdRQu5xwgATrIv3t5Dv
         lw4gZL4TUIjI1fyxRz0ZXnKNC2jNxwjljMGSIXK3D2PLVGwseLnXqrIGW1n4/eZIyJ9d
         lm+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=nTQyQVeV;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from so254-9.mailgun.net (so254-9.mailgun.net. [198.61.254.9])
        by gmr-mx.google.com with UTF8SMTPS id ob7si267003pjb.1.2021.06.03.22.15.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 22:15:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) client-ip=198.61.254.9;
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-west-2.postgun.com with SMTP id
 60b9b6dfed59bf69cca2fe9e (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 04 Jun 2021 05:15:11
 GMT
Sender: subashab=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 148EEC43460; Fri,  4 Jun 2021 05:15:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: subashab)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 7237CC433F1;
	Fri,  4 Jun 2021 05:15:10 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Thu, 03 Jun 2021 23:15:10 -0600
From: subashab@codeaurora.org
To: patchwork-bot+netdevbpf@kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>, stranche@codeaurora.org,
 davem@davemloft.net, kuba@kernel.org, ndesaulniers@google.com,
 sharathv@codeaurora.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] net: ethernet: rmnet: Restructure if checks to
 avoid uninitialized warning
In-Reply-To: <162276000605.13062.14467575723320615318.git-patchwork-notify@kernel.org>
References: <20210603173410.310362-1-nathan@kernel.org>
 <162276000605.13062.14467575723320615318.git-patchwork-notify@kernel.org>
Message-ID: <1f6f8246f0cd477c0b1e2b88b4ec825a@codeaurora.org>
X-Sender: subashab@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-Original-Sender: subashab@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=nTQyQVeV;       spf=pass
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

On 2021-06-03 16:40, patchwork-bot+netdevbpf@kernel.org wrote:
> Hello:
> 
> This patch was applied to netdev/net-next.git (refs/heads/master):
> 
> On Thu,  3 Jun 2021 10:34:10 -0700 you wrote:
>> Clang warns that proto in rmnet_map_v5_checksum_uplink_packet() might 
>> be
>> used uninitialized:
>> 
>> drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:283:14: warning:
>> variable 'proto' is used uninitialized whenever 'if' condition is 
>> false
>> [-Wsometimes-uninitialized]
>>                 } else if (skb->protocol == htons(ETH_P_IPV6)) {
>>                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:295:36: note:
>> uninitialized use occurs here
>>                 check = rmnet_map_get_csum_field(proto, trans);
>>                                                  ^~~~~
>> drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:283:10: note:
>> remove the 'if' if its condition is always true
>>                 } else if (skb->protocol == htons(ETH_P_IPV6)) {
>>                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:270:11: note:
>> initialize the variable 'proto' to silence this warning
>>                 u8 proto;
>>                         ^
>>                          = '\0'
>> 1 warning generated.
>> 
>> [...]
> 
> Here is the summary with links:
>   - [net-next] net: ethernet: rmnet: Restructure if checks to avoid
> uninitialized warning
>     https://git.kernel.org/netdev/net-next/c/118de6106735
> 
> You are awesome, thank you!
> --
> Deet-doot-dot, I am a bot.
> https://korg.docs.kernel.org/patchwork/pwbot.html

Hi Nathan

Can you tell why CLANG detected this error.
Does it require a bug fix.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1f6f8246f0cd477c0b1e2b88b4ec825a%40codeaurora.org.
