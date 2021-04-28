Return-Path: <clang-built-linux+bncBAABBM46U6CAMGQEQTPMN5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A1E36E0BD
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 23:10:12 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id 7-20020a5b01070000b02904ed6442e5f6sf20075843ybx.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 14:10:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619644211; cv=pass;
        d=google.com; s=arc-20160816;
        b=f4QOvMPye2TqrQirz6i5In1yvx4bsbOXy1VfsSFNZiLVTLL/MkxS3gsfmmigU6+sCZ
         HqYobHQqw4Upn2gQDosTJPM1DmuanxD9KdoIPzA4XT+fu+TXG8237bup+gnHp4V/mMHG
         sFkImu8dMvn89pukOgv/3guzP2SWCVrgVZd1ENVMPE0UTL/IRy/Qy3Rb+xNBGiR7Z0pI
         AFwH4IBED27I/yc3sYDhu2HoMj5kstpGzxNQJbxPYlqjfYjUVeSqZvS2/gXXrGEtLzGs
         9FcqeNgJsGsROQ7ZnYTdn9sfbjJZ+ACNIC7Bu6RvNChYoKG5K+4wWjTqkHsv/afNoamZ
         wSpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=ncaWHmDAYxyxDPUuVaj1S0OR5eMMJvnk0te68G8M0gY=;
        b=qbBdIisFX8md6KXLlwL9eqahMdrIi9u+0Q4pa88mRvKynRx8K0fuHZtMfxtTwMUV5R
         hNrYrd/qXSTA+C9O+8uPQlyM0RDrN8r5X/zEI7GuJFZpCg8fuxhNW3V3mox9x9JTO1MX
         vqeAZsnDFJ3+rCgoQZ1Rv+iV/jRkHWFXNQMqyDtDV0t4hyx5nP6NFph3DhMVfpOK5YiW
         cHrQZ/3NOm8FJgBhshjUf+8XpaMLQVL/ld8TBzb0F1avQ5MCpkriGZ7zVlFTwIsWyJcD
         ZGpPRnJYG23SUwvbw1IY/CnncThLvzypqgzKP7ljbiBwggflGftDEIhlNx4z5lcx1AC4
         tV4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=h8ZyFDzs;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ncaWHmDAYxyxDPUuVaj1S0OR5eMMJvnk0te68G8M0gY=;
        b=AnOHmJm2O0riamL6nzX6Z5HpMJurJvUmfClZdI1fOPIbC7kZPwlPLDiGZtboP282is
         7rP0VBtA5Lkh2Jxb/jFa5Ga+RixueJcaUUcyyn/HYwGPkUw9mgc3CQQFpYkjPtt80cDX
         nlSzVB2DzPqQJIkNMNfCE/gP/6Zz7J8PwtIUzwnLbZyIuY0BWYpaTPSiLHJ1X3/81c4P
         +wGyuvfD+2zS/K49IuuobEWQJQNl0aGYqHdXlbBbsaPuU8W3XDg7pTtj9evvmapqf4ui
         oTRCAk5eR0PT6SW4VduazerVIjiviMCLGJDRG3AlMGR0BtONEKH8PdZFxO5ehf7Kaaxn
         IRhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ncaWHmDAYxyxDPUuVaj1S0OR5eMMJvnk0te68G8M0gY=;
        b=RxsfHifJRGnLsEgBmlFq2uHUR6WHOKFidXvvJk7ZzMGcO+XGBUpJUlXRPOMbUWbuIK
         qLsPK9P4q/IbGwRGHAUCYr8S9L1invZqgjNLuPsuFHRsEkL8XQ2uSPsl1mLYJFy7b3aZ
         gN+2eSLnMClh2r/8ik/5MX+a+NxAaJ5WRy2P//HL89rdkWdgFNhdJlAM4b2U+Ze4Q/Lb
         s1mkJ4vZhAfNoppi+k+aflKc8zS68spdsfhp3k1h1CULtiVqN2G43zgch/9lDRaXIVV3
         H2MFbc4YIeJ+vR/A/QiHaSulFEL6LtucrTx5aTwzWRyE0pgC6hSaO18gv+Oct5fJhnCq
         CI4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533aQaLEgsU/kZlYiklSe093+Q7ydFic5VKktuODJovu9Sx6QXue
	T94OXbbIj3RU9xJ7ohHhgO4=
