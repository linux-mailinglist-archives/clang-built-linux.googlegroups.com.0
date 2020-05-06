Return-Path: <clang-built-linux+bncBAABBO4OZH2QKGQEUBLVK7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F731C6749
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 07:12:27 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id u11sf192588wmc.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 22:12:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588741947; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uy+C8kCSODO2kbdO3Ms3kWG6Q/LRK10ndf+K51vnsHct4fSfdJI1dn9bKEADMKp5BQ
         rXTw/VWbMfj+yeFdRl4/kSiyVD8TxB9Zr140LTKJ8/muM5zI83MSj0k5C9xt3l3OkfEr
         36YJlPkGO8sW+r4XiOmqrAwWacc5zdRgpOKZCxPpj4HjA81zKx6Yg6/S5A5xjHC+khO1
         t/fakLTZwdT4+rprGPOSMY6dfNuxckjX01fAztVfdoWsQg/U7ObVRZsVzwW2PdlTZC8X
         gSDc5vxLkK8syWKdaRKQevWuvfVSoLpQgAYw/H1fdUN8lZpQuIoM87JpMWjVw+hY26dS
         +gnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=WK4l2bcb4DT0blXzAKCcR5oaDYOq7BVN+WnwmT7yCwA=;
        b=vWyNOL3vqx5x5I7vsLtRxDVTYFHYDdV7sHyJPq3JVefO+ds6WZj/Mr3j3H02q+hKP0
         bfYfZdZomB8uQAxDVgl1AYVmj3F97DHMqW9XxnNc88gkcYVSasQSOYPd0+yOKcUBRtgb
         f7+Pbymu9RHjWJe44Xr7JncBjWdFtsY/8b+D3ufoshaYGtxKxFRcINIrM3PBD6Sm3eKL
         FYEHPwD4fqDdNn/rnoLVbCasLmyA5QOJ5hWdoO1dsu6qzJmxhqq1zBgSYkIAetdNbGPS
         o1aCh8XdTcWbfZ8TDk6+GtqLjcuIpG4Z9wU+TSZkP7jrFsXGUQBFp19fjgM/JY7Vp/ZE
         yfzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WK4l2bcb4DT0blXzAKCcR5oaDYOq7BVN+WnwmT7yCwA=;
        b=cSt8jundch5GAo15KOTbhrwgWKMmda9rnHiG3w2ptRCoifQfEGCR4IZmHJk8ZrFXlk
         nmIhmw7J6VmZb6VHDqcwvo6xJQZwRGUZ2Y0LdtuBH64J8TkcSQnFjkzFjc56gQHoakXS
         sa2rezGaQyinW9xvv5EZFiw6xokZ6Z2h4pbPSPgfF1QZt8wW/FexlhFwdlp2/WOlNTHh
         +acoGv11ihmoDT45v24NXCqxYgTwHUPV35hm51ADpplh3EBoah2HM2oUH1L7w7Bxctr7
         AOXfbdtlk/HLBDi6u+QrNTlzdD6nOYuZYccncwi2EsoPi8X9CgjkklRcsrHYnAtLrIma
         0x2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WK4l2bcb4DT0blXzAKCcR5oaDYOq7BVN+WnwmT7yCwA=;
        b=XRm+LDh83S0VO1SSwg0QA8mmfvpf1Y/HTGHzzKSWpZO6EwOVua24hg4zoVPkK4nW+9
         mlrsZfCOSgTqkMECFtbkcXjPhhox2vqWWaFYYNnA5VRttyigng9mT4y9ixDx7KegKjEp
         4LkWusJ1khGjUB4KJVtxTykUBLSA5Q4+f2iO/M7EWjlvS/xGTszOO5ze75/LI6zRd6LB
         +7zfxWEc3orCJAojeRMAWKvaq/kIlPjwGV5TfpqZlC/AD6gbi7NRP15PotLmBHUyWJV5
         8eE8XLnEJacGh5DP4aCphWfs+sGJQFW8RdN6kScaW2XiOFUYFajDjwM2FCAhIQcgFsta
         HwWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubkOWZL6TrljHXmtYAAzke9XG2YE/6u88iS5MzFQLF1I9x1uHsF
	bex8BU8+BKreN24Xo/Q3JLs=
X-Google-Smtp-Source: APiQypLTb8FV1XcUKJYBSRy1byteM7Gkx/JyODx2FYWRY1+ASiPA9FrJkwtu7L0s6xeUEF7rbcmz9w==
X-Received: by 2002:adf:d4c6:: with SMTP id w6mr2346111wrk.92.1588741947264;
        Tue, 05 May 2020 22:12:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7ec2:: with SMTP id z185ls1700680wmc.1.canary-gmail;
 Tue, 05 May 2020 22:12:26 -0700 (PDT)
