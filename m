Return-Path: <clang-built-linux+bncBAABBXMH2CCQMGQELAXOKRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id A52F339530A
	for <lists+clang-built-linux@lfdr.de>; Sun, 30 May 2021 23:30:06 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id r91-20020a17090a1864b029015da4ff1c12sf5962431pja.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 30 May 2021 14:30:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622410205; cv=pass;
        d=google.com; s=arc-20160816;
        b=csGCP5yhWwDCAT+gs8i6uA/1XTGIB9Lwi+12E5w+g4xukwxGOS94ztyBycvBfQNfhq
         eaDydy7AGVZfs/ZkLOrhhIj+geCNBgy8b6Zesraoym1eWWR+foBqhX/xloOiZLh9IUqm
         c2agZ1djK2bQIE52HWVhKiiXsMDHvZggrp6r5i7yON4LhrgX7kBepfadNNi1h0xl9t3D
         S7npPXlksNXgZpsYFOipuavT7g4cmU5LCSBR6cSCdiFvF+dgSHkIpgQ72ctP8bjz7fn8
         wkRgjpjun6xKUs3hnwl9waVNZa1QflzWWb9iWCdRQboXLtFKGGOSuory4PmfQYOy11ni
         kLWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=K+cGhtwChZd/6nLmpjEyFGhxOI4IETrF2hilpGFr0tw=;
        b=sACtZ3APXm/dU5YB2TCN/AF0J9rqf2Ew6XFlmaPOQodV+E3MYWQp9jSncW8fwMvE1T
         s5EpkAfCCjdRtTcW3ou5f2qxyJg+flYbHrjiUsME9b3Sg8z9u3ou01Meqb7tvLTGYBOi
         zt7aMn1enT1DmqfzwHXZeGEDvWtrICSD28arerl+BftUmZg60dSEjHtF5N8x8ZGDNze3
         O31sBBphiGZK2XuFkU2kevDP/MrmOa9FKiAo9ROf30hp1SrtHj8pL+XNpoHy4HrJusUZ
         sJHJR//AvUCqKWAO23Ke3/wsJM9I9t1jBhG0hH0TRycAUja164Q1fCFdv/wT2VKhcVL1
         u5dQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qXopatiA;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K+cGhtwChZd/6nLmpjEyFGhxOI4IETrF2hilpGFr0tw=;
        b=CZSx36pp1fPr0IEwrakNu80CD0eDsIVyuLFGzDNLiMA8PQFRmNSXZGA3+CHSR1NmBR
         qb90RZu+BjdrJjt9IraTrnLwL1KMGt5JW315FkNyIemwqBAIXg0YwrvApPntY47rCMoj
         5HNAjfoOKwvau2e0XDxc/f/1zNEdDH17rBqH8emnRd8cZcLAHt6iqiBQ2ajis/PKv+R1
         hi78xkogZlrtRu0/FNUU9uBxOuCGhS6zVv/OB09ealxg6g7P6Hn/KWt2sLShbeaJcQNV
         ViTQqvWKL/JlB/RhSsh69MJA1wFcY/hsk1cxttGa9qb4Susvo9JTZSkbTvPTRrCs8cSZ
         BaXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K+cGhtwChZd/6nLmpjEyFGhxOI4IETrF2hilpGFr0tw=;
        b=HNf+ahvQAJgcCWA35UlvXkibhlvAlXSYP49YFf0U6ikYNaCJ7ebDVtsA/pvsezTg5+
         TU8PDClJgFuGFGyaU9qYT94QUBWWiPoRidC2Z2bLbhcFJc8wuq0DpdcHn0P9dXTHyeVl
         WXACfYZp1hW8My+rpwonG768Gvu+P5er00GKD4mMEk1vD/0XOxwxmlxpTxaoj7eiGlfy
         tGQGxWL0WxHG/wxaEORS3XrSUvUsAMjoc8wPu2P5Quo1OdmIwA3MS4UuAVGZtato4v49
         MUr8EKEe1SLYazOwAhbUDk5QK9Ye9atwBqI0Ol234kYz5/9RCBUgUCJMZGBvaZqKZs7k
         lnuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53351Tux88/ZxsSmOnx/R9hdta854+ihu0pVd3Ic9P4vZih6sqxt
	9fHHiwE72vGtY2AyhTXj+Yo=
