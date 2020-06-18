Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBVNOVT3QKGQEET2CN3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D241FEC68
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 09:27:19 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id w13sf2178915otq.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 00:27:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592465237; cv=pass;
        d=google.com; s=arc-20160816;
        b=KjbBRd31qMYqwEntvm11deU9Qkf40pudW40P64YChv30iMSjB2vlUYnHmaU6uD+SLo
         fL065XkhEqN1CNeQSi4nAU2Qh/BTzQVCdjavt4HAPnzvZK1MCstgiMO5238upOgre3x8
         cmNG8EYPdAn+Q62Ohg/x2zObV38UPZkf6r82NehFR5kRnOnFfQY29z8VYgdy7ODG0QcY
         AZersfcUtN9bXYMzXT82ckVyf5vAJbVUF7a6x2sEpj9ediqdY68DmSBFMM3sfg7wnR6v
         /VjavORElL2cRNwbEKrHMrtaEYKEevfiB3Lwh6mw8XR5IZi6/vlLNVxB+RiWGhRh2oBr
         YYJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=KOIW0ld55buGh4Gc9L5+46UaXjRccmibuEbxuPGXVI8=;
        b=qAoURE602S2lEec99zdScK/6FoQDGjDaf2f+iLbQtUg6tvQ4mLQtXpRtn47jHFBejS
         Ooeg/67BV2guBkrPUN7RXKu/Ih6FnKXEQ7pHDItHCgHPSqasA8cGIsE9wdHjGfC01eCl
         nKkgKLzQWD/LmhQQyA4GV6YDylbDc94ITtPzGgVGP/PyOj0r5pCU+s3X9gct0Dbjxwyg
         pRR2rWmf3kYWiQ+WcFLd7dhUwD0pA8lJ6CB4kTzWTT+n/00+56pkjhKmbwg/9qn4Qxnd
         nwBUAl8Hkg/cf+2YBBMA/dT41X/CI/a9zkZQYS7SA/Bjo78xXQCpAWRfFH0kFwBHeazD
         qldA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jbxCvYl3;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KOIW0ld55buGh4Gc9L5+46UaXjRccmibuEbxuPGXVI8=;
        b=jHQbt7zgLRP0VWjeLoufcW0oiZlYStXnIJYCuoXadKKidx3zNRS00dcAZsvl1/DCQ1
         jctQ41Za5LvkCT/7vIgE9XcqGyQvo8CxlVIzNJruBHQYcwxai2mIBo3pipp14yPPzTmG
         //w5sz6Ldc/WIR0GzLuyHKdcJcKhwyt3t0pnh2VuPZRTihvddXqZIrYhmK6f70g5GDyK
         iWJBQMffzSs38+z//i+vU9Y9SxqTyrZ3wvc7dQNP7n13Bre6vhCvfj1zXUTRVlHCvU0O
         Aar026Ui1+sVTM/diUq9hvkhl0gvkoTgBFBx3O4achvOARFBkC/J6Vceve8VSeRBhnBU
         Z6yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KOIW0ld55buGh4Gc9L5+46UaXjRccmibuEbxuPGXVI8=;
        b=UM6TmDGipkaSEcfefLU/ze6dQYG7bgLyMA2B8+2snQ+T+WY4LOaqG+7zWHRZmHV81v
         1hYtPsnW5ElWa4nMJR8MyxbBYxuwEpBkk0ywzrPL/8n51bD8QkuLJl3mn5B5Aj0M2lNq
         q1ZOXLFa7MTS/fsIQZk3xP2n5fQprmtBe0/H8775Yd1ziMQIl3WEz2Zlnr3ptR7GErum
         nronRkbupFAKJLzSzpMpP4B6unvxcag2E7E31XWKwFcFoi8QbjFnhtX7I2IAOLEP1Eoz
         Y0062t95DOmCiGikUnEoBn056b4GOULSEETd5xT3krsWInqOicztSPkIzwUauzhbXhv9
         S3CQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IZUjuEjBgjJ4tGtHRwIDKX2AlLuzGST/UhSSAU7N6o6SYTatn
	uFfrLWkK1PV08T6Uw4920YQ=
X-Google-Smtp-Source: ABdhPJyWwgqSHEdjC4fLCQCIO6kMcI2iKVbm7rHpqqavY2BNc7La2S3MTJ8UwPCgQpFMc5fmAUmVvA==
X-Received: by 2002:a4a:2f10:: with SMTP id p16mr2847177oop.37.1592465237364;
        Thu, 18 Jun 2020 00:27:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4808:: with SMTP id c8ls1092067otf.7.gmail; Thu, 18 Jun
 2020 00:27:16 -0700 (PDT)
