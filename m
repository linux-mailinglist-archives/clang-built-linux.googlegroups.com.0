Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBF5N7KAAMGQE6LUKCNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6833311D5E
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 14:16:07 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id t4sf5057165lfe.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Feb 2021 05:16:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612617367; cv=pass;
        d=google.com; s=arc-20160816;
        b=IIzEqgEhGw1CZQa1uO2XgQoDVGvJIVsDkdt/HwmaCg7/ZSZZLsjH0ECisCpN8xzlDG
         3L7fpMQPpRmIolJ5eTRI3DCDXnipHUpMt5dplzRVrqOCvedqgxJIlTMNI1b7IcYZutwu
         E0/2fD3cQNkWsero6oX3bnz3e7aDd6ENVcfc8tSeYt0rNafRBQUm4Yu57y1QLPIH/YfJ
         CGgW/c1pFsn+Vxil0HjrtzekcWSptBbINj1AtmpG9WgZlUGBx96kfoNsgBhzqax8pftD
         MPQrhC5sWbJbrikrnsO4NIpDix5KUW5DUJ7ZT+YV051oXma2u9i1eEPwQEdZHFjErtxP
         6G4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Fg7G4ZpB2QMsLHfo48ejOP3OKDb0k5bqvzKnmALSSF8=;
        b=EcdoVXEltV/If4pzOGuBvQ+cHMt2TB24mGWiVJQeDsmw4hg9cp0DzbpQQf3cyhSpLS
         eWk+Zsx/js/UO27aZBV2kkXhvwE4YUVMbS/I7Y4LWRIj6P1xylpOG7LmdUFEPfHzl7fP
         rpqA4XivPKw0x15qDIozK9UgBQpNmt8u/XuBRhbIe1m2NPBOUFKz2NnUQa2eaTfAIHv7
         UsJ2k4jXGxOJeQbLpTVuqnEJPQ7PgoMKbJfpX0GFHA8muacLt/oPRKeHUqxesOl5ZOUv
         cFS9RwJMmFwYuaEJ/228QqU8UNeag7TPw1oXtJ8azGqcMvNm3k1566MqpJtesDf9k59t
         gZLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fg7G4ZpB2QMsLHfo48ejOP3OKDb0k5bqvzKnmALSSF8=;
        b=DnSJl0qpEONYnjfEZQ9MlwzOSmIUxtkYh9f8iM+pdZxH8ZBRw/pyFGVjZiM/gPmplN
         /Z1m44OUWMmOj0sl6g9DGFltmIhCtVTrIRkbuoHV+YNS+52BPeDn9JVx5GkCQrHorAs1
         CAXF33lvSvMIn/h96niVkNSkZFcRV7jd9Fv3xAreT0PfGRF27lmCik6UZZqNDw4UEEkF
         hAyap6xMzlmZT8l3N0ZH9lqQHfXomqNs5arSM8rQyh1tVv/dHaM7WsXhAVfiuvnBmtte
         rugE67wgp9OqgY/OxyOcejhXnuKN7eVKvlEIbwaNMszfdltPuNjJ+lsxM7MVUUFqHRsg
         vzIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Fg7G4ZpB2QMsLHfo48ejOP3OKDb0k5bqvzKnmALSSF8=;
        b=XptMRoXGB5BWhmn5egFDImLWJ/JNw3y+4uq4Oa70wpLSDjtjgJpPSbMV35s3S6gbiU
         RXWegs/Vbk+JithABWib86JVx9mE16ywHI7dzsPwOEVrFDPEz8uOpe6b6nWZCsq+mMKG
         rqGPSBUjwpb7Ht5d3Ng+qRMECZqSwC2aYMOG3dCycgMzSdV/XSw6lMZvLxKwqpR164OY
         iIQruip36fdsxj6Hq/fcym+HYYKwYv+PNIxYqP2uT4tTk33YFqmBI+3rPUQTmozW9GGq
         0PQwCJ7w/hazYcjRJCPj+TLh2T+VgW91I73Hse/O3uTBXABSjlPYjAOY2kil+WqKhf4f
         /FoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531md6lBT524q9YszVgUGIPAj6g8Nsm1GBZcvgtOInAK4NR461hl
	TgunN77GaMX+yYZ3DXWGXq4=
X-Google-Smtp-Source: ABdhPJw86sEjZNE//kjck8NZ9Aq422QSRfa9ac17yLwrdkFa09yoeaub+pw5boQCp1Vq8FyVzbX6hQ==
X-Received: by 2002:a2e:9252:: with SMTP id v18mr5612423ljg.352.1612617367460;
        Sat, 06 Feb 2021 05:16:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6d4:: with SMTP id u20ls1312872lff.1.gmail; Sat, 06
 Feb 2021 05:16:06 -0800 (PST)
