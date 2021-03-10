Return-Path: <clang-built-linux+bncBDR5N7WPRQGRBPXIUSBAMGQEYKILA3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6B433495E
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 22:03:59 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id 16sf13953252qtw.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 13:03:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615410239; cv=pass;
        d=google.com; s=arc-20160816;
        b=El4BcCyt7rgf452ZA9uLDt3QaMQJposQgYewIrAZEN/sPEo9pK0TyOzhA7HRA9+pzn
         wUZMZHuXzTNzp6s+bv3kKR5rrrT+rKfSx2eXtsd/vfXkABZtzi2MjvU6S4ZyuTpS0o9V
         3XcIQFeSI3yicYumlYWTeV2WhTEbvhBP9q7eRfnspUTwaoCLqedDKpQN+zZbe1+NDUeS
         nZbKdWbhaMtv6KSB9++qgGqYbX2W/2XsnfXHLq0DLm8XXCd7lfoKqo06ZWNc7B9gRwA5
         PqclyYVMgUjv1fdqOLxX1hr1dY8lZDM1WrFTk2jkn5aTL4DqUtzgzFXIKL2wpee9HW6l
         Uz1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=V4+x/65Ria3GYt5mvVzUHRPVkU98ZRDTOjfgeYtl8lY=;
        b=lJr4QFRefB/62K7Ylr2LM0xrPTyCUsDTFGK1IKz/cbj9+rDS7zttUl6Zu0G739sfKS
         3ulStC5cmQiSzTTJaK8TRXiBwvWgnAawawHII90KOkzcFBmyC5hIWlBPkMuSSC7UMVBt
         1uIN3iQs6wYj6aA3cgg9zxbaPP0JvroX4ti00+oG8Qi91r7ZiPtjIZdPQDqCrDEEDVCj
         qWLpk4ftj+lIrk01uryePxqINeIEvW6GmrXCHV3JmwEifRRpKtkUofkg4+PFd1ye/1Tg
         5O+fk/BarMHTXzL5F5YhOOXrWDhKaRiZj6MUB+OjJdHmAwv411HmgRxQbidAfwx77CGx
         YFFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=PWkf509r;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::132 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V4+x/65Ria3GYt5mvVzUHRPVkU98ZRDTOjfgeYtl8lY=;
        b=rvEnv1Ts8V9Nw4qt7X1+mqla3PcNnExXDgqCK6+tNgrnMQ8t2QWL7BYGwNyDqfu1FH
         uBXSuPBGehMvrWIlS1E3zR6xcKddVs6HsQtMpRh77L2cNZd/0ozRNVRWVDcjBmJTx5eM
         YlvyXFz6sN5SzoFAXxXNSgCr8mqXeRRI0z2xvp6EZ6e9aPdpQgMukupvLNDAhp4Tu0zU
         wASzbu09LC6y5jEgxvAeifIqlzlA3egEEJqV/rdYDHxllD8Cw3RVQG45JldQfiQbKE3T
         E0/rE/DsYaqP35mbimBmN/YFeNIxiKMhTzREqaOA5NZgV9+lkpHjWnIemaqFM+irm2mp
         L/jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V4+x/65Ria3GYt5mvVzUHRPVkU98ZRDTOjfgeYtl8lY=;
        b=rMyXw8GLG/E/l4xky2bvmKjlE/9OOim3ppiweODWEDwIMVOxlUgvN+rQ/udao9qKQ/
         5O+7Tl84ftiBbg0A2h2Z+nIXqxI1Xv60uibtxoU4jb7OdO9foemGimR8sKSDy8V344pN
         KtmE4BqbGQoj0BtEwSrNiRvu8IWZtbecELX7PZkvk73d2MXxrLwyzkg4LNbMjV6MB4u3
         d8MLXBFteL/bzQyIzXefzY+nFW8XMy3f0RwMZodgICv80fXj23Ns3mrJFwvIoQVPf/aH
         wgaDpH4G6SrTS1WyLCn/DuzoMpS8B5sCXkBGzRW/oZsBAGF+NW0IbAIEtxVEfsaQzzk7
         F6RA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BkkSPioJFvScAqwf9Ijs4LbzUPVCObjcSj0hQV60HzVFBhvmr
	1E/BgBcCO3d10/8FGJPpmKQ=
