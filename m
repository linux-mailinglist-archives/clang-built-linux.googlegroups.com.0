Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB25KVX3QKGQECR4CYDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 568BF1FF107
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 13:52:13 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id i6sf3690930plt.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 04:52:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592481132; cv=pass;
        d=google.com; s=arc-20160816;
        b=iHbEU/OuLwvwTeI/zKJ+cakVFWmk/LFc5dl/dm6D9+sBtok0RZzb0gaNoRax8O3lcc
         rXVqVbNH4SFyREmpbkkAPN1YA8SmFP1l0Pbjeh7+PUJt9Hd/obGaWGg0YI74f1Jv7W53
         AvY54GSX3UbdvxYhkb7gp1fUJ5JQMVhrPjVFEWQQw7nSCPODaq8SoPVfwZjkCj9UGJ6r
         RhqF5O1R5b3ENMLdI4hvrZU+0TGyNpKKWCoL15uY5ZgqmG2cCwwV75lsp93kxzp5wAyH
         qwhTMGEOvxG2z7XG8h5uxEyqjmBQ1C0ctnlBmdf+NJvv1CGgs1xF8lLSK3lTKJ4NzRQA
         OWWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=+fBOOK9JuWqkcdQbEH62lZGt7/mu62vs4Fr409cdIM0=;
        b=xqdJi0prTlT9GVq1rO4rt6JYC58OSuBi4BsSu2n7vua12v4ijY4YWRE2OHPSlfoVWl
         uF7IONtXUgZlhV3NtdFUuzFKtzXP3JVHhfuqPtK5RPUzjsLDzxfbUHJAHEmj9G5Y5Gm5
         wCudI3a4vVvY8arkI+5iKfmZ+p67dWTZsP+uX1ajAV7fWCVRQWhFRvpD4qbH44uKL9Ag
         sIf8zXf7SGyYZo65tvOEVBYBm2vlvjOt3pU+VrtZI46a+18hOnO4Xsp6qR01K/Gxg8tE
         iNipXZfbvPn0j/u6btmn9EpEnrzMORGQebYaVwkoWKWhf9nV7YQe74iH/hHn8ziwD82F
         poNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EenphTcN;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+fBOOK9JuWqkcdQbEH62lZGt7/mu62vs4Fr409cdIM0=;
        b=VZ19H62UpBGNDNfRo7zcFH6QzvV+7fqoGb/JYmQOVn9EC9NpfrtYY/EomN9Kkb76ZG
         LCN6+cwZRFOSkIagq67y697F2Kmxr5zmU01xNAXC20HZCFqeVfz+7tOgVyuiyBG0BDrI
         cjCon/c7m1V8IQODzsWHkj5ZktvqdapnlNAkuL3YqozmhrDXD4ziMcQbaAgsXOInHjv/
         PTUU7s28KQOzA12zsf36H5ZFYjTnQNy/yOL3MWjpDo9Y9s3Y/X8lSfc1HNB318vAPjXH
         ORsAqentRV6mXpF+0DNw2hivFD5OYQIFykzDrRkQZ9FeW9Dhcse6TSrOH+T2SbUbUe/8
         F+Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+fBOOK9JuWqkcdQbEH62lZGt7/mu62vs4Fr409cdIM0=;
        b=sXMk36lXwOm5feWw7e0Y6LkYJNCo0ZEQWwdq0bM4blefRXlK2JbEvPM+Kj7cnbTbNj
         WuqF3Dm2+Y1pJ3oEO9JMoagI1M9T1grPYX+nYIVYpt5gVOCD68l9oYfeOnsgud4jpTg6
         WCecZakjwnHnyBoAiMnhP2fVeJga7JtWEJ8nx515kkDHylYr5gz1rTbB4Qp5VxpG+uP4
         NhqCN2agVMHtNw4aLDbzo/FCGRrUERm0qe+6zNKIQnlhYqrvbQrVLrg9OaO3yCTKT73s
         v3KZgFh+ICAe2y+Sx5lBluqEsJimfe7IyAIv65CLJVIGxmuqLm1RX1yD+VzwOfOGWCF4
         bx/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306HbiiH9sys+HrJfG4fIQMUUBG/mQZSMW5Sr04dKfJM/nrsgEI
	9P2RJl7eUQxXDP9YETXp2Ko=
