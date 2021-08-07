Return-Path: <clang-built-linux+bncBAABBQESXGEAMGQE5SMGDBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B063E342B
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Aug 2021 10:50:09 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id w5-20020a170902e885b029012cf3ddd763sf2119600plg.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Aug 2021 01:50:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628326208; cv=pass;
        d=google.com; s=arc-20160816;
        b=DN/mA0x6XprArdkpdGAjJGNGBJB1/DoVNZAIOyowH0RJjy5gs9VeII6KYqj/V6VJBJ
         1FDqpLXHfTKEnNjmUpa2j32aUsAQh2KHKDXjSrlUHQjsn6xzKJLrauZOPHM9KckaXUCc
         2O8Z9qqxEzE1Bnbssosx/bLRjFGrcyIDKXf0xKQ80cSHQecOlQN69Pm6yfqoAxYnvhQ8
         c/SZ4IZcveRyMYLXQXreeTJc7iZuLuc5WGL9QdHYjAbXgCFbbcKIT5A5/C4+V0c7Fsvc
         xxvtRseqx8AHQ0x8wzgh5mbUeJVhnBwXKThpcVZ/BydpcCNx6Kw/M/1eJP0u4OO3VuZX
         2Rtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=1PXQrZW5djsLxaSWm8ZqjudWyberYgAaM5t0BBNnbOU=;
        b=b9V/BmUrhSGXDi2kE32RlEoc/f5wu3XEspP/ZEqQha24/pkEStkuX8BCZyzNxw5LR3
         mEpJmUpBX0ldURTMha36swEYlUTuNe/vWRE+Wx5XR1O4B2Zed5DiJUp9JzxlYKF/co97
         w9PZW6Zswv0IDuOzTwOobbIJo5AF21gMW+uEdHHsgCJkpTcLesTXeVk2Nyhwj42/CQ9t
         NL5MUKzjfHD0TAGhbRiAclCzordpP7UTgFt8Fc4/QwSF0tmYsLLhOc7pSj0FCcJsjqJL
         FdUzhsXCPqFyo37ZIjsvORyKrJ4rJp82ZpuF21lBWuVZ3KR/2AWZq0Ym9QzKXyJ7ckrC
         AjSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DXy0hgpB;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1PXQrZW5djsLxaSWm8ZqjudWyberYgAaM5t0BBNnbOU=;
        b=AH6AtRML9TcGHppEGfSP2Kvt/8t3w0+mcbgq6OeEictudGfeaJvWUyRYw3chE6oNGl
         HUq3Of0lwELidoZxbglSOFzNx2ChsPLe37Wxx9rprT1hF5Lpv8wBp4rjbPixRF+wx5+I
         P1NTMmVXrpGUr/aK4kmwnJNlBCnPjXGfs0RsCzCnt9V6Y0mlC+Htz55DxZWKBWbCzVUE
         U9vahygavUB8HhBmwcaUk+4CH/SFpxF8L9FApIUWHzq8/qJ0WFOk3TxuVPD7V0HM/RpB
         ScykscognY/dp81Uf9QCc1LvMki/uS9wLmM0kiiUc6fu6/ue/9tRYrHdCQ+PlD+8KrH8
         j0cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1PXQrZW5djsLxaSWm8ZqjudWyberYgAaM5t0BBNnbOU=;
        b=cvRpW8yqglyekwsoVNNpptr8FPBb8ULLp+dajbraPTk6AkYCUyHyYCmNLtkDd7cTcF
         SP8z4PDJiLqWnBKVKWSQmZL9B9fBDqdyOJjA4q2ecpiK2JQ2z+cVpfq2wDSFchGM3bca
         02bkfChGHHn8a0iHSo3XwHrPKx4UMebMxK2dz6Af5o+EMhonWdwqoLKmvSD6j0owBzR9
         ElLnAYf1nWurUlqU7eNgbOJuFzZfPF0a7CnFMecy/Z3bqBa8JknD0AkxQZ0PN4Vsgnhs
         be8tBG6lAncCM8TbtwoGPhkfG7e1UXD7w8/gBFtH0SWR+OsxqkNlZ+BBXm4yeOalBSOj
         /cFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313bKM+t1+Tqom0XbuVRsBL4vWfnctg5f6fCgFKNrAg+eHWBFDM
	oSYa3RCj4bdPGaWJPVohYGE=
