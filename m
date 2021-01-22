Return-Path: <clang-built-linux+bncBD2NT6VEXYMRBYUYVSAAMGQE6BMAZSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F92D3009E1
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 18:33:24 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id x17sf9900316iov.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 09:33:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611336803; cv=pass;
        d=google.com; s=arc-20160816;
        b=PnTZ8pdE78RxB876o/T3qIYr1d1WdFRM9LhnEGb9zvmo7qfj5hSWNkivKf8ft2m3xj
         F4rM0diU6b1dHseDIlrnnU/xYsVz6fkiKla2H1VU7Z9rZ1FI1lf7dsMM4NC/CeZifU1v
         3YWNcw5WSn22HrTeTrBMp/pDjUNTObS5arE1QaxFsLUSg93jP6pU1K1vTZAdFIQ8+Ba8
         wDRsU6TKxdaSIqlzt47iBxpQkLp5JGV1u6ao4DzOiukNgxPoddvvgIk/EGE9qaSwE3Sz
         q532cQEbdOpqtALyTrXU6sIHdiC+eBNuDGoUWwzafdrckfoFHysLlIJBqBBnehmgyhFp
         DDHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=lp+BBUp5djJ7QSb0yvWzwy623p+SYD30Mt84w/Fr4wY=;
        b=zI0U+4MzfljSrXJEEhnCs7HCbVEjj7F30mrsQxhf2Q4wIrjd394GS5KiaRRJQ8wImP
         kVhAJTnZ6aXz/D1LKR/A2HjSE4AM4kLBbNRF8nx9R0VH6sk6cdQ5K7HmzT4gUcxPhfn9
         cpdXioq1L74WDORKpsRNhMHjdduzohLSIRGbRi8Sev1HPlQvZPUqtRLjdl+DRwQP7epU
         eg1NGX8nZWquoqPEFNMzBdkS7lAvrsqGJnFJpxlifg2y8CZ/I9fQGEZOaaopdUe2Euus
         wEmnTw0NfOWWdsGcj3jvfc4kh5zLgBxY+zXKmP2plMbY1SeK3weESmb7xDjK2CxjFeOi
         QXTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RuJ+Df5l;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lp+BBUp5djJ7QSb0yvWzwy623p+SYD30Mt84w/Fr4wY=;
        b=pvsL0K+OFuJ6T3OI9lKYDbZ+Yb9KI0P3wGc2j8Zugh9EfbY40PMMW9XVr8AAYlr0Kp
         8FbhViZO2K7RCIicpewKKfGDDd3He64RbaVNRGhniuuNpd9F4YDRHsGttAPRI6kuPFQa
         yJgpk//mVTRKsX4XyzoZQMIpgKkuCgAV8+rpqi6fL0BGNyTxRDANasFNWAPKUvs6X84X
         N9x13gX4WF8VyVZzSw6ud03PBqPfizLF8yI6HXO7jtJM0iXJPffqr/Rx3NA85hD06Dra
         ShvK1pyOJyG9EjNxajwR13WNHBhHGh6mqKCSmco5AXdLeE9KJ7QrQQwWFbKusdIjukM1
         nBDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lp+BBUp5djJ7QSb0yvWzwy623p+SYD30Mt84w/Fr4wY=;
        b=tkUMheo39cf6E15cTsJ39J0Z5pJkZVxjgclcNrs9ngPYu5RtVEvLFXzNfEAL5E85OM
         C7hBVAd2jYDT3m0G1HeV/xT73wwGCkqabod+VKgxwdr0D4AlaMC1jRpl5VomgVYy5cD5
         YvKW2NhUl6Bo+aLVJLPpvS655B3z8NV7gMA0WhlYzoVtH0jnF23zVRPgTQlBKWVGh5Kq
         LkiE96NKKFCVioDgihP5/bleBTRuUQNtVNpAW/V9Tn3xf+1tXaHFJXuZetoDCRzo+Cny
         OeML8IsSIedm2BPumKR/Y0FYBkLvhDz83rjMHJOnl/EpOB3/Ce+wkaCnLQc6o5s5nwdo
         CLKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ney8lARdpgO/+GHw7CumizL6bMoS6uAIG6p26qLs97sglFA1j
	04xTbzsodZ13zQ8KjWhunmA=
