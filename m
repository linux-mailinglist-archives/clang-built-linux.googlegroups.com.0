Return-Path: <clang-built-linux+bncBAABBR5U4WCQMGQEQ35APXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DE239AE29
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 00:40:08 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id z12-20020a05620a08ccb02902ea1e4a963dsf5333570qkz.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 15:40:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622760007; cv=pass;
        d=google.com; s=arc-20160816;
        b=x3KWGmi6oD7quKigLRH2C+rthBScG+A0QhCW7fOOHk9zL+j2wblasgsJEN8FCLFcCf
         6ZN8fn5fRdKZnz+0Z/fL8FeRP67In7XLQxDLrjnryK1/L+kYG23dDeIlvw1+k6YF2m+u
         /2fLR/Ti83zKsQLOmTbSozznL+TYdm62ZrB2Co5mP4WB0dzpfNeoYsn0dlYAZams2X2t
         /CD6W0tW5gIvE4JTIRenF3RbavpquIbXrP25EZ7uVnW5BaMg1IiDT5s6iSZqXnXOpRhT
         1tEOY6U15vFXcraAsxxLNEGyOk8nWNitEsdjTXXZF//JY5zviUiacy7QHTzuw4X4sYVA
         obsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=dC0T99vOjTvemvm9/mU3bVUeLwH29/O3pihOmHl6df0=;
        b=AdK0/TMFYJniFj8mLag8irNQFfLprQF9I+/hUNWmp4b4IWgRDIwplTiF3Ot1p2cGY5
         fdadimqJkn3CGkDkxOVGf5J9Ot8HCwvh2B5IUGNgtb4+6SghrchVyA5DqnkiQkLfEDvv
         cN364LmqGmx+o9eSGcZxYbbPjPF4MuDgyoBUeb0GyW+QPbwm+eyk+1Kul9WqH+ywbElI
         SMB/vafVX2yda0ECVD3lKqZwsmMYff5xCJYzRsm9EY8inBBDzxMUJhF/i19tnq/foM5x
         7tRVH3nksGqlcCrvedeInSyTpVp5nWUHuFIea69UAM+0XXqsHUg+SyAP0Nx1a96yLRUp
         TVPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Sy9numyB;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dC0T99vOjTvemvm9/mU3bVUeLwH29/O3pihOmHl6df0=;
        b=CU5clZ/mkcl9G93rVUkKBPwAg6DcJOxjDeBM5ahuiSIJzf6HzIl12cMiW6BHc120XS
         D6gQ5Hl+gtnMcqF4iL/Lof7YHi6qrn0MUQrKDsE8M7CYJQcWd+7WuH+pQfw7YJtApMIr
         axr5eh3BheVkJSVq267S/UXRvGx06NlhxEEDnqyCn5YfztjtKVjee0YdpXpt1det665b
         i5XoeCxKq6Bvi8mqH0pjnty4EMU/hkbbZWAbC+FeMS2cEFoo3XZE0ny9ZsiffmQesBb4
         lPKOF4Um8Fd5GdNlLIbsL67/NqlONhqngG+0ZtMxwPsCIDRT+15dVS9iFjlTSbB+W1hb
         Jfyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dC0T99vOjTvemvm9/mU3bVUeLwH29/O3pihOmHl6df0=;
        b=h2i27CYRyRhJBzgAlu3M0Wr+yw4i6rQ3HvJgrDdF+CChf6BNcAjOOAHlUwWSDxq1wB
         qNvjUNnInZuv29OPvOuJBNZL052n5qcLYeu7p9S61r0quncUAY38FgZtF9f2jKU2ReYF
         Xnye6iwhxRS0tmByPGP3ymxs3We3ekfluROegcGJmUQgaxzQnDP2Fa0kAm1KEJGQnfmD
         aj6CyFfFpA14H7Vcnj37tOpFp83PfBZgrBUBgOOf2e/Opb4/KyZo8EV8z6KDhhkpHakp
         zku3KuRQAQJc7h9pIgWdSPOdXgZUo7OWk/mbQ6/ZR1wmx3af3V3sPHE/541amZAwKE63
         MLuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cv4SqSphM6kSU7vNpIwZk5Q4zVc6bgra4B9iIUcftCerwCnZD
	19CcL1Blr29I/uPwOfEp9Kg=
