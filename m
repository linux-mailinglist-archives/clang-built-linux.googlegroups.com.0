Return-Path: <clang-built-linux+bncBAABB3EUX2AAMGQE7RYUZMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 957A830329D
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 04:20:13 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id o4sf889166pjw.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 19:20:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611631212; cv=pass;
        d=google.com; s=arc-20160816;
        b=kR1fyyNAjS+TumJPWfLpb7XkNfSpxxhs6PULjaasMVvTN91ewfJcvZYsOmfCGdNWW7
         xrvVU6g9r4ou6DNBy95oh5u9fUiTDtXkStG3TtaFs3OJfsGPRbOqmwUs+NFgWVTUN0Kk
         nkRQod4Tet0aV8db4X3+8g2fCQ0TQc0wQRk3fHoDNPcenv5FkB2Ekzc3rouLX8yIQPyi
         fmbcdNZULEd4a4FegFIw+hNfENCwgL6re9MkEF8rR3lgD0C63Tc23RGPGgCzqjxGPysC
         0mVmgw7yKaoWddBxJy/r/2DzqqR4WILqsPoru48bG0L09j6PpLWTJ+cMpl9+bFnYmowf
         /w3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=ICVkQFB/X+7aGgqaSPfqK690QT5ZxRFyiPRvGHNYnZM=;
        b=DvL03mkYw2bPdRdZvyDwsCXkS8Ln6QUIVU/lN12WH3X1l1QCEMD1xIoS5/EDGBctdD
         U8u6azI4Cj/RJJ8yibROOilqYftEdiHFk3ErsI7lUEp/d6BkUDyzc1aMdHcI47DZbpJw
         4WjZcZsKJMVGaYfmcSb3GhcSjsXCYX48WV7luM1yfg5wDcyHuflevWWYBwMhg6muumDx
         n6og1CCA73PQR/RVgrXsuhaDUdauOqVwJxJByqGktoyyWTdvdxdPeXdcRDVOGSfw1sli
         R63xfnwBfdmvum2/vIlMG7Rh8MjXnYy0WUQr0hmDcm21hjsBA+6j36bHvaNZlY87z+4I
         DdvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=e4XxxYD4;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ICVkQFB/X+7aGgqaSPfqK690QT5ZxRFyiPRvGHNYnZM=;
        b=s1JnOQ3ZZvT4YasPF/heRHXGjRhAVyBMdko5tEBibo8Z3FV66MNCgpSIR1iIrl+vJR
         81R99kM8GnlUEMQRlpA3yTItbkrZFs8diIiSLewD4+YObCPDUhYuE5OhVSUFMim2lVA9
         iwyP6XEYPBoG2LpTX6uepRFao2R2XYalHV35Ug/plc+vafoNo0LYjDoTvXE7htPOupcX
         X38wZSl42TrRCVu/4yuFVygKSTdaNsHzAtiEmxnwtpiSulokcADaR7+IlRcm4DTWig3O
         EpDWw3sPCs7KjMxPq6gue+H/b97tnoemxI0UfVPezqkrKXYH3cQT5rNovqdJ8/PC0hpe
         +MWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ICVkQFB/X+7aGgqaSPfqK690QT5ZxRFyiPRvGHNYnZM=;
        b=DtVSvsvXtKBjf2cKCvuPC5jcRaLO6+1SqYDArPUlbPQvV/LqUgmnQfFtB5M3cSV/hY
         ucJXYDXrepEojqluQ3XE5HyOkjugmnvo3Y8d0JN8xkr5yIYIJCz+9tdGz4jYAdEEQcoW
         yofMIcnzGRxus4iDlo3DxrZqc8NEexUejf4G/+kGNS3awGBZSTSHEiqcLlZGhFxNduoh
         zqUrMNKx1QShkcA/Z3QI3W8R43IVzXWUQNUCZ22lnUg8dUCLyFzv5TlfCD48+GtPX40P
         klN8CVpkBNzLM03MzqWAUQtHS9LrUeEL09jK7svvI0q5Xtm3i1WYSssQzFqc+wA2yFK1
         WadQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mhUhA30188RDZlE7WjU8hBDVmEwyHW7X2jDXwumS74RG1K1PZ
	o4OE0wWhIcPBy+tpUUYYBtM=
