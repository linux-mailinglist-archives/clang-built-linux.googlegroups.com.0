Return-Path: <clang-built-linux+bncBCQYFH77QIORBOUYQH6QKGQEX3HIISA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-f187.google.com (mail-oi1-f187.google.com [209.85.167.187])
	by mail.lfdr.de (Postfix) with ESMTPS id 666A32A329B
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Nov 2020 19:13:15 +0100 (CET)
Received: by mail-oi1-f187.google.com with SMTP id l142sf5620420oig.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Nov 2020 10:13:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604340794; cv=pass;
        d=google.com; s=arc-20160816;
        b=hLEIZnwPdPk0czAkIzFkLbvz5aAWpxYsOUq0xDdLP32jlGM7Z4deychjTbY4Emog90
         TSh431YmAAGasmq1IybFzJ5NfrgWivnnF0yYHJoLovPJnk4kqRDII6QekCAU6PPa+XjP
         5eU3KduhxSJW+MUnWvoaptIXQHWRhvfLLJSSuV+r94QZnzJRGohZDPzAInlinG7ox5UN
         Gp7MACsSKguIsm6HHJTq9Gm043C4GzZ2CyDU4CjDJi+5Ten6sGRa6ZqTanXmPL9mmvIT
         4gn8zoC6Mur4q8wlDVBqjBNYJVZW1G4PlaImqs86Pr84BSfejacBs4ymCrFcST2Vd8OP
         22Ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:mime-version:dmarc-filter
         :sender;
        bh=aZwsrD9/IZSJz7G0+9CKwQT1gRIfppEfFVaa5c3vhfU=;
        b=VpT440D2+bd8omWkkPsjoI8+YfZ/pi/Vdd5QN4qWOJNwPRHrQVBv77/ZK10QXvsV7m
         3tEzuqZ1hY3A15QOsERhY29I1rIjrLz203cb7yTpUChwOXeyCYSQszlCOZ7l46bTlMe2
         vBxOiV8lYDw+sw558RgGCl37ldS3cEXAu5yQWLpl/UfEgEDMd9rHcJeHf1KisxHP8NsI
         ZwWzur5//KYnLsw8mY968eG9YrCZ7tETWc636IyuoDh1P+7KD1/3P/+Artrb2MHbCAP5
         ute8PWCJudG3aN83XxfcbtZmncLbtf5ARNU46Hj9Hzysfn78qxFTjxY65KGctXjVxEbi
         7RnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=Ly6yC8eY;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.5 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aZwsrD9/IZSJz7G0+9CKwQT1gRIfppEfFVaa5c3vhfU=;
        b=W3BOuNX1ZxLeu3qiHFRDcQXCtxFbtGcZwLJxn6oHNyuYrilx49ri2dkYo9gtNDkKsw
         3crodkY2fZwGYGL27hMyh53jmvGsU3c159hE7xlT/sf7zeHwf7kievWfMsP9EY0k5Xzx
         0cUuNerOYSrVvopoEL3hj7pflquSHV7zutW1q7MXvfY+stECng7on3Uersm8weIHsEGp
         d8YxDleUV48KHJOxXfaIesHliNSr1SkaGoFmOss8TSW+3KOMnkSKFNht/76GwlU8ijIC
         JARBqYbZWZlOC+mf0UY6AW+kqNfcOVdsrhkWbwzXJeXPq2RxBRHHgDKZsnPyk/BCzjYj
         Q/ag==
X-Gm-Message-State: AOAM5336LZECooPVd53f+qUE1Rmwy5MCZIJWG7+S+HXKuhLLYFt0ghJN
	Vn5dCF8XgzabIkXkGTh8pqE=
X-Google-Smtp-Source: ABdhPJzmoSEkODkbdkS2zw3hKDvYvzPWjPlLfw1+2sVuAKQSv2tF0xqtKrqqO0EO8t9G9e/NVmNvcw==
X-Received: by 2002:a05:6830:150d:: with SMTP id k13mr2907851otp.26.1604340794204;
        Mon, 02 Nov 2020 10:13:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4198:: with SMTP id 24ls3560420oiy.10.gmail; Mon, 02 Nov
 2020 10:13:13 -0800 (PST)
