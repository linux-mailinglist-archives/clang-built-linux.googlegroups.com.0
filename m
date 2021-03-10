Return-Path: <clang-built-linux+bncBDR5N7WPRQGRBO65USBAMGQEBRXEUHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE643348FD
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 21:40:28 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id p136sf22886085ybc.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 12:40:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615408827; cv=pass;
        d=google.com; s=arc-20160816;
        b=V5cpNXnkt0imyP6FGt6DVg3mE2quV2MMhMTqjq8i6+ILv8UphL/WOZFkMiv9/4Z3MM
         sTCfvti6TsrF/G1yDyIx+dMnxnhEDQIDOirRevWJXxAr7ntfDsqJBU3CJhKtLlqAIj8J
         PLkuHcMBOaaXu+HQoXIO03Revs347hgr9bBYn+2VJRWLztBGL0l2tlD0scyyc38KCGJL
         Ynzc99TY9NaIyVtcYooQcurzbpKfFNeWtfXN3CNIrccsQYb8UzicsCuvdULeXWXMu9X5
         WKTAuddGQka96t+jXjGIf/ORhaHiyM5XfyzzmGH4JwZ2mj3uqP1gaJaoyDs3oIVqAgYg
         Qj/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=W7SYaE+uXtd/1lRJ8rx07MixwgOyrTscsPh8YrxS9kM=;
        b=bQNO6kgXgx57m7HJ2JHnGqDAmb/SvKR/ysZIxci03AL46R3KquOAuBjbr+Dj96gpRI
         WgnefdZPMtcZHElgT3Lv1aNGIqukbJDzXWkrEqafyvSc0VAexqdk4X1gEMjE+yJE/5lQ
         Veeqi4LldG2bO2G5rxkG28bujw1R00ZdYmjV+OSgMbFsBHK1t4y6WaNw0UHuaxZ9FKqf
         3Fiz9tTV3Zp4U7boE3YLFvMi8C5ZMVGbsg+Hb9VKI0QG0t+uuyydssID7WVjj7ACLnWx
         0kWhhbd5gX4UoV2AICMbVTqe2ykJtJyWbkIoXE57syNhMMn1VxJY833XUkYtQwU9De3+
         mOkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=0RuQSIfe;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W7SYaE+uXtd/1lRJ8rx07MixwgOyrTscsPh8YrxS9kM=;
        b=kmCUzjAQ77E2eBdcbYi1ex8rL8G+dF+JKAYT5/LyBdUsC4DYozHkogQnMREAH/4KC3
         jXgZMoMdyh2iqLRqqcDqjUNMRQfVwZsuLF5vOlwBlm944E+kQet//HkGtstrMcHh69HX
         1FcUZMa2aZs7vweYPav9nn++iThtl/H/o/f7oH5H4/wbe5Pm4P62X9OtHNKaEad6Foa9
         1Y4vkdpgwdArfZRiTDLffuToCK+/kh2KEC9mWf5EjwnmkOlkCHrin00a7uoAidkSzo1M
         /DuJszitXK6E72f3fjt3QkJd06SVdQWEgyBjujUYwbMU6g4NNt6AhBiWVuwFY8/25NqN
         VKkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=W7SYaE+uXtd/1lRJ8rx07MixwgOyrTscsPh8YrxS9kM=;
        b=BuX0CN/BQXqkMaZwQGD/ZJkkH+EbNNjxy8d7Y4+HBaPDz7UUlY1V+H6LiD41na8mj0
         NGcRvjMRI9+9l1UVnPuY+9hqKieon8V0ykDUKxRdQ1rcM8vb7OUBNTjATUIzLmksEDsL
         0bwj32NPyZSStbFuZkOjRofNwJEWeBOZerlLhIoiuhi1/cT9A3nFC/FpMp5cnB/rMRq9
         3bT9nhC2YKYipv/u0k77cgFhOhJcZD6mYvMS0CJ5UhCqZcrCjT2Lr/XWSxJ8R5M6P4+F
         ynSgAe/2vh1ZdgOUOt+GBnQmLxtjwa6qNzB/7ae0qRyltuuCE8a/mKZ7QrbDwTqdLcJ3
         eF0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VdFkUHEX/1+MkhDCrLNEnM1c6WazBiVR/9yX8rnmpyP5mY3wv
	cksjrsYq408T51DZh9usm1U=
X-Google-Smtp-Source: ABdhPJwnGkG9PCHn//po7Wt8dzJXo85zNS/CVqZGN/LPSQLN56UueYPJLsQTvl1oOpftXZOuxQwnbQ==
X-Received: by 2002:a25:dbc6:: with SMTP id g189mr7233254ybf.273.1615408827821;
        Wed, 10 Mar 2021 12:40:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dc49:: with SMTP id y70ls509561ybe.4.gmail; Wed, 10 Mar
 2021 12:40:27 -0800 (PST)
