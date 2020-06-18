Return-Path: <clang-built-linux+bncBAABB3XBVX3QKGQEBAGR6LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB4A1FF3AF
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 15:49:36 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id e12sf2751857oob.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 06:49:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592488175; cv=pass;
        d=google.com; s=arc-20160816;
        b=qo2YZRroe/FK7UgzbaGTdfZ0/AzHWnS4hWLnv+gFn6FWFBtUxw0+LWM6D07gt+oYZd
         re7/AKjXK9T0UZwOG4MKpQEJK8sArZcXbEi3sm8obX9tmzugAO3QYkoBVvJoqTmJ9tvI
         pnRvde7Y7jtqo0Yy+0keRcC0OWychjLvysuOdknkzh+KbKqWZz3QvfsCK5AAu10jYaOr
         /7RBvjyBSwK2bNEDGQQrW1WYz57eOvKs+DNUtDjxcwUMn/mFto1OvTiMIv0A886IFRSY
         O6NzpZOBaT5t8BG7Nthfq7nytrg7r1iUYXijrguzFRg2rURyOLAxL0xiseH9tD/AWLJs
         aqcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=rP2YNUt7sw0OqxbUMegqeGw/FeueXcD6Urgn8U4cifU=;
        b=dESloSd1LoyMTB8olKlz7lm50OZ46PHs9i6frIV0cHTDbOGnXNxEhd8rxe1PRlAqGU
         in7dT7zuiKzv0Hbk6wykMxdtaxcsmsN37wMD4Sd+YWaCyedQdBIzk+CKI6oB60PFE3lv
         79++5kGXNlta6aH/Ck+LXq9p8txXmcCDRUhqvUcTaJiJMMrXUWJOF5d5fHxjaZpaVwNz
         pQUMjMxIYkDzHnxUER5LgSe0l2yCC1WSYagm/oEaHjcZCHbJJSjYp9tdZang7Pf77gX5
         yPzwkjdjH8FQY3N/rXpY19+i08A0Rvcki5sroC2nAfvbc3BinPXcjXng4MTxjCaM5JVM
         OSdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=nixiaoming@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rP2YNUt7sw0OqxbUMegqeGw/FeueXcD6Urgn8U4cifU=;
        b=EjDrnull75hDwK9FACdXkG/5kIBQPkMpRjbNDsdocZ1b3tbEbyyxJVzqqMXQu09GH/
         RX1Y8DyLA7m3Ud0UiveCSa+V0qVLxZgsN+NWN66sXzYa7jVB9Qsn+pfoqcCOv7OE3p2z
         WwVa2elYGrD9Iy+KuxZysiVkuUFx+IHSII/NnGi1CqGQR5dGXwC4JfgVcuo+pzA+G1po
         hCExr63hNqb4HcU/iGf70Vq3vl6O69hCcKT5kXjX1+FKXxO1DbKVvYRVfddKTqpF4L4P
         ppFiKCB9B0izXCgtregEU2fkcnnLDayEy9NVi+SqCij2cIx9au8lfJ5jnCzhNVSW6Xvn
         dmVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rP2YNUt7sw0OqxbUMegqeGw/FeueXcD6Urgn8U4cifU=;
        b=oN0MPgirqjnAhP7FOH46L4FClpeb3wV6p4kR3vw7/1fxmr5wSOshanOCvaiTCpDoVd
         C+kKck3VWzwFVUQXGcTkEjVL/tqdeyB+9X543Tvo/+gdVS0Bn6NRQVtBZbVxJ6JJGixH
         lgo/VmZg4mOXrDRdcfePC2iBy9W3bH8hQXAC1Z3Ys7aRqO7OGgYJ5NKwfhT+Dj4ai+7+
         v1m7t02YNe8dhDje9xC48cRL6Dt6m+z9xPajW3EA1QA6fzJSJiYoLSqlqWYxsNfs/HTK
         8pYla+KOXVluGRW7fLgUXm99OJvFwfBX/gNC0/vmtnxUeYk3JR9iCU37+slF9QDbty1a
         +vhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ki3dziX81pC9GpXraSu5Muol5h489fLvIXty2CqtNTFi41OFx
	zDJ1xGst23llQ6JOox8ktR8=
