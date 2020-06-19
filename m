Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBJNDWT3QKGQEK4OH6LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B6E201B36
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 21:27:34 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id m29sf7968005qkm.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 12:27:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592594853; cv=pass;
        d=google.com; s=arc-20160816;
        b=HFGnwQboSBZO7WayIaZQzKevGFn8Bd6XC+pQqr385kh1yJ7PxojvjXggYRBt1cQPgt
         +H2ixyR3PxEX0zrui9/mLbjRKxWFWR55pM/aC+CKac6PmQ82CsfOopIQcR9vpmNUQ5Rd
         IiWpYD3ELdT3on8TOmHvhXgj5S0MWMekrUOtV0yOMPfwn7VCdpKEqslXBqJog/uJCgAA
         ZUHmDtWaSvet/sxCbunEixSIJMj+iEQLWRfMaxnUgkw4s/kjyc81zQ3Ivbb6/p9PKYK5
         deFpQyQmCa+FuA0J5McvNw2cFys7OkScaRvWqx8BfNNiAcipFWKM9IydHKdw9I5WIIDU
         VyZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PUP3QBz1a6LfCe+UigPiKo9kTGWpt75yRUhcS5l6Uy8=;
        b=QUy9y2/5vDoa5DKUSxFrXjithaKEKBedw0Patj85i/52wORwbZHwnHHGQZoDa7RAkG
         yvnprnLtum7nUa8K+M/u4rNIClpUnQYD1+2KDLbf9PzxR6WpQg/+9rb/43NKxm4QQ3Z1
         XKYfjikEqefB+5kwH7UlYrVTB9pOlOSAPbTmzhbYZS27KMNHTBZz4JKo3z6gO7+U1ur1
         JeK8G5EXLhcSARv0ZSN7K+3cduyvs9CZTQVaBL6Yj2UckB1/1nE9r4VbSKGJtd60bmJu
         qZSiyE3BaVUjE/S1YqhPilqQ3GYODfHfJ/mX5n9TNcvv2QrW7huZEOYOZg1O5+1zF3Dr
         T/yA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iPITOYSn;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PUP3QBz1a6LfCe+UigPiKo9kTGWpt75yRUhcS5l6Uy8=;
        b=LCw4RmZc7G78F/6O6bZw11P1SvcheYZkU7eCP8y/Jfu1+UZXkIx8wd46Nh/vzk+1r3
         vCggzqGH7ZNj5TJWdDlmYzHKgjaUGwPUN77KMg/+AgOBT9o4ZsxjD3+9nnEWeFA7tlFw
         EwXbpHa8eTkS65PYJysv9EW8tvTbwjciDP+dcMQYRLWmEBKT+sH5cLONXk84c9Zg80wG
         eYE6Wg8/Pk2YFYA/i8pn4+w3WK7SbYvNRWrj2Xa/HkWEcT+FYR3u+Hz3MnxHR/Zwiqjq
         Y2S7Z0lTtng8oFSYMtKv3izVr7lRV9vRsec41CojvyLkRl2A+yyYeJ1ceLG6jdO/O5Hv
         FxRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PUP3QBz1a6LfCe+UigPiKo9kTGWpt75yRUhcS5l6Uy8=;
        b=h9RurL5Ol8qlmqIHwcqKlBz2psikR4+mtKd5JnCV9ujyvUl2dZxt1g7EVpU1haVX09
         PZJZBnErpbmNITuULs3jp2LkjgqJaqvdmn8kmWq4raszxnTQVQ0E0FAye29iWbKEZ7jC
         qbjC2MOpvJrqZf2UK4WM8evknT1AlsLO4+2CH6WFEyXNCFVWqQJS6SPOkMZsc0+IO15V
         cLBV9xe+Wd1a1gAMpHbAgFvOCvbEj5X1lqjQ+Jc4p2kL8FMg317op+6Zcvu5H3Xav19B
         KMChb2Zd4Z1Ck/Ss4Wk3vnQW2xm3j1N76XHK5S5OBdhSsaUPITZyTc0dJiw5rNKc6hmL
         S1nA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531j3sLUCLaecZtfNYvQ2U1UnqvdLsVk634hWkTbCx1O3QU24UdY
	XFZPoTYZSFKRyIyZOXjPk1g=
X-Google-Smtp-Source: ABdhPJx/QR15Raxv0njCprmRHhR73eubcNAY/k+BSS3Td0c9Hq+2/rVXwNAUZndI4yFevMBaHZkahw==
X-Received: by 2002:a05:620a:a8a:: with SMTP id v10mr4928536qkg.488.1592594853376;
        Fri, 19 Jun 2020 12:27:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b2cf:: with SMTP id d15ls189574qvf.4.gmail; Fri, 19 Jun
 2020 12:27:33 -0700 (PDT)
