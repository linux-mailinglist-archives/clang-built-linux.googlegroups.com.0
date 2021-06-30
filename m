Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBS7C6CDAMGQEGHP5SVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id DC31C3B7F6B
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 10:54:35 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id z127-20020a1c7e850000b02901e46e4d52c0sf2450565wmc.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 01:54:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625043275; cv=pass;
        d=google.com; s=arc-20160816;
        b=jKAPZSmEDPevlQ9hlxSIw/GZx/vzJvQGKAZjQuVPceiEVoHmim5lXZ0f3msxXGFUKC
         E0NbWOMzhCsY+Wx5Z3uGJdfnhRUUVxLv53NAZPos75dT+FMqEdJodgxxWPFjUsqMILKf
         xHAfb3zXUV51wnZ7TlkE/NkBxWvpr3zJ01dggCfecHbuxrn/LomElJVOgrnKnCfGvLNa
         1LLSpRO4H7KlpCKh3pSlUVrBEKLnIcpU3JTbfHXjgrqotdw24f5yfWDdZIfPe3msNoNj
         aNSTZBR3M3iDy2AcMySD0XxWyx/2kl5AV7scoev51JGZTzG/mVes5zWFrkI4NafOhnVX
         hpLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=867v41mxEKf9700uYyxQ0E3qgVTrLa34BkVpo3rS8Bs=;
        b=dc8P3jsOmXongfKP/qJ3xSyfHovAmF3hHrd062OTN/FwiknJXYUcPP4LOPzVHVahdk
         DMIRQQII3HDfxt9jUks47WmYmuMrb2eF1RSzAkyrJ/izYExzWeT7S0hk7ydiLE05GNhz
         6HQdj26z9c3K32dSGTOQpNNYQZZJtu1bbh65mmThKwSz4qS8OlzW+Q3w/ysY3gi1Ug5K
         rBR884wUHSPXtK/f8swXzjtFtkaAqJa8lpuAQSRYUdFUHjGaUZWiAQcEV4lG+SYPoToQ
         /Q+C/xsvgZwgdoHF/0CjheuyqhzzNzWq1cPWv6/XPbO9LPNfFpoFQyWuy7vgC7bdRD7R
         KdQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=867v41mxEKf9700uYyxQ0E3qgVTrLa34BkVpo3rS8Bs=;
        b=pUVzGikjygRyZfCTnKYUqCC9ScY3uJdI1s8ARvvNcykd8Giqy91e8+Kn8WJOcO4v+c
         6Ij4jLx3VhLX1wyq6OpQwo8pzsjy5B6+hwK2loX4H8ujs0mdlo4wV92vmikhOQ7SAsIZ
         qW9aHdQnywpL5Jdlk6IXAo6Uw2C1dDC3raCQqbtRIOraxCDbNVI6ekLrFQX7r6GP7o80
         yzzdul6fGnD/KkNnOY3T/IHqNDliYR7ylmehX7NfMRIFBXps1fWW5qIHM2KZvEsf8Lnv
         EiB/luO1gChWnnv852yWpUTB5pX+gCYCotOsVDDB3ShG8XItBApTEAHkn3ZW97+U+t1e
         rrBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=867v41mxEKf9700uYyxQ0E3qgVTrLa34BkVpo3rS8Bs=;
        b=ffniiGdKKfcUKAJIxihU1nG2kbOHriMJgynNKjJT21wFw97lNPcMJ+HXUFbQ7EJt28
         yLcVAPTeAOELNB87Ygw3cH76ZHWhuruMXhh9ZX+wZJyN8bVlORiQx4vRaf3DpTRWYb3B
         SsnEp8Xd3zrfJkT33w1hiIegW9F3UyCEJ45qgw2fDWc/euuuv2MUpxxBVqceMmKVLpez
         LZ9eQlspppy563CT1bRPLGBAMeppMovoM9I99WXUaxiP6PUPBStnqlQrP5pLgV4WAMCv
         M4nDXYDtuYRVIzAeYDyI9U4snWHDHOC2TeOAhWUGkOMfbOJqFOb1w5jqfILU3dlb3oXb
         VUfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531y83bep1SizUlV8DqXReZe3YtEbbVIzN6opY/6wutSKbgAPb3D
	MItwHGdyf7YLhQJt3TyF4yo=
X-Google-Smtp-Source: ABdhPJx7gAVtBQ0ITLSGI7b9nm8ymEO+isOjd1P8O2pvAQq/mnkF/GW7w7k9O8zOoyePREzZkgZEIg==
X-Received: by 2002:adf:f1d0:: with SMTP id z16mr39506144wro.307.1625043275605;
        Wed, 30 Jun 2021 01:54:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:69c7:: with SMTP id s7ls1833945wrw.1.gmail; Wed, 30 Jun
 2021 01:54:34 -0700 (PDT)