X-Google-Smtp-Source: ABdhPJxzo2TrD/QJwUr0bNg+/jrJgnPTkDOdJybDzWl36T/I25pVqs6UsbybiPSDz1jRiMhFKL/eJA==
X-Received: by 2002:aca:cdc4:: with SMTP id d187mr2930296oig.117.1592488174990;
        Thu, 18 Jun 2020 06:49:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e19:: with SMTP id s25ls1309998otr.5.gmail; Thu,
 18 Jun 2020 06:49:34 -0700 (PDT)
X-Received: by 2002:a05:6830:1aed:: with SMTP id c13mr3737335otd.78.1592488174685;
        Thu, 18 Jun 2020 06:49:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592488174; cv=none;
        d=google.com; s=arc-20160816;
        b=PDwJ4qlCkhv6rDWZ4UHXDRldlm/WOX1Mnrq6PA/s4428w+ccZMnsB2U4pMQSnVZwwJ
         lKTe2cZ0WA+IVWJ0V5frN+cZhWuMV7MvbA29sST6m5++9Cx/z76piObcxqwOYv61a8FJ
         fiC8fVEVIY4GFg8m9SXTRazN6Pfb/5bqDHkzWPPE1ij6fy83yPdPZz8H6y2McaLMXUKZ
         MDJoxb8gAA5crjppvDWl7QjS/G9FyLYjL9SVDV5nbJtD6jNjHm5PT6O9PODHOOtnLzFK
         mmRpxAHF5jwIuvubmQK9mGQ90f89Ekeqrf3KwfH5sqDUiG8CvVwpgV3YS/GzYEOkjtKy
         Hc4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=Qu2piDTpRjdPEK7njN1UjJ14U6zvgl3bMsje0AGb3eg=;
        b=MSN9NOvhIhaT0Kkl4CKBqRv/W8hMs3EeMcWtWmoCP5mY5CDfusF5WJjN5uCqOoDxJQ
         o/ONV4HMq/6wPhnLWqXMkIDb2SD2ojb2GA06XA8vQ8LkX10T0EvcMmBGXfhSpjhCzfjz
         V4BQQnybFyfA02HGTsvnahYtLhjcMDf1Y8fGo+B7aDwM+jOIA3kU4nPZiPeW3rpfs5fa
         vf1M+ibjSdu1fiu/aEPipgkYecvs/d+b5e14MSAnKj9RDYC4JBQRckFBnh9Pzo0FX80p
         H1lOouEcAb61PpW33hv3TmirHvSrQxdFSGZ0Z/cecx4oNFHSXTc60I7dTUlciNN5Dzru
         UV3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=nixiaoming@huawei.com
Received: from huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id l9si144186oig.0.2020.06.18.06.49.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jun 2020 06:49:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of nixiaoming@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
	by Forcepoint Email with ESMTP id EB4E82876CB688CEB42B;
	Thu, 18 Jun 2020 21:49:31 +0800 (CST)
Received: from [127.0.0.1] (10.67.102.197) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Thu, 18 Jun 2020
 21:49:21 +0800
Subject: Re: [PATCH] s390: fix build error for sys_call_table_emu
To: Heiko Carstens <heiko.carstens@de.ibm.com>
CC: <acme@kernel.org>, <alexander.shishkin@linux.intel.com>, <arnd@arndb.de>,
	<borntraeger@de.ibm.com>, <catalin.marinas@arm.com>, <christian@brauner.io>,
	<cyphar@cyphar.com>, <dhowells@redhat.com>, <ebiederm@xmission.com>,
	<fenghua.yu@intel.com>, <geert@linux-m68k.org>, <gor@linux.ibm.com>,
	<ink@jurassic.park.msu.ru>, <jolsa@redhat.com>, <linux@armlinux.org.uk>,
	<lkp@intel.com>, <mark.rutland@arm.com>, <mattst88@gmail.com>,
	<minchan@kernel.org>, <mingo@redhat.com>, <monstr@monstr.eu>,
	<namhyung@kernel.org>, <peterz@infradead.org>, <rth@twiddle.net>,
	<sargun@sargun.me>, <sfr@canb.auug.org.au>, <tony.luck@intel.com>,
	<will@kernel.org>, <akpm@linux-foundation.org>,
	<alex.huangjianhui@huawei.com>, <zhongjubin@huawei.com>,
	<linux-kernel@vger.kernel.org>, <linux-s390@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>, <kbuild-all@lists.01.org>,
	<linux-mm@kvack.org>
