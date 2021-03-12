Return-Path: <clang-built-linux+bncBDUIPVEV74KRBJ7EVKBAMGQEDJSLD4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F2A338220
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 01:13:27 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id v13sf10300630wrs.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 16:13:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615508007; cv=pass;
        d=google.com; s=arc-20160816;
        b=cgs90JoUdTzTOSdublI7YEFuRlI2B6q9c7D01bthQiWxH9T3dZcDHz41jgTmly+iRS
         n2QJangDwuJSFzaoGN/zaRisZb5Q4m56moWTDmjOZEhgOO711w0rwK7ERXi0g/muk4g0
         t7Sp9snmyLtZl7KE3pl3bF0S/fWvs6Xvy7WRtdbuSno5H+FQdc4wo9eyS8CW3cX72u26
         TVIH4Hr5GdOq3OVy/+qwp//zSZ5AFvXOfRn8kxccZ2YsB1ucGCeTp2rAw39G9ljnFNJg
         YKl1t6I3SZMwaMFNEYT2EUE0X2ruEKP8jKE4tSAZDCERnzuEYEK8qLgeJlCYvRJ4+4oM
         kn9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=QVBceCW5m4OKTJeWaqU31I0huvUHIu4TN2U8TlGQURQ=;
        b=IkfY99sV0Hf37GQPDnO2RCewrq/rf4rJfPuCpM0Da5EdA/eRKqX83hAHa/2Ia5QEsk
         6rm4kYGgCzoK5GPRt8AvqzUluh6QOWn6Tjy/8lsAd+UsyaHjCB4FG/mKAQcA/XGKgt8Y
         G03NCfVwyWff0K+howTLOZzhDg5SMeSa6vOGFN5/fuLYvSjxh4yTqOsaqTISQIh69h+R
         6U7DYPQhU8u6uXyZQHIuVOWTIc6jcQGi+iqZ6z7nXjOTL02csTo3m27C6DfuLblJfYZl
         UdvIq/p9WOMgzKJPuNrQ67h48DhtH0xaQo4ZEZCTSQWip4RL8OInCVTkmK0E549lILRz
         JDWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tpybh/hf";
       spf=pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QVBceCW5m4OKTJeWaqU31I0huvUHIu4TN2U8TlGQURQ=;
        b=gln/6sjufDO0uoze7f8gcsRtn2OOY3QhAgYlKQD742RbS8T3UsFFaO2dX53+tatnEF
         wIZ8q7MHoWCTkI3Hvb6xZbjTk/J5AykGReN6vGSeiWVys53HFzjwVNCSVqjaU6x3pXML
         1lM9ABuBRBAGFKtEt14JV76DB5amocWXcO6Snqn5a1egxrGb/yWgJzzr8/wxtucB9ruz
         PockbkVPc2GlBRz6aEo4oiPDTxef9rTfhPfuRX4ttKo6IxjdrYxe3tjiQywfgofsSg+d
         VbVP2qaVswPIXxKaiKLdE7OETDUJuGybNGC0hvvQpzBUWxh8UjeE7jTQlIz2Nm1lnfZ0
         6esA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QVBceCW5m4OKTJeWaqU31I0huvUHIu4TN2U8TlGQURQ=;
        b=XzUwFLnZH9UN0AOgLf0Ba/M9zLl/jtC6676o3sdOiIp9sNEgwoYe8VNBSJrRCnATa9
         xbiOTJjs3uAAmkX9K8B+HYijeRZcQIHTkBUzFOzqpFtoy+D5A/z2YuA2iZOTMk05JcW5
         ROeS0Y19R8wQJaQ+f6j9nAY8B69q/9b3fP03zRD8/NWXNzyv+iKUnn3MXlsD7S/gxmYz
         nk+J3j+uKZCdl8r8Ml20hIDvB9/VsPyS+Ii7K2qsQ6GkV6vuWcU3ncb800/VKCPhQy+w
         OHyqLw54ei8gnLS4DPk43WJA8JlElvWx6Vmf1RKOV3EYqCtcmGh2euA4J/gOoH/CQCB+
         tWbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QVBceCW5m4OKTJeWaqU31I0huvUHIu4TN2U8TlGQURQ=;
        b=IJfp59Z/wZn4kA1h25oUNRckw2jgVLXALX1nKEVco0le6ZRtfR5g0QhxHvFv777Ure
         rl9383H97167n1gmYIzMvw4CsfQ1PIQw+7/KskX79bBMhhemGXaAov102w4+4P8EHoUw
         ITxngNynZ4dGe8ydy8DfEyz/ev2HU36Wv94DexyzjI+uawgxfapAaK+e3+PFjbPSpBDL
         zhWFwXA4gT5ApGqqSCIrBlp0/KJn724z5ZNWcJk5SsGBuSChH35JJfbJbVB6sQfXLWN2
         dfvRQ00visvJ8kO7VMrFAZzL6++Nnky+E+5Ofjlbkb5LusbQuWzlWhVeBrHaEzPD1seS
         iB1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53308KrOYxF1kPId6IbGexBiEUvTc9OAxddddEiuM2kocGhun4HV
	WrdGvFLyUBvfZPnGnoEZCvY=
