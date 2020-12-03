Return-Path: <clang-built-linux+bncBC27X66SWQMBBDXRUP7AKGQEHDVHXGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E362CD952
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 15:39:12 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id f19sf1709335qtx.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 06:39:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607006351; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bv73NSrpJ80+lenhGvzxo957h/mjIKotujhDKoX+WHqZX9AokAycnpz9DZuv61kaiO
         IHVeLiSAD9QqP+jUcvSdnHxcW43EjkNeyL7sI0+0IKg3lJw7UuYeRdrtl5tm3AKjdGQL
         fheybox5N6mtN2hXs1Xe0UdfAIN0SSY2T1Ic6pDTZpLmURG6KfHfAQ6zC81EOw7WsXYM
         oRNAbIv4tfouXE9z4xt3ue1w7FgARGw2JSaeaUcNZkdH+Yr7VqwBT3pyJ+EiLa30UDx+
         m85bvf63rAU/JXeA8Gqk6BfYZCZLuqNbrmo6TmN4dq7Qbl86k4negFyKKaSN/mEXlRi/
         16aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=di9GjzzqosWCGrTumon1m5SWmudU0fqVIQHK5nRpDQE=;
        b=XZd4mwfwqsZlBCVbYeozGmgcyC53wi4oFbpXNQj7kGuFf+go6VKS+wKlrISGAur3mY
         2JltHit2ChKSVEpTh15M+GzYZugTMoUlrWhtFF9BtaCjxEFNdymM+ArEq7OSYD7lwpEZ
         yYTxqG/81j5mdzCL3QkzTcreT90FrwZfzWSkg8avKSzWwYE//1n9qIu9KTMyzcIqvQA4
         187MqxG5bdR7q2JbfVmrOfutfVyOR7/Usp2Jry5K+eRPsoNMTLwIEtRscZ58/jifYOT+
         EvpHuq6DdEZzoJpoFtkGU8igZ9ZuBBBVUqW3ca5wa9tPLkd+9tllOl6kKs0Po0lTXwBq
         Sq7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TXskKT4y;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=di9GjzzqosWCGrTumon1m5SWmudU0fqVIQHK5nRpDQE=;
        b=VuOZ+UxB9RTbelDrxBmJ90vpRYo/T2X+snmj7hjLLxZYDCjvl8o6+u3yAJXbOmR4ku
         M8v43aTEfhdWEnWk6pLHjhctWLRkmBO7oDsppq6RvhddBZ/Ba6Ip96DMMvtgkP2ZrV8D
         wXm6+ognJD4QexaYr7a9ToMF1haP5xZ52caPTu1sjyGq2RHRMnKQfc5Ix9goyZK7321R
         XVG0gCEx+MhkdbGRGk4gFmmQKu2pStiOWXmVlbYAIXkCVDc2iez/JttZOHi3ODOoVnQL
         F/MKNkszMqGa0vBw5CuyDFZOE7to+RGHIQMLm7vrNwRsP0tutzcBs9Q2z/8JVnVIRlZi
         B8Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=di9GjzzqosWCGrTumon1m5SWmudU0fqVIQHK5nRpDQE=;
        b=MkUaddTBvopC78Pu92iPG4G8HRG0onYHsX2tGKsltuFtSrAQjMRk6IsXUcXWEsN6yT
         6EBlXQotiqrQxNrmW3TVZ7Yxu92AW7f5By2v9ZVjHiHQ2dazT8bHYU+Ucv+ZoIMVE7eH
         qwy1NtlIrUfTw9XM/VWlyCk2mL/NiYwp2deUwsnYA95oDcmMA/+yyZPEPMRkPOScamkH
         OBlZYq+Q6R3ndstmw+jU9ByxOXnWrRwxOKLBWZpVPX9XAaxydJv/C+SSJEgbTeZmpp5o
         27xexbmmVia1SlRVb8ChJ9UAy+7cYjg7dEb5nOAOohCqctaxWm1DKc0RkSjcmiNZ/pLc
         NuCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uCkUxve0Sdvx3mUWKXWYe/NvK8cnkYnHnJXhj6ijSUPMDVBg7
	6JHzyW5LaAyzFBEwZ/o+21M=
X-Google-Smtp-Source: ABdhPJzfc0VSGMr4eoGXcdKB9+GUifgi18zZrNOqL7Xp7q82fCo/09lhqBqztor0990IURH0sHE6QA==
X-Received: by 2002:a37:4854:: with SMTP id v81mr3209251qka.20.1607006350929;
        Thu, 03 Dec 2020 06:39:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7c8e:: with SMTP id y14ls1470623qtv.2.gmail; Thu, 03 Dec
 2020 06:39:10 -0800 (PST)
