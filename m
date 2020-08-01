Return-Path: <clang-built-linux+bncBAABBRMTSX4QKGQEPKHU2GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E882351C5
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 12:53:58 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id b14sf5507761uae.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 Aug 2020 03:53:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596279237; cv=pass;
        d=google.com; s=arc-20160816;
        b=bhDUMs1sgGBaEjNrt7oh0BtwPYcZvtv3xNdeZFYSF9qs3EiVhV3pUPpl+r9xX9DblG
         LSJip/Vxnqfg+wDSdep4ECsk/B5LPBuKMC6UaE2sEnD85YOs5lizGlZ+NtCeem/ucCJD
         kjp48fbkxZEb/HgxRpWTe1FyjnZWW7bahGEoUIIBR84zl66wZB4ZIEshgRD+Am6H/wbs
         G2qSBPmuBQntyhV4OzN0x+ycJnjPnldnFBtvueiP8TZv+WeXqimaI+ecEZ98xcqN2a5S
         0e5l8836/YIsu+7grcBjUQaWhOuHFCwUvl+y6TnuPhmvqiqWCgVrpexvd91xqqEzBjVy
         2pgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=VgPcNI3IgsCCKjgAUypIiRVBdfH5CEUeZTpmY2RtKGA=;
        b=KoJD6rXcKc9VE1nh9vlAuG9NAwQOeF4rLp5ASbMC+l9aYibxufQ9FU6eiHG4/xHWOu
         HiVAemc+FJD9BsbutFopdAlI3s5fHxdG1l9gHhou3+CQFj/eIMxl6eLPjJjLYeLyCunF
         VSzsTdi2i/OkfWjnjVLi5Sd/KgSLRoIfXzsO3TwecUiIt2b5g6+ZFcKmjGUmRfOzpPbv
         U/XCYhzHVqQx5LSzJ0HOLejdzTcw6DVd1T3y8dZbJ+KVXcQJi6g79pO/2/EKh4L89IRQ
         0lWSG/3jxNkb//cRWFCdBT10oTU+tde2kS2l/S58NgrQdxZVRJ7j+uKFMsEbWpFAGdyh
         g4iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hbathini@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=hbathini@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VgPcNI3IgsCCKjgAUypIiRVBdfH5CEUeZTpmY2RtKGA=;
        b=UK9iXJDGCsXf99pJoAcoUxhcjEOlodpY8L7dQ7MJ8ACwyUSSrNWIPgrONjg5rAfaKh
         PZm8r4+K+thhiILpbw5khSU0sesvuUNpWdboi9eqKaqHwokbT3xXIUnyeg0ns58R01HQ
         VHSS2iEIp1MunovrHsPRLEkK0NrxMJRGBGM71OzQeswB5YDh6NifPS8vDAueoszeMCiX
         KBrACjbfokvUSKCDGLspBmFowDdDW5UkrOI1chXJzVq4Lps4x28q98ls/rMWzS27iVGC
         UnnCttWeX/psMAPeD1LOONB9Wgxccydbyczbx39AiUysOJ9zU9/TCxKzGtxZ2YT0ExNI
         EPjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VgPcNI3IgsCCKjgAUypIiRVBdfH5CEUeZTpmY2RtKGA=;
        b=YaCRL03+8Jsj48b/p1UPONGS2dVvHr8Jkt95BBadJjUUsgBjpDnR2JadJ1tPYCfo+9
         qWsZSF2ppP19QXqCwZ/PcABj1Iora+VMNZdJ/Df2GyPdUDkkwVnlAZKhuu6J1SoNF5ib
         cKxWpnokuHRAOilwQn+YnUV0QVQmdSfOZQTTOjsdVMBnoH2yNv2xMloYbtn1+/50kNqP
         FBiFMAY/HoT6eYyUGHtlAtkt5iUCvWHFMsPfp8wuDidl823MeRW5i14OVUMb5lRvQa9+
         cD72OhTxYvaWfpkH/wAhPUnyC32PIp8bFY/pktkqA1cGCwHOqw8oFhzuBm3Ap8H5FcPP
         Eqpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ur01dkUHpqTzOg8/bunwFtnOgTn/5v17D1tOqinNviATEeEwQ
	3HJwMhoUMhAwoPftv9Vn+fU=
