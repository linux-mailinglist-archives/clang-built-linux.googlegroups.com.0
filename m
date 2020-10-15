Return-Path: <clang-built-linux+bncBDR5N7WPRQGRB6UTUH6AKGQEOG5KIOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8DA28F2EB
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 15:09:15 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id d9sf914356vsl.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 06:09:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602767354; cv=pass;
        d=google.com; s=arc-20160816;
        b=fQg3we8JtultEgyzL5Hu8N28Ob07F9O8DZOfoGBe2BQZbRdeT2j+kPWhpJhx63hJCQ
         BN96I7S6Qyi82nO7acOi48iETm8VsdQhofopBMj1bomlPa1/a/rOhZrELTO/UPDS2P3S
         Km4BiI/2FhNyZfergSWoTdVXx0MgXNd7EWHqfzbWu69UHTNVbev6p3B1t4pwlAx8vRQC
         w6fCP42p1OOvrCVqww5S2FTvbgoGboLW8tz7OHF6vQ57L5K4exm4VhSeqTjiOT7r6LOu
         8FRVZEyg5zkoHP+XkyFWi0jBt7VAHK6cMW+CwzwY2CtGTTN2RCDJnO+Xt8wEJ+3xiu5c
         KKmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=nkrCTAvKRQP/7uBShAW/76P5cVm+5V3Q6G7J10P4y+U=;
        b=WdiYOqVQv43kLmB7BKS4s1bBw8/e1L2vpcnqZtRqhJnFHzhV5C5poV0jiHuuSbFTrf
         btNphANh3tVohCPI6VI1aDG/5LzgqusSYWe4tttZ+WnV2+PAZE1s2ZuKmCRmrX75/JL3
         YiRpuEZLTTs0RU9nrTpGC9i5V4QPkpXbcwwq6HLiKYxhYIV15U0jdtaEAE0IiWZ1X3Hi
         fyCYifCOCNBC4YopD4k6k0lViD/fP2OWAO096WpbEET7NWKhPyxfuBgGGixBKAzq5ekT
         Ru+YHKYei0dpniT6xU46FI43dT4qPU7BieV1sfDc2bOuPHJ7HQfwqaUAwNtmDz3CmxP9
         FZVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=HYjVQIlu;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nkrCTAvKRQP/7uBShAW/76P5cVm+5V3Q6G7J10P4y+U=;
        b=VAgtp6iUe7+IqF4G0QtU1VC+CxYOVCx8d+xau9Dt5mVCsNIZXA4+R7v7dU+btSmwsD
         Eo6bQQbMd+Q88WeuLruIQcqb5zYDG1+u6WoaPX8wsFx2w8+8rmbH/HKfV9XDvkj9dGyq
         O+y+DhFVXVQhF5ELmvZKRhzqzrmhHvUTqrlnEC9aYa3O3ux7AxXDyVi5Mg3SlIbirbwY
         c2sIJm0wro3xX4X6Sf+xo0v+dVJgAaYcladBBfX/vlxx0FrtddA655kQP8oipx/zF21V
         veeZRorshHYYzZBgClkay93M6MuMYmnsVssof0GZ8OUCvHkBJvuyMi/ijLs8CpTJdRVO
         3f4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nkrCTAvKRQP/7uBShAW/76P5cVm+5V3Q6G7J10P4y+U=;
        b=fIXElFZFedftcSQbJ3IaqfTuAK4rYUl/JyMR+CTPjfOWBeBt2Tbe92GTIPYo7SZkLV
         06QhXTuzdOZeEz2+gUQ8bwEfsWxFK9g+AfGtfir2hfnY7hc05M6M0tKCxJAwAofAY+w6
         F5TRSGY5nh/h5ExYLM66nhD7jp4w07SZE2Xg97e8A3+B4CD6pBNkHGtHUwMWyKEAbUQP
         jI5dT6dpJ+oyQkkZVFQi4Y0X9wQHynkOQT9UU4CEfbOVuWNvsqmTbLWKu38by7kir0X0
         LjackhW72QLe4BzGhXiTIhfTLFRAw9x51ERFMewflC2iJC+LldZLKyrogkPo/dFQcd81
         q3Uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hquzmDZXZQycZKVQ4OsGUmLAtdL9dHiim0Unogl7XIVgOef0O
	DzcVXuBqGFBuhXAdevppsi0=
X-Google-Smtp-Source: ABdhPJzHJ5oMTxJzbDkZ4M+X/vth9Bzl3bn5vo61COHpgudux8WyC4fVJ2dd5bGToTLytBgtfhi0bg==
X-Received: by 2002:a67:5ec6:: with SMTP id s189mr2448259vsb.14.1602767354387;
        Thu, 15 Oct 2020 06:09:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fe04:: with SMTP id l4ls379995vsr.10.gmail; Thu, 15 Oct
 2020 06:09:13 -0700 (PDT)