X-Google-Smtp-Source: ABdhPJyOxeolp3dnPJ03ZVS479u9oPBGlQTVh2KmFthgqA4uZQNlK7C9V1KXhLk6JlB16QbO8cZQiA==
X-Received: by 2002:a05:620a:749:: with SMTP id i9mr4883036qki.40.1615410238920;
        Wed, 10 Mar 2021 13:03:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:f97:: with SMTP id b23ls1918396qkn.0.gmail; Wed, 10
 Mar 2021 13:03:58 -0800 (PST)
X-Received: by 2002:a37:6c1:: with SMTP id 184mr4551777qkg.462.1615410238424;
        Wed, 10 Mar 2021 13:03:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615410238; cv=none;
        d=google.com; s=arc-20160816;
        b=QhVytSopHzNUEas2SQlWrhbfqY6WUnEAADP0iXMT/F0MKJLB1Klx2RLWkxGbrON2fK
         SWxt3nXGhB9/bmRWF+aSf83D4OGxnpdiNf4I+1YGDY1H9yXudCAjEdv+JstkRiguBoQh
         PQ1UuPt73hpJqjU/hJ9PjYUwTHt9ES0bI7d1EdDDhDy/OTdJBRH/+odhT0bBn5jOuLEl
         vMU6/yMptLfC3CE6sa+lFvAN/v7CQGvNoij/9HjFhcSD6gzhJz3Cj90DHLWADsQ4uv8s
         zyUVXRn9oKlCK1/eZq3eOGmoxiTkXq6I1oC1tk/Gtr5iuwsJ5aLIaTeaM3BuV19eCNBj
         qn+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=7TZW3chgCc+0y/3+EkFW15rPjwwCaz9mJXTQWeD1vUQ=;
        b=L1jJbEVz0kALjB7JDBAoqHheFRSjqEYdu4N/ap0LV+nUX6+i/6ogAkCOd3BCR0opmC
         9eDHwo7g6tfwRTWoNshbSdgHmjB1Xmrw4zIVCBwXWbFYFQUaDjSsqZTA3mBoWRDwJEpH
         Fmkx7RYnsDgBxrSm1FeBr2Y8UnMO5qR/+m8H3GRP+FRTT+abWVsoj6NXqXgqQOqmkkHR
         4gnTdgcXvVi1jR/G8ROId+i4BKxSINDVYrOl29lEWUVLnyzM+D06nlsR65lqcIhrjiVQ
         yaISfLCzREGZb9H8hpfiju7l4Ldrob4yF2w37adn3749ONwEu55Je9/zlPhiGqIkkXG5
         DbBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=PWkf509r;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::132 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com. [2607:f8b0:4864:20::132])
        by gmr-mx.google.com with ESMTPS id b201si50968qkg.6.2021.03.10.13.03.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 13:03:58 -0800 (PST)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::132 as permitted sender) client-ip=2607:f8b0:4864:20::132;
Received: by mail-il1-x132.google.com with SMTP id z9so16939459iln.1
        for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 13:03:58 -0800 (PST)
X-Received: by 2002:a05:6e02:1bef:: with SMTP id y15mr1455387ilv.17.1615410237420;
        Wed, 10 Mar 2021 13:03:57 -0800 (PST)
Received: from [192.168.1.30] ([65.144.74.34])
        by smtp.gmail.com with ESMTPSA id m11sm334927iop.11.2021.03.10.13.03.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 13:03:56 -0800 (PST)