X-Google-Smtp-Source: ABdhPJxXy5I9yPZHZLySEd+O1yPT6WQGIgcxCAptfgKxdtTVort17Cx1japJJTt3LsBZxCuVkHDd3Q==
X-Received: by 2002:a17:90a:6e47:: with SMTP id s7mr14814552pjm.160.1628326208197;
        Sat, 07 Aug 2021 01:50:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b8c:: with SMTP id w12ls5477457pll.0.gmail; Sat, 07
 Aug 2021 01:50:07 -0700 (PDT)
X-Received: by 2002:a17:902:e806:b029:12c:8220:62fd with SMTP id u6-20020a170902e806b029012c822062fdmr12202895plg.48.1628326207694;
        Sat, 07 Aug 2021 01:50:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628326207; cv=none;
        d=google.com; s=arc-20160816;
        b=JB1acJlHvfee7bcHrNGkrJjWy9YH4L91XW5XJiHgdvq2v3aCigqYmQ8Vt33AWCgdxA
         4y/rKxG1bN0r6A+HMh+EtWD0xpdSQp16FBioObLIhWzRAB+T127ZdrypB2ABD2QXSQbL
         igi+TjzzCbXyfkk98CgatV2r4nMAzpbxHHNRkCNVbqraWzcB+qRp9J8eAbsrPzys8n2q
         weoyZyvn4h45Lb/wJv54im9esopV29SSPVrxBmZi4cy//ArP55vtmuBBOFyDu/C6sDiC
         D3y8ptXCsD6VJqAqHu5NKh9KzJ2ZmNMoMZFW/7CKk12wJbpBxzxhubMcxGE9jJq5fCku
         k/6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=8yeohapqnSC+Fte8Yf1mcbeZsbU2SyEa74s6gdjoDv0=;
        b=Jke8SU6mjhlguf63Mpr1xnlFtoEBsLOUm14WWmDGjid0KdJ8cKx+kIviKE02ZSFXlh
         T2p7c5CSDvzbYk28AkAaG8YlqnX1jKJX/n5zMN2YjtQAx2KYn6b2tEcuAQqTEXMAjs0k
         zZ4LgM7ui11qezaS+frubrg+C0VspxUznJa/wJcnSn2b45LLF/mB+/hHTL3Q2yRlDRCG
         Dy+qAg8dwjTq261FBoMstGcdTh4QcEqJFbQgY9NynLh2i+O3iMuMdb0+Q9jF/bGENZG/
         75/60cUh4oWKca4Eo2n5Lu8Sg5d6M5H5Xl8iMXAlqBIBvRhlDtWrFjQ2j507k7d/4eku
         4ESA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DXy0hgpB;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c13si200081pjg.2.2021.08.07.01.50.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Aug 2021 01:50:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id 2777B60EC0;
	Sat,  7 Aug 2021 08:50:07 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 0EFDE609F1;
	Sat,  7 Aug 2021 08:50:07 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] net: ethernet: stmmac: Do not use unreachable() in
 ipq806x_gmac_probe()
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162832620705.3915.11584546852979312079.git-patchwork-notify@kernel.org>
Date: Sat, 07 Aug 2021 08:50:07 +0000
References: <20210806191339.576318-1-nathan@kernel.org>
In-Reply-To: <20210806191339.576318-1-nathan@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: peppe.cavallaro@st.com, alexandre.torgue@foss.st.com,
 joabreu@synopsys.com, davem@davemloft.net, kuba@kernel.org,
 mcoquelin.stm32@gmail.com, ndesaulniers@google.com, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, samitolvanen@google.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DXy0hgpB;       spf=pass
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

On Fri,  6 Aug 2021 12:13:40 -0700 you wrote:
> When compiling with clang in certain configurations, an objtool warning
> appears:
> 
> drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.o: warning: objtool:
> ipq806x_gmac_probe() falls through to next function phy_modes()
> 
> This happens because the unreachable annotation in the third switch
> statement is not eliminated. The compiler should know that the first
> default case would prevent the second and third from being reached as
> the comment notes but sanitizer options can make it harder for the
> compiler to reason this out.
> 
> [...]

Here is the summary with links:
  - net: ethernet: stmmac: Do not use unreachable() in ipq806x_gmac_probe()
    https://git.kernel.org/netdev/net-next/c/4367355dd909

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162832620705.3915.11584546852979312079.git-patchwork-notify%40kernel.org.
