Return-Path: <clang-built-linux+bncBAABBZGL42CAMGQEDGEIITY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C5637992C
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 23:30:13 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id s11-20020ac85ecb0000b02901ded4f15245sf2384127qtx.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 14:30:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620682212; cv=pass;
        d=google.com; s=arc-20160816;
        b=HUVOpwIJtctcF6daanzFqcv3HjvP57RXWDXLUTQMurEeXgwVBexLQYAsHwlDHqVeFu
         CZJUtTnmKkrS84vQ/iHSovRDKwKEwTHOS0TEr1GotF7h+kuaLqYMmIJ15gdjQ4QZ0Bb3
         ja0D9oK5i97e2mSAKdSaMMQ4EVATUQ7a01Hr3aiLxehSKTo6FHYj8Y4w+H635LTo3q45
         qF1kgb1NPzVhceEklhG2HjocHfulPpF3usvD6O1oeyPQvlgrsYpOuHCO5tuXs4z3h5Of
         yMFUm7YxyG60X+CKdbtJsqD2eYozDewzqhQOA4DXnsr6ZyGYRi8KDrfgVrmV8kX/j/25
         /tqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=/7zXNVjQn9SWypLZoVakp5ikRejvr/jCUx9j9/9mQxo=;
        b=GHxfvA1FYnGR9dsifsdWvEzmye+xqiYmJjZGfL+lkzXEQQDUbxwD4n7caONoZoUWyb
         We1tttzH1SQ1Di8jh7k3FHCNItwkUWENyM9IfSt3Rxp34H6KLtAKS+Qd6+3LLMzqdTTM
         6MOXPssH+/6ostIpdXqsEj7tLYsxANUXpoNtv4g4FU2zEJcT+mnlpgj1qUVSvCzpSe2c
         SNIDcSF7HWY0DwtU8lTIVvlDKeFAFA/CMmluGJfw45BGQXuqOBPxT/XsDxFY12bY0d9D
         ZiWH6l3cJqzlO7xbIJXMbA8UjBu63/QBW7o6UpucXt+bRAwHOwAsbQpRZjDd+AWHfBvv
         782A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SkNlk5d9;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/7zXNVjQn9SWypLZoVakp5ikRejvr/jCUx9j9/9mQxo=;
        b=faXRO9Fl9H4qRCbiq/sLtxIDEEZrE29Ni77X3cJlnuhHsj1KfQz+l0PenCCfySwvLt
         RTe+d6JPNhjURb3Yz3Il/uUBPoGMuR3C8ozW38lLU+bEgVrgSlhAfjGkiDdO8Vsg8ANT
         hBAyNbAZvDRcoajm2fCj27qH+r2eV9q4V3eEsNYmpN9DqKzc5i935XVqmkyjFIhHQiVt
         8/ZZoZL7xUV7SBPSCJS3q6aft6tAw8+DC8nJt5HyY2ux6LrzdclaAt8xUoIrJO9v7dYY
         BOJm6dJaasaUcciInrMZvfXpTkQaeZsMQ/F70NZL+85vIV5kmEOihZs6UC8YnZYWouVB
         09TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/7zXNVjQn9SWypLZoVakp5ikRejvr/jCUx9j9/9mQxo=;
        b=BS5huV8656M1QiEcP+FUnLgMyUqIeJhgz0/P3bbArRp7XPmRJAgFSmnrDAMtqaDAtl
         PAlMsLLfEsqdPZx+WtthEN9FD4u2I5DsxEsMDZeNw+nW2Aa3nMvkaJ/w0YiFFV1X9Yko
         YMQc/9m0DmUoPbzQlRO6wEJ/z+dIfuWRhaF4921Jx5hCdFzezf+BK0AddKECCp45sJ8s
         qtB0sYf/b3DaPyNpev1lwiDsuzGUCym7QvmPjN9vvPL1yQQQ7MHoowZA/tym7dYjI6Mx
         KqQ/87w7M3Jowvw5Wg5h8P6yhyDQJLUhHrIO5WmS6zvgSXvBXT3vHA8yiIRiWi8XuREJ
         wXrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530g+nwTVpEXU0qIfva28E+1UqqelvEMoonE9R29Jkl1hP6wjOKo
	XpgV5PzIjBdG9wnMi2X3tXs=
