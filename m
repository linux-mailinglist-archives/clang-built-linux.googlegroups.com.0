Return-Path: <clang-built-linux+bncBCZOPTGF6YHRBCNTWXVAKGQENMAZMEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BBD8789D
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 13:31:22 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id y24sf60203053edb.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Aug 2019 04:31:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565350282; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uts2aFPsQtBeZMXHJDWpjku9bZ/GxTgdU9SMbue+NZOLnggJw/0/9KfzHVs6CvI+sp
         vitXAr/N4fQQ+nnZEVK/1I/gCX2R/oDqX+jNmqB6zBHZA/OZJcaLcaYIyli53sEawn09
         ceyZMYjJqdve4DsIqMxtDyTR8Qwie6a8KZYSuFqg1z8c7WP4Byy6NPAdDV4BH6mcMIeH
         j/urEqqUzRk0gSxf5SMU3raCQKXfVMwU0N2V2VdeXqhph/hvuMAcGQHtj9voSvGWIp5Y
         qWSPXVTO0x+bnqfeqFGLj9DOLCfATL0u+7ZGzSJHbzgzoA7IhXTO2SPcrXON2nrISbKC
         wBBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=0RmWZMTi6Pg//x/WBS33B3yqR/ypIQUZxNzAuqUrBNk=;
        b=K2tmUqJt311tIwd5szej/P/pgEnEn0MNXCkL7P9KlBPrvHgLvBZFnp8mugt4DzWFTc
         vI/E4nk8T8LGViydXut7k51i7GByxQX6jxly72ELd75F4LqoHGK0zxqNxWmbGU5BQ8V/
         bo2dAKvp0TgDHpIXm71zlKSodUJTzy+OomeWNyKJMlqJs9KMjsCcHxCDsNXLb5TkKDBZ
         lvCHmRjsLI74hBIYipG5cZf20yj/LmH5oJVDq3fN0iUvxJlvCCpc7VjwJSXehI6GuzoK
         D+zfXDogF512J6t3lEuNl9adNNCsOrbtSHtAxUQ7K79ofnXik5xd1x+blWwStUV8KQUk
         YP/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0RmWZMTi6Pg//x/WBS33B3yqR/ypIQUZxNzAuqUrBNk=;
        b=hPfDyBjwd+m7gZFk4vHrJMbYB5i4osophZpKWjDYbuMckKLAg/A7SGgNGKgLZv3+vi
         TIHvuZTMHP+nBf7XARsgzy2l4zsyhdKwbj15AD3x+GSBW2LCwpdzc8BIOZIT4TrdCite
         gFHUklt1rOnHaApw3+CWxPznIDfV+mSJZ7EKIkaCRPJ0lP+5RRuEBGg1/jYN45B1zX47
         WJ01KAQZtmHRYu2mSSyXYFhDib6vWLRxUzbn7EqvDlA6X0YgPGIYqiSM5s2uLyZxG8ME
         VrUkJ69s/14+8kFD6ZkhGgdlT7XCLfhLaUTKztPGeayHdnS8IzFXV8vh1vWb8LDu4+g1
         F5JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0RmWZMTi6Pg//x/WBS33B3yqR/ypIQUZxNzAuqUrBNk=;
        b=PhurdvKE7Up8a1PTahF4U8/e8gytbxxNFDCSpmffdc61CZwE1TAqERr0kAVz7aiSgm
         FaUZSiaGEXsPX8wm0FGXdzjJkg4L/p8ZsduvxzrAOg++zJCmL4YCYHNaHfNLY7ayWJok
         yK0+HhRrFnrREzaP8PP6oDG+2HDDqv17VrjoV23A32hLASZGcV7KbsAhx6JsaMcdzqxA
         KpbTMygxypmKFRKsC3OvMpD3dv/PRIH37GoIfx7QXYn/2V90r3zx4kUN9VIL5PREI0ak
         cAr5/8nMBzJjCnNbj/A3LXyLTceJTTZMriZubdpFIB93kw7eVXjp0R0jxUE/y0pb5B4t
         1TFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUyC7zcnz107+aShmiWfmalNyqC1HEb88KLwEMkhEt0FDSba1IV
	H9MQd2nwZi8EulAE2uhGgN4=
