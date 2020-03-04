Return-Path: <clang-built-linux+bncBCIIBJ5W64OBBDU67XZAKGQEBQZ43LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 79919178ACB
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Mar 2020 07:47:43 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id c18sf466230wml.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Mar 2020 22:47:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583304463; cv=pass;
        d=google.com; s=arc-20160816;
        b=AshZ69sfRDiFL0V1hYEKOuGpZQE2LvgJhTyJMyuU5QveAMJEV+dJeEVzeqURgHbVts
         PaEGiMePUqroKWUqL03x8ACQO5ZRY877bGFuqcsZXso9KWoO9wdvxBEQbqTz4rN74kIf
         hND+YKGsAPf5voBvClNkMqtM+pSH2ce+DnSSjrsce8Z3Pd73pZRcbTtgzApQtjfneW4X
         NVoyIzn4CgiOCycgV4MWuk9S8tKvbxY2xlALCZ8xGxLeagFtGraZwSGh6S7vb4IfkPj7
         pb8jhJagoUH/Be3xuTukdgDRfJGaHT2acXOx+o1RIh1uVMzbBvFYe33jcbK1EDSMYYTT
         qo3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=ms9c66i74kFDasoiNTGCn+68ZM7mEf3qddTnLOiXNG4=;
        b=EHfm7f8BJ7kX3H5mVwatlhhSOT9EWmzFfUb4v5dC/3gtnAmuUGUTBTZHqmj9TBQvgc
         GcLnWbKnIq+6MOg4nDCctdUKrAHGCODRJ6SfVeUjD1sOaDPTnaaY2JmPyhMDXth1V+ef
         9HDG7DcVlEtbqiw+2k5zlSO3+jRj8AykLIML60kNatdSy3YJmRKUCC1buVbc5oFrO6Sp
         abeYwrXGziMYQT1CQJ9hbra+B+AVvcfeVEUF11rvZ+CRBfus/4rKe+wHhDyg1z0GTvnS
         7hHSbVNChWsmILfZT2IlXvxOXoGFZ0s2fiVbo5Rk79CrsEITuXtiQC1VSx9eJE/cGP5I
         YSqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of anshuman.khandual@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=anshuman.khandual@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ms9c66i74kFDasoiNTGCn+68ZM7mEf3qddTnLOiXNG4=;
        b=NrdT7ySGDDgrPcy5gJ+z2drQksbXQ9KAgbuGFxBdOuH+qaOe+agCAI/PFjW87PZHG2
         x0WNAKPuUeZDWQEm78O8vNHH6K/nR9tCWdRoj6k/DNvKqfjBTh9/P8cwY/YWGgO6BKe5
         4zg6ayw1LFoQILMO3fVimz8fLMEWVyzBmjpKHNTBTtN6EgwOt49/ccNlFiD+Uar+QhJT
         OwHB0EaU09+/Qu9baCj64VzVBc7tTm5zH/FEj+n7lxxZkmpDxQBNWqjnk0TN9CmwjJ16
         +sRiLWqk6Un2cifwrGUGZwsK06URQlbua1q9wGXgee9xQ8V3/xWUmF+X8kpH4HVnGVMT
         2+4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ms9c66i74kFDasoiNTGCn+68ZM7mEf3qddTnLOiXNG4=;
        b=SdkkrebrWzggy4A92F0tuHoojZkOYv26RUelTx+blQDeE6PoNyMsNI2eLGxMaUOtBC
         6mA2t4S0uEEv2AFK6FoIbA5KSSA4QF37xYHi9QK+9mjtv/RGKdFuGAYmQ3bIU05U/UuK
         fto4NAO4ecXivURj89y3GHR2tvdy6FROx/bbfdarNgrW5WWC56EA1zyoKj5sue9SifZx
         7KGhjHoDa73xsu4ddFOYd3fzbg2GWTAYBuDTWGL08Nbra9eHysp0gClnbJhJwF5I/vBD
         3UmAX5yxFdl4NCnyLyyzoa3uuxrHEvpUdqRcYQTitF2w1HS5bN7Pr5Vs+w6ZrywdJjO5
         dqMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2Ve8/Qds7AWFFKOhH7Dv5fmXfiriFNFs28PICxXc9PGv1AiFhl
	oiI+4UyeNFvmAKkLIveYpis=
X-Google-Smtp-Source: ADFU+vt0cpE9FPuClNvfHCqCE4XqxW+KhibE8W0d4qGnJgKR7CQUbOLdtRCv+zzkYub+eRWk4EQP3w==
X-Received: by 2002:a5d:5542:: with SMTP id g2mr2343369wrw.216.1583304463109;
        Tue, 03 Mar 2020 22:47:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls386476wrp.11.gmail; Tue, 03 Mar
 2020 22:47:41 -0800 (PST)
