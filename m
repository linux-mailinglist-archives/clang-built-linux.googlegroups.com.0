Return-Path: <clang-built-linux+bncBCJJPO575UBBBDESWP3QKGQECR426FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id CD901200B29
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 16:17:49 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id f18sf6731183qvr.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 07:17:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592576268; cv=pass;
        d=google.com; s=arc-20160816;
        b=yuR+0LElY56UPcAXj6rt7yUruC2V6ZDCBh7vCRGM/njhVc/CZqHiT+3DFvMMNn85yK
         ZM7ugFHEr/hMUjqeTB6I0dozKLy2FbJvqZOUcbnTIeeNtr6J7aBsP70XQjCzYoXfC/RT
         ExD0CLB2zGbplaUqgOPy9ZK1JlYCPH7II+LC7haNl3wqJkUtnOjSzR5nK03OPijsaCup
         taIDeGzfYVOJAnsq6gL7hTUcRM2moez9SwkhhUa/btt86Mbd3DXEbTkzdfbOg9pzwEAa
         Eb/LFYuUZeliYv4iFiH7Wjq4x1gW2f8KvZuTFrgY8TkJeMUcWUGd/jNUWciSZlZltKEj
         50ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=eE/jWeXAsx4e2J7J3Q/goUHneVrrn3knLoy/BQ/tVEA=;
        b=iBp0z46HBzmHA1g6x+sU7G7oszTybwsUAue3UORMLHDW2Dt7yodKauRJ/2EmQoq97b
         jxo+pZRLR3tY7/4V3Ar7Ls+uckoUsZH7+JwDTatl/f5Vs/Hm+5NfogxxavVXaeojt2yQ
         /r5RPrJsVXnThCSQPDZ5CKj9XFIxp5EK7++kiETusDC61LhjJbOF2hVnhttO+KLeCcIe
         Ggqul5/zXOLAYCKkZ+Gt87ZBxzKzNEnSpU5gtUfwrp+rrpoYAfQpZVTe/ZdNKKTu79jS
         voefPLBe28d1q+0L/KQbsM6h7kreDviNK2LJ2sEBk5pckVBUBNKDX896CREIvsaXPb+Z
         a2EQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of heiko.carstens@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=heiko.carstens@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eE/jWeXAsx4e2J7J3Q/goUHneVrrn3knLoy/BQ/tVEA=;
        b=GOCze0DrEtyxhxu+0jJOvzGkGDs1Bmus7rt6yHhZ5VaLtdkcPEDoGbhPtI2bFFHX5g
         +LNhi+vxiL3zloPCQTbf+kqHAkvqTdye05jtdsbgsHFInBs+Pt3IESchXuyiW8O6wios
         8L7aYo4BxPTN27bxnuv81hUbwhYVq4Z0I5qqtP6tRI9H/CUs7n9/kluUA1coJy9lSgHH
         0MVJLomnna6MfiDrATL1UjqgZapZxI4DIsshq0zEPIf7MPkixWDN48SLdYgZnSk4Ky1g
         OJVs4AXuKe2juoMl/zn0AHnSDuokGjC0u74us/k5lQM3vvLc3qPGAs34ViGlRN3vo1kd
         O3xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eE/jWeXAsx4e2J7J3Q/goUHneVrrn3knLoy/BQ/tVEA=;
        b=QHQEJzr11d5h/h5PUM5pZZZtZ5M4kq10FXS1VYlzd01u46Js4esOKm7PCRb/sKWmLV
         Q/kMCqcoUMfEexBjFuWuv+rPKZk62vWMF96xB+pI/gJsv36NgL2uQqP9hRNj+No5RP3a
         0OrrwM/T8tfTQSr1EccujuGELC+0w0O4C0s5HBkm5LqWLMQfeqOWsZFIrjABXpUngdlv
         MYArq0yyjTQeIsym2Nhx2mkYk4wdjZ+gt31ijIUzFAWYSGDWQ0OihIZGx1nYU/kMgioA
         6YbuSCIkj3B6IZq7/2ZD0WhI+lEPrVY9s0VN3EZ9KRrx/N6WwBnk/JqHF9bWhGjRqL+c
         j6cQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532P52AFfQbqdAI3T3rk4iEKYbMnzgTllfzbAElMvjR0MiuH5OD1
	DeDaPX2QHmbtzRzQQTmgtBs=
