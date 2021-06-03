Return-Path: <clang-built-linux+bncBAABB4NP4WCQMGQEURTYNKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 650E339AE0B
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 00:30:10 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id x22-20020a4a39560000b0290245a21af9a1sf4334655oog.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 15:30:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622759409; cv=pass;
        d=google.com; s=arc-20160816;
        b=pN4belfTdR8JUecI8SXOEdq2H8MLI24MC+DsK+305mGsXyDfu+23uksGWJVu47wnAU
         cckrZ1GhEMqbn/24/dVSyiprxZpkgLQ5zC+bSpnkcDH2IUHPD1C0affi8maVucwhK6wz
         qyMak+nS29Va+MaqjltvMJbipd00tEFwWp/bRfP8IzVXTWhYQnneCvy9+B+7L40+LrVp
         W/eBXaMwTy/V0CfUGwMjY+UdasyYFVZy1BzUd9hknNWheuEPnL0bKWLBQv3r+f84wdzR
         xPUA3PciEkgDFS8QWaQFP+riDe2QN0Rhk/xuWjUdcG4Pc+H/TNsAs3126hyWW0C6T+zg
         6vwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=VI33fBIFqdxe9x4TN5KW64Sk0ilXnhUFT16p3pwx0O0=;
        b=Jzc357noR6Av+XboZcirI4icHMqb/bpi2wfgcJJv862ya4j/EtKYEkID52UgpwhEav
         hRthuffa72TDvyBjTjO0o0++MVPMxCnBz9l4NovhP++T6Tp5VrdkzuEwFIFJWsKyfHSB
         Zpqvm+XL5gJWBxSDDPIJ3+o7+fV1x1HTkOVMoXmqgQsYsqAAbjMtV+AqiAf+sYjT67IB
         vXdH2YzOr9SLR887UNbBhU8BnET5l3Cce13XbeFYbd2XGomtwkjKWLzzmxUGs4rAbrVC
         w1PBXD+qUzPc8WWq3imx7f666CHY1+3zTIEQrwvEk9fodEKFUYf3HTi5xao5wpsxiIP4
         en6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ex1X+fKx;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VI33fBIFqdxe9x4TN5KW64Sk0ilXnhUFT16p3pwx0O0=;
        b=NwhAXIj6Yp0KQRCWwXrRhDXwO6RxoDdJjq0bxCX1Dz6Sex27GSpF1MoY92MZDZjDud
         oiOie2x4t8bwGZfBae09jIsLT6Jml+CHAdbmDW7vQju9X9Uc1esnhRCaDa1t7LTm6sCj
         2ccyq9CY/4o4EDFo9oaL11tOR3z0p4gqotJF4wkbSwfm5tO1AIHJL5BwkmPW8NG0yyMj
         TN2GGBKK1/QPr84cb9tpQaMFdaXrl3bTsqAXEZhJp810JEpO4eA/3t2GlXcNCfcowurk
         PPCtsBxvpMavM58qAKc9HIEQGRGrX5Gc9+/BI2WDKdhrRqGguSQM6RSTMt59mrxW53vu
         zw8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VI33fBIFqdxe9x4TN5KW64Sk0ilXnhUFT16p3pwx0O0=;
        b=LMt6q4ZhEaPVUh5Kg8AHZZuEuW+FzKd+QxundesgBYPex7bVBUID/eVb+/Syj0U7yU
         koFqAcxylXlezU2+Arp4yi/2B5Bnt7WwIMTQ9ySq9Ma7EnxobNG1loI6RhGZDW2LMGs9
         IpDsRIMwAZp3iTrtKZC3l9SYo3kEsdssquSuCCkcvrIG0Bptu8M9M5BwNiWrEFSqYRIn
         j+wuJ8+BsvfeU02I/ASnNTDPT2ykjj9TfmauGfL9H0ZNBT3RgVzl712mHgFtUE9scOTg
         DgFLBbG6hdOPNwntU4PMTSumfiiDA4hwKvYCgh4WBVIenT+rzVnutzySyfgu49QCseyy
         LYEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531m7gjkVCz2jmb1674SPVSvitUv6ShPygrnXWErmiBJMG3Aex5X
	f5hH5qZ4VgeQrRJ/OkIC6Es=