X-Google-Smtp-Source: ABdhPJxkgRYlfwSG8aQ6yq7nSFv9lZB+H/xL/bBUlkB6uV/J3RqnuqNsCB1phCxvYl8jjjmhyGDXKQ==
X-Received: by 2002:ab0:565c:: with SMTP id z28mr5482848uaa.8.1596279237299;
        Sat, 01 Aug 2020 03:53:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cf4a:: with SMTP id f10ls752230vsm.3.gmail; Sat, 01 Aug
 2020 03:53:57 -0700 (PDT)
X-Received: by 2002:a67:fc04:: with SMTP id o4mr6001524vsq.29.1596279236926;
        Sat, 01 Aug 2020 03:53:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596279236; cv=none;
        d=google.com; s=arc-20160816;
        b=oUypvZCo7RMuxHXjMKVTw22Zgkv+MeuylCI/xeGqVmNlBnj26lNqBtN98ONUxM0PXB
         yl3gOJ9jv1yH5WQ9o+MCCRwep6tBTkGCxU1vhhSh4OvL0Ip21/whru7jVXdq64x6BDxj
         E2vjE+kjTjnF5CoMaVCU+RXFSdxkmEt1SF1/bAYiaJWZbQgvTLaaCYDcTjEpIl3QfI5T
         c8V7YSVgkra9sH3iOhjW9f7i8wyfLRUuortDUXsaNrHPBB5ebUdX49dy7P9xmJF9tT7i
         XBCkAT04A8MBN2zIJHd9N5dYhDkZfi+ErhdFSG97q2+lO8UEjXxZjCpu9fQAu2pODHh4
         0VjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=6LTV0ahRKfWPA3HObbzPIH/aqso7A7OC+N0nWY8aoIQ=;
        b=vqqZ+dU94rN92XkPtjUHSSaFVdkWkabFPmydcA7hTm/2UZHgMITLLCIxQQEH6p3X9m
         te75A/2g9nPeiNB6s1HV3V1PHZbTS/xyTWWTIxQ8VAQ3EdGGpfujxzC+al3cIae8Pcpu
         y9dVC4XvdGiMThLCduPvTUul6kvfwz82Muh7xXSa05HWNlpd4cvuSkyu4ZdCUT5KhOyZ
         Azyo1HUNBbJ2BMM0kayOI2ez02PLELjP0nfqz/3wORO+d/fYiSDVY0KQcbLJb+g4eIxq
         LZGgWOQbFLT2wzeTHJXYlMrX3PPECgnOi06OkkavK+Y38fASu0PQES1FrSSJpHJQU0DA
         YXoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hbathini@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=hbathini@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id x6si353395vko.1.2020.08.01.03.53.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Aug 2020 03:53:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of hbathini@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 071AWipj009926;
	Sat, 1 Aug 2020 06:53:31 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 32n4j1tj4p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 01 Aug 2020 06:53:31 -0400
Received: from m0098399.ppops.net (m0098399.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 071AineF032275;
	Sat, 1 Aug 2020 06:53:30 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 32n4j1tj43-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 01 Aug 2020 06:53:30 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 071AoAw0031317;
	Sat, 1 Aug 2020 10:53:27 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
	by ppma03ams.nl.ibm.com with ESMTP id 32n01809gg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 01 Aug 2020 10:53:27 +0000
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com [9.149.105.61])
	by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 071ArONv53215310
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 1 Aug 2020 10:53:24 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 6E75411C04A;
	Sat,  1 Aug 2020 10:53:24 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5269A11C04C;
	Sat,  1 Aug 2020 10:53:16 +0000 (GMT)
Received: from [9.102.1.22] (unknown [9.102.1.22])
	by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Sat,  1 Aug 2020 10:53:16 +0000 (GMT)
Subject: Re: [PATCH 06/15] powerpc: fadamp: simplify
 fadump_reserve_crash_area()
To: Mike Rapoport <rppt@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>
Cc: linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
        Dave Hansen <dave.hansen@linux.intel.com>,
        Hari Bathini
 <hbathini@in.ibm.com>, linux-mips@vger.kernel.org,
        Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
        sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
        Will Deacon <will@kernel.org>, Stafford Horne <shorne@gmail.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        linux-s390@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
        Yoshinori Sato <ysato@users.sourceforge.jp>, x86@kernel.org,
        Russell King <linux@armlinux.org.uk>,
        Mike Rapoport <rppt@linux.ibm.com>, clang-built-linux@googlegroups.com,
        Ingo Molnar <mingo@redhat.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
        openrisc@lists.librecores.org, Borislav Petkov <bp@alien8.de>,
        Andy Lutomirski <luto@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
        linux-mm@kvack.org, linuxppc-dev@lists.ozlabs.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Christoph Hellwig <hch@lst.de>
