Return-Path: <clang-built-linux+bncBDV2D5O34IDRBAEU2D5AKGQE23IUYPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AC825EB25
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Sep 2020 23:58:25 +0200 (CEST)
Received: by mail-ej1-x63c.google.com with SMTP id q9sf3837725ejr.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Sep 2020 14:58:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599343105; cv=pass;
        d=google.com; s=arc-20160816;
        b=HjF2wd9rhtzc5eNuUmF5BGcnSyehRC1YptUXrN7wsuBiPjvpSoIY9iAsnDdclPQlJo
         FNMgNheI6000wxK4E39ac+ZWMdvueKkrJs1rM+38dDTdSLkGqzXzOvpxOSPLBhe220Nv
         D3/LPspmPpTcexs3oErVXWzVOoZjD0kL5s1KiSTOJI3HuY1UV5ORDMgPKGGD/2S1OyR5
         DWQqWOGxfyNP18XEk8nWpyjAlcGVR0WDjZlSzjoyEB9LUH25JfJBXW98v4tbZOAZvf4O
         srV3MWlbA3BUVC6RY/ocwEnrSvLKxGH2jLBmfzfyfks1X8Q504RPuLEuV41JdKJKgsu4
         +Rnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:from
         :subject:sender:dkim-signature;
        bh=Mh3QQq5rYSfTrvd7snyoFLLyMHxthCQRDO8lhUcCobQ=;
        b=P9unWLCxp14hBalH7ZUw0XznNzW2AkS2y9ikYIEsVrZHSvY4uhFxOuWcLQao0SwHTY
         7OqyJ+UpMxcWDWT7vXxPh/YQCE/vELk/wt95kZxsfeoHdGV4Mf/CzYGw4yzF4UeLkMFc
         8pEdV8Qe0SbyNU1Yg6SRG++s7vgt9Yv4CwBXO5n1S4TGyxeVwMHsm8NNiWxRwPeIXb0H
         EIWcQA6qtnQ1oY6ASEeh4W9kZtzpb4nG9SDz5br79C6hoU35K5pIqcPs2F9M9iJRWiuJ
         QTWFn3rqvNijPgKC67Q2kjnxSBtRkmwIv0N0wevA6mkcCmhsZnv7BjNVo7RNHRHRnTXp
         jyog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="c9OQ4/de";
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Mh3QQq5rYSfTrvd7snyoFLLyMHxthCQRDO8lhUcCobQ=;
        b=PrZx58lotGLUC4y5nUiVbFFwfFTZ0EBD87jZeiHmBdD4qULhCdsW8nA2gTY6mgHFau
         Yn9UyzHieNscDH0LsuySEYvaWM7WXaASUBmwomfOwq2WvXouMNvbtd0Bxowu5uv+Q9Vs
         WTJOVBzyRFhAjTt93Ypdz0eH2Xp2hp54VqTjX3nddROQJkvkfyzojl8WkO6XXTu+SyFO
         THyUkdqdlaZdlL0uVpV/+qlUCY6H+hnzWVAKFeO0EKGYtWqt+z2hYTaV8xf11pRQj140
         BNpyNQK4oZ7/Z906bcVAJH7U1yb8MfgW5jDYY237qXjE7eiPo5ip87uOqhOvwIv91TOy
         HK7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Mh3QQq5rYSfTrvd7snyoFLLyMHxthCQRDO8lhUcCobQ=;
        b=PMaVuAsbGbBZwgmI0xH+I3ZKtGuiz3eNmPmyvc8GMhXikd17vabQ1MVomzhSSEE8si
         f6UcNdx1d92zxQ58BcrK+9Tdgz2DTkP3FwpeGL5nnWJRIBxD2rszFB0UZcTKLa0ikKuD
         xNpe1ByftH4uL/W0dk6i9CO3Cv/Npt0hlClzJAKY774GviQCoXTEAHYrb/OUjsf2Lzj1
         LvfgW6OjGo0NK2m3FXaf0hsq8z+Xq8KM0G/xEs04IWZmxkTC9m/lO/g+fS7Mx1PXFxP3
         gCAfJJhene5UBE7v49TeBgDvL7RLopVSZc21BLUgPUS+CWQDh7vX8VoROeVu1oWffoZB
         gTtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jqdQqa1w12TfrMJ4xbK7Bpj00EBpykCYlc6j/nUuhSROAoJAG
	KVvbM442NTb0X3WwgIWItOY=