X-Google-Smtp-Source: ABdhPJwarRVxd8VS+XQQv8z9rx/Uiir5Z+v2A8Nm+4MPT4T1kS/U1eDorLN8FypT87hFoLAL4Ds/hw==
X-Received: by 2002:a17:902:bc4c:: with SMTP id t12mr3277104plz.141.1592481132032;
        Thu, 18 Jun 2020 04:52:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:718c:: with SMTP id i12ls2342922pjk.1.canary-gmail;
 Thu, 18 Jun 2020 04:52:11 -0700 (PDT)
X-Received: by 2002:a17:902:7897:: with SMTP id q23mr3477465pll.5.1592481131627;
        Thu, 18 Jun 2020 04:52:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592481131; cv=none;
        d=google.com; s=arc-20160816;
        b=PMj+3D/KLD2iQ2PH5uRBCnlvRAW1NyVTVNeroQ1sIBLK317u9DwAhcCJkJgCXIaHm+
         wpULDClu4fzYGldEf/AacyZcJ+JA7HR4z3YXUGTJcAnme67FVs65pymujx6gSxJLIXZt
         0l2n1PwEbACNyW+74wFbf9krersQ1o9OGk/NIEJkalMAN0ImZfwDoflW+p1jaN7tWbn8
         8kBZr313vTvseTTJsn0mQVCMqwvmQw0XNFcgA79f9XgjLE1S/KdiZcQDHuacqmCcpwyI
         O8rWxHRm/g1U70mFZQ9R5fqKm9O8aML1FFnYdh2QhLn+PovMYv6OH7RQK19I8k2SmyQw
         8/0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rJJ6iywIM56ewKP2cUDIP1JoJwmZxJLFd+WOGcuePG8=;
        b=Imw1aMsPIRl9ZKT8tF/004luEQEAOJ8LUSGPT+nb0Aw0qtl47Xk+UUWzT2bIqEVFf1
         JxsYcxu2ZG9l+ef9keh7GtcNNfFhWZOOD4HAk0idl3G06V1U3SqHs1FuCWgbiK24HLBQ
         St0DrosPfKgaCKP9fik8oi+f3unUxNLFAIvdSqZkLwj0uh15tLCyqMedsEZnv+OF4N9C
         ycuRodDCOT1/GwP97u5xNrzGUCsEcs8E2kPl0XVjATQQ9GE5sA9f4QG5Iu8fyEcrzYed
         1Gw+aAfyQVrcFoTqHPmQx/7Fz7hqkGCqT3Fh/rahdFCqz2TTqq72MYPuDbGABp85NbWl
         qvbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EenphTcN;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g10si117577plg.3.2020.06.18.04.52.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jun 2020 04:52:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B4FD720706;
	Thu, 18 Jun 2020 11:52:05 +0000 (UTC)
Date: Thu, 18 Jun 2020 12:52:02 +0100
From: Will Deacon <will@kernel.org>
To: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Xiaoming Ni <nixiaoming@huawei.com>, acme@kernel.org,
	alexander.shishkin@linux.intel.com, arnd@arndb.de,
	borntraeger@de.ibm.com, catalin.marinas@arm.com,
	christian@brauner.io, cyphar@cyphar.com, dhowells@redhat.com,
	ebiederm@xmission.com, fenghua.yu@intel.com, geert@linux-m68k.org,
	gor@linux.ibm.com, ink@jurassic.park.msu.ru, jolsa@redhat.com,
	linux@armlinux.org.uk, lkp@intel.com, mark.rutland@arm.com,
	mattst88@gmail.com, minchan@kernel.org, mingo@redhat.com,
	monstr@monstr.eu, namhyung@kernel.org, peterz@infradead.org,
	rth@twiddle.net, sargun@sargun.me, sfr@canb.auug.org.au,
	tony.luck@intel.com, akpm@linux-foundation.org,
	alex.huangjianhui@huawei.com, zhongjubin@huawei.com,
	linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-mm@kvack.org
