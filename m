Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHEBXDUQKGQEDT4ZG3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB9F6AD25
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 18:51:40 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id c12sf4706251ljj.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 09:51:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563295900; cv=pass;
        d=google.com; s=arc-20160816;
        b=KggE5XqLIfkmwQBZHcVghz7RYBL7y/QxgvW4kEJHgeI6nGRNEYHJI8okre0/ml//ME
         KQ/hA4LyOuwvsIdSLQlPQ1TYbisxxf20CQfhuw1UvEgIOLAEHYzddWrV0NU39XN8//i1
         U43eAu/iJeiFqsNelV1FQETUAq0SNCSA+CRGkr7MkqSDvixK019wEMGQ/zvJ4RF1R6jj
         NPm8E5dGQKz0ueOFl27/QPC86HgGaKMsqTNuwXUfhOtybQyFtPZOuTZxRgSgQ8mFdp/1
         2g4epd5/rQVkaeH9h+2keR7f0MvhRzYUTnW6mxlQ3S/BAd0l+MKHdvOsnMEI/BAyFekR
         wWdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=9WS0nMnk/rXj2aMZC3wl71SHP6BjxDz1TRpSr9pGQNI=;
        b=0QMuah+fuAHXNxkku1DaylDHRXxbTMjS/R4AQr2u405QJEGDwfORsDRV+S3U54yJJK
         vbrTPIjBfgW0NqojOYNk9u5jAGfk3TLrJLTrIOJPLMMQ6EmWAjIf3Us4tZtoOY9Q6Nvw
         06tj3mpTSQOTmjU8dTiOX06ARjHkFCFP1ngmziEOULT2SQzvKub2oZUoE4OFno2KFnpr
         fyZilv9cHX5+3YeEAe/lwKW0j5M195NPeYJn/KzfHSvQOq97FPpSrNfTMMWCAxCU1WhO
         A5mU7pczvjZJb+QfJPFEUpmf79KdsStJCkckHwDHRpDP88oGvg37CVEuhEehYoC8gPyC
         qCeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q38h3o5Z;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9WS0nMnk/rXj2aMZC3wl71SHP6BjxDz1TRpSr9pGQNI=;
        b=osT46lBb8gGWAXU4DNRHA0C2HF4cOwjjhWUo1SGUTQTa0N4IxnjteHGkpLXH4YzugF
         kP6UKhM2rkcXGQs4nm9PyUshsSnGygSiyDTBE9Zwx/DahkrPdaObXSqhzE6TFF3ImU9G
         1orTPhEW9pYi6NZn3oktM0xWA2MZCV/NpKucLApXs+uhAIJnxSzwdelf0lF74Wz7CXj3
         8vc2QW9IpqIe99CCw+KtbXeTN1bu0oLB/DHqOTMWDufOfVXMKXFfQvts5WfeDDoRTO4M
         gA7ffSc+FIe+ptkUQCjw7GwuRGUe5focUP0eZakPgjy5oAQVQvlfcTo+SckSsQ6pnSvp
         gbDA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9WS0nMnk/rXj2aMZC3wl71SHP6BjxDz1TRpSr9pGQNI=;
        b=Tq1gE+y+K4mB7NDTiAYRJXQSeMmWR7zG0UHHn2V60IP46lVqiFN81wt1V6s2goyjm7
         Ex2p0IlmlEsNaH+MCs0MXDkuxr4LQMPnCDodcRci3BygbMrimPvCPJyFy2lZRa+OfQ2V
         tQoMr8X4Z8sefL0VJu/14atDWYtxMET/kXYfm0ggt6bErp47ljkqcaVAPHUcjX37wxR5
         VWTzuz1trEpkxSKxaHIZl+HnKn8OrY59/t+yuCqZSbvEnwhXh2AT7Y0C/agvTdEq4cAA
         U1+e5Wxv8xUM1RYpe6Ej38shF3rejuxijTdw7e90xJGs6VH+l1l3x/qI9U5ASGxCcrbd
         dA3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9WS0nMnk/rXj2aMZC3wl71SHP6BjxDz1TRpSr9pGQNI=;
        b=tveH80imlEhwGoqbJ4VF9aGYKTzsf8I93PITVymgKjDJcp1HMhMzExUDj/Rk8rqKoB
         CbGuqvhXS+Lxm5Jy9kvTiSRmEAwe90PnXZHX4LpiAWrs8WN9gGHwvrcV5QI3mHmXpJKW
         Hiz52dS4/cpkwLIzE/mcYiR7WBZNaoCDY/ed/wK85ca2VQHCLYK+KFualvLvI0dMPTH0
         XzcHT2bgvczgMCefU8AkCc9GKiWdPQb2wSzSlmKGyuZoTGGQ/hS1dMk17nIS0sTGbnXA
         hYrL0RSTjLyrCqvQqvQTMOCtSkYSAKkj1krCsit3YTcgZo9lT2xXL6LIo6uQ9l5RmcT6
         2Wow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVdC2CLudNDKdqOIlD0nZCzRfVEGRinv9ESTAEY7/PDxIpDx5Cu
	EULcZTTjxFx3nJbVal8gY34=