X-Received: by 2002:ac2:4561:: with SMTP id k1mr5130983lfm.70.1612617366370;
        Sat, 06 Feb 2021 05:16:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612617366; cv=none;
        d=google.com; s=arc-20160816;
        b=W3rf0vEZKIADJcjx/WQE0PKn9PRA5mOAjd3XSuYG+1A8M0aYforgc3EZcTqHqKULgt
         2e/kz8gcn6lESp5690VzcCYFg0YbRFpQPztHJsPGM36zjxSO7k/xxv/JXG/o6YE4qsGF
         nXX3Jx5DVKn6QIAp/fnfjUVbsPmI8y2RgkC7VIxx5T3ffyH1IJQWo60V9dA/buZPHzLC
         NkPDXW9V8uDMhCnFX3VIrDYzmab0uLD52trSpWYnNGYyGP8b1FdTyw+iTnfayuRWH6yr
         eQJ23obEFcmz6n0tbO0m4ajlV+/bs2YKaVV8nS2aEjcpkGBa/89CwoeewwooEG9KpUBM
         /d+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=8CgP3roMpUuLL/Ms5+D4PW8PgsWtYyXiINyp71BxGss=;
        b=Bjz0nF+/v/U3crmtCE6XJkCpKH6Sc6ugrA8EZRx0tclC51XBTJNi8lXaZuBHHl7eIP
         1KtQpKi2LFpUZj+E3fDU43HRgpnjLQUTuceieEodvUN/lujhfvJxVg/xQ5NpI6Wfrei9
         tZN4TtJ205DJusfQVnQ7uSNRx96iH4FRXSn18v6aZBBpyDvp2GgWktF71m8AW6HAo6uX
         eXomx6W9Io1d33F98GpfPv5zTBSJK1ejoKWBHw5BfJ6wnJPTJrvR/AkS+J/PdMZmbdrq
         7tHZd7+H6Ex+kP4Z6lwQDF0LxKdfK++kz7JWngXC3DVK6TTJYl4nHUgjFK9hu4K0xSTp
         5JGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id c20si517453lff.11.2021.02.06.05.16.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Feb 2021 05:16:06 -0800 (PST)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id 36FA71F4656F
Subject: Re: [PATCH] ARM: decompressor: fix BSS size calculation for LLVM
 ld.lld
To: Ard Biesheuvel <ardb@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Russell King <linux@armlinux.org.uk>, Nathan Chancellor <nathan@kernel.org>,
 Fangrui Song <maskray@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210205085220.31232-1-ardb@kernel.org>
 <CAKwvOdkg75CRM0QNeO4ojM=OndFgJ+j7fO3Yt=jE4k0eTfYmRQ@mail.gmail.com>
 <CAMj1kXHKOEJokzHH_Bf0bq-ATmJ4u-yZUN_tAYJvTX4c_trMXw@mail.gmail.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <b68e267f-ec86-4ae4-7785-7fc9162a7c2b@collabora.com>
Date: Sat, 6 Feb 2021 13:16:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAMj1kXHKOEJokzHH_Bf0bq-ATmJ4u-yZUN_tAYJvTX4c_trMXw@mail.gmail.com>
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

On 05/02/2021 18:11, Ard Biesheuvel wrote:
> On Fri, 5 Feb 2021 at 19:00, Nick Desaulniers <ndesaulniers@google.com> wrote:
>>
>> On Fri, Feb 5, 2021 at 12:52 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>>>
>>> The LLVM ld.lld linker uses a different symbol type for __bss_start,
>>> resulting in the calculation of KBSS_SZ to be thrown off. Up until now,
>>> this has gone unnoticed as it only affects the appended DTB case, but
>>> pending changes for ARM in the way the decompressed kernel is cleaned
>>> from the caches has uncovered this problem.
>>>
>>> On a ld.lld build:
>>>
>>>   $ nm vmlinux |grep bss_
>>>   c1c22034 D __bss_start
>>>   c1c86e98 B __bss_stop
>>>
>>> resulting in
>>>
>>
>> $ readelf -s arch/arm/boot/compressed/vmlinux | grep bss_size
>>
>>>   433: c1c86e98     0 NOTYPE  GLOBAL DEFAULT  ABS _kernel_bss_size
>>>
>>> which is obviously incorrect, and may cause the cache clean to access
>>> unmapped memory, or cause the size calculation to wrap, resulting in no
>>> cache clean to be performed at all.
>>>
>>> Fix this by updating the sed regex to take D type symbols into account.
>>>
>>> Cc: Nick Desaulniers <ndesaulniers@google.com>
>>> Cc: Nathan Chancellor <nathan@kernel.org>
>>> Cc: Guillaume Tucker <guillaume.tucker@collabora.com>
>>> Link: https://lore.kernel.org/linux-arm-kernel/6c65bcef-d4e7-25fa-43cf-2c435bb61bb9@collabora.com/
>>> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>>
>>
>> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>>
>> Thanks for debugging+fixing this, and Guillaume for the report.  It's
>> nice to see a fix so early; thinking back to last year before KernelCI
>> integration, we probably would have only noticed when CrOS went to
>> upgrade their rk3288 platform devices.
>>
>> Some other tags that might be nice to apply:
>>
>> Cc: stable@kernel.org
>> Fixes: 429f7a062e3b ("ARM: decompressor: fix BSS size calculation")
>> Reported-by: Guillaume Tucker <guillaume.tucker@collabora.com>
>> Reported-by: "kernelci.org bot" <bot@kernelci.org>
>>
> 
> Thanks. I'll add these tags and drop this patch into the patch system

Thanks!  You may even add:

  Tested-by: "kernelci.org bot" <bot@kernelci.org>

See some results here, showing it's all booting fine:

  https://staging.kernelci.org/test/job/ardb/branch/for-kernelci/kernel/v5.11-rc6-146-g923ca344043a/plan/baseline/

with this revision from your for-kernelci branch:

  https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/commit/?id=923ca344043a19067c21f46bd8649f35f61ce920

Best wishes,
Guillaume

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b68e267f-ec86-4ae4-7785-7fc9162a7c2b%40collabora.com.