References: <20200728051153.1590-1-rppt@kernel.org>
 <20200728051153.1590-7-rppt@kernel.org> <87d04d5hda.fsf@mpe.ellerman.id.au>
 <20200801101854.GD534153@kernel.org>
From: Hari Bathini <hbathini@linux.ibm.com>
Message-ID: <bb86fb93-4d52-6b58-0914-eab45b74c028@linux.ibm.com>
Date: Sat, 1 Aug 2020 16:23:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200801101854.GD534153@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-08-01_07:2020-07-31,2020-08-01 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 bulkscore=0 mlxlogscore=999 adultscore=0 phishscore=0 malwarescore=0
 priorityscore=1501 mlxscore=0 lowpriorityscore=0 clxscore=1011
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008010079
X-Original-Sender: hbathini@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of hbathini@linux.ibm.com designates 148.163.156.1 as
 permitted sender) smtp.mailfrom=hbathini@linux.ibm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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



On 01/08/20 3:48 pm, Mike Rapoport wrote:
> On Thu, Jul 30, 2020 at 10:15:13PM +1000, Michael Ellerman wrote:
>> Mike Rapoport <rppt@kernel.org> writes:
>>> From: Mike Rapoport <rppt@linux.ibm.com>
>>>
>>> fadump_reserve_crash_area() reserves memory from a specified base address
>>> till the end of the RAM.
>>>
>>> Replace iteration through the memblock.memory with a single call to
>>> memblock_reserve() with appropriate  that will take care of proper memory
>>                                       ^
>>                                       parameters?
>>> reservation.
>>>
>>> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
>>> ---
>>>   arch/powerpc/kernel/fadump.c | 20 +-------------------
>>>   1 file changed, 1 insertion(+), 19 deletions(-)
>>
>> I think this looks OK to me, but I don't have a setup to test it easily.
>> I've added Hari to Cc who might be able to.
>>
>> But I'll give you an ack in the hope that it works :)
> 
> Actually, I did some digging in the git log and the traversal was added
> there on purpose by the commit b71a693d3db3 ("powerpc/fadump: exclude
> memory holes while reserving memory in second kernel")

I was about to comment on the same :)
memblock_reserve() was being used until we ran into the issue talked 
about in the above commit...

> Presuming this is still reqruired I'm going to drop this patch and will

Yeah, it is still required..

> simply replace for_each_memblock() with for_each_mem_range() in v2.

Sounds right.

>   
>> Acked-by: Michael Ellerman <mpe@ellerman.id.au>
>>
>>
>>> diff --git a/arch/powerpc/kernel/fadump.c b/arch/powerpc/kernel/fadump.c
>>> index 78ab9a6ee6ac..2446a61e3c25 100644
>>> --- a/arch/powerpc/kernel/fadump.c
>>> +++ b/arch/powerpc/kernel/fadump.c
>>> @@ -1658,25 +1658,7 @@ int __init fadump_reserve_mem(void)
>>>   /* Preserve everything above the base address */
>>>   static void __init fadump_reserve_crash_area(u64 base)
>>>   {
>>> -	struct memblock_region *reg;
>>> -	u64 mstart, msize;
>>> -
>>> -	for_each_memblock(memory, reg) {
>>> -		mstart = reg->base;
>>> -		msize  = reg->size;
>>> -
>>> -		if ((mstart + msize) < base)
>>> -			continue;
>>> -
>>> -		if (mstart < base) {
>>> -			msize -= (base - mstart);
>>> -			mstart = base;
>>> -		}
>>> -
>>> -		pr_info("Reserving %lluMB of memory at %#016llx for preserving crash data",
>>> -			(msize >> 20), mstart);
>>> -		memblock_reserve(mstart, msize);
>>> -	}
>>> +	memblock_reserve(base, memblock_end_of_DRAM() - base);
>>>   }
>>>   
>>>   unsigned long __init arch_reserved_kernel_pages(void)
>>> -- 
>>> 2.26.2
> 

Thanks
Hari

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bb86fb93-4d52-6b58-0914-eab45b74c028%40linux.ibm.com.