Subject: Re: [PATCH] s390: fix build error for sys_call_table_emu
Message-ID: <20200618115201.GA5671@willie-the-truck>
References: <20200618110320.104013-1-nixiaoming@huawei.com>
 <20200618112702.GB4231@osiris>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200618112702.GB4231@osiris>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=EenphTcN;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Jun 18, 2020 at 01:27:02PM +0200, Heiko Carstens wrote:
> On Thu, Jun 18, 2020 at 07:03:20PM +0800, Xiaoming Ni wrote:
> > Build error on s390:
> > 	arch/s390/kernel/entry.o: in function `sys_call_table_emu':
> > 	>> (.rodata+0x1288): undefined reference to `__s390_'
> > 
> > In commit ("All arch: remove system call sys_sysctl")
> >  148  common	fdatasync		sys_fdatasync			sys_fdatasync
> > -149  common	_sysctl			sys_sysctl			compat_sys_sysctl
> > +149  common	_sysctl			sys_ni_syscall
> >  150  common	mlock			sys_mlock			sys_mlock
> > 
> > After the patch is integrated, there is a format error in the generated
> > arch/s390/include/generated/asm/syscall_table.h:
> > 	SYSCALL(sys_fdatasync, sys_fdatasync)
> > 	SYSCALL(sys_ni_syscall,) /* cause build error */
> > 	SYSCALL(sys_mlock,sys_mlock)
> > 
> > There are holes in the system call number in
> >  arch/s390/kernel/syscalls/syscall.tbl. When generating syscall_table.h,
> > these hole numbers will be automatically filled with "NI_SYSCALL".
> > Therefore, delete the number 149 to fix the current compilation failure.
> >  Similarly, modify tools/perf/arch/s390/entry/syscalls/syscall.tbl.
> > 
> > Fixes: ("All arch: remove system call sys_sysctl")
> > Fixes: https://lore.kernel.org/linuxppc-dev/20200616030734.87257-1-nixiaoming@huawei.com/
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: Xiaoming Ni <nixiaoming@huawei.com>
> > ---
> >  arch/s390/kernel/syscalls/syscall.tbl           | 1 -
> >  tools/perf/arch/s390/entry/syscalls/syscall.tbl | 1 -
> >  2 files changed, 2 deletions(-)
> > 
> > diff --git a/arch/s390/kernel/syscalls/syscall.tbl b/arch/s390/kernel/syscalls/syscall.tbl
> > index f17aaf6fe5de..bcaf93994e3c 100644
> > --- a/arch/s390/kernel/syscalls/syscall.tbl
> > +++ b/arch/s390/kernel/syscalls/syscall.tbl
> > @@ -138,7 +138,6 @@
> >  146  common	writev			sys_writev			compat_sys_writev
> >  147  common	getsid			sys_getsid			sys_getsid
> >  148  common	fdatasync		sys_fdatasync			sys_fdatasync
> > -149  common	_sysctl			sys_ni_syscall
> 
> This is not correct. It should be changed to:
> 
>    149  common	_sysctl			-				-
> 
> Otherwise the generated __NR__sysctl define will be lost from
> unistd.h, which should not happen. Looking at the link above it
> _looks_ like a similar mistake was done for arm64.

I think we're ok on arm64, since it's only the compat syscall table that
is being updated and we don't export compat uapi headers (rather, they
come from arch/arm/).

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618115201.GA5671%40willie-the-truck.