X-Google-Smtp-Source: ABdhPJz8Bg1g+xeHMLfcC+LkP7EMI9Ek1vqfdckdP2zOFVvp/Pgg0MyEHH29cVM1uAsFxl3RdnKenA==
X-Received: by 2002:a17:906:914b:: with SMTP id y11mr14681625ejw.145.1599343105018;
        Sat, 05 Sep 2020 14:58:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:bc05:: with SMTP id j5ls2346974edh.0.gmail; Sat, 05 Sep
 2020 14:58:24 -0700 (PDT)
X-Received: by 2002:a50:c292:: with SMTP id o18mr15521362edf.90.1599343104179;
        Sat, 05 Sep 2020 14:58:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599343104; cv=none;
        d=google.com; s=arc-20160816;
        b=by7Ixms+n+BRzwGzODwIGgAdNtfYnRF88j52PRiN2mtCNMp72bq+zIHii01tp+T17t
         0erOZwhA9OQaDSOE8EAhrob7q9YRKZOF0xI1HMqPpY5Nsjk0N63BZvvkdCxDthZvaOzA
         mwtdckA1gETyuJ6swv3tZEjzLe9pDYgj+/HocxU/tXPGEKDZoGTBJZtk9ycMSQ7uL2Wn
         6GaocQ/9/3pECUZe50MGGhg+mGdpXdKX4FimhUK4IQ1PrBV8V+a83KhOWox4J8bAjKcX
         ufnYnkvFI/BoNp+ctc1WjPceenngz+7VQkaFT8eqwHGY1tzRJ9Ga+vWLyutE7cTOS3uw
         YaGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=tIAS2G8p/d1TmDFaHTTdfEnkyxuVw87sares/jVzh7M=;
        b=JSUCOV5OrmqNoGXpov0HlcrRgM1eXL3T7m1srT9IeDV2qKVaC4dZZy4WCcaNg+2Ca8
         H3kcEAiU3KOgxx7UWaOXh3NHdyzfeOa8dwBLzxke6YU9MrDtyvwGk5xzlBGCH6WTZ3qG
         9scr2cNqezY7n3NJ6pDhCHtiylwvIxqb5IbDBzlLe1UE4z63QEU3RpD8HeaoOvluEuJi
         ckbc8cMofXEMBck2dSLTc1DwlLHPKUI+/+0a+vIMRUdGNrpYXuqV1FRX5MfdDxod5Mg1
         mSf00fM7E/Qk3BkjLLRx/bn3JoDNCotpUznA9QlPjtAwQO0mWBJhfcyEyXDAEtqcBlsR
         o9fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="c9OQ4/de";
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id f17si320495edx.5.2020.09.05.14.58.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 14:58:24 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2]
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEgCT-0007Vj-8J; Sat, 05 Sep 2020 21:58:21 +0000
Subject: Re: [linux-next:master 2890/4758] ld.lld: error: undefined symbol:
 phys_to_target_node
From: Randy Dunlap <rdunlap@infradead.org>
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
 <e56ad91f-4418-fa3b-1381-f3b3234fcc04@infradead.org>
Message-ID: <56f1cfa0-35e3-e88a-826b-3ebe2780b973@infradead.org>
Date: Sat, 5 Sep 2020 14:58:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <e56ad91f-4418-fa3b-1381-f3b3234fcc04@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b="c9OQ4/de";
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

