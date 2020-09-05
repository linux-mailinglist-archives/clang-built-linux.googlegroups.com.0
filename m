Return-Path: <clang-built-linux+bncBDV2D5O34IDRBF4E2D5AKGQE2VT6QJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDD925EAF7
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Sep 2020 23:24:40 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id f22sf2946816ljh.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Sep 2020 14:24:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599341079; cv=pass;
        d=google.com; s=arc-20160816;
        b=OqTxK4Y6SVCuaztHEFoAL1tyzMsjZgBOs4l6MqsGuL5KSTHL5QtcLFj/f9x/Og1BD3
         uRoOC734M9G2Xzw/6LOwotA8qvhb95IsZvfLoQbv9vS4NKkUnSzCuUJDQDO/EiYm3i2x
         bq2gQqYUuSltURTJyCDW2aOINEaa80GMCOcPhQyIoFHHVj/Qf2UKLzUQ48W99BcEQoyz
         exF3vOOAdm+VUTSOwLPvJgH8Kt16GXJo3QTqEVSu0RmZ0toBQ2OQ0qMGvTQ1fzjn6ssW
         /4XdPYx22GH1npGrc03FGrs0dxIJS8EZAP4cjaslmL16X8AxZBAF04boNxp7HI91k89t
         zaKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=tgBdX8i7Q00EyOQ72uhqdzwZ9rFjubTtSpHnr95OTTc=;
        b=cay0kk470aoktTfsn5zlSMl63wkoTBTGWEZlxu1NV2jhO0CnMomg2o7Y14VOoWJJlD
         5Q/WhiW3QbQTPyb8RXI+EzDGFWP7lFKF7m7b5Nn4ED7OnuljvAXgQTaHiATiImpcbGBa
         kpkr9StE9ZyC86L9OciLy7tirP5+5creU73s64rD+ql7/Q4vHbClY3YBGYOgapeM3Fhi
         bBVDfjanCaKPwVnbhJGLiWFbd4QWKD4Pr435J8KNdQzbhwCslMC5nJ+BxolcBTIJ/Wli
         Zdw6dX063xUc+82DN14fMTXNMJUuuD362u9ErKhfc70lmuscD8YOuAmS9crfQGbdjk3E
         DZjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=uNGSW3wj;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tgBdX8i7Q00EyOQ72uhqdzwZ9rFjubTtSpHnr95OTTc=;
        b=f/VqNj+eW8HMo03/+YGqsSLZpjhe4YZQfZD/wKIY+q1L1kvtMELOEhQAHBW83dU8os
         3YvdiYfFxve5bEoxVteUEPlAr0ERk2CuGC/P6szqoi8JQ3bV+xwsM864Rf/QbuMLJeK0
         L+zvAGIEwCF5BfaCs6vMumbggJ/QJlL5syRtoJxFlPFUIyX3PE6umDlB9uWPYfE9jCCb
         23Gy6OIZLYpHuTekStXDZKu++Sbq0BxIedaKNn3SVab44CD9zNV+9MCoeSwnXHN9O/G8
         8GExeg28q+o+T/7muztvSMFThLMfCgn5gc1RquXvaj+qernqk7OvZKfYw8eS95mdAeYI
         XulQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tgBdX8i7Q00EyOQ72uhqdzwZ9rFjubTtSpHnr95OTTc=;
        b=B+pzijrbVqfEQpp/HPrUpj3EwUdAhImmQUE8kwKHcFPJU+sOVLdRnCTLDrho5juG93
         pB0AfRJD7f2MUT8qvXyNRCStqdaUeCxpxY3vEXsJraoZ90kDi8/pFZxA/aVgzD3jHar4
         X/EkP3I/3YrEaSaOl6OTKdxX+QekqTJcG01Mw+lIZX8HCNr1TH7fhkJ4SlpQMceR2Cmf
         sGXLbLAC8AoTGKxoZsTF+wbCEMahQ4GDWjHueXFJYZjVuM86BK2wqQyQPGeOj9zlxp4w
         HKz9X8EOO4tlFlkM17ZyNqWEHsa77GvHyfCxweeg+EgVZU4Vy3lU4u8OsSz3NwDoofXL
         xcaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lI77ostkJCu+6dpaFLDJX8h04NRC+OYW5xFB/thgf6eUXbQIF
	+pgtg7uqcgUNvhfsMFOYjUY=
