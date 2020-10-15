Return-Path: <clang-built-linux+bncBCX7HX6VTEARBFGCUD6AKGQE5HY6GHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF7328EFE9
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 12:14:45 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id 14sf1007280lju.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 03:14:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602756885; cv=pass;
        d=google.com; s=arc-20160816;
        b=OPodYeqM4im2/IwrqX0vFg+uSZabD6ftodrZtFd9SF4uTdJUtPI7FayfuLKAhhOlLc
         jp+YM+aYn8O8kRLHLglM26gcvBP7FLJ4/cF7rLtHmb+axROPZWgw4JwjxkwIildeyKaG
         HkoH3XU/xXWVv4MlRjhJGtFE06LJKaWQ13zqGn2vsYdMFYHeuFH7CYfYOslqHT75rfdr
         /U4JvWEAPSvJ2hYTMkjsKRiU7DLqUyMiWiNeUqeBVupGJTYkDpkoUePVtzc2YzVWr9fH
         OleEPHTAZeB6Atr0GWoqk99tcMsVHi6abPV0ce/N/1R/tN4OS51iihpK0WWDKvKcsa+b
         s/Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:references:cc:to
         :subject:from:sender:dkim-signature:dkim-signature;
        bh=798OQOSG5l59k/3L2k/M8Qyq7NJWj2Jt0mK+tfOjZFA=;
        b=Cv5Ut2Al1MHRVfJodbDzez/5YC5nbfcW6BDKJlI5gc7Sdm7/ff6tKw0ZyxN/TrJB4B
         0xcNEL/C5cRFOEiZZ9BNSV1ns5IV6/1NrND/WuWH0tEbDP347iSH1HzSk3g+m8IPleP6
         TDC6Fxa9NQjFwOh1+UeiOs4nqtyKpI10tHHCgCaR5lHIWY0IcRCvQ51XAWd0+aJlbvRS
         Elcn1VsJ2U6ZozO6eJtUJk6VxDzDgT9vQZhiaokucLnmIMzX04Tf1Gx0ie7r4hlIIrGE
         /4LvTj06cfeb1BFgvLlBqq9RYceKUOykPxMMS+rgx0BPflns8YeDzBzljNi3jOXlOOr2
         lNSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ENHSzPB+;
       spf=pass (google.com: domain of asml.silence@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:to:cc:references:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=798OQOSG5l59k/3L2k/M8Qyq7NJWj2Jt0mK+tfOjZFA=;
        b=g5Pxut909jGLTVGrDbKVLgOeeLkR+QBf2oMf0D/phytpFYb1R8vhGemVDcaAW9fZxe
         2l1Bai8yQTfaOlooN44fG0sufGRQFhbwI13Txil6nw0igRqbKac/Vo3Ha+71/pSUoC8p
         E4jhWoNIH6nJaf+dVpDJL7Wh3e/Z1qQX3CrjBdc4eWY+3Q2KZXylddFobwxqWk670u5Y
         ifgKG2I04UNOuRFv4OTUdT6wsHU7o9E9g9xoKBNdCqaBGAljRgHC+g/+YB9a+egq/QqQ
         p+kbgTactYWw0sqbO26y/q8aSKMXjjQNuueRcZjls2akt95za5/h6HkRJh1U0hNVtPqB
         D4gg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=798OQOSG5l59k/3L2k/M8Qyq7NJWj2Jt0mK+tfOjZFA=;
        b=OKopL5+otBkfbVYOEW7l9DxaviAXH3MP1oZTV0qOVteo6J+0gHE+s7W3SxvIvkz4ZB
         yUts1jxKJpnk5zyVV0xOW67qq40n2IneiVEDMs2h1fkQ94eCoJdRGCoS9iEz1Lx4DNF3
         yJGsmV32jl1M7zeu55L9HJ/4TWCdnvwtgPppUbMk0vToQ75zHn5tb1lKWtdh49bdp/wY
         zaKgMa0z5eNfd90jZtb7yhz91fB6pu+z2k7ZI69917U0Q6m4jtU378Vr70RxQ0WtKNMv
         Vj9R0sS7d8YMwDZPq203qJJWfjDaeYTyrHVm48ARepaKJsgrCA3C+/LDejhBj7NMJGOS
         BY8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:cc:references:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=798OQOSG5l59k/3L2k/M8Qyq7NJWj2Jt0mK+tfOjZFA=;
        b=HUS+Yto3y+z1LlkvUgqbp33bm7QzO/fXEb7NsmqUDiCRa3OocmS2E10tvky8cf4mTf
         bT8CrQzK8PGDb6I8C246BnQCz+wp9S/QLgUdoQtnTuGIOu1O6TtcPHjbQ0JuYdV7tWNH
         HdUknKVBBitTsydslAINhJwRPWDqHosFbJXt7/Ob/eH981w+BLz6k8P5iP5KUMCL6Hb7
         qnanul7nFox8ORJ7qxszBPFPTZX0zLN2uSxQQVywK4BRw9zClGSOq0lPS1Naf15VeHMc
         63mjFcz1mOq3jj1wfQXqRTIhQywAvcAtI/qGcr/7Lh9NSRNnu69q/h7W/MYzqY6kdWgJ
         wn7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530H6wZyPKnVco3iTMFL1FW7U98x3Y47w47tYCafR8+ZZqGl72qG
	GiizdulT3h0ZNY3ZU6IpmX0=
X-Google-Smtp-Source: ABdhPJw++NxlK/Hx6SQv1szVIBqZnTRmwyDtASRMP/+FI82OUJW0UBX0aTAnI06Rdjxa1FCgj0jxbw==
X-Received: by 2002:a2e:5016:: with SMTP id e22mr1056637ljb.301.1602756885142;
        Thu, 15 Oct 2020 03:14:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c111:: with SMTP id r17ls1396920lff.0.gmail; Thu, 15 Oct
 2020 03:14:44 -0700 (PDT)
X-Received: by 2002:a19:cc4e:: with SMTP id c75mr892562lfg.364.1602756883964;
        Thu, 15 Oct 2020 03:14:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602756883; cv=none;
        d=google.com; s=arc-20160816;
        b=FuIeAuSiVZAKCOlLAWHOsZb//xnCtNt0/zYfd8nGR+CLJbrNAxw5A4HZdlG2Z7yZMK
         RHHqubotL65xOJLqB2dXRMwr+3mJuqvI78h0ASyJRR3hvjBezIpXXvtaTifIN6ETtrTx
         bR2AcVhY2vBuxXfg8v05Zc4m5rMKYDdZTuyyy72B4t/w1Wt7eAwf0IMTIoVsSyxVNaX1
         Wmq9IDrMu8ZySFXLPqZzX2oC53VtwwBli6zV84a55lnDyRVEF5KLRVX++lVvF1Jpfh5q
         ON7XMvVRcEyZDta4yLfrv3587XV9YlncSbuZcQ4KV3jAzQL9mDv+x2RsMrZZe7+9J6mY
         QpDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:references:cc:to:subject:from
         :dkim-signature;
        bh=vDpTeVUL6ZBBKiaeJL0+InmhAMK6VjE45/S12IvvCVU=;
        b=TKRwNvKgfMpPyAUfGLdWfZm/4y6OMrXLQcuFSLLnIxrXPwR6SWmAYSac/8QLIaqHlo
         BQ0UEXuKoK+sh4XYLu5UiDAkZJzf/V1FLDDQkjMY8ArX7kMbruJ5celUFuXsamqvbguD
         o3KPc9BpdKS+yPA3EBCCJ8drfCnDJtFAXA3S+yy4aYYIYFi7816Jxrp2+VC4bZNn4YJ7
         jWUWPq0swEYpJbh7sqTwRyXXib2B/tn4//yMdijxLQStVwRFSbYztTSRnA2KZAoU4X+1
         XqMMjip31ycVkjde9XJuprk2d+KYiUanQwP8v/AfvyllSJqVZPwZqGVIb2H0lQZXaM3N
         fXnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ENHSzPB+;
       spf=pass (google.com: domain of asml.silence@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id i16si64997ljj.3.2020.10.15.03.14.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 03:14:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of asml.silence@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id d3so2932999wma.4
        for <clang-built-linux@googlegroups.com>; Thu, 15 Oct 2020 03:14:43 -0700 (PDT)
X-Received: by 2002:a05:600c:29ce:: with SMTP id s14mr3112312wmd.47.1602756883168;
        Thu, 15 Oct 2020 03:14:43 -0700 (PDT)
Received: from [192.168.1.125] (host109-152-100-164.range109-152.btcentralplus.com. [109.152.100.164])
        by smtp.gmail.com with ESMTPSA id s2sm3753798wmf.45.2020.10.15.03.14.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 03:14:42 -0700 (PDT)
From: Pavel Begunkov <asml.silence@gmail.com>
Subject: Re: [PATCH 2/2] io_uring: optimise io_fail_links()
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jens Axboe <axboe@kernel.dk>, io-uring@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <cover.1602703669.git.asml.silence@gmail.com>
 <3341227735910a265b494d22645061a6bdcb225d.1602703669.git.asml.silence@gmail.com>
 <20201015085319.GA3683749@ubuntu-m3-large-x86>
Autocrypt: addr=asml.silence@gmail.com; prefer-encrypt=mutual; keydata=
 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 bA==
Message-ID: <7e293894-823c-5b91-1b55-f5941c82d83e@gmail.com>
Date: Thu, 15 Oct 2020 11:11:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20201015085319.GA3683749@ubuntu-m3-large-x86>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: asml.Silence@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ENHSzPB+;       spf=pass
 (google.com: domain of asml.silence@gmail.com designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 15/10/2020 09:53, Nathan Chancellor wrote:
> On Wed, Oct 14, 2020 at 08:44:22PM +0100, Pavel Begunkov wrote:
>> -		io_put_req_deferred(link, 2);
>> +
>> +		/*
>> +		 * It's ok to free under spinlock as they're not linked anymore,
>> +		 * but avoid REQ_F_WORK_INITIALIZED because it may deadlock on
>> +		 * work.fs->lock.
>> +		 */
>> +		if (link->flags | REQ_F_WORK_INITIALIZED)
>> +			io_put_req_deferred(link, 2);
>> +		else
>> +			io_double_put_req(link);
> 
> fs/io_uring.c:1816:19: warning: bitwise or with non-zero value always
> evaluates to true [-Wtautological-bitwise-compare]
>                 if (link->flags | REQ_F_WORK_INITIALIZED)
>                     ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
> 1 warning generated.
> 
> According to the comment, was it intended for that to be a bitwise AND
> then negated to check for the absence of it? If so, wouldn't it be
> clearer to flip the condition so that a negation is not necessary like
> below? I can send a formal patch if my analysis is correct but if not,
> feel free to fix it yourself and add

I have no idea what have happened, but yeah, there should be "&",
though without any additional negation. That's because deferred
version is safer. 

Nathan, thanks for letting know!
Jens, could you please fold in the change below.


diff --git a/fs/io_uring.c b/fs/io_uring.c
index 66c41d53a9d3..2c83c2688ec5 100644
--- a/fs/io_uring.c
+++ b/fs/io_uring.c
@@ -1813,7 +1813,7 @@ static void __io_fail_links(struct io_kiocb *req)
 		 * but avoid REQ_F_WORK_INITIALIZED because it may deadlock on
 		 * work.fs->lock.
 		 */
-		if (link->flags | REQ_F_WORK_INITIALIZED)
+		if (link->flags & REQ_F_WORK_INITIALIZED)
 			io_put_req_deferred(link, 2);
 		else
 			io_double_put_req(link);


-- 
Pavel Begunkov


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7e293894-823c-5b91-1b55-f5941c82d83e%40gmail.com.
