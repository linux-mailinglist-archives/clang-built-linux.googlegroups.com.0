Return-Path: <clang-built-linux+bncBAABBQONQOAAMGQEY6CGVVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFCB2F6FB2
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 01:50:10 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id e4sf4419134pfc.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 16:50:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610671809; cv=pass;
        d=google.com; s=arc-20160816;
        b=VqhEJhVRjg4vvBC/mEATp4+2W0NmPTs2X7KFgevVDik+TR3HTdqlmbIE28BNX3pI+y
         NXDIh0DqWKKih5R0Fk/AP8uRPO+OS0dIFoXP/BogxYir0ZUBjGlskkuOKb3BNCTo2J3U
         bcd2QQL49LHXfJYqEGIHz8yAzh+XMHw8yQ3kN6IXdDGRaiwfe/OttDWEO0LcK1/0dlPB
         6upzeooP95IfO19zBWLf8Ihmu6Ncp7MT8cYKF76vy15igD8r4xLaUq1zpoubo88tZVa6
         xeTHAn7wd9GgyuDKOT5Quw1h7tD9408nbWj74vbnEns3nv4Z4Ut0q4JrrAxmZCMsTFZU
         3SxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=ABczao8zDa+i5HHHtI/37Z6wOE3UorvaV1GMkXvK0Lk=;
        b=dKYnZ5zVs/Is/IswtJOzaG9OWZmYd33PmR0ZR6FXG1HJq5Eqdbar8MIzaYCEI0G33r
         PuttZJuYUL/ZrBpgd/AB6EEHsoJ8d0UwuifqnGsjywMnIk9hdCOylrET0yTEGB9f6xvq
         MAXAKB3IyXhJMBVNMdP/+CoZiB5/wwCr88hfzh1T71WEreah0hFphBKTcvpoQCbTkYle
         ax6cq1el3e3encWTrNoOX6Bv4CV8deBVE/lGFsIuqlpAO+ZjFIrq8CpJril9HkMEifmb
         WXkQBwV5XuxE1PN7K004BroUvejRQ0AkPQpH1MY9uBH5i+M5egI0AvWAivNfe0/Be1/o
         8ZjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Q6NSqrda;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ABczao8zDa+i5HHHtI/37Z6wOE3UorvaV1GMkXvK0Lk=;
        b=jxspghlTKGpGJApbnqrb7Qp5ui7y1Og0DK0wHzdqp11+p4CUR4Sp98geEC4ghokjng
         m9QeTDOeE/slJ9pMsX9Oh2RG827sOfQ0id6KWG+W/I5Gdoj8MyIdZcXT1l6hQNCR9nls
         wa27SS71pN8ZXflEUldGi/ILguagZzgHiGdvckIb6Vm0WvdT4ssph5Punr1uxIvaLh8I
         flSpvEgoNJdJdC/72OaE24HjVhhAcfxFcTXFYaobOYq1CMOoWpznrzKB+cnJ+E38NMgk
         XjrRso3k01Cgb7BQC4pHJv/TsfljdXpdWp1PuPpw+b+jNQJnDTI4+4677770qxXx8ABE
         w/Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ABczao8zDa+i5HHHtI/37Z6wOE3UorvaV1GMkXvK0Lk=;
        b=J76tMiY8VAmYdxIvlPRtQ05/DffXWv6hFaBdX7TGX2lyA+DJMuE87IBxwjXZN8ZZr5
         evZOC40HL7m2DQMgL+D3IK/pRmKafAz6368+RkzHWG/G5VJxpKjYwUMIFzjXFNK6H8js
         mlLO2KN96xEMS2Fr1EFkmgg3l55X/7hdJ0xr6vrSwF5hJccJGryGispy0AkxgcgjJTbn
         len/ByMd3a5tn0UkBeLddvOaGoIcCYFsN39Xarv9b9thc8e0/qYv7xBqdUohqf2NpTUn
         NZx7UqgBa64sG54JG8Wi3DjvavU+oCtues3Lx8klk7S2hdXdsC2DQ1h/1Xio8zeyi4Pa
         d58Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HE5fTGgUZF85bb0F4KzUv8c2LPF7X35UFLaSuyhL0LtKOZy71
	dG9RA3/Xo7Havs/YMGU2ukE=