X-Google-Smtp-Source: ABdhPJyhq/jKCrsz7CEHP9BAZm+m0XnRuap62716mW0zNplecWZXKkydmLhxU8ItLzZJYgsP+ZxDMA==
X-Received: by 2002:ac8:5a4f:: with SMTP id o15mr6365305qta.168.1620682212222;
        Mon, 10 May 2021 14:30:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7147:: with SMTP id m68ls8877048qkc.7.gmail; Mon, 10 May
 2021 14:30:11 -0700 (PDT)
X-Received: by 2002:a05:620a:15ca:: with SMTP id o10mr25350231qkm.448.1620682211838;
        Mon, 10 May 2021 14:30:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620682211; cv=none;
        d=google.com; s=arc-20160816;
        b=0dszQx2oIX1x6koBKwig7aOdB87gMTNQX0cMa210E6Px8Ebvg1mC6BK3ylRJaIDxrj
         AhJf3ge+GZ8lpkohauDKuqqQlwzvF7ItEu1vEEwo4E4BMqKJca/saHQ0zf/DUmtg3FC1
         qT6iiltLF9lvN9TgdLtLMMM4S7TQGyQlxStQM7TzBu5it1rovmcO3d901NUhD0hh/Ilk
         88mgcvHcsZ3Hz3U9K0DzL7orxP3OqDbpxTM9M+/syQmDYxmr86FNzbM1tDBtwPdthde5
         taK4aQZQmFf8IJCbTx/Yb0vfwrHB9mx6iQ9vAt08pq9hAZIHC3EJePgKe5iF7/CGxde5
         pEfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=mm4TNmGUjkvQCtYY7UiB7WiW/Q2LjLALIKweH1yZN/U=;
        b=b48SD38WQyMgMqFoPJQMFKBYlHt5zSDze+xGooIBjYbZ/97P2be/XtMJNH/mYMnfHn
         Cwo4pPji44WyQYfBR/Hw0IYYTo8Gb+eXbhlCFQ/xuFdunHH1WF5tapBWEF4pPy1UaTUC
         HzhwxiqvWxLkd+/zs0BdOGPLhG7Pz1mb6DgOIGRW+9uPs23tog4AsPFyT/2gVGVdY+Ie
         OJX38SVVzVnsAjFUnNHCIdmndDZqWLx30EFtaA30u2Tnar9BYqWz9UmrppKNQrP4r6vD
         HlAgdhh/Bsz+Dm6BUKORvfgovHksnylTk90Jj80lQ7rLiqdMdqAtgSRHDX6OzgNNLpIB
         zBbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SkNlk5d9;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g22si1572060qtx.4.2021.05.10.14.30.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 14:30:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id 9237D61613;
	Mon, 10 May 2021 21:30:10 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 8C929609AC;
	Mon, 10 May 2021 21:30:10 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] neighbour: Remove redundant initialization of 'bucket'
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162068221057.28006.13564077451143284721.git-patchwork-notify@kernel.org>
Date: Mon, 10 May 2021 21:30:10 +0000
References: <1620468185-122101-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1620468185-122101-1-git-send-email-yang.lee@linux.alibaba.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: davem@davemloft.net, kuba@kernel.org, nathan@kernel.org,
 ndesaulniers@google.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=SkNlk5d9;       spf=pass
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

On Sat,  8 May 2021 18:03:05 +0800 you wrote:
> Integer variable 'bucket' is being initialized however
> this value is never read as 'bucket' is assigned zero
> in for statement. Remove the redundant assignment.
> 
> Cleans up clang warning:
> 
> net/core/neighbour.c:3144:6: warning: Value stored to 'bucket' during
> its initialization is never read [clang-analyzer-deadcode.DeadStores]
> 
> [...]

Here is the summary with links:
  - neighbour: Remove redundant initialization of 'bucket'
    https://git.kernel.org/netdev/net-next/c/48de7c0c1c92

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162068221057.28006.13564077451143284721.git-patchwork-notify%40kernel.org.