X-Received: by 2002:ac8:58c7:: with SMTP id u7mr3548917qta.54.1607006350519;
        Thu, 03 Dec 2020 06:39:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607006350; cv=none;
        d=google.com; s=arc-20160816;
        b=FCRzt8+SZNGSlfAcf3v84mbJugjSp+9fkUR9AUK+PPmVLx93gdhqH1aOBWV+uohcp+
         gUSpEN2UCUwR+2+arH8mt4Ei7EziTjdeeWQ1y0Dcm68e10UArOqoIkJpU06I/wnAfSpK
         c3COloj3EYcQijVyu8dPs/6wbLTMaWLI7i6O+xQUN6A0c0RK3zylBFxGP7nozNEw0zOD
         0essJN15HW4qlTb4yeObIE2PmTr+ugbXSY/aYcloxdSK08r909E0my1SGQ2ZubIug+Ki
         0i+ttHByHQ/s/FKrMqbMvNKdkOc5mwYUUKtvG0QiMbPidUjylKW66hjwjQirTyPLAl4v
         sz9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=2G4mWlkW5TmVzFzK4RnhP5wNPS0OZSaZvRoN4f2Nrlk=;
        b=l0RvAz71L+zzeE23SpbmA1VVxMLPNOM8Jag7BQz4pkfK7fvRDeVKYt0QnWitXTFJaz
         GGuzSNWBvIigixhSvT6kUqMl2ARzXz+ZCr5b1+UDdzQqK/M8hEoJz7CE3CsYsoCoeoM3
         hrynlxxwXkoKjXhL1sVRii7oAg7Nb5cD2R7Cu5RIeuw9YZUWM4xJylwkpvvUU7hY7Iwf
         kEWqstnO7OB51vCosmzcnyMpnCTktYbtX/cFWSnMtdqV8kNRdI8K75vg/FQjYgZRi5YK
         jv+GN/LZc+chWPs5JzOjQbevZzIm1lg1KNr9/O1t2TYzcPUBYL5yTR3s0v3OYic/894G
         sdjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TXskKT4y;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id j44si101917qtc.2.2020.12.03.06.39.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 06:39:10 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-156-PsnHFW2DPnKSOqSzpL4gVw-1; Thu, 03 Dec 2020 09:39:07 -0500
X-MC-Unique: PsnHFW2DPnKSOqSzpL4gVw-1
Received: by mail-qt1-f198.google.com with SMTP id f11so1679831qth.23
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 06:39:06 -0800 (PST)
X-Received: by 2002:a05:620a:1326:: with SMTP id p6mr3197350qkj.259.1607006346272;
        Thu, 03 Dec 2020 06:39:06 -0800 (PST)
X-Received: by 2002:a05:620a:1326:: with SMTP id p6mr3197329qkj.259.1607006346005;
        Thu, 03 Dec 2020 06:39:06 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id c65sm1365703qkf.47.2020.12.03.06.39.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 06:39:05 -0800 (PST)
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Joe Perches
 <joe@perches.com>, Nathan Chancellor <natechancellor@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>
References: <20201107075550.2244055-1-ndesaulniers@google.com>
 <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
 <CAKwvOdn50VP4h7tidMnnFeMA1M-FevykP+Y0ozieisS7Nn4yoQ@mail.gmail.com>
 <26052c5a0a098aa7d9c0c8a1d39cc4a8f7915dd2.camel@perches.com>
 <CAKwvOdkv6W_dTLVowEBu0uV6oSxwW8F+U__qAsmk7vop6U8tpw@mail.gmail.com>
 <7ca84085-f8e1-6792-7d1c-455815986572@redhat.com>
 <CAKXUXMx0nSZqFfOF63J+awCpkPkgr-kuchUxd2-tuMbA2piD5A@mail.gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <844b0184-a74b-4d0a-8470-69d58323391a@redhat.com>
Date: Thu, 3 Dec 2020 06:39:03 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <CAKXUXMx0nSZqFfOF63J+awCpkPkgr-kuchUxd2-tuMbA2piD5A@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TXskKT4y;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 12/2/20 11:26 PM, Lukas Bulwahn wrote:
> On Thu, Dec 3, 2020 at 1:46 AM Tom Rix <trix@redhat.com> wrote:
>>
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
>> This looks like a good one to automate.
>>
>> If you don't mind, I'll give it a try next.
>>
>> Need a break from semicolons ;)
>>
>> Tom
>>
>>> See also commit cbacb5ab0aa0 ("docs: printk-formats: Stop encouraging
>>> use of unnecessary %h[xudi] and %hh[xudi]") for a concise summary of
>>> related context.
> Nick, Tom,
>
> It is not a competition between checkpatch and clang-format, but if it would be:
>
> ...checkpatch was first...
>
> But jokes aside: Dwaipayan Ray, a mentee Joe and I are working with,
> has already submitted a patch to checkpatch that identifies those
> patterns and provides a fix:
>
> https://lore.kernel.org/lkml/20201128200046.78739-1-dwaipayanray1@gmail.com/
>
> Maybe that is helpful; and of course, clean-up patches to the various
> places still need to be sent out and having a second tool with
> clang-format that can check and provide automatic fixes as well is
> great.
>
> Tom, go for it: that clean-up is certainly helpful to get a "make
> CC=clang -W1" warning-free kernel build. For some smaller x86 kernel
> config (my playground config), there were not too many warnings
> outstanding, but the -Wformat was still among the larger class among
> them.

i see 17k for -Wformat-pedantic, beating out -Wextra-semi-stmt by a hefty 8k on my allyesconfig

Yes, enabling new warnings is one of the things i am chasing.


I agree if it can be done in checkpatch it should.

It is good to have multiple passes on cleaning.

checkpatch is best at fixing new problems, clang-tidy-fix is best at fixing old problems.

Tom

> Lukas
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/844b0184-a74b-4d0a-8470-69d58323391a%40redhat.com.
