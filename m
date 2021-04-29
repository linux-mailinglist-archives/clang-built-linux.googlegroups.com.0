Return-Path: <clang-built-linux+bncBAABBS7LVSCAMGQENTM43OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 194E536F2A8
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 00:40:13 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id z21-20020a67d2950000b02902271a3918c4sf477966vsi.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 15:40:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619736012; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lg4D6GHcpS0QXs0NoIL3LNivWuxwpE183WpYJovHchGWqLT9uBh7BddIgl3Ub4Ny4m
         B8LV3icBUvs5wd6esOtxHVVWf6GWJODfmXwT3W+XClgfOAYA8YpmCGHmuYm7Ob3fagcD
         q2/kgiYd0wimJXd+ab/l0HeIB7l8aCd3RFIyZ0EodIZVVuIvVqUiMN+2xZS3TqpvkjjX
         aOs+COX+uKT8nJ5/fwYOxvQkHiAgwueT8ZUuvuPFuqOsHMol06aa+LsIUW/bQshOOB3M
         LLNct0TeWJlx1gPLP4B7PR/5HIhlBxF+axXEv5xTQ0useILHYrX0IlT9IstOV2gs8dqW
         s1Xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=khlo5KmSHAbd0pKqRwOdGV1Ld2tmoABxGKrrsVq7v78=;
        b=lF8hMVHdwX+BDrpU1QcLiK9U8jOZGOT+iVAFA6uriN1zW+r/41YDzqVOUex7c/z4Y1
         IdyhkCc/RatzURuUQx0JNeb/7Ws586ZRl7Tcf2+noWJ3nUCFZmbyfUHE/lptQ1M2/dVl
         CQVOasv+W12NBuKsVCg7bUyGPI3ZGGQ622G+BWT4qnU9vwRHU33jkXWAc1aFGtBvo5xy
         A8m1yW3qb6Oum4+k+nxp3xSBVUGlVkORXPzWeHY8n17lpU17H3knzzrjSjeUZpJArou1
         YNZ6BIbmzJTJg2Z+CGgtvoKS9T9CUM30aHJ0eQO88AsNGnZ8BG7J1sYw7t5fvOcGThc6
         2o6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gOYqxZA4;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=khlo5KmSHAbd0pKqRwOdGV1Ld2tmoABxGKrrsVq7v78=;
        b=eIR33y1QAD+Ne4BySeR3Wp+clIWHsshf6RJZXcgVqVWccdyxwlUmenMJehDZQt/15N
         N7O7sGqZwUSli5XnFVi5GZqrm08OauQCqe33gTRwC6tbDvM3QuvfSqJoiLd6sCpkOvb5
         sJeojZ2YKYpbAoyKjwjmCoSFSP4DONfzTrv0n+qx41N+CTGsdRr3wdUZw8oW0OJx+XCG
         tFjF5pPcQbUqAiDB87hVYHAYZN48203tr7B6EmAtT+8PpgtLJ0+e8pV5cDNW8niE/0qx
         kYaMBS/DTg+0pthDF3MwPDzcdEULXPngm0kdkCQq3zudopZ1tsK8H/R2Ak2Mq3OYM+6U
         IpKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=khlo5KmSHAbd0pKqRwOdGV1Ld2tmoABxGKrrsVq7v78=;
        b=Qp6VaWMuPfj61gqVdoZK5B5kIzaVnYVDbFbyXVvP2EkF+yIvyNTI65L5usAbgVbDfK
         5siB1BgCqENlAjOHxYFMD6TaDiqK1WeK4mbh7/rwzVcEsrI6qmin9ZjHOsLSXkAbWy7M
         GyvYnPZWxR6gzgYVFG+v4eWSplZpydbw8nIdTa9g66zd8nyQPs0krpYu0yIBmAKhqGSh
         jJOEXGQzBDeS4vJvc3HTpfjhjZdwpAN41rdTAyr3UibbwZJRK3WJcui9MS6cGsqQsm8f
         LxIl46QudbaljxGlbtqKFNZXZpWC8mnfUkzvjzH3irgVu177/3/ks06WZy++Q8PeVfBi
         R4EQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rrWD8xJ57kkiGnJYA/BMP5r01gkE/1Xgulsit9vTWRK/Ucn5O
	Gst56FYXHCZCYBtWFTMB3jk=