X-Received: by 2002:a05:6830:115:: with SMTP id i21mr2319845otp.222.1592465236913;
        Thu, 18 Jun 2020 00:27:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592465236; cv=none;
        d=google.com; s=arc-20160816;
        b=QYCh7+s3AvThE03+Q1bABbCMBjbHfJw98ls7q4XhVLOG0n9icC6khpD1qyaBjysOn4
         wG4oSI8+4BbqzlH4+w4o4kIPAz15sDjtye6COgLVV2Szlz9d7PqQDDueNVeuiyUS+jNm
         gAw0dT4NdBlX9HYKm8iuxG5VGbN9kfTzvVhKKoua5Tj2wH4fiIsbqq8Mv5ST24SWu38+
         XnCE8OcnKHOfxbviV4Xa8byI0MrYBeJuOKySS03wzBLyoH1wJ9MxCQWJ+zcn2VjZo5yH
         drCHQwjKeEmjQUA35DQSwrYMGRP0FK78IcTjAM3lsGgjXR/st3NpfoYhAN+xyrf4A2jR
         w+gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=o7YU5N+XPkwDCF5oxItX8OvUPYwCBlyzmiSQ2sZUPSg=;
        b=U09fU4v6LaIrauI6BNSHg4yitv6YesWtFg9XzIOILyhl3cPlR8+nCBFm9L3Mjg6/Tb
         FPjZhi207Mob2HDbfY9WGC/7aldJ4vyvu1PUUcR3IeNf+RJ7vHCFBwAMg6Y81+Y6gOOB
         xr2cdT0KjmjccUObWVBzRYAIkCZT3XAAlvn173bjWAGoSCGH1XLi9f52C0j/CFdvPCle
         dAYowW2+7sc/+UXcw3rSV0wea+QkRieNeYwzCSr58a1b5av6ILni7yRIAykzZn32Oi4C
         fgHevuWrHzB9f96+EZBrytMJtBmc2J32tWJ2HFGaKsePFAKuNlmdZaqW+0vlUWv0rSEF
         I4/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jbxCvYl3;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f133si120172oib.5.2020.06.18.00.27.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jun 2020 00:27:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F177921841;
	Thu, 18 Jun 2020 07:27:13 +0000 (UTC)
Date: Thu, 18 Jun 2020 08:27:11 +0100
From: Will Deacon <will@kernel.org>
To: Xiaoming Ni <nixiaoming@huawei.com>
Cc: kernel test robot <lkp@intel.com>, rth@twiddle.net,
	ink@jurassic.park.msu.ru, mattst88@gmail.com, linux@armlinux.org.uk,
	catalin.marinas@arm.com, tony.luck@intel.com, fenghua.yu@intel.com,
	geert@linux-m68k.org, monstr@monstr.eu, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] All arch: remove system call sys_sysctl
Message-ID: <20200618072710.GC4864@willie-the-truck>
References: <20200616030734.87257-1-nixiaoming@huawei.com>
 <202006180654.jSTYfmWu%lkp@intel.com>
 <33c2ec0d-6050-5c1b-6f84-59f0b3f06404@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <33c2ec0d-6050-5c1b-6f84-59f0b3f06404@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=jbxCvYl3;       spf=pass
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

On Thu, Jun 18, 2020 at 11:49:41AM +0800, Xiaoming Ni wrote:
> On 2020/6/18 6:33, kernel test robot wrote:
> > [auto build test ERROR on next-20200616]
> > [cannot apply to tip/perf/core arm/for-next tip/x86/asm linus/master v5.8-rc1 v5.7 v5.7-rc7 v5.8-rc1]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> > 
> > url:    https://github.com/0day-ci/linux/commits/Xiaoming-Ni/All-arch-remove-system-call-sys_sysctl/20200616-130918
> > base:    27f70ec4fa0e0f419031f1b8d61b1a788244e313
> > config: s390-randconfig-r005-20200617 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 487ca07fcc75d52755c9fe2ee05bcb3b6eeeec44)
> > reproduce (this is a W=1 build):
> >          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >          chmod +x ~/bin/make.cross
> >          # install s390 cross compiling tool for clang build
> >          # apt-get install binutils-s390-linux-gnu
> >          # save the attached .config to linux build tree
> >          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>, old ones prefixed by <<):
> > 
> > s390x-linux-gnu-ld: arch/s390/kernel/entry.o: in function `sys_call_table_emu':
> > > > (.rodata+0x1288): undefined reference to `__s390_'
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > 
> 
> Sorry, I don't have a s390 compiler locally
> Can you help verify the fix patch

https://mirrors.edge.kernel.org/pub/tools/crosstool/

You should be able to get a cross-compiler from there.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618072710.GC4864%40willie-the-truck.