X-Google-Smtp-Source: APXvYqwCZ62YrV/OdVR1JY4RF/wYipRfuK8ReYzaXyXn5pr7m/QUyBq3zzbgpjyemeIO3Oc6O8gV+A==
X-Received: by 2002:a17:906:a417:: with SMTP id l23mr18189774ejz.20.1565350281938;
        Fri, 09 Aug 2019 04:31:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8908:: with SMTP id e8ls27314583ede.4.gmail; Fri, 09 Aug
 2019 04:31:21 -0700 (PDT)
X-Received: by 2002:a50:941c:: with SMTP id p28mr22173882eda.103.1565350281579;
        Fri, 09 Aug 2019 04:31:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565350281; cv=none;
        d=google.com; s=arc-20160816;
        b=00lkhB0e+7kKXF4UfqSyHE8RyE5uyL7T9IvJu0rSw/n0LFP7MPuEYP64zTBeerDM2t
         tPYIoC2TTMpXC+wNU6XM0XX7lwf2Xp6gDDQIdx5YB3fWDc4wOubyqCp3FZob02fCwlWo
         7lhuGPHZhKqLrnJIeHXHbw3bfyaO8FUIljYeVQX65tckD7bq7HWPHPoOVMP6ya25h8gL
         Z8fsBpgQNMRhWUgU+A0gFh70qnI3oztfsxP9W58DyOVfQ1TbbQuAtpr1CIHT0pPnmsU5
         uFzDk1uTsaoll4GMvXza/YFq3KRAxx15J1cgTKjaJ38/qzzgu4lPH2HRvbZczfvYy0tn
         2w+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=Vq7mNP7L9E0dmArrNGLc1qhtbHiLYORZQFYGyL90Nn4=;
        b=sU68MNYjT+pvavWglHn6DLilJxH7GUjGKACbQfHYtNd4P0pwK/h2VTLXv7jItBXmju
         BgaON0d8WU9Fn+nrh2KJLC5HQg6dofkyVQlWAWIRRYjaeYOH1COxrHdHP5ijLd1Iveyz
         cljzZDKQ3KlRhKRCR3U6Z4YtR2KMHtiPVBXGjwyruTcYS18PFWBf4AVNyMZzQYSrMWE0
         kYoKeMI+hp59ScQf/1CKuEUSIeE0NxfPpO0pJ1rrIam8GI47zZliwJO9yuGaE5vdUUNL
         o3c0feyMYxd0BxDe25jYkPVIjG31kc3YEpLveHtk5G7h2XSEto5sseLN6gmTtCEbX3hW
         /8tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id jz14si4344372ejb.0.2019.08.09.04.31.21
        for <clang-built-linux@googlegroups.com>;
        Fri, 09 Aug 2019 04:31:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C4CDB15AB;
	Fri,  9 Aug 2019 04:31:20 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 39A283F575;
	Fri,  9 Aug 2019 04:31:18 -0700 (PDT)