X-Google-Smtp-Source: ABdhPJyTxuvFG1EXHez56dlh49/kwVkRuCNgmtGAviXAc60C+BIcaZc8DnHEcyPy1h8dejMOo1oFUA==
X-Received: by 2002:ab0:4042:: with SMTP id h60mr1805345uad.133.1619736012121;
        Thu, 29 Apr 2021 15:40:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2702:: with SMTP id n2ls875729vsn.2.gmail; Thu, 29 Apr
 2021 15:40:11 -0700 (PDT)
X-Received: by 2002:a05:6102:319c:: with SMTP id c28mr3257151vsh.38.1619736011623;
        Thu, 29 Apr 2021 15:40:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619736011; cv=none;
        d=google.com; s=arc-20160816;
        b=smc/9LbLZx5FNnpTxQc+oro7X3PDQNqt1rVrduXIAbGMob1SmAdbBxHMMCwPGxpP6R
         K9mXhfh4HHBT214LI6KswlsjqnQYzxgQrv09SYpsP76+LJ1FoTUWA12c53jgIW9IKhqt
         cMS1rUSl92XpBRl5S29gIgKdMFjXRxy+KbTFr6e0Zf8EvHPkBZN2mvfs11C5V6zIpFOe
         Cq1TbMi5ZmGZXG1MIie6w0EJJTOTUqQTAo6st6SfhdpBadPlGFJvFtAHOyotOjizuIEG
         gppvxy57Fjz/iPKMVkWajUQy+wWa4NI0XNNBM8MPdSxtqQIwBAoRat4JqquICktvjqu8
         DeEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=w4Yi81g6xmN7EYohj9BAgI6IObtk5DUUh6Eb391OIzI=;
        b=eYUcwhd222E6Q4rhkLMQoMMWrMXp6yCYKwN6qr3JZ1Uevtp5e/QkUO7Dmrn9ju5AeQ
         VI8Vbg2a+W/T4OZsXecEE8GR4OvL8IVP6tnW4vd2HnS/iBQVd56na8Jx6sleXEO7L/cX
         Midp5rIhmJYxCpeVx43eiHDxHIMxQxbTC64peIN+lkHvHlCQdFQce2Cg1wQNQzDLH8s3
         I/DRRX+Kqi9qHi6RNxceB2cPL4odDnK8oNLBWo8pJ2pL2KzIZkI+eJJdSPp6sKjQoAqe
         ffHC7VDiHFGONM3FoxVpSsiwr5HqNRv0MCQZa+TdfdrKnJgvrrIz2kMAJvFXVO3twK8s
         Qoxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gOYqxZA4;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p12si363901vsm.0.2021.04.29.15.40.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Apr 2021 15:40:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id 610FE61468;
	Thu, 29 Apr 2021 22:40:10 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 52FA160A3A;
	Thu, 29 Apr 2021 22:40:10 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] net: Remove redundant assignment to err
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161973601033.15907.10908329531191250352.git-patchwork-notify@kernel.org>
Date: Thu, 29 Apr 2021 22:40:10 +0000
References: <1619659956-9635-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1619659956-9635-1-git-send-email-yang.lee@linux.alibaba.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: davem@davemloft.net, yoshfuji@linux-ipv6.org, dsahern@kernel.org,
 kuba@kernel.org, nathan@kernel.org, ndesaulniers@google.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=gOYqxZA4;       spf=pass
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

This patch was applied to netdev/net.git (refs/heads/master):

On Thu, 29 Apr 2021 09:32:36 +0800 you wrote:
> Variable 'err' is set to -ENOMEM but this value is never read as it is
> overwritten with a new value later on, hence the 'If statements' and
> assignments are redundantand and can be removed.
> 
> Cleans up the following clang-analyzer warning:
> 
> net/ipv6/seg6.c:126:4: warning: Value stored to 'err' is never read
> [clang-analyzer-deadcode.DeadStores]
> 
> [...]

Here is the summary with links:
  - net: Remove redundant assignment to err
    https://git.kernel.org/netdev/net/c/1a70f6597d5f

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161973601033.15907.10908329531191250352.git-patchwork-notify%40kernel.org.