References: <20200618110320.104013-1-nixiaoming@huawei.com>
 <20200618112702.GB4231@osiris>
From: Xiaoming Ni <nixiaoming@huawei.com>
Message-ID: <a7e79943-0858-f1eb-5d06-3c7339c592d3@huawei.com>
Date: Thu, 18 Jun 2020 21:49:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200618112702.GB4231@osiris>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Originating-IP: [10.67.102.197]
X-CFilter-Loop: Reflected
X-Original-Sender: nixiaoming@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of nixiaoming@huawei.com designates 45.249.212.35 as
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

On 2020/6/18 19:27, Heiko Carstens wrote:
> On Thu, Jun 18, 2020 at 07:03:20PM +0800, Xiaoming Ni wrote:
>> Build error on s390:
>> 	arch/s390/kernel/entry.o: in function `sys_call_table_emu':
>> 	>> (.rodata+0x1288): undefined reference to `__s390_'
>>
>> In commit ("All arch: remove system call sys_sysctl")
>>   148  common	fdatasync		sys_fdatasync			sys_fdatasync
>> -149  common	_sysctl			sys_sysctl			compat_sys_sysctl
>> +149  common	_sysctl			sys_ni_syscall
>>   150  common	mlock			sys_mlock			sys_mlock
>>
>> After the patch is integrated, there is a format error in the generated
>> arch/s390/include/generated/asm/syscall_table.h:
>> 	SYSCALL(sys_fdatasync, sys_fdatasync)
>> 	SYSCALL(sys_ni_syscall,) /* cause build error */
>> 	SYSCALL(sys_mlock,sys_mlock)
>>
>> There are holes in the system call number in
>>   arch/s390/kernel/syscalls/syscall.tbl. When generating syscall_table.h,
>> these hole numbers will be automatically filled with "NI_SYSCALL".
>> Therefore, delete the number 149 to fix the current compilation failure.
>>   Similarly, modify tools/perf/arch/s390/entry/syscalls/syscall.tbl.
>>
>> Fixes: ("All arch: remove system call sys_sysctl")
>> Fixes: https://lore.kernel.org/linuxppc-dev/20200616030734.87257-1-nixiaoming@huawei.com/
>> Reported-by: kernel test robot <lkp@intel.com>
>> Signed-off-by: Xiaoming Ni <nixiaoming@huawei.com>
>> ---
>>   arch/s390/kernel/syscalls/syscall.tbl           | 1 -
>>   tools/perf/arch/s390/entry/syscalls/syscall.tbl | 1 -
>>   2 files changed, 2 deletions(-)
>>
>> diff --git a/arch/s390/kernel/syscalls/syscall.tbl b/arch/s390/kernel/syscalls/syscall.tbl
>> index f17aaf6fe5de..bcaf93994e3c 100644
>> --- a/arch/s390/kernel/syscalls/syscall.tbl
>> +++ b/arch/s390/kernel/syscalls/syscall.tbl
>> @@ -138,7 +138,6 @@
>>   146  common	writev			sys_writev			compat_sys_writev
>>   147  common	getsid			sys_getsid			sys_getsid
>>   148  common	fdatasync		sys_fdatasync			sys_fdatasync
>> -149  common	_sysctl			sys_ni_syscall
> 
> This is not correct. It should be changed to:
> 
>     149  common	_sysctl			-				-
> 
thanks for your guidance

> Otherwise the generated __NR__sysctl define will be lost from
> unistd.h, which should not happen. Looking at the link above it
> _looks_ like a similar mistake was done for arm64.
> 
Using holes will cause the definition of __NR__sysctl to be missing in 
include/asm/unistd_32.h and include/asm/unistd_64.h

For arm64, I observed that "sys_afs_syscall", "sys_get_kernel_syms" and 
other commented out syscalls have no corresponding definition _NR_XXX in 
unistd.h, is it not a problem on arm64?

                         /* 127 was sys_create_module */
__SYSCALL(127, sys_ni_syscall)

                         /* 130 was sys_get_kernel_syms */
__SYSCALL(130, sys_ni_syscall)

                         /* 137 was sys_afs_syscall */
__SYSCALL(137, sys_ni_syscall)


Thanks
Xiaoming Ni


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a7e79943-0858-f1eb-5d06-3c7339c592d3%40huawei.com.
