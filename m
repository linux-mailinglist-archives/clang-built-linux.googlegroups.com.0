Return-Path: <clang-built-linux+bncBDV2D5O34IDRB65ITP7AKGQE3UYFD3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 654BC2CB0FB
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 00:40:45 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id y4sf21218ota.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 15:40:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606866044; cv=pass;
        d=google.com; s=arc-20160816;
        b=i6Ke9SyrQGUiOjSc6eHk1oAz9BZvOjAGBs54juD7uhwwexw468l9gLr3jF3XuT1qLh
         6SU4ZqJWx7F6JhSstPgiYFNdCHgYslVMoZ2pKeHZRDR0M5uas7zEAvQ6ojeZIs0mPVOb
         8HVdHOhjAz4KWrsobWV5ZcABtkVezTs0zdrnS+JbcV5+rZ8ay8N5zOXLFw1om56SF45D
         ty9W9EIFTdtqb2NonlSpcnEqyLNZxg1PmgPw97g5w8khzNwz/p4EmJL8xQLu5j0c8zBo
         b0o9/kZ60d7kXri2OhqEbUL8S9zs4gFc/RMS74bGspp/Z5KQ271bDq6y3Bv/EtcYVkOZ
         efJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=qOh/cHfbGpVWr0lLat5upztn837HzQKPc7cCDpuESEE=;
        b=qV8kV1HjYOH+OyWcqkJDORuLKcHmI8v0L0g/9udZGg1Mc8rCo3SMS0HL80h3SG4h16
         uzPNHmGm1dmQBSJ7MIe7j18pn7yvG5EG3uGgNk7evGWEDHGu46p3uLCMKznWcVncTmvU
         hEtyO99yl3xOOGW8qsMI7zCDkNQ52+bMDYYoQG8Le7UeEC6iINPHlGRPr24SLDxlaBdY
         pMIkaV2gsVCmO0RgfwAQ9xDdwbHTo+/zCpwIQsSonBIwPNqDZ1mSoXgcuseLMqUGOk7+
         J5Wd6EKCbMcFS3OM2Ja/7RVdpzaK5FGtU366pDj6/K/TxZDbqOSGoBpg2HB2PHBqn9wM
         Xb6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=QDK8NVkq;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qOh/cHfbGpVWr0lLat5upztn837HzQKPc7cCDpuESEE=;
        b=OKPaGC85Y6e2fa+agj9KX4dsP0Ankt7gmE0VIz1KmS53yyYFFzYEi77TTpjDHy4ei6
         eC41eq2to3Z1fPNge0uiOLF6MyFO3cZyNL7bG8MFS0kuo7cfbUl/z5BZ0bttnFTwvlNA
         OMVUbaZYK0jOpzRQbTgW14v5h1jQwI8Q1hT6WVHjCOgWk/qbxEBKqHcxAjmdfGZECyZ/
         De9R9fkqOle9rNwCrbz6nGSR/gQWDSaJ6fgUdnNXf+kP2sUEiK0UbyNgBu8/kZpmtGWl
         xZ95Eiacg2HUMP5Vq6Cx+bK8MowRHPhwwdi9+IF86G9Uq++8JrNqe7fPi/QHv46stTrp
         4jCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qOh/cHfbGpVWr0lLat5upztn837HzQKPc7cCDpuESEE=;
        b=icaeWq0NCFpP+8qiIB06aU1bvoM3baRob505VXAMZcBC5icML1GZ7Orgsu2Mkqa/+E
         8uMRrlG6SgkVsWTSdOm16TvSHM6OzZHH4GfYOapwC5CfzkUTeKZVC6WULiFtrGfxfOcy
         NMa4XVutoU8BPfjxheynHHqiv3Y+p5gPd2OdzqK1W76d9joUrRwe6wcwltu0YmGA3JQh
         ezHuLeTYCIfhiAYeFsPMF0hjakap0UuwcMCy+MllwFJOXW2KNGgXOauL0hLolVlw8UKE
         XUtAg9/rAeZKcFTDkoHFKn3rJpPbqL78IcJUwXRzjndxSJtuBBlxN2RnQ8tHzRglL0ni
         tMOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RvF2GUxoUJaspQE2waP7Imff6SClMqutj8RkkFCiUs5nt6S2/
	H3jXC21+VY1T3oXooegGfAg=
X-Google-Smtp-Source: ABdhPJwiV4z9OwgA9wfhOtq+MESZVurl32YtKzQD6O6kNGhNqaM+0qBr2tCBayYhDOAj+BXIDyLYyQ==
X-Received: by 2002:a54:4f90:: with SMTP id g16mr78422oiy.24.1606866044065;
        Tue, 01 Dec 2020 15:40:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7ac3:: with SMTP id m3ls108121otn.2.gmail; Tue, 01 Dec
 2020 15:40:43 -0800 (PST)
