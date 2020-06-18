Return-Path: <clang-built-linux+bncBAABBLH6VT3QKGQE2E7PGYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0854F1FEF83
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 12:17:18 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id v14sf3687191ilo.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:17:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592475437; cv=pass;
        d=google.com; s=arc-20160816;
        b=T3isyBSOtMduOk6hRCUjg1e7wq0Z+QuVt91qICPwfR+Ecr1QMCf/xHI3K1K0cw5Zh9
         WqRlsl5gdfpPqKwjEi6O362aLeqm2fmuPxWJtayUrZo3q8NUPHMC5SJyxrE4KApVPeyO
         eGM/r/7hvZGpE9MJQDodIwA02DtDNuIobN/bvJEJANlA5JG8InIVB1SVGLgn7OGoW1jB
         548k1hbnRofAf8P4CV0bwIylZphGP6x2uHj+/R4j8T9x/G7nzyLPM9UGLkHgz1d3E8/q
         /QNcMFGl3Q9Cv8GXl2g/xsNEWRPAwTSWi2CiT7tJ0E9YbHvb2ggZB+gRlqt/t+Jo2nnD
         H5Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=9sDjgbSMGHCCjgW0iCvOuH/FO+dl+S70fKGzopWDVrY=;
        b=Ok/0UIK9V95PiiOfP1I64MK9voLBqctjZH5k/bcHtfP4JyQ4jPEXxY3UUCBGBxw7XK
         sFEZdydQu3WZ106jmNn2ou/Q9jmxrAoF9tI/UjB9pcycCfPkO47RqrLuQ2R2xmWWnHXH
         jAvxgA/q6IcOhIFxoEosXDLUZZ+Jk5v6H5CtDPv3e9Z52RxhKSCW109LdJR6yo8p+IDk
         41WKvOj3zKbRbdCFoB6ZlSYvQHAQX8v8snIW+NIqGo1nYPg8lBHCecLYwcYSb+6rhrPK
         tbY9B6O5I1/3SGFpbqgRXnGB+T7eiBEB7GfnJgAonf2j7JOAwyrOH0NLF8O9wqAmWjyT
         bGpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=nixiaoming@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9sDjgbSMGHCCjgW0iCvOuH/FO+dl+S70fKGzopWDVrY=;
        b=qh0YtfeqBPif37rpKHgIowXZrk14N/+EcYzEPW0mhIthAVIPS3B0USkJ/8mkrVnvaK
         EKUzvp5LwYZIlRFr/vR7sIQDbw3i2Okxcd6+DP5ZaedblkVf2gSz/DID1LXP8AHTp5Xi
         H6r3/bxA6P+IZvJ+YonGx/4LyZ59jDgUh+bYj9bQYnsVeZxLVbW3j1jm069j0Z+y2pNs
         wzDdKL2dMNMvSVS8pH6LbkxZHEJ8md34373SfgxZI5Sw9Ldz6WZPNFbdNQ6m3p/N9MrH
         U+6qVtRyeSNbW8z0i0KPcYw2v4lyqcip/RC+tc3IuOwNztQodAjwBc+M01kh+eKLLPz1
         xSDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9sDjgbSMGHCCjgW0iCvOuH/FO+dl+S70fKGzopWDVrY=;
        b=of/wSigO2Ou4Qmg0JxZbMTWFg98fQwzfK6wcYkCKEZgtpSH2uls+bX1yUs+m81jn0i
         AWikVMwrtd0I/vMkmDTDUfbIc5GZ8m6LkUMBFJSeylg7dErCwmTUA5VPgWDkwwyrexRK
         yPvCRf1+0DZ34HSM6SLvHjV7zYRo8yPumR5loPVXZ8D2rZusFmcJVLrL3avMUHYVk9xg
         nWB3TT/bpJZh0N3KhCqkiqqL7l35ZFDmhROt63EpwaKVqIcvV3RJY95fYOhUV+2+tpQX
         jTCbjpvM7WY7QOLuxv1rwV+IPY1q7UP84BHV3EWu2aMcHoNkgJOVfDm84aIiQ4gGFKRW
         9dcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Y7vZk5HA5wBikeibVHEYAjfJS7f8+9a9A3ljdm9xlyWODix++
	ZLDg5Rjg6BUkgj0psiwntMw=
X-Google-Smtp-Source: ABdhPJyNq2v1ymFkOXyPbJpqtl6q022hSWRWFq4lvjgp7rJAuZTcPgqZuWKbqbI3I05szc6vFzH+VQ==
X-Received: by 2002:a92:1b13:: with SMTP id b19mr3418068ilb.8.1592475436974;
        Thu, 18 Jun 2020 03:17:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d782:: with SMTP id d2ls1505057iln.0.gmail; Thu, 18 Jun
 2020 03:17:16 -0700 (PDT)