X-Google-Smtp-Source: ABdhPJwBN2FR2aoxoLSOlwLuBOcuLS4xqubaLS3vTlohmW1g09/iwe4c+bkIdkHZur+F4RbyThTuvA==
X-Received: by 2002:a37:8343:: with SMTP id f64mr1590498qkd.12.1622760007608;
        Thu, 03 Jun 2021 15:40:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:554:: with SMTP id 81ls2866650qkf.9.gmail; Thu, 03 Jun
 2021 15:40:07 -0700 (PDT)
X-Received: by 2002:a37:444a:: with SMTP id r71mr1532165qka.381.1622760007267;
        Thu, 03 Jun 2021 15:40:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622760007; cv=none;
        d=google.com; s=arc-20160816;
        b=cPubf2oc6ArHFkU47INIkYYgSJq2HplL6HnNanoQeVK9o5nq+b4Puc6JxLEo13YEg4
         l1aBwyBYXBx1kUYoiwLZ1ui7kaNPznSTExQ6TcRUg89iRMEN6IrGeTzdtXXxHuwK34MT
         n/XljJcqhekHJqmCi0y7lUUGKkFSlR14+rj0LPdYcVqF6Ti/g1iRH1SXI4Mx5TqQq982
         T+lrIJefDi9VPsnhbyel13q+vLebN4xebqWmQNaYRBrbmzngzf8FlV9CBW8IIShZYZ87
         HFV7cHtA51TNs9+S0QY5mKA6ZAFOpU0YwTU4DYFdytvCXQAI/lDYy5dxWGqp/UAwpnbX
         A3Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=4AyToCR/m0tbtjuav6twJx7RvNKwV4wzTs925w3k7Uo=;
        b=iTaEO+zA5r5jDlFzT9PZ/Nmb5QK8vD9PFxwEAlHYzKiviAD3XKsuKJKksmLSxyoweB
         5KQtD8Otr06zVlqWODDa6gQTJEuYeXHvANoEg8nTnxE9gPt62Avo8T9yoU2GfnsTnly4
         GMlL3cFjDq5Z6FsVeVqnzpCtwi9XN3S/b6E035duO4vHHmwFzsN6w5ZKOB2HtRk8O4WL
         4bSRCnOmH0v/bRQkK4BqHuxB9KTCLng85iWzu5YXziYLSZBU1zFqgrwYs4CEkDoTRS5A
         HtccZChRpjjS6tYVxRgjrc0rG4Q0RHIKELw38ki3QdgY3Y5aCaIKCtdD4tj9OJYUG+2O
         QbVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Sy9numyB;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y19si468459qto.1.2021.06.03.15.40.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Jun 2021 15:40:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id 1FE6061401;
	Thu,  3 Jun 2021 22:40:06 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 0DCC460BFB;
	Thu,  3 Jun 2021 22:40:06 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH net-next] net: ethernet: rmnet: Restructure if checks to avoid
 uninitialized warning
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162276000605.13062.14467575723320615318.git-patchwork-notify@kernel.org>
Date: Thu, 03 Jun 2021 22:40:06 +0000
References: <20210603173410.310362-1-nathan@kernel.org>
In-Reply-To: <20210603173410.310362-1-nathan@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: subashab@codeaurora.org, stranche@codeaurora.org, davem@davemloft.net,
 kuba@kernel.org, ndesaulniers@google.com, sharathv@codeaurora.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Sy9numyB;       spf=pass
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

On Thu,  3 Jun 2021 10:34:10 -0700 you wrote:
> Clang warns that proto in rmnet_map_v5_checksum_uplink_packet() might be
> used uninitialized:
> 
> drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:283:14: warning:
> variable 'proto' is used uninitialized whenever 'if' condition is false
> [-Wsometimes-uninitialized]
>                 } else if (skb->protocol == htons(ETH_P_IPV6)) {
>                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:295:36: note:
> uninitialized use occurs here
>                 check = rmnet_map_get_csum_field(proto, trans);
>                                                  ^~~~~
> drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:283:10: note:
> remove the 'if' if its condition is always true
>                 } else if (skb->protocol == htons(ETH_P_IPV6)) {
>                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:270:11: note:
> initialize the variable 'proto' to silence this warning
>                 u8 proto;
>                         ^
>                          = '\0'
> 1 warning generated.
> 
> [...]

Here is the summary with links:
  - [net-next] net: ethernet: rmnet: Restructure if checks to avoid uninitialized warning
    https://git.kernel.org/netdev/net-next/c/118de6106735

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162276000605.13062.14467575723320615318.git-patchwork-notify%40kernel.org.