X-Received: by 2002:a05:6830:1044:: with SMTP id b4mr3772493otp.312.1606866043676;
        Tue, 01 Dec 2020 15:40:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606866043; cv=none;
        d=google.com; s=arc-20160816;
        b=EvAv7QHyqRTt1EffOEA46UkvYCnqwrJ4/wqcUe7u5l0uGzk/5K44/CiuJDgWRUcyqq
         RLQw1J2IbzLY3DqTLI0IZN89DojP7A99o1E32x5yJHCY3VD2Mnr30AA/0A6g+SZmYiPc
         myWbz+C0oPWfMUxtRWxFYhzfcDkk0t8trGyoK999v1QKM6oZsjHXXpfhbrSmLfY4F44h
         C/T0ILZsILqKoWAhKOVnnQVNmpiKsaff/4J4Sht47Lnk3IvWzMvJOyb4BKY8ALLTGmWb
         n5EJtQ5q2iCIgGOTX772Jx5eQ8l9pLS2lWksUh8JitEygxYZeAlrZ4OBVvHqR9sw3Fyp
         aAmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=xSr4Zkri5ll3/mRrUrf4ugiPrrf01YBrysiBxMPJsMQ=;
        b=xVOTKneSUUGP6LOealzeAzYHAae9WCKRhpvWgsAJtQu/+XcZJrAGHQYNsJfIpt2GJb
         wKz4ifl/LiUYvyRoDxEG4tDws6YYM4VPh+m5uoVHUTrYgTs1Idhg4j1Q0ZcD6UZy052I
         iQ1ScLdtZz0TKnjCOmbcCI6zqlhIPxusygy6Jo6Ylufa4AnN6tfcrhWVwOBBZfJU1nDK
         dGWfe0S4vceP8Uqynq3p23s07b+FqR6wRnHWhukqgXBptC6wA0MIe6Q0EAeDiHL9YDEg
         bhGAgoe1Uo6/eQIJ4qLpz7MaMgqmRdh2Ofq5J4kNhv+bkv17C0Nps/GNvht76oyUYUKZ
         RY9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=QDK8NVkq;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id g13si134936ooo.1.2020.12.01.15.40.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Dec 2020 15:40:43 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::1494]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kkFGA-0004rz-Vy; Tue, 01 Dec 2020 23:40:39 +0000
Subject: Re: [linux-next:master 6272/9613] unittest.c:undefined reference to
 `of_dma_get_max_cpu_address'
To: Rob Herring <robh@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Cc: kernel test robot <lkp@intel.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux Memory Management List <linux-mm@kvack.org>
References: <202012011747.PIcmivAO-lkp@intel.com>
 <20201201122915.GC31404@gaia>
 <CAL_Jsq+iRn3YdTi_PBkDoY86mJkSp=1-oKmG+Fsz8HrEwyNNhA@mail.gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <98b2ba67-d43b-c285-8ad0-20e52c1d3227@infradead.org>
Date: Tue, 1 Dec 2020 15:40:34 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+iRn3YdTi_PBkDoY86mJkSp=1-oKmG+Fsz8HrEwyNNhA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=QDK8NVkq;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 12/1/20 12:13 PM, Rob Herring wrote:
> On Tue, Dec 1, 2020 at 5:29 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>>
>> On Tue, Dec 01, 2020 at 05:32:51PM +0800, kernel test robot wrote:
>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>>> head:   c6b11acc5f85b6e11d128fad8e0b7b223aa7e33f
>>> commit: 07d13a1d6120d453c3c1f020578693d072deded5 [6272/9613] of: unittest: Add test for of_dma_get_max_cpu_address()
>>> config: s390-randconfig-r034-20201201 (attached as .config)
>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ac40a2d8f16b8a8c68fc811d67f647740e965cb8)
>>> reproduce (this is a W=1 build):
>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>         chmod +x ~/bin/make.cross
>>>         # install s390 cross compiling tool for clang build
>>>         # apt-get install binutils-s390x-linux-gnu
>>>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=07d13a1d6120d453c3c1f020578693d072deded5
>>>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>>>         git fetch --no-tags linux-next master
>>>         git checkout 07d13a1d6120d453c3c1f020578693d072deded5
>>>         # save the attached .config to linux build tree
>>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
>>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>>>
>>> All errors (new ones prefixed by >>):
>>>
>>>    s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_declare_coherent_memory':
>>>    coherent.c:(.text+0xf8): undefined reference to `memunmap'
>>>    s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_init_coherent_memory':
>>>    coherent.c:(.text+0x174): undefined reference to `memremap'
>>>    s390x-linux-gnu-ld: coherent.c:(.text+0x344): undefined reference to `memunmap'
>>>    s390x-linux-gnu-ld: drivers/of/unittest.o: in function `of_unittest':
>>>>> unittest.c:(.init.text+0x120): undefined reference to `of_dma_get_max_cpu_address'
>>
>> Thanks for the report. I think it needs the diff below. If Rob/Nicolas
>> are ok with it, I'll add it to the arm64 tree (with some commit text):
>>
>> diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
>> index 98cc0163301b..799125ef66fc 100644
>> --- a/drivers/of/unittest.c
>> +++ b/drivers/of/unittest.c
>> @@ -871,6 +871,7 @@ static void __init of_unittest_changeset(void)
>>
>>  static void __init of_unittest_dma_get_max_cpu_address(void)
>>  {
>> +#ifdef CONFIG_OF_ADDRESS
> 
>        if (!IS_ENABLED(CONFIG_OF_ADDRESS))
>                return;
> 
> This once again makes me want to kill off HAS_IOMEM. Or at least
> always have a dummy ioremap() and friends for !HAS_IOMEM.

That would eliminate dozens of build errors on S390 when
# CONFIG_HAS_IOMEM is not set
# CONFIG_OF_ADDRESS is not set

>>         struct device_node *np;
>>         phys_addr_t cpu_addr;
>>
>> @@ -884,6 +885,7 @@ static void __init of_unittest_dma_get_max_cpu_address(void)
>>         unittest(cpu_addr == 0x4fffffff,
>>                  "of_dma_get_max_cpu_address: wrong CPU addr %pad (expecting %x)\n",
>>                  &cpu_addr, 0x4fffffff);
>> +#endif
>>  }
>>
>>  static void __init of_unittest_dma_ranges_one(const char *path,
>>
>> --
>> Catalin
> 


-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/98b2ba67-d43b-c285-8ad0-20e52c1d3227%40infradead.org.
