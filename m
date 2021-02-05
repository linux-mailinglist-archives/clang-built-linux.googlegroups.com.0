Return-Path: <clang-built-linux+bncBAABBOXJ6KAAMGQELWEOM2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2109B31030A
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 04:00:12 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id d26sf3843792qve.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 19:00:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612494010; cv=pass;
        d=google.com; s=arc-20160816;
        b=lpC0D8wI9a8DuWKW3tb6g7/i9SErwTO+Tl+mFoTxWoceD4Gc3w8QlHTjj/X86q2292
         R+miz24iZKNT8xxAAKJVKaOlWbhgeDU8PJ5gAf9+X3Y6fmZOFKlozLIScjvlIYSnzF28
         koZ7D7ahPSWiXkVBSw8xXHu1fNzb4vS4QX9H1i4N8Pe07wFBMwreTN2ZUJnAPqOVMkqa
         ohaZax0NmdDEHW2SYC58cedW4vIu20sSsXwd3FRxGaYT+DtPwKZc2qIHvPNZPRgkZmV4
         0x5f6Lee+QmnVAunOsDuhk3d/y1zUus7Y9dXadsqUKaKa+0GV7Nva3obQmbXVdX7coGQ
         qwVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:in-reply-to:references:date
         :message-id:from:subject:mime-version:sender:dkim-signature;
        bh=D70c+po4F05/sxCNeaOLzSYrlBYob2bd1fyoGiGvmuw=;
        b=okZdvU/p9p9dZUizR6o1KkV0NYxj4GVc9htD+ir0tJKEcbRENQCfgk5YvOrE/YWfVy
         8S4uPi8Q1EsTfSPOS+htZkNRLEtny1nhTJqEN0tP3JJ/kAFmKI/wlKd0AEkcgYBTHi9l
         zfZ1hV9PabBlgxCCZNRQTGJqA2J/zj35J2huz3MQ+AJD4i7sCkKBpiZ5q2DbKmvFdS1s
         S7aEehJaie5sZjzQrBoITfgwoxC028bQFL9g1bKjK1boxE3jhW6wDIKlfm2owpsYdfpo
         z+vtCu/vV7y5eO/iEGdIntIVx42Bm4SHx7CP9iWCi6+P1a8L1pk6GyvLcW9njOLc2h/l
         tA/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MkOBjCGo;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:message-id:date:references
         :in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D70c+po4F05/sxCNeaOLzSYrlBYob2bd1fyoGiGvmuw=;
        b=ivGyFkk+2GxHPtM9MnHRF3bNts+fvShY2vBD2vidvixGGUcMKwIgx/deJDS5wMi7M4
         4arLQJL1G4PbC+Ik2UpGWIw0LTxYAxfSyGQPyZM++nShsGyKaD1Ks5QK3MxkLXpNAnQu
         Hx8uQ67txmw8InO6FNCTezJa2QfMPF/WvL1c+yTZLdprqQhXyHlMzLRW8fdlLi24D6Rt
         /oO8auQgOKkEx6Otv1yRt58Eq6HlBW25NSllNP8MTQQ9uUhP+65OXoillrAMDtOHH903
         ODe174ODi7kRm/aNM1dgQajUpLrJ1vzfu1SKtTxefgwF8XA7jMZq8y6GpaJnsdg3t5E9
         4zHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:message-id:date
         :references:in-reply-to:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D70c+po4F05/sxCNeaOLzSYrlBYob2bd1fyoGiGvmuw=;
        b=SCGafakFxr0LTlVG3VmKa1pZkzaZi/d+m9Tm+gFfc0MeRaV7UXM4ixQtQ2man8KY5p
         M9AoDfX7SrlDLUIeshD9pLtMIlBbc4+/xDgVFu4hVD7Kht1QatDLQMHRVBNgj4A5L5Q5
         fk4jceDdyDUexRCQSlgpgGvqbfNSI9DabCTRu89mfNu4d5Vrbuh4b/EK+n8LNH2kJEzY
         W8+zjXnKJyva/wjllrtZ5ZmYJrAz3eNBThUr953TgOHlBnZbWiDy8RyOfJAWnsYoNaEA
         eCwOm3A32p72ZaqRQgrKsPgN5Y+U7hdP/UY3S1VcLnfQcyjt1nnMpf1udWc0LdeDTx7K
         NVQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53251G5QxdtvuFjuXbeBcT32xlzumQmlWPVyf+0c+3sb8oXZP3kU
	sDf7Cx7EwXxT1ynI+CE6P4s=