X-Google-Smtp-Source: ABdhPJzLKjWOlCfJL5dooXFKoFdJRDWwFCFRXVD4cZWiikRyjInXFp5dkM2RlQ8PtHr8JbIchFR/vA==
X-Received: by 2002:a17:90a:5d13:: with SMTP id s19mr3604656pji.110.1611631212231;
        Mon, 25 Jan 2021 19:20:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4b8f:: with SMTP id lr15ls733713pjb.3.gmail; Mon, 25
 Jan 2021 19:20:11 -0800 (PST)
X-Received: by 2002:a17:902:ec83:b029:df:e942:93c0 with SMTP id x3-20020a170902ec83b02900dfe94293c0mr3845209plg.55.1611631211654;
        Mon, 25 Jan 2021 19:20:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611631211; cv=none;
        d=google.com; s=arc-20160816;
        b=VfseFQKbcKSx7iGCxdI2iALKVIfttnhB1GNy1u8JYkRAWQJ4ifQ9Ar1c5MA2JjVSgD
         Cb7hlRA+yHucJrJxu1dKBsKHli06ONUnZPNPI0H4evyotnCKS86ftySwA7sO2Cg/2qgn
         Y+pcUFer9+OfxtzWM4jqu2QnhET5TKmpnD9X/0ihOjPZK/x7k4QekfIpkAMVs5YDsnNO
         6nPPOVKll/dCDN14qXztYjFMVpak0gT/5juz1QQ23gzrQvobc6If5+0dioeefui/BK5A
         vQQQG65rL9LLT33nfHFNvbCoviUsgWd+eq0GQKtJ3VBshiI+7PAa/AzxuXiKzadV7HfI
         Eypw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=sIyhSptMiaQCPLUsl5xWJh3Z/EKmPHOxAfj60xg7kaQ=;
        b=emOVUSMrw6qLFzgXNLLHDTfE7RyQx2MyPPSemw8jcAgWEF66Izm4BD7qEhbgQC7jB+
         NjLP+bZxz/Klc5k/NnGQtzCpDljKbFZW2i6XMbGQv5SLQWFkjBRrdx6UI8xhaNYw5YPP
         iVuGhLXcFGsQdijuZX8uWhoBGqw8vo3LWsgpkFRJfEhJ0vbEM4Wk2AEfNo6hNq49UvY0
         koB8fqZj6v1It/2fRhDpB8Rei3JUuhy8YCKL9CgAYm5HsiXt91w3o79sLz76R4MJoxRZ
         GOwvDb0kanOwHbLrvF8JpCTxSpzZGwfJeRtdkHeu40I9wah/NT/hFOogj6i2SolYLeYy
         P9IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=e4XxxYD4;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id jz6si78456pjb.1.2021.01.25.19.20.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Jan 2021 19:20:11 -0800 (PST)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id F332F22D04;
	Tue, 26 Jan 2021 03:20:10 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id E7DCD61FC3;
	Tue, 26 Jan 2021 03:20:10 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] bridge: Use PTR_ERR_OR_ZERO instead if(IS_ERR(...)) + PTR_ERR
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161163121094.4087.10728008683417299022.git-patchwork-notify@kernel.org>
Date: Tue, 26 Jan 2021 03:20:10 +0000
References: <1611542381-91178-1-git-send-email-abaci-bugfix@linux.alibaba.com>
In-Reply-To: <1611542381-91178-1-git-send-email-abaci-bugfix@linux.alibaba.com>
To: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
Cc: roopa@nvidia.com, nikolay@nvidia.com, davem@davemloft.net,
 kuba@kernel.org, natechancellor@gmail.com, ndesaulniers@google.com,
 bridge@lists.linux-foundation.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=e4XxxYD4;       spf=pass
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

On Mon, 25 Jan 2021 10:39:41 +0800 you wrote:
> coccicheck suggested using PTR_ERR_OR_ZERO() and looking at the code.
> 
> Fix the following coccicheck warnings:
> 
> ./net/bridge/br_multicast.c:1295:7-13: WARNING: PTR_ERR_OR_ZERO can be
> used.
> 
> [...]

Here is the summary with links:
  - bridge: Use PTR_ERR_OR_ZERO instead if(IS_ERR(...)) + PTR_ERR
    https://git.kernel.org/netdev/net-next/c/8d21c882aba8

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161163121094.4087.10728008683417299022.git-patchwork-notify%40kernel.org.