Subject: Re: Explicitly marking initializer overrides (was "Re: [PATCH]
 arm64/cache: silence -Woverride-init warnings")
To: Mark Rutland <mark.rutland@arm.com>,
 Nathan Chancellor <natechancellor@gmail.com>
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Qian Cai <cai@lca.pw>, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20190808032916.879-1-cai@lca.pw>
 <20190808103808.GC46901@lakrids.cambridge.arm.com>
 <20190808170916.GA32668@archlinux-threadripper>
 <20190809083251.GA48423@lakrids.cambridge.arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8f0b6055-2e57-729e-af46-21c3bbe24ebb@arm.com>
Date: Fri, 9 Aug 2019 12:31:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190809083251.GA48423@lakrids.cambridge.arm.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Original-Sender: robin.murphy@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=robin.murphy@arm.com
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

On 09/08/2019 09:32, Mark Rutland wrote:
> On Thu, Aug 08, 2019 at 10:09:16AM -0700, Nathan Chancellor wrote:
>> On Thu, Aug 08, 2019 at 11:38:08AM +0100, Mark Rutland wrote:
>>> On Wed, Aug 07, 2019 at 11:29:16PM -0400, Qian Cai wrote:
>>>> The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
>>>> VIVT I-caches") introduced some compiation warnings from GCC (and
>>>> Clang) with -Winitializer-overrides),
>>>>
>>>> arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
>>>> overwritten [-Woverride-init]
>>>> [ICACHE_POLICY_VIPT]  = "VIPT",
>>>>                          ^~~~~~
>>>> arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
>>>> 'icache_policy_str[2]')
>>>> arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
>>>> overwritten [-Woverride-init]
>>>> [ICACHE_POLICY_PIPT]  = "PIPT",
>>>>                          ^~~~~~
>>>> arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
>>>> 'icache_policy_str[3]')
>>>> arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
>>>> overwritten [-Woverride-init]
>>>> [ICACHE_POLICY_VPIPT]  = "VPIPT",
>>>>                           ^~~~~~~
>>>> arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
>>>> 'icache_policy_str[0]')
>>>>
>>>> because it initializes icache_policy_str[0 ... 3] twice. Since
>>>> arm64 developers are keen to keep the style of initializing a static
>>>> array with a non-zero pattern first, just disable those warnings for
>>>> both GCC and Clang of this file.
>>>>
>>>> Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
>>>> Signed-off-by: Qian Cai <cai@lca.pw>
>>>
>>> This is _not_ a fix, and should not require backporting to stable trees.
>>>
>>> What about all the other instances that we have in mainline?
>>>
>>> I really don't think that we need to go down this road; we're just going
>>> to end up adding this to every file that happens to include a header
>>> using this scheme...
>>>
>>> Please just turn this off by default for clang.
>>>
>>> If we want to enable this, we need a mechanism to permit overridable
>>> assignments as we use range initializers for.
>>>
>>> Thanks,
>>> Mark.
>>>
>>
>> For what it's worth, this is disabled by default for clang in the
>> kernel:
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scripts/Makefile.extrawarn?h=v5.3-rc3#n69
>>
>> It only becomes visible with clang at W=1 because that section doesn't
>> get applied. It becomes visible with GCC at W=1 because of -Wextra.
> 
> Thanks for clarifying that!
> 
> Do you know if there's any existing mechanism that we can use to silence
> the warning on a per-assignment basis? Either to say that an assignment
> can be overridden, or that the assignment is expected to override an
> existing assignment?
> 
> If not, who would be able to look at adding a mechanism to clang for
> this?
> 
> If we could have some attribute or intrinsic that we could wrap like:
> 
> struct foo f = {
> 	.bar __defaultval = <default>,
> 	.bar = <newval>,		// no warning
> 	.bar = <anotherval>,		// warning
> };
> 
> ... or:
> 
> struct foo f = {
> 	.bar = <default>,
> 	.bar __override = <newval>,	// no warning
> 	.bar = <anotherval>,		// warning
> };
> 
> ... or:
> 	
> 	.bar = OVERRIDE(<newval>),	// no warning
> 
> ... or:
> 	OVERRIDE(.bar) = <newval>,	// no warning
> 
> ... then I think it would be possible to make use of the warning
> effectively, as we could distinguish intentional overrides from
> unintentional ones, and annotating assignments in this way doesn't seem
> onerous to me.

Tangentially, there might also be value in some kind of "must be 
explicitly initialised" attribute that would warn if any element was not 
covered by (at least one) initialiser. For cases like our 
icache_policy_str one, where using the "default + overrides" pattern for 
the sake of one reserved entry is more about robustness against the 
array growing in future than simpler code today, that could arguably be 
a more appropriate option.

Robin.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8f0b6055-2e57-729e-af46-21c3bbe24ebb%40arm.com.