X-Received: by 2002:adf:e408:: with SMTP id g8mr2530499wrm.198.1583304461394;
        Tue, 03 Mar 2020 22:47:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583304461; cv=none;
        d=google.com; s=arc-20160816;
        b=Y8Qa109k7yEx9Nk1g67hmhRml25CK36iEJIl9Ciye4ot7JlqZK6eX/DMrwfYqNymdB
         el1HoO80FmzWMMC35VfPE/QeDKbjvrcYZTXyXEAvDIgmFdTs4ujzatT03YObn625IiLg
         jyE/4xCxzBULPJFDfyor/abjJtk873sPttYuWmG2YFxbpWWEMbkNzYNhaa9GwCH6olMB
         TkbNh3Sa1z7tLz0nr+IYOoLpIQA3Dv8hz3JtpVQtAj2XbcVGkM+eiLaiKLuT3aH1YqoW
         uWHVkSjZHBVD9U6wchShjcnS7g4SqDdbXl/HOP41gVj/RlKXKkvDK4IBObBnb7vNpa+r
         uJUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=bWqvtiy5VfY7P3lxw2BTVLXhao27AEaH1cyP6CTBHfU=;
        b=itN6bjGPOuWmNF6HVG+trXT1v46iXCM9DYif0TWf9WTpFENGCqYqSH3ZXxNQR2o37k
         sJcalwgHFqd9ktXkwKr13jofAQWViv+FHgqqm/rfkzwCrGwiXab8xaaFH6WOI/dHOJeS
         F0Kd5SgugDnjcD3hyhB8h5YU2yqh06gR/5kxmj3LLNr9D2BFa4Q6My+UdOOJ3biRabHy
         zibtyO3M3a02F7aZTzYffqUG6VMd6jB+lq246ZQES+9bD3XccmYrYQ8YvaSCmXJKRuFw
         tWF2bGfxnZDZX8UmazAygyJh6vECzmCdBMCe9yQJjDCJmamYyx+H03GG2O8TcFBKxJzK
         0TeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of anshuman.khandual@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=anshuman.khandual@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id u9si60158wri.3.2020.03.03.22.47.41
        for <clang-built-linux@googlegroups.com>;
        Tue, 03 Mar 2020 22:47:41 -0800 (PST)
Received-SPF: pass (google.com: domain of anshuman.khandual@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C85530E;
	Tue,  3 Mar 2020 22:47:40 -0800 (PST)
Received: from [10.163.1.88] (unknown [10.163.1.88])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BA30F3F6CF;
	Tue,  3 Mar 2020 22:51:32 -0800 (PST)
Subject: Re: [linux-next:master 5946/5967] arch/arm64/mm/mmu.c:827:21: error:
 incompatible pointer types passing 'pgd_t *' to parameter of type 'p4d_t *'
To: Mike Rapoport <rppt@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Catalin Marinas <catalin.marinas@arm.com>
References: <202003031105.xcoYRe6W%lkp@intel.com>
 <20200303170314.9a6684e8191250275b1d8bdf@linux-foundation.org>
 <20200304055751.GA6202@linux.ibm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <f03bc575-0586-9eca-9e7e-3af912f48929@arm.com>
Date: Wed, 4 Mar 2020 12:17:35 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200304055751.GA6202@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: anshuman.khandual@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of anshuman.khandual@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=anshuman.khandual@arm.com
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



On 03/04/2020 11:27 AM, Mike Rapoport wrote:
> On Tue, Mar 03, 2020 at 05:03:14PM -0800, Andrew Morton wrote:
>> On Tue, 3 Mar 2020 11:18:12 +0800 kbuild test robot <lkp@intel.com> wrote:
>>
>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>>> head:   b56557c8e5210c25b008da636ef804b228967aa6
>>> commit: 87d900aef3e229a891438c88debc533a8a1fa976 [5946/5967] arm/arm64: add support for folded p4d page tables
>>> config: arm64-allyesconfig (attached as .config)
>>> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 211fb91f1067ecdf7c0b8a019bcf76554d813129)
>>> reproduce:
>>>         # FIXME the reproduce steps for clang is not ready yet
>>>
>>> If you fix the issue, kindly add following tag
>>> Reported-by: kbuild test robot <lkp@intel.com>
>>>
>>> All errors (new ones prefixed by >>):
>> (cc Mike & Catalin)
>>
>> Did we already fix this? 
>> arm-arm64-add-support-for-folded-p4d-page-tables-fix-fix.patch
>> (http://lkml.kernel.org/r/20200302174553.GC4166275@arrakis.emea.arm.com)
>> seems to be fixing a different issue?
>  
> It's the same issue.
> Besides, Anshuman updated the hot-remove series [1] to include p4d walk, so
> it should get fixed in arm64 tree.
> 
The latest hot remove series (v14) with p4d walk enabled is here

https://patchwork.kernel.org/project/linux-mm/list/?series=250939

- Anshuman

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f03bc575-0586-9eca-9e7e-3af912f48929%40arm.com.