X-Google-Smtp-Source: ABdhPJwihLo9887/n5mFIv2BwOEfqG74fRyz74Y7X2zf/rccc2sQamvHy/8yuCzukUSBz7f6WjY3dQ==
X-Received: by 2002:a05:620a:13ae:: with SMTP id m14mr2343212qki.35.1612494010375;
        Thu, 04 Feb 2021 19:00:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:e88:: with SMTP id 130ls4143210qko.0.gmail; Thu, 04 Feb
 2021 19:00:10 -0800 (PST)
X-Received: by 2002:a05:620a:49:: with SMTP id t9mr2520878qkt.231.1612494010082;
        Thu, 04 Feb 2021 19:00:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612494010; cv=none;
        d=google.com; s=arc-20160816;
        b=UX4cw+dtE+VIFtDz5EaTjVJNfOfhhdd6c+iNk9vTDbP1UhmrRBHwLNQn195g+iEcmi
         6yUvkfOlQ4DmgTHRVuLAkk4p/ZJBEMIe9Qywv/tsaYqQa7mo2tG2mF3090mtWugGPH5h
         SPMiW3eONZZis3F/1xI2Rod5nlB72W/KOVK63ge5QHRIRLI4z8Q5BZQKCRxVVgtQdkZM
         AtqiJ2FZn75nvHoXq6qz2TrQ8fLTeiowFUsgg+K8l9jssN5NajsidJ4zu3/8G3mVNxgP
         JVdVfURH+wEoQT3qvM72LcBVGKB83Yuzlnbrpq3br/18Bu25UbCJ5kH6GaQQA1/DOlHn
         Z7RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:in-reply-to:references:date:message-id:from:subject
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=xs9E0CPcHNbHhCFPU8ne89A13XbEW4K/eJTZuJoLy6U=;
        b=IYszbQcSqndrnZLbNf00zGiW2K6uuPgDaSzgVQiRy8ljw2thxdbcksKQObGaQzZ44s
         m+BZYto/fOepeqJgoh5aNiHKjivtoBSqjIva2WYhK7eke04DzZWCS60N0NHtpYtE9WZI
         RNvVo/Gq+WjStSpBH7Ke6ytvkIW8WtQW/vQ1VzfhKUVJQ6WA7EPcPKdtGlBC1tEXE58Y
         uhwam7LkF+2yhuMpWa2cyY8YYrYnzjQlVndPzkV19XsIw9MyN7VkCibONX4J+gLnJ9WA
         wTV/pFnrz1Dfqmjg5/ACIfryVV0IBv/8Wgci646n+IFxa5XlQbtO0QkrEYcyygWNskrC
         2rpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MkOBjCGo;
       spf=pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e14si136201qtx.4.2021.02.04.19.00.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 19:00:10 -0800 (PST)
Received-SPF: pass (google.com: domain of patchwork-bot+netdevbpf@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id 7DA3664FBA;
	Fri,  5 Feb 2021 03:00:08 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 624D3609F3;
	Fri,  5 Feb 2021 03:00:08 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] net: hns3: avoid -Wpointer-bool-conversion warning
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161249400839.18283.1348642498392879785.git-patchwork-notify@kernel.org>
Date: Fri, 05 Feb 2021 03:00:08 +0000
References: <20210204153813.1520736-1-arnd@kernel.org>
In-Reply-To: <20210204153813.1520736-1-arnd@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: yisen.zhuang@huawei.com, salil.mehta@huawei.com, davem@davemloft.net,
 kuba@kernel.org, nathan@kernel.org, ndesaulniers@google.com,
 huangguangbin2@huawei.com, tanhuazhong@huawei.com, arnd@arndb.de,
 moyufeng@huawei.com, shenjian15@huawei.com, liuyonglong@huawei.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
X-Original-Sender: patchwork-bot+netdevbpf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=MkOBjCGo;       spf=pass
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

On Thu,  4 Feb 2021 16:38:06 +0100 you wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang points out a redundant sanity check:
> 
> drivers/net/ethernet/hisilicon/hns3/hns3_debugfs.c:497:28: error: address of array 'filp->f_path.dentry->d_iname' will always evaluate to 'true' [-Werror,-Wpointer-bool-conversion]
> 
> This can never fail, so just remove the check.
> 
> [...]

Here is the summary with links:
  - net: hns3: avoid -Wpointer-bool-conversion warning
    https://git.kernel.org/netdev/net-next/c/8f8a42ff003a

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161249400839.18283.1348642498392879785.git-patchwork-notify%40kernel.org.