On 9/5/20 2:24 PM, Randy Dunlap wrote:
> On 9/3/20 5:31 AM, Joao Martins wrote:
>> On 9/3/20 6:49 AM, kernel test robot wrote:
>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>>> head:   4442749a203151a319a5bb8d0b983b84253a6931
>>> commit: bd295a352cfa24e5110a53f978edb48b7c21ff8f [2890/4758] ACPI: HMAT: attach a device for each soft-reserved range
>>> config: x86_64-randconfig-a002-20200902 (attached as .config)
>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 224d8153b53b16cf535ea1a55afdfe1ec5b1374f)
>>> reproduce (this is a W=1 build):
>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>         chmod +x ~/bin/make.cross
>>>         # install x86_64 cross compiling tool for clang build
>>>         # apt-get install binutils-x86-64-linux-gnu
>>>         git checkout bd295a352cfa24e5110a53f978edb48b7c21ff8f
>>>         # save the attached .config to linux build tree
>>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
>>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>>>
>>> All errors (new ones prefixed by >>):
>>>
>>>>> ld.lld: error: undefined symbol: phys_to_target_node
>>>    >>> referenced by device.c:84 (drivers/dax/hmem/device.c:84)
>>>    >>>               dax/hmem/device.o:(hmem_register_one) in archive drivers/built-in.a
>>>
>> This would require the proposed fix below the scissors mark.
>>
>> I had reported this failure before, but it needed an adjustment so I'm re-sending it.
>>
>> --------------------------->8----------------------------
>>
>> From 622c1297b7d76a319b07a29192fe9bfe5c2b6b7c Mon Sep 17 00:00:00 2001
>> From: Joao Martins <joao.m.martins@oracle.com>
>> Date: Tue, 1 Sep 2020 08:06:35 -0400
>> Subject: [PATCH] device-dax: Require NUMA_KEEP_MEMINFO for
>>  phys_to_target_node()
>>
>> phys_to_target_node() and memory_add_physaddr_to_nid() are only defined
>> with both CONFIG_NUMA=y and CONFIG_MEMORY_HOTPLUG=y.  Oherwise we see:
>>
>> drivers/dax/hmem/device.o: in function `hmem_register_one':
>> drivers/dax/hmem/device.c:85: undefined reference to `phys_to_target_node'
>>
>> lkp also reports such build failures:
>>
>> ld.lld: error: undefined symbol: phys_to_target_node
>>
>> X86 is a special case in which both can be defined without depending on
>> MEMORY_HOTPLUG=y. The other case is powerpc (for
>> memory_add_physaddr_to_nid) but like ARM64 dependencies, the
>> arch-specific override requires CONFIG_NUMA and CONFIG_MEMORY_HOTPLUG.
>>
>> In all cases this ends up depending on CONFIG_NUMA_KEEP_MEMINFO to
>> signal the presence of phys_to_target_node() which is what
>> CONFIG_DEV_DAX_HMEM_DEVICES should depend on. Additionally, the X86
>> arch-override is not selected unless X86_PMEM_LEGACY=y. So on
>> CONFIG_DEV_DAX_HMEM we select CONFIG_NUMA_KEEP_INFO ourselves if both
>> NUMA and X86 are set.
>>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Signed-off-by: Joao Martins <joao.m.martins@oracle.com>
>> ---
>>  drivers/dax/Kconfig | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/dax/Kconfig b/drivers/dax/Kconfig
>> index a66dff78f298..567428e10b7b 100644
>> --- a/drivers/dax/Kconfig
>> +++ b/drivers/dax/Kconfig
>> @@ -35,6 +35,7 @@ config DEV_DAX_PMEM
>>  config DEV_DAX_HMEM
>>         tristate "HMEM DAX: direct access to 'specific purpose' memory"
>>         depends on EFI_SOFT_RESERVE
>> +       select NUMA_KEEP_MEMINFO if (NUMA && X86)
>>         default DEV_DAX
>>         help
>>           EFI 2.8 platforms, and others, may advertise 'specific purpose'
>> @@ -49,6 +50,7 @@ config DEV_DAX_HMEM
>>           Say M if unsure.
>>
>>  config DEV_DAX_HMEM_DEVICES
>> +       depends on NUMA_KEEP_MEMINFO # for phys_to_target_node()
>>         depends on DEV_DAX_HMEM && DAX=y
>>         def_bool y
>>
> 
> Hi,
> 
> There is also this patch from Matt Fleming from last year that I have
> successfully tested (built) on ppc64 and arch/sh/, where build errors were reported.
> 
> https://lore.kernel.org/lkml/20191223164220.GA14394@codeblueprint.co.uk/
> 
> but Matt doesn't seem to be replying to any emails about this patch...
> 

OK, Matt's patch doesn't fix this x86_64 dax + hmem build error, so
apparently Joao's patch is needed.

-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/56f1cfa0-35e3-e88a-826b-3ebe2780b973%40infradead.org.
