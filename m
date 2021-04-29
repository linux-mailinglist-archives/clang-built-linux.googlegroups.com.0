Return-Path: <clang-built-linux+bncBAABB7PUVSCAMGQE3HVQAUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 742D236F2BF
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 01:00:15 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id n18-20020a170902d0d2b02900ed5de16a2dsf4552326pln.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 16:00:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619737214; cv=pass;
        d=google.com; s=arc-20160816;
        b=iqb2mKkJWzjahesLO0mSQo4dovMOCPhhza/9serdWzV0nkstQLtSwvGq1G3cAojv4i
         yjpeX/oaEuvv5FnrlDIadC89irNUyvjm2+21oz7oFaClj+3zyNkRmLoAgn+TAX5NwMzV
         G85zFwghMwxg5h+6pSa8cl020U0TDh6uK5nNpD8dW8GL23OVcJ0HxlMUH2BmJFcbHpRH
         yiica+Et16NIQ/sxUg4xug8lbqihOOrs/uSLQGiG1d74znRN2SvzTYpgA7VVlCU8I+jI
         e6sC03ZVNcvd2njWGVrJWL2M2+PIxMXkh8DURjduDft1bKbl/3sj15zgQFwVLBMNcAx5
         3l9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=ogRZ4aliIimw3lex8Ekk1tzo+EuzdJLu1bCBgIw8cDM=;
        b=CMm3BX6eVWaWpN1KJeDf8HiuLgC/8MlWybJR3hQUzhqY+GQhG6szKUbn+HEtLwHrb6
         qb8n7VOEcx1WnBur6Y2Zu37m6mUkUGL0kwC2qy+xkYQF79mFgKFHWpBQyzZbT9pYMYOw
         E1EAN9FIsLy+T99q2mB56JtcaWob0SXvxno5DAS9hx7DWseB7h8/5qSBuKK9XMmMROqJ
         bbJ5OoUAq/iEMGcSpydhLUeNVx8YZqRROq2WiGvcVzdlY2oBnkqH4cxnpD1EjrLV1cuC
         eYqKmzGyz6eqZaMj9dJ0NxZjxkIBGydmckP+sSDnKfw0sGmKOcxSp5OAhu3q6sOQ7apJ
         6xkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BvAiMrfF;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ogRZ4aliIimw3lex8Ekk1tzo+EuzdJLu1bCBgIw8cDM=;
        b=DeJWYrYjnOJA2A66tl26ZGe/5raWrnuRGotkdWGBpsluB+2GZ0IFwM58sWxXtGlVeZ
         oK3aHYvDNg2jMK/JZXGRywgLn2Xt6k8HaKgteNVLcOIiHeRVBb+/MyFBwo+aRyVhtv9Q
         sQukpSQOey/ucA1ileFh0fklnanBMOx25d49kY8IIZJyJ80OHc83ThpUCuVF7Njui94B
         pLdBNCPuKUBL9S8Y8nPmK+0EcI9uH1CA0odENrXitRCZfdjoY2d5tjVe/epOUwMaT/gZ
         Y3exLZPTELNT03cr6FShjhk1if8UXWMHtXgT1WOwBqrbNfIpdnaDfuwcjBwD62P5kgNA
         sQaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ogRZ4aliIimw3lex8Ekk1tzo+EuzdJLu1bCBgIw8cDM=;
        b=oZ/DQGGnnscE9/m47TtTLO676r215DzReS+P2GlMOzxBP62oOOc+FkqLU0Jzf0H6Nc
         2nY/nNPk3rakwwbEGIuwPOfEBkyydEOSOrMSEHlivemXxGEInESUhPC3tMFnyO2Gsb6A
         AL95V4A2r7K4qCR54m82ML9sE60x0DN5PhNN6BZuyO6Plolw0NB7KL/DcMnf7bgplZa7
         MqBEHLLXkqLSUxr4k3yx3yZSywQo+aljmMdSruklF6vLj4BEcXiJ1zt7o9tWczgRHbcy
         8o7WJlpDBIanEfv62efNbCkvMtb6l8SNxkoqxU5WbafUavpVaPUIlg/GnvoPe6G1AYvA
         ofYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BDGp4fMyHI0zFMeiEtjmLywmMz0Cb9jDCepYKnBLfj9Y6ac1W
	U1g66CRls3v7CR9tyrgI2a4=