X-Google-Smtp-Source: ABdhPJwO0kXmx/AnprAnv21HMVRxerQHLRhaHh6OkHrscraWdC6dMYnrLK0CP6AqHjbgVGEVuM9l8A==
X-Received: by 2002:aca:5cc2:: with SMTP id q185mr9039911oib.173.1622759409269;
        Thu, 03 Jun 2021 15:30:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4888:: with SMTP id v130ls1322501oia.9.gmail; Thu, 03
 Jun 2021 15:30:09 -0700 (PDT)
X-Received: by 2002:aca:3c4:: with SMTP id 187mr996356oid.116.1622759408979;
        Thu, 03 Jun 2021 15:30:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622759408; cv=none;
        d=google.com; s=arc-20160816;
        b=adI9k9Aq751LpMTVjlmVOzr9lsylu4LhN2yMRJ5S3nvgilSB+lZWag8zj5NLpmZmhr
         y5tGHGOK2Os+A7sFES9V7Er1iTHgfDhOUyhY95Ysegb2Sm7Lp1DtcRBeOn2uDWpxJYUX
         GwArgZRkGxY/JXHTTmCAz5YZMBfFY5ZXC72f+b6DQ8gL1MR+M5lSWi5r5mLPZKfWw0zl
         HF1JAqossiduJhu100m1ZJWJaT15SR9+bBnarBGUFzKo8Vb4Oe1mVKdDEV2giuDqxwqF
         5IQ19GdlqQ7Ox9dkDqAsbpCsA/MO8YTfJxZL2aIJkyqAECy0zanNJ/v3MppHPjuodAOe
         to3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=UiIJyqsOVgmybAm5kZzQzM5+UKXb7aYySTciSmvA6lM=;
        b=zNf0o4KYibPsyv88Edgpa8obrbMLLOdzxrBirizSRV89QcAM2YjXH+ExgziNkgXUlj
         sh6EWX37d6BIPPYtJnuDJS4Kqqq31kf3USvREiJ08EUy98vA6b0GzwW39St7rIuu4lOZ
         myF2IJ8Oasx5zgVAE39GueFewlYmN7Oa3V1aOB1/X3Hi8Rx8bH8d0KwIxl5kgKLp83uh
         mv/+5IGaWVm8JGn6f2X3DW/AteOaOXYAKCR/V0ZjDDpyZm/0RPHVjn95higwvdKmmg+x
         nhRmB54rf25e4/bEWMLRw6lSC1tLeAeDOlt4hRvTBNvOoCwkNigKhqsOEd/+E0GuBu3D
         3iJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ex1X+fKx;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c9si18951ots.4.2021.06.03.15.30.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Jun 2021 15:30:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id F073F61419;
	Thu,  3 Jun 2021 22:30:07 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id E182B60BCF;
	Thu,  3 Jun 2021 22:30:07 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH net-next] net: ks8851: Make ks8851_read_selftest() return void
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162275940791.8870.8895420469894707937.git-patchwork-notify@kernel.org>
Date: Thu, 03 Jun 2021 22:30:07 +0000
References: <20210603165612.2088040-1-nathan@kernel.org>
In-Reply-To: <20210603165612.2088040-1-nathan@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: davem@davemloft.net, kuba@kernel.org, andrew@lunn.ch,
 ndesaulniers@google.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ex1X+fKx;       spf=pass
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

On Thu,  3 Jun 2021 09:56:13 -0700 you wrote:
> clang points out that ret in ks8851_read_selftest() is set but unused:
> 
> drivers/net/ethernet/micrel/ks8851_common.c:1028:6: warning: variable
> 'ret' set but not used [-Wunused-but-set-variable]
>         int ret = 0;
>             ^
> 1 warning generated.
> 
> [...]

Here is the summary with links:
  - [net-next] net: ks8851: Make ks8851_read_selftest() return void
    https://git.kernel.org/netdev/net-next/c/819fb78f6955

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162275940791.8870.8895420469894707937.git-patchwork-notify%40kernel.org.
