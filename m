Return-Path: <clang-built-linux+bncBCJJPO575UBBBKE7VX3QKGQEIVY6Z2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0011FF078
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 13:27:37 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id c5sf3981251iok.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 04:27:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592479656; cv=pass;
        d=google.com; s=arc-20160816;
        b=uzOT7pOf7WUtPIEpZQvAtP2orMRKMO63eqUhbBk9Qwe7WPIu0KIdXbmb7Ak+u+GUPS
         4t5rJeGKwhUvsKycHksLYbfAg8CQudbiU6ghJ1E9KWowUQJsN3eVGgJ7tCRyLhhjx14Y
         WDcj51Eqn7qM0/kgOToY+ztL6Ir667BSAcH7B3McXMzfQ+hG/eDU16lM/829TyPNdQ45
         akxRFdx3LGSfwOh14LxOo8CFWVb97D16b+eG5mlxWGPdwZHh/vIwY7c4I0/OlVpgXFEN
         Nv94tN5VJ5QTKFPYSpKFaMF2D5KGuoDA+rckZUPpL7ipq91wzIBcmsOKSBvRpqmutagE
         2tIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sHYgCzTjq004Jtt73KclXP7ahsZ6gfzg8kzhcsOz/+8=;
        b=FnZFA5PbCH4z7+xGcXGUle1gAv+wikM1/fl5vkLr5fjas0ew1RIW/o08U+KOsXg8sj
         h5j7zBiHjbfGo52MfLl3Vq81FbjAqhFdX7QFhzJu8DU31vFPMMRNC2JeIN5fxRNn7eJS
         FTtXv224f2MSQFhqe0jalIazSotUfLEzm54i3KqUSI8QH4w3jl4fiR/1U8e7UPma1neo
         sLE27kiaEuueuWliglmmYjHmiEp5KJbWW3pBX4n8ZjbwsUaUprJ3N3RQhXvA79Hn/Ytc
         KAX6WuUlRqwke4bzxj9K7fI7NOuDoF6vRW8Ri5tgWWp+QMvRpwqnOlqzJJ53cbU3C38s
         2Gmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of heiko.carstens@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=heiko.carstens@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sHYgCzTjq004Jtt73KclXP7ahsZ6gfzg8kzhcsOz/+8=;
        b=TFM64cs3fZU/rfRouNq269gMZnt4o7Fh129apR2q5XvDlKOXuB1kTi96yew68+hjvi
         qLR0Dne5S22b3wm8ph+4Qy8k7LkUnOZ0VhKR0oKChY/HfhBzW2E4U3hX/3YbvpBV0ZCz
         yFjRkof3VW36KpXRir+wbhnxyaFtoT6mc7ed5ouFlj8V9MBOiekdm35XOyPC/WxowKj3
         znmYOjMnT2qAKPUZOTNzuJOTvWQki+mF4Wsxu46YJ85Gbgr7y6P8qVenCQZ35KkM/INV
         eU/nlrSFK0Uci5eA5vmTb0qrLEhvxfYROapxm7uFD55+3sl748iOXpcUuK2leGVY1pp4
         wiTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sHYgCzTjq004Jtt73KclXP7ahsZ6gfzg8kzhcsOz/+8=;
        b=s/BCR2ABIc1jbtSHGO8nj3mFo/nY2+UFXY/z3TE5hWVVQwiVSyYawQ0PlVp+CJzt81
         TBLGLJU2vb9ECQL18n3CPl5+dQBlwqBtgkzMCg4/EejPVtUtTQys7xBt2mrgocg9FJoI
         X2iMk2x1yNL7+ZqbKvlAx9i/TZohohuQ+r9F7dAU0wZpVHl40esNnIaJk85IzDRl0Avr
         24uSTg/kgFrQsG7XuGC0EtWcgwiMT6cKPf/RnD+HS6LgPVT8StPbjQ4oS81HFLjiQKPS
         Yth/3NG2xV+BoJ7B1joj9fXWlh6KDEkOi19X5wgwqGcuTYtWzAZMZjU6uSAbW31eDtyZ
         HPhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JkJv2CJcndUv8W7Est+dqvOdv+Mk0JnEaFexrkASbMfJvdntw
	xGqVOSNyIq2VOKiXJY5qAM0=
X-Google-Smtp-Source: ABdhPJwIloj9tzJCdVe7B/wUqqmsnIdmLkr/4BfsrfxjnH+qP5ZC/4cbU4mTFUQdQ2ImPZlzHe/dYA==
X-Received: by 2002:a05:6602:2e81:: with SMTP id m1mr4370776iow.147.1592479656164;
        Thu, 18 Jun 2020 04:27:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1389:: with SMTP id w9ls192708jad.4.gmail; Thu, 18
 Jun 2020 04:27:35 -0700 (PDT)