X-Received: by 2002:a0c:ed4d:: with SMTP id v13mr10338977qvq.237.1592594853077;
        Fri, 19 Jun 2020 12:27:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592594853; cv=none;
        d=google.com; s=arc-20160816;
        b=ywr+IpYHIQEhvJjWuscZEB3cWMD22G+rXcb8zUc6fhX+GvgupP4qvr96Vsdmwxcsqi
         gU+fm2em9rAm/wzy+OaNVBv5iLI7ZWQWCqf/0NrjX0IVBhEt8posC1ZNERHZz+STfp9F
         wUre8fPzeD9SIQipeb0tHZtNe2Q9gvly8f3+qQ+dHIcUGT4HDRLPPTE8m8ucUosRA3ur
         AF70cFGcBUD2fVRzBh/+VjmpwVxShmK7ZcEtH6r1MwgGklNrzl7t2L/uxacXIaB/gUqn
         u/XNriUBUmpe7/4yn6sbNNbyYfm6MdX1q85dNMFHyx/BP4vzTEsknIe01YP5ohx/O0fz
         QVrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8jA19cMbGOo/fseJHSXjBRLXxJ+kUzQyrNVUSuYhDiQ=;
        b=GehDubscwAKdEHLs56OPFA0ng5TE2hf+rOFBmEHiETL3Mu1OAjh44XgsTRNZv8x+6/
         +vHz+Dh6NX9S6QxbDN9GyCbSUhHjX0X5dkgsWMw6thl8BhXXZfrz4fZgiY8MxB4AhQQ/
         KgU8o0v+YAl3I1UvqWWRXGmkd2/3rQDklAyz09Y20nU8D2SvlMh6BJkOD0XmMvJK4Apv
         SMKPtjBQduaYKr7AXlo2V3lxoe9DApYJACDgSyEhmlMTZ00EU+B16ru7FA9e0SNhWspm
         00Ax3PBmlOmlIilauP4hl5bkJddC6QPT+7T6SqjIA5CTZxN5mBhp/4pZQyRFRLRVEKGd
         NiUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iPITOYSn;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x78si325380qka.4.2020.06.19.12.27.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jun 2020 12:27:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C02FD21531;
	Fri, 19 Jun 2020 19:27:31 +0000 (UTC)
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id D7352405FF; Fri, 19 Jun 2020 16:27:29 -0300 (-03)
Date: Fri, 19 Jun 2020 16:27:29 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Xiaoming Ni <nixiaoming@huawei.com>, alexander.shishkin@linux.intel.com,
	arnd@arndb.de, borntraeger@de.ibm.com, catalin.marinas@arm.com,
	christian@brauner.io, cyphar@cyphar.com, dhowells@redhat.com,
	ebiederm@xmission.com, fenghua.yu@intel.com, geert@linux-m68k.org,
	gor@linux.ibm.com, ink@jurassic.park.msu.ru, jolsa@redhat.com,
	linux@armlinux.org.uk, lkp@intel.com, mark.rutland@arm.com,
	mattst88@gmail.com, minchan@kernel.org, mingo@redhat.com,
	monstr@monstr.eu, namhyung@kernel.org, peterz@infradead.org,
	rth@twiddle.net, sargun@sargun.me, sfr@canb.auug.org.au,
	tony.luck@intel.com, will@kernel.org, akpm@linux-foundation.org,
	alex.huangjianhui@huawei.com, zhongjubin@huawei.com,
	linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-mm@kvack.org
Subject: Re: [PATCH v2] s390: fix build error for sys_call_table_emu
Message-ID: <20200619192729.GA29309@kernel.org>
References: <20200618141426.16884-1-nixiaoming@huawei.com>
 <20200619141717.GB9971@osiris>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200619141717.GB9971@osiris>
X-Url: http://acmel.wordpress.com
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iPITOYSn;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

Em Fri, Jun 19, 2020 at 04:17:17PM +0200, Heiko Carstens escreveu:
> On Thu, Jun 18, 2020 at 10:14:26PM +0800, Xiaoming Ni wrote:
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
> > According to the guidance of Heiko Carstens, use "-" to fill the empty system call
> >  Similarly, modify tools/perf/arch/s390/entry/syscalls/syscall.tbl.
> > 
> > Fixes: ("All arch: remove system call sys_sysctl")
> > Fixes: https://lore.kernel.org/linuxppc-dev/20200616030734.87257-1-nixiaoming@huawei.com/
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: Xiaoming Ni <nixiaoming@huawei.com>
> > 
> > changes in v2:
> > 	use "-" to fill the empty system call
> > 
> > v1: https://lore.kernel.org/lkml/20200618110320.104013-1-nixiaoming@huawei.com/
> > ---
> >  arch/s390/kernel/syscalls/syscall.tbl           | 2 +-
> >  tools/perf/arch/s390/entry/syscalls/syscall.tbl | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> Acked-by: Heiko Carstens <heiko.carstens@de.ibm.com>

I get just copies of that file when it gets out of sync, so I suppose
the patch should be just for arch/s390/kernel/syscalls/syscall.tbl and
processed by the s/390 maintainer?

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200619192729.GA29309%40kernel.org.