X-Google-Smtp-Source: ABdhPJwlemXjzOT5gpuj2EQ2HC7Ge4FAQuu+xHWGam0HPQUp7vETcymYNZhRJXCu9qqCkemn81ql3A==
X-Received: by 2002:a2e:970a:: with SMTP id r10mr7170883lji.453.1599341079793;
        Sat, 05 Sep 2020 14:24:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b1c5:: with SMTP id e5ls2525161lja.0.gmail; Sat, 05 Sep
 2020 14:24:39 -0700 (PDT)
X-Received: by 2002:a2e:8693:: with SMTP id l19mr6559767lji.25.1599341078992;
        Sat, 05 Sep 2020 14:24:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599341078; cv=none;
        d=google.com; s=arc-20160816;
        b=ovYzS2sVp6MKbdmhwoS/xxFBFWASDe+vs1fLmQ8jAddN3JuyhsejcgrUa+XoJSgq5V
         eA5FYRSguUVQ/3e7aGUbJyDidfTV5eAYPU79Nnf4853ey55MRgOOW0yPVzKfXMPRZ69w
         hmFY1NFoI65WyjtLxx5ndWljbXw+gJLbT463ycrtHH9JTADP7O99y6zvw9LcZ+92Srxn
         CYaU4G5n/EPhUK3wuqwn5NanW6mu1hORY7UJARAjLpkkpxS2OhyiZQkn0HrgGPSp/rbg
         aCld3XOJmVdmxF7w1BoLtAqEyvuUtxSKEfwH4P0Wu1RFIJFcS8XCW50CU6XEVtQpxhfp
         jCWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=1az18tusBRDu/RdsUgvFWppIghn9k7TUdFnp+hGgspo=;
        b=qHH8rb9IAaLt7WUX0856Ha9cMqDCaQmFm7JojSYSrAyjaUG6ANlBMQsOjivTx5rAii
         /qjtFqq5C0t6ozOuDO9MLsIgOwX13hH3C5T0uTJ7gSaQhtCcNGisdwu6w7FyUOSI9SHY
         LwTR9WrSoMZsKMZe88t0JSxnZSXaZqgvgpqPf2yi5CAYLIhZq0RzhLAxICUiYfcWIQ9B
         MJUI25GSQoEh92e/0eMbtGZAiWPLZX+e0DSZ1ySEOz4XxomLSJrUL4/GBcQZH2/V4SsR
         bnlmd/xWCX6+yPQcPPDarnzJgjgZrco1PQ2OZ1U8WnMAznkVyaR8owd/lhqjOEsHahN4
         9mTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=uNGSW3wj;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id r16si203262ljg.1.2020.09.05.14.24.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 14:24:38 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2]
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEffk-0005Wk-TF; Sat, 05 Sep 2020 21:24:33 +0000
Subject: Re: [linux-next:master 2890/4758] ld.lld: error: undefined symbol:
 phys_to_target_node
To: Joao Martins <joao.m.martins@oracle.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Vishal Verma <vishal.l.verma@intel.com>
Cc: kernel test robot <lkp@intel.com>, Dan Williams
 <dan.j.williams@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 Matt Fleming <matt@codeblueprint.co.uk>
References: <202009031338.VZC7AOSw%lkp@intel.com>
 <aaae71a7-4846-f5cc-5acf-cf05fdb1f2dc@oracle.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <e56ad91f-4418-fa3b-1381-f3b3234fcc04@infradead.org>