X-Received: by 2002:a02:390b:: with SMTP id l11mr4013002jaa.54.1592479655796;
        Thu, 18 Jun 2020 04:27:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592479655; cv=none;
        d=google.com; s=arc-20160816;
        b=QTUf85sEdIYXixOgw0/r/h8I3S5MV0a0ZXbUu1wlJh/ODwzo8aIPPDQKFCLdNAVlrs
         z3jvD6j/2pi11HloknZ5M4wiVAT5qAjDJ6I80pbNcytEh0X0Hau7uAulEDf8pNhZ+P41
         CYQV9bi6OMFG8FdNFKLpC7iFLNQYbOVchT17/sQ8iwVWyr44lpKet0zFW0oGA4ardpck
         BEJIRLOcpUbJUnZ31zbxOuCFaJ8orakq5cl1TA27fuzDH25AQr2YiChM5OK7QBp0ViQZ
         Vnq2Z9k9L3sqHKsYSLcsDh5zVN1Jt6rkuU6RvjXGV1myo36PUDRrYWoEgHV+uz++ptqk
         gptA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=ETUtp0Qy9FWMY+lpvoKo89dUhkz0rajmUgTYMSkrhM0=;
        b=qR1sjBArBGnXHBNFx9aXzAnWMT68CxZNInb/Tr42YkmJr5xuASpMiXc95Ptm93nl0y
         GMC3ZP1U/6g/804Y0f84JdsxtNJTmagEAWAALKPIJO9PNJZPw9dZn9hyuXZjcRni3D6o
         NsaZ15P4s6c2p1FDr/piLmmgxIBn5ugrlVPeG8PHwTePDd5GnGRjIBrJOgXRX/CxL/m5
         MNwrRWibh5EGEzUQGDi4ZyNGzJU28N/30fyxocQmHOqjbAswfrC0+fFvefr/csBx2Sl9
         wsKaV5syrBjosuLPLRivMUCwuUPL0ER9Cya+D3v0dfXpa187xJPYLQ0512q27ENdsh5B
         OnBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of heiko.carstens@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=heiko.carstens@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id k1si102624ilr.0.2020.06.18.04.27.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jun 2020 04:27:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of heiko.carstens@de.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 05IB3UA7012500;
	Thu, 18 Jun 2020 07:27:12 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 31r6g11hxv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 18 Jun 2020 07:27:12 -0400
Received: from m0098394.ppops.net (m0098394.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 05IB6rat035172;
	Thu, 18 Jun 2020 07:27:12 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 31r6g11hwm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 18 Jun 2020 07:27:11 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 05IBPpcb031122;
	Thu, 18 Jun 2020 11:27:09 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
	by ppma03ams.nl.ibm.com with ESMTP id 31quax8yde-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 18 Jun 2020 11:27:09 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com [9.149.105.59])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 05IBR5lH65667518
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 18 Jun 2020 11:27:05 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BAB21A404D;
	Thu, 18 Jun 2020 11:27:05 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 57F97A4040;
	Thu, 18 Jun 2020 11:27:04 +0000 (GMT)
Received: from osiris (unknown [9.171.90.17])
	by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Thu, 18 Jun 2020 11:27:04 +0000 (GMT)
Date: Thu, 18 Jun 2020 13:27:02 +0200
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
Subject: Re: [PATCH] s390: fix build error for sys_call_table_emu
Message-ID: <20200618112702.GB4231@osiris>
References: <20200618110320.104013-1-nixiaoming@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200618110320.104013-1-nixiaoming@huawei.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216,18.0.687
 definitions=2020-06-18_07:2020-06-18,2020-06-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=999
 priorityscore=1501 suspectscore=0 bulkscore=0 cotscore=-2147483648
 adultscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 impostorscore=0
 mlxscore=0 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006180080
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

On Thu, Jun 18, 2020 at 07:03:20PM +0800, Xiaoming Ni wrote:
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
> There are holes in the system call number in
>  arch/s390/kernel/syscalls/syscall.tbl. When generating syscall_table.h,
> these hole numbers will be automatically filled with "NI_SYSCALL".
> Therefore, delete the number 149 to fix the current compilation failure.
>  Similarly, modify tools/perf/arch/s390/entry/syscalls/syscall.tbl.
> 
> Fixes: ("All arch: remove system call sys_sysctl")
> Fixes: https://lore.kernel.org/linuxppc-dev/20200616030734.87257-1-nixiaoming@huawei.com/
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Xiaoming Ni <nixiaoming@huawei.com>
> ---
>  arch/s390/kernel/syscalls/syscall.tbl           | 1 -
>  tools/perf/arch/s390/entry/syscalls/syscall.tbl | 1 -
>  2 files changed, 2 deletions(-)
> 
> diff --git a/arch/s390/kernel/syscalls/syscall.tbl b/arch/s390/kernel/syscalls/syscall.tbl
> index f17aaf6fe5de..bcaf93994e3c 100644
> --- a/arch/s390/kernel/syscalls/syscall.tbl
> +++ b/arch/s390/kernel/syscalls/syscall.tbl
> @@ -138,7 +138,6 @@
>  146  common	writev			sys_writev			compat_sys_writev
>  147  common	getsid			sys_getsid			sys_getsid
>  148  common	fdatasync		sys_fdatasync			sys_fdatasync
> -149  common	_sysctl			sys_ni_syscall

This is not correct. It should be changed to:

   149  common	_sysctl			-				-

Otherwise the generated __NR__sysctl define will be lost from
unistd.h, which should not happen. Looking at the link above it
_looks_ like a similar mistake was done for arm64.

> diff --git a/tools/perf/arch/s390/entry/syscalls/syscall.tbl b/tools/perf/arch/s390/entry/syscalls/syscall.tbl
> index 0193f9b98753..eb77d0d01d8f 100644
> --- a/tools/perf/arch/s390/entry/syscalls/syscall.tbl
> +++ b/tools/perf/arch/s390/entry/syscalls/syscall.tbl
> @@ -138,7 +138,6 @@
>  146  common	writev			sys_writev			compat_sys_writev
>  147  common	getsid			sys_getsid			sys_getsid
>  148  common	fdatasync		sys_fdatasync			sys_fdatasync
> -149  common	_sysctl			sys_ni_syscall

Same here.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618112702.GB4231%40osiris.
