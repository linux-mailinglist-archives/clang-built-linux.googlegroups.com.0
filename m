Return-Path: <clang-built-linux+bncBDV2D5O34IDRB5M7236QKGQEVXNZDYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9022B8674
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 22:19:51 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id x3sf1963429plr.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 13:19:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605734390; cv=pass;
        d=google.com; s=arc-20160816;
        b=0aHRZJoAN8BZ9fZyqVW3UClb2AVITHLcWeQhOoQukCLB6h67lXFB+HNw1SPMq/gjge
         lBh4ZAsROcXkIoa99+AXxH66CGZnYiZNvq6gF///Vqafv3FwG1KHJwHhxll7MTvgZVXa
         M+GREsySh54MvA6S48CViJ+KXhtcOv8jiudPu8CL1RwmxXSDpOdw9nGjWpey/KYtTbnI
         9mmLJLW61s5fnuWARmj7G++wy3HZV9GmsPhP8Ezjruisb/Qy7J2THSZl+HNZirlAQ+z6
         r442YCZ0Kl6rwJXz+FMggBZo53HY5+Ijsgu5jDcbcZb0YM/jkITjihqNqpg3aHxdTJPR
         vwcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=5iqdeYZ/6npSf/7kkbAnp5vFT41XT5DDpCrcPCCM0OU=;
        b=a6DT3J3pgLhGjinoy8qeh/RQkcw4mUcw5ySjd8Z1OSn0BT5f1JJoKOnPGOC6NLgB34
         5i8csYP2Hnh4lGu2oIAf1rPfDeCs+sB8ETfnuIdYR+HFPDbC45mKFmQf8ZlK7FAacPHr
         GwezcHXLaAXPTgJosO5sdjkmdDDEiFf7PtA+v7jDKuuPXbUbow9cXUuhtOUYV87CoO9G
         Eb7r7vczTdVON+1o5ncZYaYH3JAYd7wJpv6yXYz49t7QxhVLEFq+/bwopqwUvddg3p9u
         z6WNfkmLXhIj/dCMh5qMAIvfOX85xqVGVOrom7avaL8E7ggE3Gz5VqhINmth/IiJwoAs
         Vl4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=SkzschDU;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5iqdeYZ/6npSf/7kkbAnp5vFT41XT5DDpCrcPCCM0OU=;
        b=ljivigjHt/wjyheePT3gQ4UVxXhUzSDVi+/w23Q+QFY7ijJirrlfInGshMGqcBPDnk
         LFkmgaxqABLR9RRMOXH2gSXsaU/orTb8e2w1W+Uka6s3aCkCBVVGFWGBPjtpIIZflITe
         PZnKLyEsetOftKcH7onLCwGvfbFXd9M7hyBo7vf2z+EkbxC/DwJm6cgnoxKVtW/zX6/N
         TmfzFte8WvlfrgJQGZQb4OjT4ZrG8G1pG7BRNjV2VFmcacatL7HYN7wdWxfjKhW0zjtM
         EeF9MRFfQo5X5pozx0ydwdF0fo2t5Id2f34hOld4K80kbJwfQHpkrvXX6FbmSR6gXd7S
         88oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5iqdeYZ/6npSf/7kkbAnp5vFT41XT5DDpCrcPCCM0OU=;
        b=RufYyHU1d77Xq0FkErk7iTBNea9d+zsShj6Vm/04vJvykFvpvE+HcIGVbWJ1yVA8o6
         Qq2r6o/ZSQCSPIUtWDjaUxYKjGLV+mTYLaNUIhfnbMmQ5+2XXElv2agtDKOQrQfKqvrH
         +/O8LW3jjfjnrLThwU+7ZRJWDCguzzEs9PEkPoATqK649jn/1HB3xiHqChLtmnv1zcBN
         u09Oee7NOuVrdPGiv05CsUuHf+cBUblm3mpTx7hBRPKKV/DaMn6ON/nPx4LwsIbQmJy+
         gJeHiis5tW0cCOpt8EltqlZONJQtfksrxGa9gwwFrZdBz7parb4gEmY0vNgILp4p6xbb
         FE/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pAhdNE3uNdChxEAadWkc9WLMsX2kRfiIrG+7nRK4wZLgTUcP4
	XWCV/2rqNoLIE33a2DDD2T0=
X-Google-Smtp-Source: ABdhPJyW5Kq68jCX0//0X1BUujOWfgKOKsPSJUNOYh/MpHDJqOQOZ/bZOKgAb6YspXwkB/f61ly1Lg==
X-Received: by 2002:a65:4349:: with SMTP id k9mr9954141pgq.169.1605734389848;
        Wed, 18 Nov 2020 13:19:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b086:: with SMTP id p6ls363536plr.7.gmail; Wed, 18
 Nov 2020 13:19:49 -0800 (PST)