X-Received: by 2002:aca:b588:: with SMTP id e130mr11474771oif.56.1604340793843;
        Mon, 02 Nov 2020 10:13:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604340793; cv=none;
        d=google.com; s=arc-20160816;
        b=GyxRpUu+08WmxuN/tyngbWhRGg86OXplM2sLFOaCSJDDx5n0QfQRHxO2eqQ0Ynd0/5
         21pr9HRTBIvT73bBzz1ftu4MKMi/6rRPUB15jNyz6EphzpqnIpl1J4xEgP7xXuugQlg2
         /dKYUZCSpmL3RcrabQVOAFwHQAjCqQTTn2WkpIgoHUObcaywWrA7P3rqvHTrivwNxeGt
         ViUE6hHkFmJL2YI72JS3mSHCdX70aCltb0UKGb04tCBCzXGBpVz9spC3adM/iAXhSezO
         J9udm12ewT0cUDvtGJ0RRDGyZNvLNMh0opy9hO8HEt9H21PIhk4SLMMOCfiQ4KxBV085
         lRxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter:sender
         :dkim-signature;
        bh=6Kok7NnywWHLw5utXL9oDnF/16NNLDN2ZxzIH6GNbx0=;
        b=Urf00wSz2hMuK8Wdq7eJjPxyjdpd3GcGO4qw2xRQTYDwAtkDtwxSy8xEstN2LNPu+Z
         +jZJeEWHzEKPi30X+nIz325AgoNyQSsX6yygsCUro0tw2giwAUVfErQPRkxWwmp7ggYk
         iy1/07bQYMw+3/Xw9lOVzVmNEynn4HJa3Z9K2Ff1bjYKQSdITRi9bFTjZNJZqp2isvFA
         K+8nRVDl0ffXjel0X/0UvwGThXCihD1WwBLbrG6TPRGX9kanNUqJbXAjf+mILCicicbx
         YdQqKTnc8WaOQw8rBOSavLuRESioKX3hWUALdqF9JwrzBd162n/MVu2wb1qP6n1pk4bw
         QskA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=Ly6yC8eY;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.5 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from z5.mailgun.us (z5.mailgun.us. [104.130.96.5])
        by gmr-mx.google.com with UTF8SMTPS id o22si1461380otk.2.2020.11.02.10.13.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2020 10:13:13 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.5 as permitted sender) client-ip=104.130.96.5;
X-Mailgun-Sending-Ip: 104.130.96.5
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 5fa04c2fb79ce7b2cd6c8bcc (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 02 Nov 2020 18:13:03
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id B8543C433FE; Mon,  2 Nov 2020 18:13:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	MISSING_DATE,MISSING_MID,SPF_FAIL autolearn=no autolearn_force=no
	version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 22BD1C433C6;
	Mon,  2 Nov 2020 18:12:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 22BD1C433C6
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH\ net] rtw88: fix fw dump support detection
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20201026212323.3888550-1-arnd@kernel.org>
References: <20201026212323.3888550-1-arnd@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Yan-Hsuan Chuang <yhchuang@realtek.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Tzu-En Huang <tehuang@realtek.com>, Ping-Ke Shih <pkshih@realtek.com>,
 Chin-Yen Lee <timlee@realtek.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20201102181302.B8543C433FE@smtp.codeaurora.org>
Date: Mon,  2 Nov 2020 18:13:02 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=Ly6yC8eY;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.96.5 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Arnd Bergmann <arnd@kernel.org> wrote:

> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang points out a useless check that was recently added:
> 
> drivers/net/wireless/realtek/rtw88/fw.c:1485:21: warning: address of array 'rtwdev->chip->fw_fifo_addr' will always evaluate to 'true' [-Wpointer-bool-conversion]
>         if (!rtwdev->chip->fw_fifo_addr) {
>             ~~~~~~~~~~~~~~~^~~~~~~~~~~~
> 
> Apparently this was meant to check the contents of the array
> rather than the address, so check it accordingly.
> 
> Fixes: 0fbc2f0f34cc ("rtw88: add dump firmware fifo support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

I'll take Tom's patch as it was first.

Patch set to Superseded.

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20201026212323.3888550-1-arnd@kernel.org/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201102181302.B8543C433FE%40smtp.codeaurora.org.