X-Google-Smtp-Source: ABdhPJy5UMcudg1+S+18sd3Vx+5owls4dsxzW1RW/OPr0bmK95XCNmnO/fAhFU92Crc1dGgovU+bdg==
X-Received: by 2002:a62:fc4a:0:b029:19e:3b99:d584 with SMTP id e71-20020a62fc4a0000b029019e3b99d584mr9931735pfh.59.1610671809542;
        Thu, 14 Jan 2021 16:50:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d149:: with SMTP id c9ls2839438pgj.1.gmail; Thu, 14 Jan
 2021 16:50:09 -0800 (PST)
X-Received: by 2002:a65:648c:: with SMTP id e12mr10159836pgv.123.1610671808836;
        Thu, 14 Jan 2021 16:50:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610671808; cv=none;
        d=google.com; s=arc-20160816;
        b=CK5NzJhHOKoaNsi81YVBdKV7GBJ4sDF15jNJm5eh3gQW+0EwrXadtDQ2T99XMgvFZH
         y2k1iWNc/H5GNylF3zppnV1cfnZBHxVCWlF14BjsvDZ+MK1ZnZUzu9MAuvqMSomyMkSU
         kFp9YcLQjUgwFAauPim1FQNpwXt2eTxo9oVTvZCvLkV8eqQS1Lwz241OW/F0ni0TJjLQ
         BdRZdSsZbkVglDcVypU4831gYjIPwgSX9DhUi5+OP3weabM5bYGc1xera5vlC7lzN4bA
         ILLUdZTDUn+MAVIMPsAUohd1XR57Grxm66P1D+5UTvp2SbNngGDJeU1dLotDWpqR9FGi
         DU0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=fAxgrLBgU0/hCblskpivoqwIJXhKMPIn004DUGw1x68=;
        b=Yif98mZfGQ3ek5r8yz126Jsfxxi8yK3idcIxG3bj+q4fbBSwImTFd8w9jOqyvL4kcr
         eNldK7C2pLuaPZx7wGJ/jfviJC/+KE77X7zvdMtfrWc64o5Uk7wQ3lpeKxBhePN3s7gj
         m8xN/sKxLrIreaJAUYOP+HH68yJuxUF/g96g1LhGZUf3WX+yFI4AI+Ab2Z/SZNL+0XiO
         3T4lVFTsxq2lG72TFg1wooZSzuGH/GTrokyRIjyCg507j/ec20bcCY2WlQFKUe77P/+U
         JfntkRwlPXDt8ZNArQHZRY1Og+siNrRonAipDy3Iu4QbgXT5Q4pQw1F4cn5Tknpv5n/S
         326w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Q6NSqrda;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h11si865900pjv.3.2021.01.14.16.50.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 16:50:08 -0800 (PST)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id 8412C23AAA;
	Fri, 15 Jan 2021 00:50:08 +0000 (UTC)
Received: from pdx-korg-docbuild-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-1.ci.codeaurora.org (Postfix) with ESMTP id 76AEB60156;
	Fri, 15 Jan 2021 00:50:08 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH net-next] net: marvell: prestera: fix uninitialized vid in
 prestera_port_vlans_add
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161067180848.3913.16168009401254422093.git-patchwork-notify@kernel.org>
Date: Fri, 15 Jan 2021 00:50:08 +0000
References: <20210114083556.2274440-1-olteanv@gmail.com>
In-Reply-To: <20210114083556.2274440-1-olteanv@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org,
 f.fainelli@gmail.com, kurt@linutronix.de, vkochan@marvell.com,
 tchornyi@marvell.com, idosch@nvidia.com, clang-built-linux@googlegroups.com,
 linux-mm@kvack.org, kbuild-all@lists.01.org
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Q6NSqrda;       spf=pass
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

On Thu, 14 Jan 2021 10:35:56 +0200 you wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> prestera_bridge_port_vlan_add should have been called with vlan->vid,
> however this was masked by the presence of the local vid variable and I
> did not notice the build warning.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Fixes: b7a9e0da2d1c ("net: switchdev: remove vid_begin -> vid_end range from VLAN objects")
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> [...]

Here is the summary with links:
  - [net-next] net: marvell: prestera: fix uninitialized vid in prestera_port_vlans_add
    https://git.kernel.org/netdev/net-next/c/c612fe780803

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161067180848.3913.16168009401254422093.git-patchwork-notify%40kernel.org.