X-Google-Smtp-Source: ABdhPJwbvFFgSCqkO+Qo0bBgA0bK+FVsDGUC3C/Vk6sfRUfTMPDZCxPad5cceMFiYinMfF0iaZ5xeA==
X-Received: by 2002:ac8:7c8f:: with SMTP id y15mr3635411qtv.248.1592576268493;
        Fri, 19 Jun 2020 07:17:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a3cc:: with SMTP id m195ls4489186qke.11.gmail; Fri, 19
 Jun 2020 07:17:48 -0700 (PDT)
X-Received: by 2002:a37:a315:: with SMTP id m21mr3741238qke.482.1592576268195;
        Fri, 19 Jun 2020 07:17:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592576268; cv=none;
        d=google.com; s=arc-20160816;
        b=NF9W//06zDOw4oxbwC/0jCogg5t0wLk6FDLEDmWgFZNNio0nf+j+OGx7J8oJe3aJZ4
         5GTTJqchUhnBGUIQ3sVW9GyxmJU5vTe5SzuZxmTfzxU/fYjV5jVKHb5+Gy4OYxyLrv7n
         vg4klfSruli6SbU1J3AQN1CSUQBuJ6FkgSFEs2OGX7advzoktc83SArNNI5/HC2Ej/ra
         nEnwxwqQPxQuBMz9+HzioBuirxjmru7lRa9DnwnSLPuXaMqMPss1dyftwmlYW4Fy0KGt
         RSHx5oFeNe7Y6n3D0yDv+WIc9Hh1fHTR54uLQ2/8D0OhWKDPMDmpGJ7EV6FhqmsWpbkC
         9vyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=Egv4DSWTsmDNGPy8mu3TW3C5g8g2yLyUWMOCINyFybQ=;
        b=hGWZ4qMRFvom3p8CmKoCSFnhXlg43ZG5a+yyWa0OACjGGcqE2lRnGnq8ChqzIEgEQU
         EFqhGqXiGtWqA7X8XPM/IFl1hGH4w71FgGg9TY52HE+UINgYyMkFJrx0VzU9838iVLrG
         KXNEfjGObtYO4RoQ4YfPWUYGvfChlQ1jq7lXfZ+h5pxGnzXU0UXqRMdRsDSir1Tsh5PY
         rMEB35fT744aSW0GnsiSbRzzo1xBM4renABSMm2Ywry4W/3nvLuBVqvltfPjgTDgdiXq
         wt7yf/Dx1ULqnD/a3RNvYfu4NWrDQwxbNrpmg86SBJLQdN2loUX6pcVAi27St/pP2z1i
         HT4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of heiko.carstens@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=heiko.carstens@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id x16si384546qtx.5.2020.06.19.07.17.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jun 2020 07:17:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of heiko.carstens@de.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 05JE2FrA079813;
	Fri, 19 Jun 2020 10:17:26 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 31rthf0j9q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Jun 2020 10:17:26 -0400