X-Received: by 2002:a25:da0e:: with SMTP id n14mr7063097ybf.356.1615408827255;
        Wed, 10 Mar 2021 12:40:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615408827; cv=none;
        d=google.com; s=arc-20160816;
        b=PxlkCqNOuKTnldty/uvHbtiHPgSIGBEgK7b+V/x2dJtOuL6CL5Y1eoiYmYUUDtIIKR
         6uH5+g6Ov/izeCDtyLbIix3AhZifETNHrpXwXAgEHXszcXnLbe+gGeeH6TaQD6Aq8SXZ
         InqzIyMK5AzViypBGmlAX2P5mWeCQBkhblfx5KZL+41CD7MZrVqFyO4Dx9FUqdHE+upz
         owis22ltgQinH0ZBgZRo+DV5uG6NjeZk3tgjqgvHFZiyJATxJMKvCgDhXM+WIXzaMyTo
         7/AcYtdtqxWcKaYMRKcNqlLTy50qUSN7UU6uio1OJyQOmVI4rNrdO1fvgEr150OsmE/v
         1zZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=DOt2uzG5UdlIpzOf4PwD5PjSE+FFilkpfVBNl0BIvD4=;
        b=QDijF64uxjEcB8R4x+MEnwnku60khb/hJ8TqhLlZAjBcrl7CgAQTz84PQoteGzgUQP
         v670zIeyQ5M5PtOW0ZNTc15YOSnhmLS//6MPVPbtUXBRqfY5OtYDsve1C1VSMXO52AGd
         Ob4KUywpaTP/ms58DQtj3zjSp/V0poZb+5UCG2rwjLpRGQVJuOd8RvmO69D6yNKSJ+/e
         HzJ+uYxk6wnZQCngMA1/AAOUAON0etZ8MKrnoGf4MqURfKGTuYJvsgo5KgA3+Uh2wAIK
         F9AWSsyfrbZ/F82KLs4vbDJnxS602qjd/u3W6mxqt99GpHLhmedIDXvwVJWf1AKGzHmG
         AO8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=0RuQSIfe;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com. [2607:f8b0:4864:20::d2c])
        by gmr-mx.google.com with ESMTPS id l14si75684ybp.4.2021.03.10.12.40.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 12:40:27 -0800 (PST)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::d2c as permitted sender) client-ip=2607:f8b0:4864:20::d2c;
Received: by mail-io1-xd2c.google.com with SMTP id 81so19402853iou.11
        for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 12:40:27 -0800 (PST)
X-Received: by 2002:a05:6638:3809:: with SMTP id i9mr343389jav.24.1615408826452;
        Wed, 10 Mar 2021 12:40:26 -0800 (PST)
Received: from [192.168.1.30] ([65.144.74.34])
        by smtp.gmail.com with ESMTPSA id k14sm203630ilv.41.2021.03.10.12.40.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 12:40:26 -0800 (PST)
Subject: Re: -Walign-mismatch in block/blk-mq.c
To: Nathan Chancellor <nathan@kernel.org>
Cc: linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210310182307.zzcbi5w5jrmveld4@archlinux-ax161>
 <99cf90ea-81c0-e110-4815-dd1f7df36cb4@kernel.dk>
 <20210310203323.35w2q7tlnxe23ukg@Ryzen-9-3900X.localdomain>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <e43dba61-8c74-757d-862d-99d23559cf50@kernel.dk>
Date: Wed, 10 Mar 2021 13:40:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210310203323.35w2q7tlnxe23ukg@Ryzen-9-3900X.localdomain>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=0RuQSIfe;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 3/10/21 1:33 PM, Nathan Chancellor wrote:
> On Wed, Mar 10, 2021 at 01:21:52PM -0700, Jens Axboe wrote:
>> On 3/10/21 11:23 AM, Nathan Chancellor wrote:
>>> Hi Jens,
>>>
>>> There is a new clang warning added in the development branch,
>>> -Walign-mismatch, which shows an instance in block/blk-mq.c:
>>>
>>> block/blk-mq.c:630:39: warning: passing 8-byte aligned argument to
>>> 32-byte aligned parameter 2 of 'smp_call_function_single_async' may
>>> result in an unaligned pointer access [-Walign-mismatch]
>>>                 smp_call_function_single_async(cpu, &rq->csd);
>>>                                                     ^
>>> 1 warning generated.
>>>
>>> There appears to be some history here as I can see that this member was
>>> purposefully unaligned in commit 4ccafe032005 ("block: unalign
>>> call_single_data in struct request"). However, I later see a change in
>>> commit 7c3fb70f0341 ("block: rearrange a few request fields for better
>>> cache layout") that seems somewhat related. Is it possible to get back
>>> the alignment by rearranging the structure again? This seems to be the
>>> only solution for the warning aside from just outright disabling it,
>>> which would be a shame since it seems like it could be useful for
>>> architectures that cannot handle unaligned accesses well, unless I am
>>> missing something obvious :)
>>
>> It should not be hard to ensure that alignment without re-introducing
>> the bloat. Is there some background on why 32-byte alignment is
>> required?
>>
> 
> This alignment requirement was introduced in commit 966a967116e6 ("smp:
> Avoid using two cache lines for struct call_single_data") and it looks
> like there was a thread between you and Peter Zijlstra that has some
> more information on this:
> https://lore.kernel.org/r/a9beb452-7344-9e2d-fc80-094d8f5a0394@kernel.dk/

Ah now I remember - so it's not that it _needs_ to be 32-byte aligned,
it's just a handy way to ensure that it doesn't straddle two cachelines.
In fact, there's no real alignment concern, outside of performance
reasons we don't want it touching two cachelines.

So... what exactly is your concern? Just silencing that warning? Because
there doesn't seem to be an issue with just having it wherever in struct
request.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e43dba61-8c74-757d-862d-99d23559cf50%40kernel.dk.
