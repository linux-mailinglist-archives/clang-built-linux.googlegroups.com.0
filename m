Return-Path: <clang-built-linux+bncBAABBVFN5GDAMGQERTE4QNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DF53B6B2E
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 01:10:14 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id q10-20020a056a0002aab02903096dd9b65esf5275947pfs.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 16:10:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624921813; cv=pass;
        d=google.com; s=arc-20160816;
        b=FHfmGl9IsokCn/Ycth1z1rprkn30eco594tTAPknuUdWB4O2J8WsZE8n8KWFKKVJNr
         ym7X82k6MrUczRcUoGLdLMj4w9PwLTDW/T7xsGtF+im9x/umQ101aev+EVAuuNBjr8ut
         6AaqBir9nU8c75vp2T0DzfK+onSE7DwaUvy24/mUhk/61Df32WM8ycQNLTTssrRrMfvv
         ML2sIiDCawZdfqxHiNIaUCwm0m6yM8R3x65/ZAr1P4TjVXHVFJnjYDbcG9bhE/Lk/cy1
         aLD8pq5GsbDo62ie21dS7TAzoFt33uYD0w6FS0VSStAY4YA6tQU4jLcWNvLho+NWcOb/
         VLWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=67wUBEVaotbW9f2lDBfeWuSZjXEn5YoZA3PXgnC8lAk=;
        b=GlCqG4+GOUoVOgHFT9wUoC5pwG3aJlqVQq5TZF3cplnyjPIBMHyjkNVt3cnzlgUm8X
         ow2ggGNCVwNYhOjWi4hajVFIOTZQeqIKckxN5Om9rVVTd5idICYbQ4wZO1bC38SWqmQs
         cLw0WKh1UjxZ8hegnednyb26K3NSrZ7LyGoLau7e05QY6t5o4z+VJ7HixPNtM1Qqflbv
         foab2X/ceExtPgfgbzNgMla1s4OhcoLQkrc6Y//gkfZS4T5kE5JvGK6uEfIkKX6Bbmfq
         5Jgit39syMotZgj8J+5MLtDCMV9/aXjrZlTaE0fm7SGoDPZr5lgPAZBeEymqWD4AAzoU
         JI/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cDfkRSxL;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=67wUBEVaotbW9f2lDBfeWuSZjXEn5YoZA3PXgnC8lAk=;
        b=O90jHJupnhXD4HCuwpSV/lJ1uQlmyNpKRkId/2I1TqiCaRjEi3BHzkCk6i2tqHhZFh
         v4Mh1+6kXhdYelcDjKzvFieUdPObeQ6H2PYv5fgunS4vnHwShYN9QHLYbDs3MEAz9UOv
         8coEeV3NOZ8Z6SyPu/yeJ6SwdzB25uH7aZuc++djcdC8Kf+2xpNf4tSCchJMXBG/aT6K
         TYq+se6HR5YDgDDgzkfUGKHffvrzYQS/cOdvoHvi+EH6sCP2rjRRlNcjkN7vEUAmYV8F
         TAyUln3DFafFDzM/nCLfqQscIDqbUpTyfVJEsygHmxEsZ3D8scjjsHuZHXUCviDhPjlb
         ECvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=67wUBEVaotbW9f2lDBfeWuSZjXEn5YoZA3PXgnC8lAk=;
        b=BqelYIALgXsayAJXrzywy0wG5rWZUT6E74cqtwE+TCihCI8P2w/ethW5ZxEFqaMBrr
         XjYQ3HaOqxHEhKDCY3v16LyD0ZaBVeNG6w0drdd9NCjHhGzdrtedxiS128fAV+Ru17ZB
         TJ248dgXOlRqKhjHeJZd5IWfDaA8Wxc3qm8C/qt04y8au9oYn9Vd5zFfdsUsuQAWytrJ
         QsjKuZyD04foVjDbkP5wh5PO+xI06plQAR9X3ukro7/wOxXaTyCt3O0mRBtApV08yxkf
         pXLpvBdIswjY7cCHyqQuNYoeIRNZJzNsysRYiL1ZUd41SmEYVBRfll4uahUcmu5ct/Yu
         BWew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mCR10wUKk3DMOrVZ3piUjeXqBdBQthn9tHH0BY4JpQNQfthMi
	pHjeFIjMERjOl+XHHbRjvQE=