Date: Sat, 5 Sep 2020 14:24:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <aaae71a7-4846-f5cc-5acf-cf05fdb1f2dc@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=uNGSW3wj;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 9/3/20 5:31 AM, Joao Martins wrote:
> On 9/3/20 6:49 AM, kernel test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>> head:   4442749a203151a319a5bb8d0b983b84253a6931
>> commit: bd295a352cfa24e5110a53f978edb48b7c21ff8f [2890/4758] ACPI: HMAT: attach a device for each soft-reserved range
>> config: x86_64-randconfig-a002-20200902 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 224d8153b53b16cf535ea1a55afdfe1ec5b1374f)
>> reproduce (this is a W=1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install x86_64 cross compiling tool for clang build
>>         # apt-get install binutils-x86-64-linux-gnu
>>         git checkout bd295a352cfa24e5110a53f978edb48b7c21ff8f
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> ld.lld: error: undefined symbol: phys_to_target_node
>>    >>> referenced by device.c:84 (drivers/dax/hmem/device.c:84)
>>    >>>               dax/hmem/device.o:(hmem_register_one) in archive drivers/built-in.a
>>
> This would require the proposed fix below the scissors mark.
> 
> I had reported this failure before, but it needed an adjustment so I'm re-sending it.
> 
> --------------------------->8----------------------------
> 
> From 622c1297b7d76a319b07a29192fe9bfe5c2b6b7c Mon Sep 17 00:00:00 2001
> From: Joao Martins <joao.m.martins@oracle.com>
> Date: Tue, 1 Sep 2020 08:06:35 -0400
> Subject: [PATCH] device-dax: Require NUMA_KEEP_MEMINFO for
>  phys_to_target_node()
> 
> phys_to_target_node() and memory_add_physaddr_to_nid() are only defined
> with both CONFIG_NUMA=y and CONFIG_MEMORY_HOTPLUG=y.  Oherwise we see:
> 
> drivers/dax/hmem/device.o: in function `hmem_register_one':
> drivers/dax/hmem/device.c:85: undefined reference to `phys_to_target_node'
> 
> lkp also reports such build failures:
> 
> ld.lld: error: undefined symbol: phys_to_target_node
> 
> X86 is a special case in which both can be defined without depending on
> MEMORY_HOTPLUG=y. The other case is powerpc (for
> memory_add_physaddr_to_nid) but like ARM64 dependencies, the
> arch-specific override requires CONFIG_NUMA and CONFIG_MEMORY_HOTPLUG.
> 
> In all cases this ends up depending on CONFIG_NUMA_KEEP_MEMINFO to
> signal the presence of phys_to_target_node() which is what
> CONFIG_DEV_DAX_HMEM_DEVICES should depend on. Additionally, the X86
> arch-override is not selected unless X86_PMEM_LEGACY=y. So on
> CONFIG_DEV_DAX_HMEM we select CONFIG_NUMA_KEEP_INFO ourselves if both
> NUMA and X86 are set.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Joao Martins <joao.m.martins@oracle.com>
> ---
>  drivers/dax/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/dax/Kconfig b/drivers/dax/Kconfig
> index a66dff78f298..567428e10b7b 100644
> --- a/drivers/dax/Kconfig
> +++ b/drivers/dax/Kconfig
> @@ -35,6 +35,7 @@ config DEV_DAX_PMEM
>  config DEV_DAX_HMEM
>         tristate "HMEM DAX: direct access to 'specific purpose' memory"
>         depends on EFI_SOFT_RESERVE
> +       select NUMA_KEEP_MEMINFO if (NUMA && X86)
>         default DEV_DAX
>         help
>           EFI 2.8 platforms, and others, may advertise 'specific purpose'
> @@ -49,6 +50,7 @@ config DEV_DAX_HMEM
>           Say M if unsure.
> 
>  config DEV_DAX_HMEM_DEVICES
> +       depends on NUMA_KEEP_MEMINFO # for phys_to_target_node()
>         depends on DEV_DAX_HMEM && DAX=y
>         def_bool y
> 

Hi,

There is also this patch from Matt Fleming from last year that I have
successfully tested (built) on ppc64 and arch/sh/, where build errors were reported.

https://lore.kernel.org/lkml/20191223164220.GA14394@codeblueprint.co.uk/

but Matt doesn't seem to be replying to any emails about this patch...

-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e56ad91f-4418-fa3b-1381-f3b3234fcc04%40infradead.org.
