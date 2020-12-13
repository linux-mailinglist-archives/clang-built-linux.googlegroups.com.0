Return-Path: <clang-built-linux+bncBC27X66SWQMBBTOH3L7AKGQE6UKFZZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id D908D2D912A
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 00:29:18 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id g5sf10766968qke.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 15:29:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607902158; cv=pass;
        d=google.com; s=arc-20160816;
        b=crvvPacjmKsSW0Ots3kHtVf+V2d5DQd6vY0f946wL7i3WW0X5DML+O9Q4HuQGcdXlX
         PgUl4Lufs+BBfHBNUNL8oWksBHg8JPUGDZnES3TcF5YZOTsmnBPcTjwRVrAABg1l2xJ/
         3csYR/S6wEG/a4ed89kiHD7OB/NCDA5fyoaPhmwkee+2725L0FwdYZupmH/f2ZJhGleM
         Q/90p8gZq52oC9r8btOCoaaFpQDh6PaKH2XkZQJkRks2Ck3jVPjYy9YPTpS1nmc9L9MG
         vcE7v2PcNfPsuKGRHE7q+kKEDvh+yL7P8K3IoIXgPXgBSqOr15vw5QyVJ1UtMxG4eqkC
         0rqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=t59JlukWyBDqAlE/H6vGoxWkNvm1SRm4sFk6ysi8LhY=;
        b=nPF9D4wbSghw0T2J26py2nWcRSCzqbx+HxwKKgwibPtla9euCykyIvuedtyHUC1XRr
         7qconkcnr9o8hjgSNZdhG/7K40VCJIxr85OTylB0D4sPzpx2K8QL0DVLCwrIRhg6noR/
         Cy/PUOGcLBxjdhFFl8+V4/5z/nIlCO3F7EGpzYVnW3dxMWIL/mW8sJfHxKoFIxI8wIFG
         oNj3CrOEnFdQYoPoZn9e87BdJ/uOpGjC8G5I5vFAdz9aJoi5twBXGfhsLWXY4GHOGHSo
         kTYwnMIT6hQb8z8TjfeO3S9JOxC+NNUnaB8tV3RfOr5/GkezpQtcLL9aWO1y/6m+0Qle
         hjxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KSEcShjc;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t59JlukWyBDqAlE/H6vGoxWkNvm1SRm4sFk6ysi8LhY=;
        b=h5zVndV3jdN/0+rrr80QQ8JrQcbdf2CKD35i+dhXbDC8tJhD9L7V2N6XuyC2I1FQL8
         ++YSYO41TBv4tL4c0LPSmqem5XE/bBmET5wPNcbIbNE7HlJmgbQwmNHFdiTl7+iIZjYh
         tIU6zMquACKQNe3uBI89pBTK/MytTqW26+IrOEZUgDAapBN4HgDDiK882v0fzJ38cdLr
         G1wa8eWFk80M+6RyP62q7D6UYoAPHwHvIpeUh/pj5jUsIQO+V23E6aWTH5VC7WGeEsBB
         rCPryWt/4v9FVdKmReQF2dfVk4GZlBvqH6Jo4vmY5fYdWp+uh3K72C1CZBLcwlLN4e/Q
         WLgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t59JlukWyBDqAlE/H6vGoxWkNvm1SRm4sFk6ysi8LhY=;
        b=s8SqsGHN3ODArcrSSSXVrrUNLlQ95eV/Z6Xk+PQMjO3iU2TMJAf65HUYbZyHe56VtR
         Bhhab10DMTCiWPXtGFLKh6FLZMnAxzepOrSKz3hvGY4gQQ0iMRzhv3FJlknJwX0zSW1t
         g9kunzZl82JqOW9N7HPbgFv+HB2hP5a3SUVAJTWkW7HqjxMvWGsFAJMecq1PoK+viaQU
         7143i5yRO9MU7tmZDKiXZ8U9A7EmsCom5Knl+wXHZTKOaq3MJOy+boEAqN5bswMdt8qm
         3svj0A5WRjlT7TlB77uivEUgpYmOCqPiXbQybA6tduLV2RY0fuugM/H5tZ/joEDF2PWc
         wFNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qpqcuIrvTyYILhNxmUFClUZd64QPdMlAD/G9X9gjx2R3Pm8St
	Ip3ZYa+ZWRNgLw7w6uAbWnI=
X-Google-Smtp-Source: ABdhPJwUD2ZEgG2lp7fCJtUbv0qlHzwBtxQxs/98yd0PS5Lw1CLz5vVYh+P6FMFcW8cjIt//pbtNKw==
X-Received: by 2002:a37:9c8:: with SMTP id 191mr28425630qkj.434.1607902157808;
        Sun, 13 Dec 2020 15:29:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:26c6:: with SMTP id q64ls3778255qtd.6.gmail; Sun, 13 Dec
 2020 15:29:17 -0800 (PST)