X-Google-Smtp-Source: ABdhPJx7VNYUGczedXC241CWRlrNIIP2ya5i9bId/f3UucXqVpoN4jYkfpdVObUjluGZVOVuE7+r4w==
X-Received: by 2002:a65:5889:: with SMTP id d9mr25077107pgu.394.1624921812874;
        Mon, 28 Jun 2021 16:10:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1946:: with SMTP id s6ls8589570pfk.8.gmail; Mon, 28
 Jun 2021 16:10:12 -0700 (PDT)
X-Received: by 2002:a63:5a5d:: with SMTP id k29mr24711527pgm.215.1624921812411;
        Mon, 28 Jun 2021 16:10:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624921812; cv=none;
        d=google.com; s=arc-20160816;
        b=n4wvTQ8fg7I1mseGASy/d45yw0I47vfEz0JsVPCnaz4eMtLj6qH81YTUcu0rgepLjI
         nwDOPQwBydypo7+88K9foH25/zIOA97ud8wSooWRdxxe1D7HgpC8TGAIZsbbu/kBwTLT
         osTHNAuXl5Gs4vd/klyOo7t8aoj4WWUe0tPBgdJo/Qnw9CbOAeNxeA3qcQU9Jg+WaAH4
         5XDbLBcS+n+loE257dcmnFrup/v9zQG7ZIiE4+u9zzGvwD03Z3UpU3ea9cYFufJ8HISr
         vSJZCumJlCHeEt9cySOrs5cCaRv2DRRMLCDr0eH3qIkvAtv2Uo8kM9f79BgZ++HwuhnN
         HCsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=wTdOoQc0xhFHAMzAE7ZUTDTiBtNdaWk5UN38U6QvLKU=;
        b=upQ2vUsAZOFFu/TQNayTlj6j8rICGWD2Y4Jio4E2rL/bA06ftdmE+B23way46ISX9r
         1cz350YdmEuE88OE1RZhxz0Tkhy9gkanhrxdIxE+Q4mPipyLqXX/2mnrRtpZLgZoM6DV
         L1qeU0jsHmlN5Nv+4gJGbl95Vw1vf5Ha9WSLHll0MpnN5Mg5OWNl6q3TyHMSdWmV1kpF
         Tfj+NNxJWH+jtXRicFQFwQyjaEvOu7pd6UJf5yeDNXN0Ojmd/DnLJB6f+K+1jxC8lOfP
         Z/7XcyCabGW0f8kQLWK2IMWPOvGlZNIFjPfbLo/3rSHjbt8SzbFRkzvlTcAWBWyLiVkS
         tLWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cDfkRSxL;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x14si1478967pfq.0.2021.06.28.16.10.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Jun 2021 16:10:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id 09B5F61D01;
	Mon, 28 Jun 2021 23:10:12 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id F2CB560D32;
	Mon, 28 Jun 2021 23:10:11 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH net-next] net: sparx5: Do not use mac_addr uninitialized in
 mchp_sparx5_probe()
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162492181199.29625.1718309002563451532.git-patchwork-notify@kernel.org>
Date: Mon, 28 Jun 2021 23:10:11 +0000
References: <20210627184543.4122478-1-nathan@kernel.org>
In-Reply-To: <20210627184543.4122478-1-nathan@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: davem@davemloft.net, kuba@kernel.org, lars.povlsen@microchip.com,
 Steen.Hegelund@microchip.com, UNGLinuxDriver@microchip.com,
 ndesaulniers@google.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cDfkRSxL;       spf=pass
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

On Sun, 27 Jun 2021 11:45:43 -0700 you wrote:
> Clang warns:
> 
> drivers/net/ethernet/microchip/sparx5/sparx5_main.c:760:29: warning:
> variable 'mac_addr' is uninitialized when used here [-Wuninitialized]
>         if (of_get_mac_address(np, mac_addr)) {
>                                    ^~~~~~~~
> drivers/net/ethernet/microchip/sparx5/sparx5_main.c:669:14: note:
> initialize the variable 'mac_addr' to silence this warning
>         u8 *mac_addr;
>                     ^
>                      = NULL
> 1 warning generated.
> 
> [...]

Here is the summary with links:
  - [net-next] net: sparx5: Do not use mac_addr uninitialized in mchp_sparx5_probe()
    https://git.kernel.org/netdev/net-next/c/b74ef9f9cb91

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162492181199.29625.1718309002563451532.git-patchwork-notify%40kernel.org.