X-Received: by 2002:adf:f689:: with SMTP id v9mr37503824wrp.314.1625043274689;
        Wed, 30 Jun 2021 01:54:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625043274; cv=none;
        d=google.com; s=arc-20160816;
        b=H+tMqeqtxjSB1YCKEJDTX1CQxw10D+lZrZ5p4QCD3EP/YT9x2IbhpV2fKhZai3joLe
         tM8tpJaf5E/LRN3BjOdm/gp5TpCoFLlC3ALTPhJ+T3jU/aB3AwNA0wytKji6td/ypKxt
         ObQi+AukjdOHbTqIQo9GuL9LvoT3oAW1F+xRp/qqHH3b2ONebJj2jStfIjTTpx8tH0/q
         KzQOBi32xz5/Gv52z5Ga83lkU06VT7BdfBvFhImL9vbzo+5fxEvfa3PW452pjM+PXVm6
         O/mbCNUFhIz6oWIpKC6tRHKm5b4Tl92hGkLWtWqhyyJjDLzTB+dCoIQJs+ktGUPGijDT
         w+JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=NwHF+CnA49ZfrFI1L/suIFtElPHVfLRra4Ay4o6repU=;
        b=q+//ZAq+8xXkpdSkYiRKQvTepTsaZerW41N+vn1/2Dj1CvDS7soQl7qdvBgBmtNmA+
         048WXJ6qhWgXBJDPQAB/nNTzx3oA1t2ovGr8pjzG3+j1Se38J4bjUTxMibIqhYomZyPJ
         8PoUDE6f731T+FcwKQixZLXn8WP84t3dj/33tyqJraoutwDlki0fNAefiMnaa7DaDSmV
         ZkHcrOsMWkYGMLw3jlFlNRR149QhQcgka3zTmHkFdWT4SimBFo/0k5URKNlmcXyqME4y
         KgX1iFaH0Obk/kzeRaaZTrqz8mhuo+nevyMY6q5sL6cu5V/l2yVt2qmBKndVb0gB3cjT
         DFjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id c26si1290287wmr.1.2021.06.30.01.54.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 30 Jun 2021 01:54:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id 2B2F71F433CE
Subject: Re: #KCIDB engagement report
To: kernelci@groups.io, keescook@chromium.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>,
 "automated-testing@yoctoproject.org" <automated-testing@yoctoproject.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Vishal Bhoj <vishal.bhoj@linaro.org>,
 Antonio Terceiro <antonio.terceiro@linaro.org>,
 Remi Duraffort <remi.duraffort@linaro.org>,
 Alexandra da Silva Pereira <alexandra.pereira@collabora.com>,
 Collabora Kernel ML <kernel@collabora.com>
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
 <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
 <202106011315.432A65D6@keescook>
 <774899c5-c20a-3d7e-3289-ee257b86e06e@collabora.com>
 <202106151501.235746C5@keescook>
 <f68058fe-a047-2c02-ce35-8349a95f69b8@collabora.com>
 <202106151557.B2C839D@keescook>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <faeea07c-6e5d-8efa-a246-b5ec1b1ef5a1@collabora.com>
Date: Wed, 30 Jun 2021 09:54:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <202106151557.B2C839D@keescook>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: guillaume.tucker@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guillaume.tucker@collabora.com designates
 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

+collabora