X-Received: by 2002:ac8:3ac2:: with SMTP id x60mr28025622qte.333.1607902157425;
        Sun, 13 Dec 2020 15:29:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607902157; cv=none;
        d=google.com; s=arc-20160816;
        b=D0+7BJe4Smx2JoT6bm9vmk/m5RCTCpqLiF8P+FUEOkQU6BVHgQ3hCIxlfSnIUKXlQF
         ichrjneQ3MorDpmgVaR9BODZlksti0RGX9Cv2HDTToq23Y2nLX/IG1su6GY6YOuw0oK0
         I1fdFo4s94zT/jGbRifObvxPhmdzZWqPodRQHKUP0ZzyDINXn/zg6GQxfv9LMdz3A4d4
         FcsOu7LtLYTI1ns7R4fYdpbI739//Uaxnk9+MEmxoPGDkqX2ruJoRC3xf9JpEOv3j9pP
         gFuhVhdAaBmh7htjuSO5TVSSrTHq3YHbmNW+qeITIOsKOt7XGWTksE2YYyQEj4wQtizf
         E7OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=FWN/nvGfcwJ4JhylvAKAFoL2tU46r+A52KR+6wvr1TA=;
        b=ecitciFJU0/noBlyPRKKaKxvW/GmayVKh83CfJYmCGmf/hHF8JSPR3aTzsQobNkKB7
         nB7p4VArYIOpwvhVoPfzDKo3UvYY9TECLfPgEXu84KzaRcyJ8QmmOHC8Ub89YmoRvQ89
         ooaXnLuOieDXAEML+pOs1aHgVFiZBYpYk2lA7DgZhsGt6tAamctEaLEMp0m3qbx52PaY
         /r+w7PyzpmzziubgK/sEwbfRYgY/lkyr1hu9vt8nbEOT6swkSifU7RR04tWB56VR/rLm
         prXooJApn3IJQZMh8Z0FmFj5GLFsiEQxkNRx2L1ZEkU1xO3MPx8dtMtyE1ksHoUOk1H+
         xy2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KSEcShjc;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id f21si1068737qtx.5.2020.12.13.15.29.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Dec 2020 15:29:17 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-477-6CMnHf3QPf2knPYcgpWXTA-1; Sun, 13 Dec 2020 18:29:13 -0500
X-MC-Unique: 6CMnHf3QPf2knPYcgpWXTA-1
Received: by mail-oi1-f200.google.com with SMTP id g20so2920279oib.18
        for <clang-built-linux@googlegroups.com>; Sun, 13 Dec 2020 15:29:13 -0800 (PST)
X-Received: by 2002:a4a:8f95:: with SMTP id c21mr291662ooj.60.1607902152777;
        Sun, 13 Dec 2020 15:29:12 -0800 (PST)
X-Received: by 2002:a4a:8f95:: with SMTP id c21mr291645ooj.60.1607902152400;
        Sun, 13 Dec 2020 15:29:12 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id s77sm2998865oos.27.2020.12.13.15.29.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Dec 2020 15:29:11 -0800 (PST)
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
To: Joe Perches <joe@perches.com>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>,
 Jozsef Kadlecsik <kadlec@netfilter.org>, Florian Westphal <fw@strlen.de>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
 Network Development <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20201107075550.2244055-1-ndesaulniers@google.com>
 <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
 <CAKwvOdn50VP4h7tidMnnFeMA1M-FevykP+Y0ozieisS7Nn4yoQ@mail.gmail.com>
 <26052c5a0a098aa7d9c0c8a1d39cc4a8f7915dd2.camel@perches.com>
 <CAKwvOdkv6W_dTLVowEBu0uV6oSxwW8F+U__qAsmk7vop6U8tpw@mail.gmail.com>
 <527928d8-4621-f2f3-a38f-80c60529dde8@redhat.com>
 <cf2a184e2264a2b9fd2c8d7f10d524924d417d57.camel@perches.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <c9d63f7d-7fa4-4fd6-f897-265315d935ab@redhat.com>
Date: Sun, 13 Dec 2020 15:29:09 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <cf2a184e2264a2b9fd2c8d7f10d524924d417d57.camel@perches.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=KSEcShjc;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 12/13/20 3:25 PM, Joe Perches wrote:
> On Sun, 2020-12-13 at 11:21 -0800, Tom Rix wrote:
>> On 12/2/20 2:34 PM, Nick Desaulniers wrote:
>>> On Tue, Nov 10, 2020 at 2:04 PM Joe Perches <joe@perches.com> wrote:
>>>> On Tue, 2020-11-10 at 14:00 -0800, Nick Desaulniers wrote:
>>>>
>>>>> Yeah, we could go through and remove %h and %hh to solve this, too, right?
>>>> Yup.
>>>>
>>>> I think one of the checkpatch improvement mentees is adding
>>>> some suggestion and I hope an automated fix mechanism for that.
>>>>
>>>> https://lore.kernel.org/lkml/5e3265c241602bb54286fbaae9222070daa4768e.camel@perches.com/
>>> + Tom, who's been looking at leveraging clang-tidy to automate such
>>> treewide mechanical changes.
>>> ex. https://reviews.llvm.org/D91789
>>>
>>> See also commit cbacb5ab0aa0 ("docs: printk-formats: Stop encouraging
>>> use of unnecessary %h[xudi] and %hh[xudi]") for a concise summary of
>>> related context.
>> I have posted the fixer here
>>
>> https://reviews.llvm.org/D93182
>>
>> It catches about 200 problems in 100 files, I'll be posting these soon.
> Thanks, but see below:
>  
>> clang-tidy-fix's big difference over checkpatch is using the __printf(x,y) attribute to find the log functions.
>>
>> I will be doing a follow-on to add the missing __printf or __scanf's and rerunning the fixer.
> scanf should not be tested because the %h use is required there.

Yes.

I mean the clang-tidy check i am planning on writing will find missing __scanf as well as the __printf.

The %h fixer only works on __printf.

Tom

>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c9d63f7d-7fa4-4fd6-f897-265315d935ab%40redhat.com.