X-Google-Smtp-Source: APXvYqxp/AegKVmEHkgmrtGjZgaMYk7NZL+Oez3nYEBhuyQh8E+QQeysMS6u67ucAWcyOftKE42hMg==
X-Received: by 2002:ac2:5442:: with SMTP id d2mr15839511lfn.70.1563295900248;
        Tue, 16 Jul 2019 09:51:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9714:: with SMTP id r20ls2473109lji.6.gmail; Tue, 16 Jul
 2019 09:51:39 -0700 (PDT)
X-Received: by 2002:a2e:298a:: with SMTP id p10mr17749431ljp.74.1563295899804;
        Tue, 16 Jul 2019 09:51:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563295899; cv=none;
        d=google.com; s=arc-20160816;
        b=hiYK1F55QQGwAwYEzCFWniwjZCIPOCIv3CU6Hbyfbwuor7Z0QCTg6IIL18ZGBtF9Gk
         fC8ryNHidLLphM4BEgXvv3diN6u+qrUjQ+5rx0FCgDm50IwPWGe/EsWJFl/cRMp5rNh+
         x4omtY+EC0yoLv4c4fZFPfUUg6l8fu8mTAyFEmnYQ1mzZ8lnBF/EFrfNImVieQlQs3Rr
         QM+tQZc07nQmNy231RkCyntMouH57+cVdCWq4LEiEyDLV8BJviaYVpxY2zSXMPYZu2aF
         522FsFNENGVx4u99y7MmtREJi8AuNUfaKgsontP3TChsnRi2rMZGtWGxRBUw13tpNxrh
         3aug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1Hy49on9pwwSGHNWYVhJzWErO9W6VcZ9NlKNWOV3BWc=;
        b=U+RAs/ZEu3H9fJXS8CkqeJBfjTsOgFv1RWyqDuHFujDKtYxqVZoDZ/mwYuRzSBh7TV
         UMwg0gNs8RdsUq3dnyTtld1PnXAzE2C7cwWpz8Uc7DHanusTMNMAC98N9lNYHEans6g8
         05RslRu9gyXd+83SkbvXSrV8mCXIqnsTcA0/CArEir9v4evk9ZnZnf3geRsUpiahGZm8
         rSJzUziy0Zh62uYy9Be4Bu5HViswXKc795uAb+/L0Gds3S5i5YCm7V93Rgu+DIR3Fj2B
         GqwuIHrfrNSd9y1ocqnVEjhWmBvKe/AIavvEYxOfxxaiuLyfOJTWWdveIZzjAx+t+OWB
         sL/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q38h3o5Z;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id v29si1204501lfq.2.2019.07.16.09.51.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 09:51:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id x1so6727059wrr.9
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jul 2019 09:51:39 -0700 (PDT)
X-Received: by 2002:adf:da4d:: with SMTP id r13mr3792996wrl.281.1563295898960;
        Tue, 16 Jul 2019 09:51:38 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id n9sm38090291wrp.54.2019.07.16.09.51.38
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 16 Jul 2019 09:51:38 -0700 (PDT)
Date: Tue, 16 Jul 2019 09:51:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Qian Cai <cai@lca.pw>
Cc: davem@davemloft.net, willemb@google.com, joe@perches.com,
	clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH net v2] skbuff: fix compilation warnings in skb_dump()
Message-ID: <20190716165136.GC37903@archlinux-threadripper>
References: <1563291785-6545-1-git-send-email-cai@lca.pw>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1563291785-6545-1-git-send-email-cai@lca.pw>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=q38h3o5Z;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jul 16, 2019 at 11:43:05AM -0400, Qian Cai wrote:
> The commit 6413139dfc64 ("skbuff: increase verbosity when dumping skb
> data") introduced a few compilation warnings.
> 
> net/core/skbuff.c:766:32: warning: format specifies type 'unsigned
> short' but the argument has type 'unsigned int' [-Wformat]
>                        level, sk->sk_family, sk->sk_type,
> sk->sk_protocol);
>                                              ^~~~~~~~~~~
> net/core/skbuff.c:766:45: warning: format specifies type 'unsigned
> short' but the argument has type 'unsigned int' [-Wformat]
>                        level, sk->sk_family, sk->sk_type,
> sk->sk_protocol);
> ^~~~~~~~~~~~~~~
> 
> Fix them by using the proper types.
> 
> Fixes: 6413139dfc64 ("skbuff: increase verbosity when dumping skb data")
> Signed-off-by: Qian Cai <cai@lca.pw>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190716165136.GC37903%40archlinux-threadripper.