X-Received: by 2002:a67:3397:: with SMTP id z145mr2597470vsz.10.1602767353927;
        Thu, 15 Oct 2020 06:09:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602767353; cv=none;
        d=google.com; s=arc-20160816;
        b=KzUVQk8kgHiJ5PUNnkHWA2RpMnQSBGNEvWgdVsyYH9aQ3Uzw7NNgMnMW50eKwu40k+
         9keQHWn73k1RKYhvkDmnAyBJBDFIsOdc3CAKWP7Esp4bVn0sN8CdPJfiWr04/M/wl4NL
         3MNVLUUwCNxkS6xROyrkEQUPch3s+WHRWWBgwdEhjMug2WVZdfH5LXtRnVFaranIN6cQ
         6CmwQagsCrc5AUJPT2Wb24TyGUw3VC37BJZVltxs+ZT1UO2dUATq1IEKRbuPcfkbebjt
         CBbsFDbqv7FR3hCAVioJKrZdDVipc+8/9hkQvyUVD7K+oT1DIv43BaK3Sgmel+h6HY96
         FXSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=yJdroy89KvK6LNKaU+WV9fMwsRWYupTkFWAQ9ViniDg=;
        b=FzOz1TBQFRJUlEHo4ydaLht1hc8cAfHTQvPiR4ZRJUtFVM8qsb7NluBNFxaWAdarPp
         QcD+OyKd7MkCDGpTObS3YudTT/LxCayRkonbP6FDp3iRC/dJrJZmUDpiTrh3xNnfOM2k
         1xCc86jIavrxg2HYy3EqnloyW30WbeDzgHQplBiYnCL5OgTiJv4D1QBYN6AFSKWhH4R7
         ghHaPdKyYfl3ErAOgu2HuVs31D5r12iPPDlPQR/FXs6SV2ybtSucx7Lnh2b+BqDvs2aQ
         YzqPVY73btqGXysmZAgyF17Wr8AC/KGNA0IUWSkqR9oiaikdLSrHGjW1CN5KR3Cj+baN
         xt5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=HYjVQIlu;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id j77si154199vkj.1.2020.10.15.06.09.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 06:09:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id d20so4185194iop.10
        for <clang-built-linux@googlegroups.com>; Thu, 15 Oct 2020 06:09:13 -0700 (PDT)
X-Received: by 2002:a05:6638:f03:: with SMTP id h3mr3341435jas.36.1602767353121;
        Thu, 15 Oct 2020 06:09:13 -0700 (PDT)
Received: from [192.168.1.30] ([65.144.74.34])
        by smtp.gmail.com with ESMTPSA id y6sm2460127ili.36.2020.10.15.06.09.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 06:09:12 -0700 (PDT)
Subject: Re: [PATCH 2/2] io_uring: optimise io_fail_links()
To: Pavel Begunkov <asml.silence@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>
Cc: io-uring@vger.kernel.org, clang-built-linux@googlegroups.com
References: <cover.1602703669.git.asml.silence@gmail.com>
 <3341227735910a265b494d22645061a6bdcb225d.1602703669.git.asml.silence@gmail.com>
 <20201015085319.GA3683749@ubuntu-m3-large-x86>
 <7e293894-823c-5b91-1b55-f5941c82d83e@gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <01c6d077-f6fa-a8da-449a-d0c1c4d59012@kernel.dk>
Date: Thu, 15 Oct 2020 07:09:11 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <7e293894-823c-5b91-1b55-f5941c82d83e@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=HYjVQIlu;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 10/15/20 4:11 AM, Pavel Begunkov wrote:
> On 15/10/2020 09:53, Nathan Chancellor wrote:
>> On Wed, Oct 14, 2020 at 08:44:22PM +0100, Pavel Begunkov wrote:
>>> -		io_put_req_deferred(link, 2);
>>> +
>>> +		/*
>>> +		 * It's ok to free under spinlock as they're not linked anymore,
>>> +		 * but avoid REQ_F_WORK_INITIALIZED because it may deadlock on
>>> +		 * work.fs->lock.
>>> +		 */
>>> +		if (link->flags | REQ_F_WORK_INITIALIZED)
>>> +			io_put_req_deferred(link, 2);
>>> +		else
>>> +			io_double_put_req(link);
>>
>> fs/io_uring.c:1816:19: warning: bitwise or with non-zero value always
>> evaluates to true [-Wtautological-bitwise-compare]
>>                 if (link->flags | REQ_F_WORK_INITIALIZED)
>>                     ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
>> 1 warning generated.
>>
>> According to the comment, was it intended for that to be a bitwise AND
>> then negated to check for the absence of it? If so, wouldn't it be
>> clearer to flip the condition so that a negation is not necessary like
>> below? I can send a formal patch if my analysis is correct but if not,
>> feel free to fix it yourself and add
> 
> I have no idea what have happened, but yeah, there should be "&",
> though without any additional negation. That's because deferred
> version is safer. 
> 
> Nathan, thanks for letting know!
> Jens, could you please fold in the change below.

Done.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/01c6d077-f6fa-a8da-449a-d0c1c4d59012%40kernel.dk.