On 16/06/2021 00:02, Kees Cook wrote:
> On Tue, Jun 15, 2021 at 11:23:35PM +0100, Guillaume Tucker wrote:
>> +alex 
>>
>> On 15/06/2021 23:03, Kees Cook wrote:
>>> On Fri, Jun 11, 2021 at 05:11:59PM +0100, Guillaume Tucker wrote:
>>>> Hi Kees,
>>>>
>>>> On 01/06/2021 21:26, Kees Cook wrote:
>>>>> On Mon, May 24, 2021 at 10:38:22AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
>>>>>> On Mon, May 24, 2021 at 12:50 AM Nikolai Kondrashov
>>>>>> <Nikolai.Kondrashov@redhat.com> wrote:
>>>>>>> [...]
>>>>>>>      KernelCI native
>>>>>>>          Sending (a lot of) production build and test results.
>>>>>>>          https://staging.kernelci.org:3000/?var-origin=kernelci
>>>>>>> [...]
>>>>>
>>>>> Apologies for the thread hijack, but does anyone know what's happening
>>>>> with kselftest? It seems missing from the listed[1] build artifacts, but
>>>>> it is actually present[2] (and I see the logs for generating the tarball
>>>>> there too), but I can't find any builds that actually run the tests?
>>>>>
>>>>> (Or how do I see a top-level list of all tests and search it?)
>>>>
>>>> The kselftest results are all there on the KernelCI native
>>>> dashboard, for example the futex tests:
>>>>
>>>>   https://linux.kernelci.org/test/job/mainline/branch/master/kernel/v5.13-rc5-74-g06af8679449d/plan/kselftest-futex/
>>>
>>> Thanks for looking at this for me! :)
>>>
>>> How do I find the other kselftest stuff? I just see "kselftest-futex"
>>> and "kselftest-filesystem". I was expecting _all_ of the kselftests, but
>>> I can't find them.
>>>
>>> (Specifically, I can't find a top-level "list of all test plans")
>>
>> That's because kselftest is rather large, and we're only enabling
>> subsets of it one at a time.  As more test labs and more devices
> 
> Ah-ha! Okay.
> 
>> become available, we'll gradually expand coverage.  We might also
>> choose to have full coverage only on say, linux-next, mainline
>> and LTS branches but not everywhere to not overload the labs.
> 
> Doing this for -next, mainline, and LTS would be extremely helpful for
> me, though I suppose I mostly only care about the lkdtm, seccomp, and
> pstore tests.
> 
>> To answer your question about "all the tests", well you can look
>> at any kernel revision to see the tests that were run for it
>> since it won't be the same for all of them.  Typically,
>> linux-next has the highest number of tests so here's an example:
>>
>>   https://linux.kernelci.org/test/job/next/branch/master/kernel/next-20210615/
> 
> Right, that's helpful, but I need to know which kernel to test. It'd be
> nice to have a top-level "all the tests", and for each test, it should
> list the kernels that run those tests, etc.
> 
>> As you've already found, there are only 3 kselftest subsets
>> or "collections" being run there at the moment.  That's by design
>> in the KernelCI configuration, but at least we have good enough
>> support for running kselftest now which wasn't completely
>> trivial to put in place...
> 
> Right, totally understood. I spent time tweaking those pieces too. :)
> 
>> There are still a few issues to fix, but I would expect kselftest
>> coverage to keep growing over the coming weeks.
>>
>> If there are kselftest collections you really want to have
>> enabled, you can always make a PR to add them to this file:
>>
>>   https://github.com/kernelci/kernelci-core/blob/main/config/core/test-configs.yaml#L187
>>
>> As long as there's capacity for it at least on some types of
>> devices and it runs as expected, we should be able to get this
>> deployed in production pretty easily.
> 
> Awesome. I will do so immediately. :)

Closing the loop here, it's now all enabled in production.
Thanks Kees for all the patches both in KernelCI and kselftest.

Here's some sample results on mainline:

  lkdtm https://linux.kernelci.org/test/plan/id/60dbfb7de0e18e28fc23bc03/
  seccomp https://linux.kernelci.org/test/plan/id/60dbfbe2a9a5def16e23bbeb/


As a bonus, here's a regression already on linux-next:

  https://linux.kernelci.org/test/case/id/60db556ec143e8c85323bbf6/

It's passing with next-20210628:

19:26:49.968767  # selftests: lkdtm: READ_AFTER_FREE.sh
19:26:49.978731  # [   40.808124] lkdtm: Performing d[   41.274300] lkdtm: Performing direct entry SLAB_INIT_ON_ALLOC
19:26:49.982030  irect entry READ_AFTER_FREE
19:26:49.985157  # [   40.813688] lkdtm: Value in memory before free: 12345678
19:26:49.991294  # [   40.841184] lkdtm: Attempting bad read from freed memory
19:26:49.995147  # [   40.868690] lkdtm: Memory correctly poisoned (0)

Full log:  https://storage.kernelci.org/next/master/next-20210628/x86_64/x86_64_defconfig+x86-chromebook+kselftest/gcc-8/lab-collabora/kselftest-lkdtm-hp-11A-G6-EE-grunt.html#L3880

And failing with next-20210629:

17:15:39.454516  # selftests: lkdtm: READ_AFTER_FREE.sh
17:15:39.458520  # [   55.832953] lkdtm: Performing direct entry READ_AFTER_FREE
17:15:39.462522  # [   55.852501] lkdtm: Value in memory before free: 12345678
17:15:39.470520  # [   55.879964] lkdtm: Attempting bad read from freed memory
17:15:39.474530  # [   55.907455] lkdtm: FAIL: Memory was not poisoned!
17:15:39.490501  # [   55.934343] lkdtm: This is probably expected, since this kernel was built *without* CONFIG_INIT_ON_FREE_DEFAULT_ON=y (and booted without 'init_on_free' specified)
17:15:39.498502  # READ_AFTER_FREE: missing 'call trace:|Memory correctly poisoned': [FAIL]

Full log: https://storage.kernelci.org/next/master/next-20210629/x86_64/x86_64_defconfig+x86-chromebook+kselftest/gcc-8/lab-collabora/kselftest-lkdtm-hp-11A-G6-EE-grunt.html#L3879

Does this look legit?

I haven't checked if there was a patch to actually disable
CONFIG_INIT_ON_FREE_DEFAULT_ON=y and no automated bisection has
been run yet.  I'll share any results we may get.

Thanks,
Guillaume

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/faeea07c-6e5d-8efa-a246-b5ec1b1ef5a1%40collabora.com.
