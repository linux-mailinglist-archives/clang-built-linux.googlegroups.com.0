Return-Path: <clang-built-linux+bncBAABBV7JV77AKGQE2AETKSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA9D2CFEFE
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Dec 2020 22:00:09 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id 1sf4779765plb.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Dec 2020 13:00:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607202008; cv=pass;
        d=google.com; s=arc-20160816;
        b=fBrp8AILr5FwmZOter6dQFPyCt0yw4otb2usGCVJWyJRFBdUgJHT+IWu48IfUM7ZMf
         6M/A3O8qiuibNEmGB63p5hMvp+D75gi5J4V61JASiQijJ35rwOYJ3BIsk03w9Ikn/Zrc
         GfIaXt4ceBT+TP/dFODz69ycoSzgjw19iWI0lgkk8oYQxKPIFYBHrOukiM6Zb6yF1pXO
         bReqIIGLdjluqy6hzTgJ5v7LU3iwggcNgKFHlRB5RhWNGkxvPKqg5xBCy+eUnt8D7I1y
         /chouBAWvkLcDR/IKW432Vn7cfZ44iQJKHc39COya4qrM42YpGv7g8wyD7y2ktTuDvpR
         3o6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=quLbyn+6dak+RqrBDuj3ZUIw/uLBxOU7DivTAsxKSC0=;
        b=JMRzi9fePiakySlOnGdLeThi514GBtYnpeC+vjdmmIBPEPJkyIQQrTkmzxze1QSLeO
         kaU9hNudUcUdqgN5tYoiwbc0WBqKy/t9zIROP37wHsRuOtnGdYo37qMO/BnOtFPMep2k
         COniFfcP55eRVqe063j1uKQcJ5HIx2QH2QcmYFRg8tzck8cZkd7R8EgnciBqoiLC0cs3
         ImSrBdY8ceUhWmEr5pLPtW3wnUve1VsB1I1eNZDSQGEhyzromU1+XkNxq3oy+bLoWXFA
         HaeIUhJm/H+2vIGw9yTXUL1/lLFCskpmzW4m5BQ/gNWWm+yfCqq3Cy7Kyx5sska2o8gw
         SIkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tSG+FB2U;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=quLbyn+6dak+RqrBDuj3ZUIw/uLBxOU7DivTAsxKSC0=;
        b=R3JA73QG22TfGpcmHPUC8VcoAHwB66KjhdlWj8nAzDbmTaN9/Bw8BbzzRpwZd8HEnG
         Cnl44PqY2wVR4fQWGa6geE0aiMTjbd4z5Lcb2sOezRNycWSgI1XQ1ZpsYF97MPMFB6Pe
         nTYWKMtZTM2wxa7DX7PFMSjTJ+nTjwHKul5TAwroY3QqTgAsNXvMsxOLWi9SsrE9Oc49
         B2+HI3i3LFXuJY4LAb1wq9748G8iO0+KXafCuL3nTTZ4Y3rGDbkkkOM4dALknvklCv/V
         yegURqlYV2flzJBDppUa42rWrAeeQWsZ7FQr4GX9vDHInyh1IkF7lybwPzisoVskPkhk
         u91Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=quLbyn+6dak+RqrBDuj3ZUIw/uLBxOU7DivTAsxKSC0=;
        b=t5kRFI6lRUi/CjLj1PLBj1ktUOrzcRLVsxxqhv0ySLjomzAkfYJyK1leHOp25SnMRy
         P/dTtVKYcX4xwqnWPQOHWZCIjCOk1/GnxjzmUXMxCWXQaFle07JduPepQhcLS/qLh7y3
         MOvMfMVvA7Sa7u7Lb2kU6ADbSTNgQnkn9YZbyNMqsOozwFPSjj8kayvqKAwJgmdrv6Iz
         Y9sWffO4W2zD3g86fhSiNlB4P5sVLEhknrowB89nv30khZyYSrtKLLHWEeCsVoUlFben
         b1NuLxXcyn5sULHVxOXUv6MUThqjXM9jidX9B7Eoe6grUI8tHBZz8CSop6mT2FR6AUsL
         veNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533WM0cljgLc+IfysRHUQnxjMYNbzdR/UMBP7WBo/s/O4rz7oyKa
	UL0ehz1g7cGhcGwNliUmErk=