X-Google-Smtp-Source: ABdhPJwZYE0Xf0Lh5jZVPjc5n8rC1JwcTPekoFUHORHDfrwDA/4yYI+rHWfcJhN7reRhMVOLEE0ulA==
X-Received: by 2002:a17:90b:4ad2:: with SMTP id mh18mr15389396pjb.148.1622410205302;
        Sun, 30 May 2021 14:30:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1dd4:: with SMTP id d203ls1738925pfd.2.gmail; Sun, 30
 May 2021 14:30:04 -0700 (PDT)
X-Received: by 2002:a05:6a00:bc2:b029:2df:93cc:371a with SMTP id x2-20020a056a000bc2b02902df93cc371amr14037843pfu.12.1622410204340;
        Sun, 30 May 2021 14:30:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622410204; cv=none;
        d=google.com; s=arc-20160816;
        b=Ewz29Uh+dJL68MdB1uHnDjQyz57Y6kg2jnDlUiyfopceU4pKedJtXRA4KzZW4b3t14
         Vf2PknmqPa0lMR6WDK7oe6JUrJNfXSdhIgMjy4N3sz8DI3HgWUgcPbv8o9UxsRZvukqW
         dflivvYd/ln/vMW7jhPmMbfXyGUv5acil33iAOz7Wh/7qpdmqFKY6CCHnJCTAmS5nNj6
         QSLf6uMLl4CYVF+woJe3U80J5zHHNoaQ8ZNBSKqyBnIIqUzKMmxWCcOQJdozrQL9biPM
         SxcX+XQtfHORYGw41LHesQ5yl3k08ekohkIh2yyqsCoxf3iVnu/BG/4Rn3QKz+jRsq0O
         z7nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=VB81kszUfZ8zTYXH1iqB9JxlmmIfraaaAKGe+r9OIms=;
        b=Q6tuVOHgk7LfQrGuj+wfBmtAVGLi9C3IZxAy9gCwfWzGiKmbtQgfFS3twQRfal419M
         nevi84kH2EIEzbldacr9GVkPmpSZPgea9+nOcjoS3DD0EYzhKTNNNwWwkG6ZYRkIFXyc
         cgLVtJUHregbFXwHvcQITCux28bhEXBeAtGtSaonckXnAWB3xAJowlGrLlRkAEVMebqw
         tRsULYCvhpsGzJT7/YTdqNsxWzT35WK1eUOq5msFnMX6w/+fU4+Odni5TJ+j1iELez0E
         TXS4/5zZsOO5w1yYiqoqD7mFTEn4gvGWfMqyJ0XEiZlhNRnuW980lsSR6gEzlnAhubDj
         WI5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qXopatiA;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o15si923794pgu.4.2021.05.30.14.30.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 30 May 2021 14:30:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id E00BF611AB;
	Sun, 30 May 2021 21:30:03 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id D350E609EA;
	Sun, 30 May 2021 21:30:03 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH v3 0/2] fixes for yt8511 phy driver
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162241020386.28062.1219688691635725746.git-patchwork-notify@kernel.org>
Date: Sun, 30 May 2021 21:30:03 +0000
References: <20210529110556.202531-1-pgwipeout@gmail.com>
In-Reply-To: <20210529110556.202531-1-pgwipeout@gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
Cc: andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk,
 davem@davemloft.net, kuba@kernel.org, nathan@kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=qXopatiA;       spf=pass
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

This series was applied to netdev/net-next.git (refs/heads/master):

On Sat, 29 May 2021 07:05:54 -0400 you wrote:
> The Intel clang bot caught a few uninitialized variables in the new
> Motorcomm driver. While investigating the issue, it was found that the
> driver would have unintended effects when used in an unsupported mode.
> 
> Fixed the uninitialized ret variable and abort loading the driver in
> unsupported modes.
> 
> [...]

Here is the summary with links:
  - [v3,1/2] net: phy: fix yt8511 clang uninitialized variable warning
    https://git.kernel.org/netdev/net-next/c/546d6bad18c0
  - [v3,2/2] net: phy: abort loading yt8511 driver in unsupported modes
    https://git.kernel.org/netdev/net-next/c/0cc8bddb5b06

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162241020386.28062.1219688691635725746.git-patchwork-notify%40kernel.org.