X-Received: by 2002:a7b:c4d0:: with SMTP id g16mr2528034wmk.154.1588741946964;
        Tue, 05 May 2020 22:12:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588741946; cv=none;
        d=google.com; s=arc-20160816;
        b=l7Ui228UfyxnNCaURSYmna01JGclY/Wy6fu+2K9owrP1RII2iaWJYsbPY1HoT2HnC+
         68bpIj+kkfaOCuCr166752lZk63ZDDNaOcxZDkyTRDLnbZ3IECrafiItqFHcn3eieZFj
         Me2Uc8n5/5LxMrgAC7pSi8E1xoHoYmD41Mw8a/mMWMNsptdXWR1l3EsMVDdqNCEd0/lb
         JDLm+QhucpB/dj61T5guU3kmAnwYlWQA28SuKi6ABJJPLi/TZmtIRN50IGxMIQ5XWM3R
         DL3scBxiWU30osEs8xBBKublOR1X9z2bNRHfd/fFUrx83AfbmBsXxRYBYBN9H7eB19ev
         oYDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=JoGM2iRCcXsZ7Io0zIqBIyCQ0FZFgv/pAg8BJU8B8Vw=;
        b=aUMbJZEWBUBFKmPW1G/tgMkFu1fWgvg/iAP96/b5+kV8a4JJbz9fKrAGgJmNoMyhEN
         HOQqubfRGMkSSRMcjt816jM37uxMTUMet16gmTvDVJEM0yFquU5Q9SG6rrCIJab0vGfs
         17ckM//83o/c21SWIIdvXAUJxLV0XrKwURLiw46SNvqrTZeYKmeDb3jJKSWPt0O8SIkK
         v17OzXeOlakI28n+TvSKrISUmuX5mdP9Brdz1u0O5MqJad1da8OrLKfVUUhrYFsxvMcR
         HMemfQ6rb8b2O/P5owM4UcNjATz+ppOYDJTDfjBMMRdCNrxQlXYnmp13apx9N++wiD7l
         PPjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id q17si60262wmg.1.2020.05.05.22.12.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 22:12:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id E896DACD5;
	Wed,  6 May 2020 05:12:28 +0000 (UTC)
Subject: Re: [PATCH] xenbus: avoid stack overflow warning
To: Arnd Bergmann <arnd@arndb.de>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Yan Yankovskyi <yyankovskyi@gmail.com>, Wei Liu <wl@xen.org>,
 xen-devel <xen-devel@lists.xenproject.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20200505141546.824573-1-arnd@arndb.de>
 <30d49e6d-570b-f6fd-3a6f-628abcc8b127@suse.com>
 <CAK8P3a0mWH=Zcq180+cTRMpqOkGt05xDP1+kCTP6yc9grAg2VQ@mail.gmail.com>
 <48893239-dde9-4e94-040d-859f4348816d@suse.com>
 <CAK8P3a2_7+_a_cwDK1cwfrJX4azQJhd_Y0xB18cCUn6=p7fVsg@mail.gmail.com>
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Message-ID: <2c6e4b36-6618-1889-55c4-16eeb1ef6f57@suse.com>
Date: Wed, 6 May 2020 07:12:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2_7+_a_cwDK1cwfrJX4azQJhd_Y0xB18cCUn6=p7fVsg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com
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

On 05.05.20 22:57, Arnd Bergmann wrote:
> On Tue, May 5, 2020 at 6:02 PM J=C3=BCrgen Gro=C3=9F <jgross@suse.com> wr=
ote:
>> On 05.05.20 17:01, Arnd Bergmann wrote:
>>> On Tue, May 5, 2020 at 4:34 PM J=C3=BCrgen Gro=C3=9F <jgross@suse.com> =
wrote:
>>>> On 05.05.20 16:15, Arnd Bergmann wrote:
>>>
>>> I considered that as well, and don't really mind either way. I think it=
 does
>>> get a bit ugly whatever we do. If you prefer the union, I can respin th=
e
>>> patch that way.
>>
>> Hmm, thinking more about it I think the real clean solution would be to
>> extend struct map_ring_valloc_hvm to cover the pv case, too, to add the
>> map and unmap arrays (possibly as a union) to it and to allocate it
>> dynamically instead of having it on the stack.
>>
>> Would you be fine doing this?
>=20
> This is a little more complex than I'd want to do without doing any testi=
ng
> (and no, I don't want to do the testing either) ;-)
>=20
> It does sound like a better approach though.

I take this as you are fine with me writing the patch and adding you as
"Reported-by:"?


Juergen

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/2c6e4b36-6618-1889-55c4-16eeb1ef6f57%40suse.com.