Subject: Re: -Walign-mismatch in block/blk-mq.c
To: Nathan Chancellor <nathan@kernel.org>
Cc: linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210310182307.zzcbi5w5jrmveld4@archlinux-ax161>
 <99cf90ea-81c0-e110-4815-dd1f7df36cb4@kernel.dk>
 <20210310203323.35w2q7tlnxe23ukg@Ryzen-9-3900X.localdomain>
 <e43dba61-8c74-757d-862d-99d23559cf50@kernel.dk>
 <20210310205250.hpe4wcgn4yh3rjqz@archlinux-ax161>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <9834f7fc-f4d2-2230-7e1f-9b607ea782de@kernel.dk>
Date: Wed, 10 Mar 2021 14:03:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210310205250.hpe4wcgn4yh3rjqz@archlinux-ax161>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=PWkf509r;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::132 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 3/10/21 1:52 PM, Nathan Chancellor wrote:
> On Wed, Mar 10, 2021 at 01:40:25PM -0700, Jens Axboe wrote:
>> On 3/10/21 1:33 PM, Nathan Chancellor wrote:
>>> On Wed, Mar 10, 2021 at 01:21:52PM -0700, Jens Axboe wrote:
>>>> On 3/10/21 11:23 AM, Nathan Chancellor wrote:
>>>>> Hi Jens,
>>>>>
>>>>> There is a new clang warning added in the development branch,
>>>>> -Walign-mismatch, which shows an instance in block/blk-mq.c:
>>>>>
>>>>> block/blk-mq.c:630:39: warning: passing 8-byte aligned argument to
>>>>> 32-byte aligned parameter 2 of 'smp_call_function_single_async' may
>>>>> result in an unaligned pointer access [-Walign-mismatch]
>>>>>                 smp_call_function_single_async(cpu, &rq->csd);
>>>>>                                                     ^
>>>>> 1 warning generated.
>>>>>
>>>>> There appears to be some history here as I can see that this member was
>>>>> purposefully unaligned in commit 4ccafe032005 ("block: unalign
>>>>> call_single_data in struct request"). However, I later see a change in
>>>>> commit 7c3fb70f0341 ("block: rearrange a few request fields for better
>>>>> cache layout") that seems somewhat related. Is it possible to get back
>>>>> the alignment by rearranging the structure again? This seems to be the
>>>>> only solution for the warning aside from just outright disabling it,
>>>>> which would be a shame since it seems like it could be useful for
>>>>> architectures that cannot handle unaligned accesses well, unless I am
>>>>> missing something obvious :)
>>>>
>>>> It should not be hard to ensure that alignment without re-introducing
>>>> the bloat. Is there some background on why 32-byte alignment is
>>>> required?
>>>>
>>>
>>> This alignment requirement was introduced in commit 966a967116e6 ("smp:
>>> Avoid using two cache lines for struct call_single_data") and it looks
>>> like there was a thread between you and Peter Zijlstra that has some
>>> more information on this:
>>> https://lore.kernel.org/r/a9beb452-7344-9e2d-fc80-094d8f5a0394@kernel.dk/
>>
>> Ah now I remember - so it's not that it _needs_ to be 32-byte aligned,
>> it's just a handy way to ensure that it doesn't straddle two cachelines.
>> In fact, there's no real alignment concern, outside of performance
>> reasons we don't want it touching two cachelines.
>>
>> So... what exactly is your concern? Just silencing that warning? Because
> 
> Yes, dealing with the warning in some way is my only motivation. My
> apologies, I should have led with that. I had assumed that this would
> potentially be an issue due to the warning's text and that rearranging
> the structure might allow the alignment to be added back but if there is
> not actually a problem, then the warning should be silenced in some way.

Right, that's what I was getting at, but I needed to page that context
back in, it had long since been purged :-)

> I am not sure if there is a preferred way to silence it (CFLAGS_... or
> some of the __diag() infrastructure in include/linux/compiler_types.h).

That's a good question, I'm not sure what the best approach here would
be. Funnily enough, on my build, it just so happens to be 32-byte
aligned anyway, but that's by mere chance.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9834f7fc-f4d2-2230-7e1f-9b607ea782de%40kernel.dk.