X-Received: by 2002:a17:90a:cb05:: with SMTP id z5mr953491pjt.216.1605734389095;
        Wed, 18 Nov 2020 13:19:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605734389; cv=none;
        d=google.com; s=arc-20160816;
        b=zc90UA1zTY+6np1rGTkym1jLcGUD6ZXPxGTb7QFk272NcIo+4z14VMNZhWHigbIL4x
         rsVrKfdV5zXTydtLGkQQP5+enKqrf0jD/EuX91VRMSoaIoq3mQ+FAR7M80nFMz/PsSiC
         CDmqmSKZWGEPn7Z76Ho+mjSoE9yg2665bfFsUdPo8/umRD1oaaqQ2yJlo0bfoRRZsk2+
         GBtDGEfWXh6GuLQ2ikeSdBSpyRTqWwRp48oICEh6TrQpt3WsgsPicHhhcnTlOfbyNiqL
         9y0izofIxQVchFE5SaEyY1q1tubE0vTP6Uadrf4CRToCoV3Sy7qIDO/Wm0UTfu2BgL8U
         Vp/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=m1ARo/0U1ueFxD4Hp5bJ5SYHLHn7Kw0DJKg0xKcykSs=;
        b=rOOgPnKednaWLeYXcOOrNJOnQdMl1ACt3F2dQtKgc5z8RslqMzYBPJSbKrP0PndYua
         f22WhOct31zQbunUYzU7msKn0frXLN+KxZi6mDtvYmEMPAN8p7daoeeDTjRovUTGJYQ3
         CfS3439XzMG/WFLJf3VG20+uKcPRQhuwIIPr9j7nZqv8+1Hop+hRtMnZfKCVqVqgu8O+
         S2a/4Lf0vJep7w0st1s6VUkb+kTpmcoW1mjWOFe7mJJR6fWh8U6+LhJrC1OzYqi21Aax
         RQ1l8ZSj9zR1xIdYl5EKYr6fFWfFn5TTUKLZTjPZYlA/f5mjt8zltD5MwWRw3QM5BNgb
         itNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=SkzschDU;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id d12si750730pgq.2.2020.11.18.13.19.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2020 13:19:48 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::bcc4]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kfUrg-0001eP-07; Wed, 18 Nov 2020 21:19:44 +0000
Subject: Re: [linux-next:master 5868/6773] arch/powerpc/mm/mem.c:91:12:
 warning: no previous prototype for function 'create_section_mapping'
To: Nick Desaulniers <ndesaulniers@google.com>,
 Dan Williams <dan.j.williams@intel.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>,
 Andrew Morton <akpm@linux-foundation.org>
References: <202011182008.u7jsMtBl-lkp@intel.com>
 <CAPcyv4haEaWN9f6eCpnQEcjo4kcGwYp8dcs2PLDnvhG6wj8cDw@mail.gmail.com>
 <CAKwvOdnJYhs1vO8QmfPBdd107JRGfBQXTipCOZnaHe0=qSi0dQ@mail.gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <f67e234f-9ade-fb8e-1677-d2d92fb07f23@infradead.org>
Date: Wed, 18 Nov 2020 13:19:38 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnJYhs1vO8QmfPBdd107JRGfBQXTipCOZnaHe0=qSi0dQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=SkzschDU;
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

On 11/18/20 11:52 AM, Nick Desaulniers wrote:
> On Wed, Nov 18, 2020 at 11:22 AM Dan Williams <dan.j.williams@intel.com> wrote:
>>
>> On Wed, Nov 18, 2020 at 4:27 AM kernel test robot <lkp@intel.com> wrote:
>>>
>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>>> head:   2052923327794192c5d884623b5ee5fec1867bda
>>> commit: d106ad47e292fde47fc09e16a2ddc13609ff2ad1 [5868/6773] mm-fix-phys_to_target_node-and-memory_add_physaddr_to_nid-exports-v4
>>> config: powerpc64-randconfig-r026-20201118 (attached as .config)
> 
> ^ randconfig
> 
>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b2613fb2f0f53691dd0211895afbb9413457fca7)
>>> reproduce (this is a W=1 build):
> 
> ^ W=1
> 
>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>         chmod +x ~/bin/make.cross
>>>         # install powerpc64 cross compiling tool for clang build
>>>         # apt-get install binutils-powerpc64-linux-gnu
>>>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=d106ad47e292fde47fc09e16a2ddc13609ff2ad1
>>>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>>>         git fetch --no-tags linux-next master
>>>         git checkout d106ad47e292fde47fc09e16a2ddc13609ff2ad1
>>>         # save the attached .config to linux build tree
>>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>>
>> I get:
>>
>> Makefile:597: arch/powerpc64/Makefile: No such file or directory
>> make[1]: *** No rule to make target 'arch/powerpc64/Makefile'.  Stop.
>> make: *** [Makefile:712: include/config/auto.conf.cmd] Error 2
>>
>> ...changing it to ARCH=powerpc I get:
>>
>> Assembler messages:
>> Fatal error: invalid listing option `3'
>> clang: error: assembler command failed with exit code 1 (use -v to see
>> invocation)
>> make[1]: *** [scripts/Makefile.build:283: scripts/mod/empty.o] Error 1
>> make[1]: *** Waiting for unfinished jobs....
>> make: *** [Makefile:1199: prepare0] Error 2
>>
>> This is on a Fedora 31 host.
>>
>>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>>>
>>> All warnings (new ones prefixed by >>):
>>>
>>>>> arch/powerpc/mm/mem.c:91:12: warning: no previous prototype for function 'create_section_mapping' [-Wmissing-prototypes]
>>>    int __weak create_section_mapping(unsigned long start, unsigned long end,
>>>               ^
>>>    arch/powerpc/mm/mem.c:91:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>>>    int __weak create_section_mapping(unsigned long start, unsigned long end,
>>>    ^
>>>    static
>>>    1 warning generated.
>>
>> I do not see these errors with gcc.
>>
>> I feel like clang errors should be flagged / de-emphasized when the
>> same error does not appear on gcc.
> 
> Note this is a W=1 build. For this warning, you either need to mark
> functions as having static linkage, or provide a prototype in a header
> so that callers know the correct function signature.

Yes, so with gcc, that gave me something like 109 missing prototype
warnings -- including one for 'create_section_mapping'.

-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f67e234f-9ade-fb8e-1677-d2d92fb07f23%40infradead.org.