X-Received: by 2002:a92:db44:: with SMTP id w4mr3284852ilq.305.1592475436684;
        Thu, 18 Jun 2020 03:17:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592475436; cv=none;
        d=google.com; s=arc-20160816;
        b=vOG+vQDSpYuwF6FH88EMSbq9lcltN/DYX8s/yBKSvMJfRpTQQrLGxfyfMhvBUYGNDz
         IwFNI7YOPqz+SajveKfPLqGZh6KdI6RBtltPJAVxAV27J3aIwAfX2HLNGXbZIp7N7xfs
         /R+/vysvyQ1TfZj2SGS5L1tuOEdZgpmmC7zNVxWaKoHkXLPdWQU1A1lbuNiZLZqVsA+t
         sTtVVeTlI9kafdseDH4i8OW2QsGch/U0wbiwnGZnAlWER2TOGL+0G6lEF1WyE6o2Z+ZK
         Z65d5QPVFmf9AlyF5eVPDPA0qU6cbI5Ho6en/XNqrsaufeuxLLr9wHHq294yowNdgTLU
         Maag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=9rzjmXomibT3qr7crCz3ZXeiUON3LDsz/NuJXYiczzg=;
        b=BkQpaXMt+JEcBGQYjYWzltEZAQLiv03MsDjWsxmT5bdNdBdK4mOR3bnu9+1vaS13Av
         /Bqh9Ub5jUUFVC22UXJSrtvg2M30mOHt85IxqBwzy159mBQcILKkLZUgExwUa1rKviMO
         jdjNNhM1S4jXSoNqCVmMx959xg7VstTsu2Aiy8AXBc39+2bdu5bC6O84MKGHYIW6ZfBb
         gq8AAUdwOaxzO42ffrS7uSuvBe0puIHnqtww0oK4XxGb+GHLET9QZdHxePDqxUlFq8VF
         Kp4bP9gxI7AFjOSwl6APISbm4SwpbRIuXWmMrogC5LHZzu1Cr/miwgexdax62FK1d8rC
         xe0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=nixiaoming@huawei.com
Received: from huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id v16si93323ilj.1.2020.06.18.03.17.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jun 2020 03:17:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
	by Forcepoint Email with ESMTP id 5ED315AF1B2CCA1FF5E6;
	Thu, 18 Jun 2020 18:17:13 +0800 (CST)
Received: from [127.0.0.1] (10.67.102.197) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0; Thu, 18 Jun 2020
 18:17:09 +0800
Subject: Re: [PATCH v3] All arch: remove system call sys_sysctl
To: Will Deacon <will@kernel.org>
CC: kernel test robot <lkp@intel.com>, <rth@twiddle.net>,
	<ink@jurassic.park.msu.ru>, <mattst88@gmail.com>, <linux@armlinux.org.uk>,
	<catalin.marinas@arm.com>, <tony.luck@intel.com>, <fenghua.yu@intel.com>,
	<geert@linux-m68k.org>, <monstr@monstr.eu>, <kbuild-all@lists.01.org>,
	<clang-built-linux@googlegroups.com>
References: <20200616030734.87257-1-nixiaoming@huawei.com>
 <202006180654.jSTYfmWu%lkp@intel.com>
 <33c2ec0d-6050-5c1b-6f84-59f0b3f06404@huawei.com>
 <20200618072710.GC4864@willie-the-truck>
From: Xiaoming Ni <nixiaoming@huawei.com>
Message-ID: <8a313eb3-f5f2-47fa-18f3-4e14102956af@huawei.com>
Date: Thu, 18 Jun 2020 18:17:09 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200618072710.GC4864@willie-the-truck>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Originating-IP: [10.67.102.197]
X-CFilter-Loop: Reflected
X-Original-Sender: nixiaoming@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of nixiaoming@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=nixiaoming@huawei.com
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

On 2020/6/18 15:27, Will Deacon wrote:
> On Thu, Jun 18, 2020 at 11:49:41AM +0800, Xiaoming Ni wrote:
>> On 2020/6/18 6:33, kernel test robot wrote:
>>> [auto build test ERROR on next-20200616]
>>> [cannot apply to tip/perf/core arm/for-next tip/x86/asm linus/master v5.8-rc1 v5.7 v5.7-rc7 v5.8-rc1]
>>> [if your patch is applied to the wrong git tree, please drop us a note to help
>>> improve the system. BTW, we also suggest to use '--base' option to specify the
>>> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>>>
>>> url:    https://github.com/0day-ci/linux/commits/Xiaoming-Ni/All-arch-remove-system-call-sys_sysctl/20200616-130918
>>> base:    27f70ec4fa0e0f419031f1b8d61b1a788244e313
>>> config: s390-randconfig-r005-20200617 (attached as .config)
>>> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 487ca07fcc75d52755c9fe2ee05bcb3b6eeeec44)
>>> reproduce (this is a W=1 build):
>>>           wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>           chmod +x ~/bin/make.cross
>>>           # install s390 cross compiling tool for clang build
>>>           # apt-get install binutils-s390-linux-gnu
>>>           # save the attached .config to linux build tree
>>>           COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
>>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>>>
>>> All errors (new ones prefixed by >>, old ones prefixed by <<):
>>>
>>> s390x-linux-gnu-ld: arch/s390/kernel/entry.o: in function `sys_call_table_emu':
>>>>> (.rodata+0x1288): undefined reference to `__s390_'
>>>
>>> ---
>>> 0-DAY CI Kernel Test Service, Intel Corporation
>>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>>
>>
>> Sorry, I don't have a s390 compiler locally
>> Can you help verify the fix patch
> 
> https://mirrors.edge.kernel.org/pub/tools/crosstool/
> 
> You should be able to get a cross-compiler from there.
> 
> Will
> 
> .
> 
Thank you
Verified


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8a313eb3-f5f2-47fa-18f3-4e14102956af%40huawei.com.