X-Google-Smtp-Source: ABdhPJzetXVaGkH1L3XM3pgyOS82JCKtqEXxxUwyoz/5ws0zxbIuFGpBPtRzdR2t9jYpqmbO/Hp57w==
X-Received: by 2002:a5b:50:: with SMTP id e16mr21197376ybp.395.1619644211614;
        Wed, 28 Apr 2021 14:10:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7714:: with SMTP id s20ls622476ybc.9.gmail; Wed, 28 Apr
 2021 14:10:11 -0700 (PDT)
X-Received: by 2002:a25:7307:: with SMTP id o7mr45870709ybc.469.1619644211194;
        Wed, 28 Apr 2021 14:10:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619644211; cv=none;
        d=google.com; s=arc-20160816;
        b=kYB7q/+5j9jS9KgLOq0MazIOo+tdMDkjJ6hSa01cWziXObVwe3gYPfoECjx9hYtm4V
         Hat/9UekyWG/coyuFyQVvNbVeL4H1TKTRQofGczHBvymGEeIDZLTvIH4KMzpwsBPT+8c
         EPvm8HdRJLhvfXc01PfLr+P05e3icPsg2BowWsiEwDUbpv1o9vSLrZTe8xiK7j1t5aZb
         ysKywxL8FScIWQGgieRaJaftR8EvSwNlfOEwI0VE43eUVIfZ4fgb0+CqBoFmwSgWmVJq
         aPtjw56qSteJkDuHxU7+iOufQAMspgXiVQ4vw2iimz/su25Sn1IbpjHjxfSGyUjlhuUE
         wqow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=ueSUqHUZtVwjcAgyVXA3XwE01Pp1IagAZw5R4ETjUX8=;
        b=Qr0lal/cloUO2ZChH+7EygEUeSF6yplmyP3qO+u4w240N58/HV4AfbUht8JLP8V2sP
         l6rkljy11pmAX15HBCIePdW/MgCEqwg0pJN6HYK2+Qza3lsOztaXlTg65Cq5BbEXcloh
         kG4nsK4+3iy/bToCvp4Aj2eOT5m5edmdwgU+Cvub/iE5lVM05K9AeI2cTxDkWfHft+NU
         HG+y3fJvIdQRV9Ay86e/Ks+pfjv0arMxb9E02WGo/MBCnSsHWX9OTeezuHnp/8IP7O/S
         XJoQwiqpu94Sj2Z8jMXN5t831VkU8X9WrA+gZ8DFnMqNSPye5OOSgk6hIZCEuwxGN4u5
         jtjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=h8ZyFDzs;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h188si129498ybh.5.2021.04.28.14.10.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 14:10:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id F0E5A61441;
	Wed, 28 Apr 2021 21:10:09 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id E539E60A36;
	Wed, 28 Apr 2021 21:10:09 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] net: tun: Remove redundant assignment to ret
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161964420993.17892.2389378404589308179.git-patchwork-notify@kernel.org>
Date: Wed, 28 Apr 2021 21:10:09 +0000
References: <1619603852-114996-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1619603852-114996-1-git-send-email-yang.lee@linux.alibaba.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: davem@davemloft.net, kuba@kernel.org, nathan@kernel.org,
 ndesaulniers@google.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=h8ZyFDzs;       spf=pass
 (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hello:

This patch was applied to netdev/net-next.git (refs/heads/master):

On Wed, 28 Apr 2021 17:57:32 +0800 you wrote:
> Variable 'ret' is set to zero but this value is never read as it is
> overwritten with a new value later on, hence it is a redundant
> assignment and can be removed.
> 
> Cleans up the following clang-analyzer warning:
> 
> drivers/net/tun.c:3008:2: warning: Value stored to 'ret' is never read
> [clang-analyzer-deadcode.DeadStores]
> 
> [...]

Here is the summary with links:
  - net: tun: Remove redundant assignment to ret
    https://git.kernel.org/netdev/net-next/c/808337bec736

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161964420993.17892.2389378404589308179.git-patchwork-notify%40kernel.org.