X-Google-Smtp-Source: ABdhPJwC8lidUsaVGAKGkcibPlTL94+XQGsvWxEKi8Q7fl3YaQZmR2PFoYneSP0s9uCNaOMXvGZJkw==
X-Received: by 2002:aa7:9434:0:b029:18c:1c6a:2e0a with SMTP id y20-20020aa794340000b029018c1c6a2e0amr9687333pfo.8.1607202008124;
        Sat, 05 Dec 2020 13:00:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b187:: with SMTP id s7ls5922096plr.3.gmail; Sat, 05
 Dec 2020 13:00:07 -0800 (PST)
X-Received: by 2002:a17:902:c3d2:b029:da:73c5:c589 with SMTP id j18-20020a170902c3d2b02900da73c5c589mr9204011plj.71.1607202007556;
        Sat, 05 Dec 2020 13:00:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607202007; cv=none;
        d=google.com; s=arc-20160816;
        b=g40sdlcVO4tQF1eivR1AY0JCoNm/zJiZl2SdiXoyUU5AJRXiLnhY8iwNICd+N+aex8
         FQgxolUoC6BYT7fraZS6w/iNUDkZwBgKwpGHo/Ig+sjRbmm+9LED8V+HTgQoM7NQkVHv
         bJuJzq0qumq+gqwsqexZucp1NKU4JYHo5uO5VCEhwpaIZrHKjawAGGoNe3xM9uK8hHyL
         nphkVxennySUT3IoyxQrMONYBMi3BpaD/sUkXLgLPxr8Dng5g/15C3s/mXqeWplzuATt
         vYaZHIO0WEUMY3hi//WJj7uj01yueo3yXOvQ8cvCQXdojHhwJZ8fUpTuagy3MqXs/ltz
         JAug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=UXqlrqw3w9bL5IxeSRR+kgOHU80yVm16r85Igqn4dIw=;
        b=IOzUu9hHbV5RWh5r5ymgQVFutdr6pv4tb7ZPwZjvF7F9lyKfYKzrRiCeaazrBchAt0
         FsT898PbDZ65tYWU+RfAyo1EVOFzdPGsALgL/ZwEuSU/9UdcRaXVQCSvh7rsoXq+7ZiJ
         QL7TV35edSPxc6d1ly5kHm0DoNeEULYzD2HzxQiLHiOwH9XlKVP8y/ji2QCCkdFkL+ZA
         d+nYiiPY5mxMtdduvSgTHW8mpSLaHySju7EnAH3+5eYK3eC39gYWXmZZOAmHTBfEMnRw
         VOx2x7beZpscU1RflewL85KEAeIOHXGsbWpRq4Yr/VWfJ84s2KS+r1Q0sTVqw73lkr7S
         2e8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tSG+FB2U;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w6si458738pjr.2.2020.12.05.13.00.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Dec 2020 13:00:07 -0800 (PST)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] ch_ktls: fix build warning for ipv4-only config
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <160720200717.27606.5148059074958417567.git-patchwork-notify@kernel.org>
Date: Sat, 05 Dec 2020 21:00:07 +0000
References: <20201203222641.964234-1-arnd@kernel.org>
In-Reply-To: <20201203222641.964234-1-arnd@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: ayush.sawal@chelsio.com, vinay.yadav@chelsio.com, rohitm@chelsio.com,
 davem@davemloft.net, kuba@kernel.org, arnd@arndb.de,
 natechancellor@gmail.com, ndesaulniers@google.com, yuehaibing@huawei.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=tSG+FB2U;       spf=pass
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

On Thu,  3 Dec 2020 23:26:16 +0100 you wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When CONFIG_IPV6 is disabled, clang complains that a variable
> is uninitialized for non-IPv4 data:
> 
> drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c:1046:6: error: variable 'cntrl1' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
>         if (tx_info->ip_family == AF_INET) {
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c:1059:2: note: uninitialized use occurs here
>         cntrl1 |= T6_TXPKT_ETHHDR_LEN_V(maclen - ETH_HLEN) |
>         ^~~~~~
> 
> [...]

Here is the summary with links:
  - ch_ktls: fix build warning for ipv4-only config
    https://git.kernel.org/netdev/net/c/a54ba3465d86

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/160720200717.27606.5148059074958417567.git-patchwork-notify%40kernel.org.