X-Google-Smtp-Source: ABdhPJwVEphSoslGyEDws43Cn6utMkavPvQetVBznnzd1ENvMf02W+d0EjzOaGFSvupe7EmjVHXobw==
X-Received: by 2002:a17:902:9307:b029:ea:e588:10a with SMTP id bc7-20020a1709029307b02900eae588010amr2023631plb.7.1619737213948;
        Thu, 29 Apr 2021 16:00:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b710:: with SMTP id d16ls2305103pls.3.gmail; Thu, 29
 Apr 2021 16:00:11 -0700 (PDT)
X-Received: by 2002:a17:902:8a8c:b029:ed:223b:2881 with SMTP id p12-20020a1709028a8cb02900ed223b2881mr2120645plo.8.1619737211385;
        Thu, 29 Apr 2021 16:00:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619737211; cv=none;
        d=google.com; s=arc-20160816;
        b=hb3tWYT/uc33p2SCfqyARa1PtfYEsWmh1kU1lGJkEnIENVwaG+8buR14ZTbVQM7O6b
         bw8kv5cIQp8Hni6b0zqcxz+Ohp1i3Gu2+mSEr8BIdGduuWgkBTbC9KzbklkkP4cdjWfk
         Y6P/e933GQ2Fu4wztZTDQoV/qIHd/7MynBV7cATW6SuFFa8DSS6uF/VKdUvUxkAkLBAZ
         1xwbMnxePMV/QEaAXUJJOlg9mqocprzB0K68lSHVJzTYFfru69bBrTx/2vfzjGu6hTnT
         chmxxGxvN+p92MzoM2upo4DN7KNHTyNSi2uNki27iMShzDMD2YfQCzwzagIjTi4JRtH0
         2R5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=d6RsevMsLceR+OEiBuBZkL2OPWHQ8qJIsiiqiGIvkaQ=;
        b=j/hsq5Nd1Cp7S8fPL/ahWdL+3WrNz+Ha8Odr1KIMmxCT/nRZsjf2iTyEWP5BxKsJB0
         4y9q1zWNnrGI5/FjWbVt+pDwlCqXXMB/pyScrCciZEnozbPLgxTVl/yJVn1gpbsSvgt+
         UJ0D/pr4UV/M3ID0wBVaXBP4qAnxqPcbHwCeVrS7z2gztKiOsBrqltdug5Wl2gH8AT8e
         /MNEayhraGoxZzt8OXDpC33RtLmWAVZ0LYWmj3M22k9Xuj/J1QsPAkdABSrpMUT8yw5A
         0esEcIM8udKOnFPYuZ6M/UkJBFGIhMPlbx43nRX5VqiCOKseFEeOPIyPlvbKwC0jCss5
         kBZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BvAiMrfF;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ep1si260161pjb.2.2021.04.29.16.00.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Apr 2021 16:00:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id CE1C16146D;
	Thu, 29 Apr 2021 23:00:10 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id BE08760A72;
	Thu, 29 Apr 2021 23:00:10 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] bnx2x: Remove redundant assignment to err
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161973721077.25365.3622601507477450777.git-patchwork-notify@kernel.org>
Date: Thu, 29 Apr 2021 23:00:10 +0000
References: <1619692705-100691-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1619692705-100691-1-git-send-email-yang.lee@linux.alibaba.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: aelior@marvell.com, skalluru@marvell.com, GR-everest-linux-l2@marvell.com,
 davem@davemloft.net, kuba@kernel.org, nathan@kernel.org,
 ndesaulniers@google.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BvAiMrfF;       spf=pass
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

On Thu, 29 Apr 2021 18:38:25 +0800 you wrote:
> Variable 'err' is set to -EIO but this value is never read as it is
> overwritten with a new value later on, hence it is a redundant
> assignment and can be removed.
> 
> Clean up the following clang-analyzer warning:
> drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c:1195:2: warning: Value
> stored to 'err' is never read [clang-analyzer-deadcode.DeadStores]
> 
> [...]

Here is the summary with links:
  - bnx2x: Remove redundant assignment to err
    https://git.kernel.org/netdev/net/c/8343b1f8b97a

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161973721077.25365.3622601507477450777.git-patchwork-notify%40kernel.org.
