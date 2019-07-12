Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ4LUPUQKGQEEMV7UMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 416DD6746A
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 19:39:16 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id o9sf2543358ljg.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 10:39:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562953155; cv=pass;
        d=google.com; s=arc-20160816;
        b=1FnCUmKptI4Dc8zLF7bvj/cojDlfixKuds4IW/fnTxZybAz8c4S47xeTPqn+954THb
         7eV1wnoVbCKN1OvXyNpHiKSL0IxUywFP5Pgdl7rL21ON92Gl4MtueAFL6I6vkJSxjTu6
         e05pxHNvzEV8tXD/3gsjppFmNpC93rKkrzIcFkN0Hjjtp7hTMrG53DLtjxuCZYqUbhK1
         x+24xSZ4XRqitA0LkcIuUv6m3iwrik0JniAMl5feBGy/VI9IBV9zIsmc8vuHug/qnYQu
         1dhefsAnKlYWj42pB3ldCR4qDEXiuzKQ5dptdzSjTCqZ77WXULjcb88/3RHiud5R/JTI
         2qCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=lVDBrzUejb7sJJm5fmoTOq1444phwmvrrWMRD+4eWhc=;
        b=UgGOlLRqrLv2LrY+pEhFV1NfZTnDm5FAbssQWlUbazQzv8FPOeIL1CqY4Ae87JkLe1
         0KVfczLJ6iBRl6sihhPPUhkuQFmL7qdDRFBHq3LNP2TU+/4DF825lvmovUErp9sR/elT
         y8ZCHKguUxDrwR6Dl016NAoQ71Wz2GsteVYQNN9Z3dg8N0bxMMTzR/fNNx7mYJ5ZKwSS
         SL8LE+fIE+hNdjLnmQl0OexzMxtqwcOx/FHPEjNn8YfDoxao5qgS5km7Igro6qPiX2Kb
         /X1MchakI9Llhx4F8Vknrm4kdwRkO8ViCsEYx6JHLwoquBfasVPhGbJcDjSnYfpijROB
         HkmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YDMKme+u;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lVDBrzUejb7sJJm5fmoTOq1444phwmvrrWMRD+4eWhc=;
        b=GowpWVvzv1rjCQzdA1NG5FCbr9hhiqNYnqkBx4NPt9HnnbIHIt5ndLpSFWUZYgx1K+
         s18VsAPxBiRgxa5lGpM1esvGT7AcPTXVuGnwdN5PvVwaRwb2uAkHO0Qh6fp7EQ28PWba
         rgsjNb0xpzDHHiFUgt44z6GzeG0vHnrHn62oHHfdakg9CJapgdSrQPQ9yXB++E3qwxCY
         IEyayVHq6gZzhixl4V3czRe58jz4diHzXd3jBnwTklfn47pshVGKLfkgZKk3x+Xn2wyn
         joxDPZQU+iOEfKyB1CDTB0ILOr/PSlD0n3CV3CqUpBxdCes+RQu8aPBsW8mWCvdoAOuG
         KAiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lVDBrzUejb7sJJm5fmoTOq1444phwmvrrWMRD+4eWhc=;
        b=FPNwmTNoKxPCXP8sqbkxL5z5qXpK90YmYA1S1ZCMzK9sKxic67wVvHChOZyirysYZ5
         jTdFv4brvMHcPefI5hfDkiP6gIfR/zL7USxWaB/9lvkjVdVECMRo1stKjpD12ouTUSr5
         OAxETRLSgxhHj9o0aRW74whlQcbx7XQIX6QgtbAKG0DD4G9jQlisn5iHj31K/616wx9R
         qbCstNVXSdGRefOfTmIodhj9QK1Ey3p+OHAFRinbL2As63RNyorc5gomEKuLfLvTiF0G
         ekUvyVqXLBmpkQ9kcW7hwePY4n0ZE+sHgdRO8ouoOnhWDq99KQJhE2zG+tzGXJXsmeZB
         FB1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lVDBrzUejb7sJJm5fmoTOq1444phwmvrrWMRD+4eWhc=;
        b=gisJLWSRB3q4fNkeBDO+81BIoSCsPG2A/QSPe289Czu5Y1uRiijCOX/LqhBIs0RMTG
         ZoFlv17uujbFSOhTRXzQSLtvtzm99sGqdo8QKWaOrxhHzz3iU/k+qVRYra0sqdozPz+A
         MxmA8sgY4BEkRzFBKbMB24Nx5mG5Lidw0sxZKNiec9QXgyq3vYLBmx5tZp9T7twdxLrn
         j6+9gKEc1JpKb77aN2R6OWR7ytYd8NkLKHC2n0OGqdXYcS3pXl8Cy5+5WOUbWr58/EGl
         XCbiELo7Y/XlPKsGuQ8a+/WcT8xxM4gXPTSU0xuE/jUb7wn2k2FioTCOUS0o7HVxkMrW
         +YdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXfMcSQ3gUr8nUoTrz0IcHGrL14K57fsiSNBHWNcnC9X5zL8K/9
	IPWrFfcaL1L8+Cv85clbGXA=