X-Google-Smtp-Source: ABdhPJzvmdSoYRAZMuJgdb9V8MQB0aYBgG3nAnyWQbyoz+anHCCyjJHy5F12ze9l/IvSTdWbUaFMTQ==
X-Received: by 2002:a05:6e02:194e:: with SMTP id x14mr671988ilu.218.1611336803053;
        Fri, 22 Jan 2021 09:33:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:97d8:: with SMTP id k24ls915735ios.6.gmail; Fri, 22 Jan
 2021 09:33:22 -0800 (PST)
X-Received: by 2002:a6b:7e02:: with SMTP id i2mr4242373iom.185.1611336802601;
        Fri, 22 Jan 2021 09:33:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611336802; cv=none;
        d=google.com; s=arc-20160816;
        b=i0ScZsqjSEtYniSraBlm7A6jWrf2DplmNj0VcevfwCRGVmKTDO8iGEgAGREA55EYD5
         WXGez1iOFfVgHr4d/gcG0EgccUT19d/LtdSuZUrzjxGH8PrvtfyiRvqnjarhMAz3DQmi
         2flgfxFILKn6XWEmA2xQovMipiGtHuzG0B5SYvdueoRLV0+1i93jCczYrvYu6cpWRfw4
         /HR4dHbdCI0wNyZF5iUMM4LbHtNEkEP03XdGPsF5khU+jq/g/oSar0cqL27fh3J6PMeG
         EY2nwthsL7Z4YNBdo0T8VrrhP5yDLkC87jUZ4Nz8MwAeYVrQBNW/bhIW+ojBTyI7Yo3z
         vO0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZN5j6KfK8wmk+g4KqlPHGIbHqsqIB/EEbLwT9Van5qc=;
        b=HsMtXKdlhZM/TtB3hzPZk+noCgiyiIZN12v9THP78/vyzkFKznjSMHVCJfI5qGf6sT
         zydQJlBHC4XFRV8YjxzxbKVfLoXdGnZTPSY/bLorq8DfmAhOTiXYnh73aO8BC3ovj5G1
         Opg5c+DwP/JooH/Y2QCKs00VEhl5Qwp4VTu7yA1Zk9z/Pu+cV/nkh45i6TX2XQUqXvkg
         miAXp6pFDZPyXSLGcvaAC4B9PrfgLZyjCRVd1Jx4SC+V1LMLeA+fioZ7ozpDob2ABNjh
         TxVllFEz+F26NPA58MvaTWVKNgCwNcPuyo7RV4EHcB5ceb141xwneBA60V364ZjhSX39
         JFyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RuJ+Df5l;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y6si96998ill.1.2021.01.22.09.33.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jan 2021 09:33:22 -0800 (PST)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7E19B23A79;
	Fri, 22 Jan 2021 17:33:21 +0000 (UTC)
Date: Fri, 22 Jan 2021 09:33:20 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
Cc: roopa@nvidia.com, nikolay@nvidia.com, davem@davemloft.net,
 natechancellor@gmail.com, ndesaulniers@google.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] bridge: Use PTR_ERR_OR_ZERO instead if(IS_ERR(...)) +
 PTR_ERR
Message-ID: <20210122093320.6fbb5f11@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <1611307933-115887-1-git-send-email-abaci-bugfix@linux.alibaba.com>
References: <1611307933-115887-1-git-send-email-abaci-bugfix@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=RuJ+Df5l;       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 22 Jan 2021 17:32:13 +0800 Jiapeng Zhong wrote:
> coccicheck suggested using PTR_ERR_OR_ZERO() and looking at the code.
> 
> Fix the following coccicheck warnings:
> 
> ./net/bridge/br_multicast.c:1295:7-13: WARNING: PTR_ERR_OR_ZERO can be
> used.
> 
> Reported-by: Abaci <abaci@linux.alibaba.com>
> Signed-off-by: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>

You need to CC netdev

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210122093320.6fbb5f11%40kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com.