X-Google-Smtp-Source: ABdhPJwZWCSW3swsgupJP+/p/6z84Foq6dWpNe081JyNYhv6dODrOf9GVvZSvT3zaebFH7wctZtRHQ==
X-Received: by 2002:a7b:c316:: with SMTP id k22mr10335544wmj.176.1615508007322;
        Thu, 11 Mar 2021 16:13:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls1820014wrb.1.gmail; Thu,
 11 Mar 2021 16:13:26 -0800 (PST)
X-Received: by 2002:a05:6000:18f:: with SMTP id p15mr11288729wrx.23.1615508006518;
        Thu, 11 Mar 2021 16:13:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615508006; cv=none;
        d=google.com; s=arc-20160816;
        b=F3tt/ToF3aRgQljQfHJpuKTTv0R419hf6PXvm0Y7EpITCCXsCQiRwOKdl0fy3Ep02T
         tiD2V2ge4jDIeumbYhGbUSpM3xkbz8C5HkPZ/4w7w8RbHjfu0krbWlGwjGSA3a7CmBwG
         77z7lCoNppnIiHb57WCyqZgqGW4zGP/X/jodusMGKCFGUQXCr50RHsHdeGbojS7Xz8a0
         5+p8S+K+Oo2B54h+BIkJ1Z5wm6dQ2HCGE6MGqJPm1X37v1M3huE7D2OeaaEWulgOtWF0
         uJyoVgaTwm18YxBAF7AjqTEZ8BYe3KzNoySmprzGr8K5SQWZOqhiEWdOYzampIyO1z3e
         4ZSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=QsUXZR9XS9PG5oKJhSRrJkrlaZau+ttlNcJKeApcmrU=;
        b=jO7ObC+Fr0cWFIbKGIzpLPR2j/TUlKjPvG4/N1ZP9yN0JiQ09ydh9V/rMgbUodA2yv
         0UN379iQ2kzFDGcp3a8p+hiXQ1oc2MQgrCYBr0vaEC5JDXGLFyJWJg01hn1klayOy6Ed
         b98gY0+DdKB9RlMVpZEhQrlHraLZVhWxrWI2krGEG7vkkIteTJxf0qEnqzSPoPVYFsvB
         8V810q/txSUc7QCrPh16CPSDOOAqrnk/WCVMIQaCf1wxLRl0MU4uTzvvMVVWwS8/WY66
         fuPgYju55T+drKjALFkGmBBwqBS9cRbzIz4RK/Khi1eKVaYjPwrcy9HIygx5seM9++6p
         15tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tpybh/hf";
       spf=pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id q145si154381wme.1.2021.03.11.16.13.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Mar 2021 16:13:26 -0800 (PST)