X-Google-Smtp-Source: APXvYqwklGKQ8UjMzUDYRLR+zlYS5onXzPoDl0aNiLeoDIPufrAZPyR4z+2fXNxy3sK8rUaYiWOIRg==
X-Received: by 2002:a19:5044:: with SMTP id z4mr5195640lfj.80.1562953155807;
        Fri, 12 Jul 2019 10:39:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8198:: with SMTP id e24ls1246962ljg.15.gmail; Fri, 12
 Jul 2019 10:39:15 -0700 (PDT)
X-Received: by 2002:a2e:9857:: with SMTP id e23mr6517024ljj.217.1562953155397;
        Fri, 12 Jul 2019 10:39:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562953155; cv=none;
        d=google.com; s=arc-20160816;
        b=CDN5Z+xthJyCuPupWruyjoH0x+SoVTmn671f2pLckzWjmUaQF4Q5HTsd6RgTbc6SyK
         Svp6dwadJPnfWLxeZrh1qCwamshiOT29cVUxwjBvDJkH9zFRNPi6vtwmuidPcTfMTawW
         aG9WF5KuZKJoxaH6y7TBgSpWdd0HUXPk8ufQB0YJGNBHo4IYBn02n8VddJaKrCZC6wzi
         izROqjJLzJqIsjTlKVq9u63Ik9pQur/XgIerqoBvTQyeWIBn62DLcSqyUMc5OGwStdXr
         5d5CXmksaqUWY/aXEq/ffZqY8KrKvNLvso7/eyT8zWDUAcyRNyH9FNbX6ng9fxPT5go2
         O2yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HVK6msgsGJnoGkWkZSEGcmqkYH7ZezIUmPb0VYKKhC8=;
        b=RntjdRGZh27BCWBzhU+Oy0+r5bPDvhIjmbFd0J2VKDjknGGUuMoK1zta5OH3IeDo+P
         X8hSziPhSlm/Uf2oZBZh5nmI79GdMGJSIcKUvACbmh3kno1e1S1nql2KotWLTNtKEr0z
         pfYdRteZ3t47Luc8zptjYEM3A/UcG2IpF42OSBUE6Xl0ZRSt5HByFS3HKj9r3eBEWYAD
         8Ec05pz+ebzEIQA0qlmjHG8gr0djBWmxoXrMMAmnuquSYLcD1fAvd02Hm5AiKFZPb9XS
         HJH4TakCbwDVcV98+xLNzhTtr/SaE9++7uPJ+9IK3gEAF5z6P21y5pWrQNz6BztUtWp1
         N3bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YDMKme+u;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id b8si310151lfp.3.2019.07.12.10.39.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 10:39:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id v19so9674280wmj.5
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 10:39:15 -0700 (PDT)
X-Received: by 2002:a1c:6a0e:: with SMTP id f14mr11253843wmc.154.1562953154626;
        Fri, 12 Jul 2019 10:39:14 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c3sm9887021wrx.19.2019.07.12.10.39.13
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 12 Jul 2019 10:39:13 -0700 (PDT)
Date: Fri, 12 Jul 2019 10:39:12 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Linus Walleij <linus.walleij@linaro.org>, Vinod Koul <vkoul@kernel.org>,
	linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] dma: ste_dma40: fix unneeded variable warning
Message-ID: <20190712173912.GA127917@archlinux-threadripper>
References: <20190712091357.744515-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190712091357.744515-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YDMKme+u;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jul 12, 2019 at 11:13:30AM +0200, Arnd Bergmann wrote:
> clang-9 points out that there are two variables that depending on the
> configuration may only be used in an ARRAY_SIZE() expression but not
> referenced:
> 
> drivers/dma/ste_dma40.c:145:12: error: variable 'd40_backup_regs' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> static u32 d40_backup_regs[] = {
>            ^
> drivers/dma/ste_dma40.c:214:12: error: variable 'd40_backup_regs_chan' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> static u32 d40_backup_regs_chan[] = {
> 
> Mark these __maybe_unused to shut up the warning.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Might be worth mentioning that this warning will only appear when
CONFIG_PM is unset (they are both used in d40_save_restore_registers).

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190712173912.GA127917%40archlinux-threadripper.