Received: from m0098409.ppops.net (m0098409.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 05JE3tnP094985;
	Fri, 19 Jun 2020 10:17:26 -0400
Received: from ppma04fra.de.ibm.com (6a.4a.5195.ip4.static.sl-reverse.com [149.81.74.106])
	by mx0a-001b2d01.pphosted.com with ESMTP id 31rthf0j8e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Jun 2020 10:17:25 -0400
Received: from pps.filterd (ppma04fra.de.ibm.com [127.0.0.1])
	by ppma04fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 05JEFwJr010398;
	Fri, 19 Jun 2020 14:17:23 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
	by ppma04fra.de.ibm.com with ESMTP id 31r18v1342-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Jun 2020 14:17:23 +0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
	by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 05JEG2fY63635908
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 19 Jun 2020 14:16:02 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 1CA3DA4054;
	Fri, 19 Jun 2020 14:17:20 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BE8B2A4062;
	Fri, 19 Jun 2020 14:17:18 +0000 (GMT)
Received: from osiris (unknown [9.171.84.209])
	by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Fri, 19 Jun 2020 14:17:18 +0000 (GMT)
Date: Fri, 19 Jun 2020 16:17:17 +0200
From: Heiko Carstens <heiko.carstens@de.ibm.com>
To: Xiaoming Ni <nixiaoming@huawei.com>
Cc: acme@kernel.org, alexander.shishkin@linux.intel.com, arnd@arndb.de,
        borntraeger@de.ibm.com, catalin.marinas@arm.com, christian@brauner.io,
        cyphar@cyphar.com, dhowells@redhat.com, ebiederm@xmission.com,
        fenghua.yu@intel.com, geert@linux-m68k.org, gor@linux.ibm.com,
        ink@jurassic.park.msu.ru, jolsa@redhat.com, linux@armlinux.org.uk,
        lkp@intel.com, mark.rutland@arm.com, mattst88@gmail.com,
        minchan@kernel.org, mingo@redhat.com, monstr@monstr.eu,
        namhyung@kernel.org, peterz@infradead.org, rth@twiddle.net,
        sargun@sargun.me, sfr@canb.auug.org.au, tony.luck@intel.com,
        will@kernel.org, akpm@linux-foundation.org,
        alex.huangjianhui@huawei.com, zhongjubin@huawei.com,
        linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
        clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
        linux-mm@kvack.org
Subject: Re: [PATCH v2] s390: fix build error for sys_call_table_emu
Message-ID: <20200619141717.GB9971@osiris>
References: <20200618141426.16884-1-nixiaoming@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200618141426.16884-1-nixiaoming@huawei.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216,18.0.687
 definitions=2020-06-19_11:2020-06-19,2020-06-19 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 impostorscore=0 cotscore=-2147483648 bulkscore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 mlxlogscore=771 suspectscore=0
 malwarescore=0 mlxscore=0 priorityscore=1501 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006190101
X-Original-Sender: heiko.carstens@de.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of heiko.carstens@de.ibm.com designates 148.163.156.1 as
 permitted sender) smtp.mailfrom=heiko.carstens@de.ibm.com;       dmarc=pass
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

On Thu, Jun 18, 2020 at 10:14:26PM +0800, Xiaoming Ni wrote:
> Build error on s390:
> 	arch/s390/kernel/entry.o: in function `sys_call_table_emu':
> 	>> (.rodata+0x1288): undefined reference to `__s390_'
> 
> In commit ("All arch: remove system call sys_sysctl")
>  148  common	fdatasync		sys_fdatasync			sys_fdatasync
> -149  common	_sysctl			sys_sysctl			compat_sys_sysctl
> +149  common	_sysctl			sys_ni_syscall
>  150  common	mlock			sys_mlock			sys_mlock
> 
> After the patch is integrated, there is a format error in the generated
> arch/s390/include/generated/asm/syscall_table.h:
> 	SYSCALL(sys_fdatasync, sys_fdatasync)
> 	SYSCALL(sys_ni_syscall,) /* cause build error */
> 	SYSCALL(sys_mlock,sys_mlock)
> 
> According to the guidance of Heiko Carstens, use "-" to fill the empty system call
>  Similarly, modify tools/perf/arch/s390/entry/syscalls/syscall.tbl.
> 
> Fixes: ("All arch: remove system call sys_sysctl")
> Fixes: https://lore.kernel.org/linuxppc-dev/20200616030734.87257-1-nixiaoming@huawei.com/
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Xiaoming Ni <nixiaoming@huawei.com>
> 
> changes in v2:
> 	use "-" to fill the empty system call
> 
> v1: https://lore.kernel.org/lkml/20200618110320.104013-1-nixiaoming@huawei.com/
> ---
>  arch/s390/kernel/syscalls/syscall.tbl           | 2 +-
>  tools/perf/arch/s390/entry/syscalls/syscall.tbl | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Acked-by: Heiko Carstens <heiko.carstens@de.ibm.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200619141717.GB9971%40osiris.