Received-SPF: pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Received: by mail-ej1-x62c.google.com with SMTP id e19so50036994ejt.3
        for <clang-built-linux@googlegroups.com>; Thu, 11 Mar 2021 16:13:26 -0800 (PST)
X-Received: by 2002:a17:906:1a44:: with SMTP id j4mr5759061ejf.401.1615508006304;
        Thu, 11 Mar 2021 16:13:26 -0800 (PST)
Received: from [10.20.0.8] ([37.58.58.229])
        by smtp.gmail.com with ESMTPSA id k9sm2182001edn.68.2021.03.11.16.13.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Mar 2021 16:13:25 -0800 (PST)
Subject: Re: [linux-next:master 1430/3917]
 drivers/platform/surface/surface_aggregator_registry.c:398:25: warning:
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes value
 from 65535 to 255
To: Nathan Chancellor <nathan@kernel.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 Hans de Goede <hdegoede@redhat.com>
References: <202103112158.loq4oyJu-lkp@intel.com>
 <8c252429-5000-0649-c49f-8225d911241b@gmail.com>
 <20210311185154.6uysryumfho73zlb@archlinux-ax161>
From: Maximilian Luz <luzmaximilian@gmail.com>
Message-ID: <7db15c91-db37-69a4-84b7-6f58cca2ee1b@gmail.com>
Date: Fri, 12 Mar 2021 01:13:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210311185154.6uysryumfho73zlb@archlinux-ax161>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: luzmaximilian@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="tpybh/hf";       spf=pass
 (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::62c
 as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;       dmarc=pass
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

On 3/11/21 7:51 PM, Nathan Chancellor wrote:
> On Thu, Mar 11, 2021 at 02:39:03PM +0100, Maximilian Luz wrote:
>> On 3/11/21 2:06 PM, kernel test robot wrote:
>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>>> head:   98546348153dee5f8ced572fd6c4690461d20f51
>>> commit: 797e78564634275ed4fe6b3f586c4b96eb1d86bc [1430/3917] platform/surface: aggregator_registry: Add base device hub
>>> config: arm64-randconfig-r026-20210311 (attached as .config)
>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 574a9dabc63ba1e7a04c08d4bde2eacd61b44ce1)
>>> reproduce (this is a W=1 build):
>>>           wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>           chmod +x ~/bin/make.cross
>>>           # install arm64 cross compiling tool for clang build
>>>           # apt-get install binutils-aarch64-linux-gnu
>>>           # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=797e78564634275ed4fe6b3f586c4b96eb1d86bc
>>>           git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>>>           git fetch --no-tags linux-next master
>>>           git checkout 797e78564634275ed4fe6b3f586c4b96eb1d86bc
>>>           # save the attached .config to linux build tree
>>>           COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>>>
>>> All warnings (new ones prefixed by >>):
>>>
>>>      In file included from drivers/platform/surface/surface_aggregator_registry.c:12:
>>>      In file included from include/linux/acpi.h:35:
>>>      In file included from include/acpi/acpi_io.h:7:
>>>      In file included from arch/arm64/include/asm/acpi.h:12:
>>>      include/linux/efi.h:1093:34: warning: passing 1-byte aligned argument to 4-byte aligned parameter 2 of 'get_var' may result in an unaligned pointer access [-Walign-mismatch]
>>>              status = get_var(L"SecureBoot", &EFI_GLOBAL_VARIABLE_GUID, NULL, &size,
>>>                                              ^
>>>      include/linux/efi.h:1101:24: warning: passing 1-byte aligned argument to 4-byte aligned parameter 2 of 'get_var' may result in an unaligned pointer access [-Walign-mismatch]
>>>              get_var(L"SetupMode", &EFI_GLOBAL_VARIABLE_GUID, NULL, &size, &setupmode);
>>>                                    ^
>>>>> drivers/platform/surface/surface_aggregator_registry.c:398:25: warning: implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to 255 [-Wconstant-conversion]
>>>              { SSAM_VDEV(HUB, 0x02, SSAM_ANY_IID, 0x00) },
>>>              ~                      ^~~~~~~~~~~~
>>
>> This is a false positive:
>>
>>>      include/linux/surface_aggregator/device.h:71:23: note: expanded from macro 'SSAM_ANY_IID'
>>>      #define SSAM_ANY_IID            0xffff
>>>                                      ^~~~~~
>>
>> Here, clang complains that the input is SSAM_ANY_ID. That is a special
>> value which has special considerations below. The SSAM_DEVICE() and
>> thus SSAM_VDEV() macros are intended to only allow either __u8 or
>> SSAM_ANY_ID as input in this place.
>>
>>>      include/linux/surface_aggregator/device.h:126:63: note: expanded from macro 'SSAM_VDEV'
>>>              SSAM_DEVICE(SSAM_DOMAIN_VIRTUAL, SSAM_VIRTUAL_TC_##cat, tid, iid, fun)
>>>                                                                           ^~~
>>>      include/linux/surface_aggregator/device.h:102:41: note: expanded from macro 'SSAM_DEVICE'
>>>              .instance = ((iid) != SSAM_ANY_IID) ? (iid) : 0,                        \
>>>                                                     ^~~
>>
>> Here is the special handling for SSAM_ANY_ID. So there is an implicit
>> conversion from iid, which may be __u8, to int (i.e. the type of
>> SSAM_ANY_ID), but there is at no point any implicit conversion of
>> SSAM_ANY_ID to __u8, as clang alleges.
> 
> Looks like we are getting bit by https://llvm.org/pr38789 here (also
> tracked at https://github.com/ClangBuiltLinux/linux/issues/92).

Thanks for the links! Looks like this is the same issue.

>> Is there any way to silence this warning in particular without
>> suppressing it (e.g. by explicit casting) when users of this macro
>> _actually_ input any non-u8 and non-SSAM_ANY_ID value as iid,
>> leading to an _actual_ implicit value-changing cast?
> 
> This has been worked around once before, commit b27aca2e555f ("soc:
> rockchip: work around clang warning"). I am not sure of another way to
> silence the warning in specific instances like you described aside from
> just fixing clang (which is obviously the correct solution) so that we
> will get real warnings.
> 
> Unfortunately, the patch that is linked in the LLVM PR above does not
> appear to fix this instance.

So what's the way forward here? Ignore this warning for now and wait for
the clang team to fix it or find a workaround?

The best workaround I can come up with is setting the match_flags
parameter directly as macro argument, which would be a bit more verbose
and feel slightly less clean, but would do the trick.

Also note that any changes to those macros would have to be synchronized
with a couple of patches which are still out to non-pdx86 trees, so if
we're working around this it's best to do this as soon as possible.
Specifically talking to Hans here, as those patches all have a
dependency on stuff that's only in the pdx86 tree right now. I.e.
getting the workaround in before setting up a tag for those dependencies
would simplify things.

Regards,
Max

> Cheers,
> Nathan
> 
>> I believe GCC does get this right and only emits a warning if a
>> non-u8 _and_ non-SSAM_ANY_ID value is input.
>>
>> Regards,
>> Max
>>
>>>      3 warnings generated.
>>>
>>>
>>> vim +398 drivers/platform/surface/surface_aggregator_registry.c
>>>
>>>      396	
>>>      397	static const struct ssam_device_id ssam_base_hub_match[] = {
>>>    > 398		{ SSAM_VDEV(HUB, 0x02, SSAM_ANY_IID, 0x00) },
>>>      399		{ },
>>>      400	};
>>>      401	
>>>
>>> ---
>>> 0-DAY CI Kernel Test Service, Intel Corporation
>>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>>
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7db15c91-db37-69a4-84b7-6f58cca2ee1b%40gmail.com.
