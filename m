Return-Path: <clang-built-linux+bncBAABBP5A634QKGQEPDQQCTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E90B24A7EA
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 22:49:05 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id cp23sf1996043pjb.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 13:49:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597870144; cv=pass;
        d=google.com; s=arc-20160816;
        b=xQzxg4VwtqPWZTHnnXYZGBPfJUQZ3KoyAhtbyYWoDohgLpgC/phA/tSZIx65jLrurw
         hLCkXidOF7uw1/UmbMmBinL2/2qlB1vyV7TLnYmQ7eDjv5OJcHWX+UifuYu8gUBA74sT
         bNJb/JI2IzPXxQUcZa/aAzAg1pI6s8vaw2m5PIqWUOQXo8Fu9po/JYxHmFk6rDlgzc3d
         /Jkh7ihRqP9LaFuw1LYEFXOdz4sOoGM2jnqqrC77/29BJkMCDS0vVx3PFpdsO3t8h+Te
         mj5OXkjFu1J3nJIqFXf03SpadxhZC2giERc0uaQMjrVWSd+Fmc7OyOUt85qfalGbD5cU
         ZZKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=uz9/ADldphkmDV5oufRRcQbmC2YsmdxYR2lew9gyACw=;
        b=CDZDeftlTyY1JzhxFCpO9ilb160Xd1uuyNFT2IrUounficxWaqlS8xOQZmxnxUE4Zk
         HAxgm4dWPprH1ZG6Xx+j42qjAa1fYVnMcDLP6VTeOypRSc2H/I3pbuRkKjT01xgXE+qL
         2e9wkAG3dUOWj6Iv/A7PBXiKLoJXZnSwji7xbOpXUZQMukkYQU2ZuyEhMBisRwPg8B0B
         tsMR4EKoD5XDQRZ/Mvta8dMv3xn/XAZpOByqmfb5irpcAjnuuwtzAOhhIX0eyDcRp6w7
         RrXQWCZ/PM9NU/6oqpnN6VaozalyX4+ufh80blrkSYSA0V8v60K8tUBfhiXD2GR7u5em
         aUqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EDED5GsJ;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uz9/ADldphkmDV5oufRRcQbmC2YsmdxYR2lew9gyACw=;
        b=pVw6w/PTibH5y9Hiyo4re6YHXOppajCPdDf/s3+JBpWsBeGBchCVwTcYKx3nOAcrjY
         qi1ZDJXPSLaLa0IBl25w1aU2qmVeXVodwaKRBDETTN2YAQc5BGySrgz3nXJGuqHYvJjK
         6dRDnXYHNmOpNr3eJYC1dzR5yoruKjgS0mCpuwmmSuT8v0ergbHwzA92wBtpNcs5YLQE
         E06eE5Cv4I1hxQmC0KLyVcOJKA6KYVIUoO8oi0NsPOwLWM6FeiEkMVP6ap1/+yPO8Mt8
         /L60/VpuaKl6igJOcr4x/ZMXxyg1tPP7OmrEcx9HPrhPnW7f6JZOVh71Yx8+75OMalCR
         MggA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uz9/ADldphkmDV5oufRRcQbmC2YsmdxYR2lew9gyACw=;
        b=ArBOaaOO83dhctXZCbOx6lk22R8rP4Vlc2C6XrjEPb7yya4TuCKNUC6lWecrbmWD8N
         HPEDtehF3xHvHqUplVxl44IA2Wl07HsDZJM3b6QstsUdTsq17YF75Aw5+B7yEf8OIMQe
         eL82Wsrbi8Jbnf/ubZyJJQsEAZA9tMBOlDr70VdcPJ5xgdw9q/AdLWWZ7fmnyvXyBBJa
         nnoQ0Np4G8BzmtXcyWoXO6oEg4USZpH+oMMvHgloQnmbyjy8JIYTzGAW8O+sxY0oiZO0
         vp54Mkw5/HbKx4pykXWgmVfkfmO+shrGz5ANLW0/oOq/zXfW37/OdZHtsvXaljq+yQqx
         5Hew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UHb/KWlhKYlcgyyFX3sC7CMc0jmHRfSOKM0+GFIZ0rndY3+l2
	04d2ZMSCmw+OYSGZfbJd7vQ=
X-Google-Smtp-Source: ABdhPJzicfeu0dG9JEQJhnw8wLTwPe519lX7zUTzxqXsB1alb88Vb7WMzV3rAJpwipy0b37qqbBydA==
X-Received: by 2002:a62:1b0e:: with SMTP id b14mr20775143pfb.281.1597870144095;
        Wed, 19 Aug 2020 13:49:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:130a:: with SMTP id h10ls2040214pja.0.canary-gmail;
 Wed, 19 Aug 2020 13:49:03 -0700 (PDT)
X-Received: by 2002:a17:902:8bc1:: with SMTP id r1mr20751740plo.328.1597870143595;
        Wed, 19 Aug 2020 13:49:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597870143; cv=none;
        d=google.com; s=arc-20160816;
        b=mjh0slI6wJiPWzAawtmcpbnbh1QIn2lgOXyUmng3peIUi4AWEVMsqHhkGG1wIFrQWl
         uf2ytwPyMJUW3MakgX9KDK2O9v/T0hmvrmiCgotwRSvf5IsrovtI3sd2nm8uz7EYX1UZ
         ifmvsnZ+kqDG3FnrIxHbX9L7qgF29XnID1nqu8aXc5M2Nq1/6wkL04m9dsqJiyRBVSpS
         IV8+6i/qzKGLEyA/SjNKTKClS+T8cUDw8GVkzYzSPKp2nJhIsV0qlvLw13lujN57Zz1n
         Fq3FsK2TBfBfYMJyKdOLYkdU18N7w3f9YEKKoWfe8PIh2T3St13MA9l6iHgB+mDbhlAP
         HA7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=q2xQP9GXRZslJ+x/4upWq4vQpSxNQJRrOV5S2XU2Oi4=;
        b=Ih3dp/v0s/jRJmwIF7L/qtiePipFjN/5mvlLGmcl5eXf8b+YUJ2iTdAfKJ1TYCS62D
         AAk9uPyYCPFZWO1LIRi7zGLymIpnj66oVgSbeawy/U1QouiohGa6C4KTtUHGD4xPVjav
         ajuwC+5V8vx5RVgkH+Cqo+XrDwP9sQo5msc9a78I6sOMl4K2YIcettFa0i+YPJEdKAvl
         4e75rnJ/aYezePVTTeDFO1wAb7ZGpvRGl5m0Fpv9VMcDhQiNnptl9um4DcEntNrt6Nl/
         GEbyuS3l7Ep1Xb/po4KA75x77HD46rQoLhOYw7Aq0Frcn4I9NM/f5frm0/KmDcQQZfnw
         FSVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EDED5GsJ;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c10si2112pll.1.2020.08.19.13.49.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Aug 2020 13:49:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [87.70.91.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4559022B43;
	Wed, 19 Aug 2020 20:48:53 +0000 (UTC)
Date: Wed, 19 Aug 2020 23:48:48 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Lutomirski <luto@kernel.org>, Baoquan He <bhe@redhat.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>, Daniel Axtens <dja@axtens.net>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Ingo Molnar <mingo@redhat.com>,
	Hari Bathini <hbathini@linux.ibm.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Max Filippov <jcmvbkbc@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Michal Simek <monstr@monstr.eu>, Mike Rapoport <rppt@linux.ibm.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Mackerras <paulus@samba.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Russell King <linux@armlinux.org.uk>,
	Stafford Horne <shorne@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	clang-built-linux@googlegroups.com,
	iommu@lists.linux-foundation.org, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	linux-mm@kvack.org, linux-riscv@lists.infradead.org,
	linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
	linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org,
	openrisc@lists.librecores.org, sparclinux@vger.kernel.org,
	uclinux-h8-devel@lists.sourceforge.jp, x86@kernel.org
Subject: Re: [PATCH v3 09/17] memblock: make memblock_debug and related
 functionality private
Message-ID: <20200819204848.GX752365@kernel.org>
References: <20200818151634.14343-1-rppt@kernel.org>
 <20200818151634.14343-10-rppt@kernel.org>
 <20200819122405.88e9719e86ac7c3c44b4db32@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200819122405.88e9719e86ac7c3c44b4db32@linux-foundation.org>
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=EDED5GsJ;       spf=pass
 (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=rppt@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Wed, Aug 19, 2020 at 12:24:05PM -0700, Andrew Morton wrote:
> On Tue, 18 Aug 2020 18:16:26 +0300 Mike Rapoport <rppt@kernel.org> wrote:
> 
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > 
> > The only user of memblock_dbg() outside memblock was s390 setup code and it
> > is converted to use pr_debug() instead.
> > This allows to stop exposing memblock_debug and memblock_dbg() to the rest
> > of the kernel.
> > 
> > --- a/mm/memblock.c
> > +++ b/mm/memblock.c
> > @@ -137,7 +137,10 @@ struct memblock_type physmem = {
> >  	     i < memblock_type->cnt;					\
> >  	     i++, rgn = &memblock_type->regions[i])
> >  
> > -int memblock_debug __initdata_memblock;
> > +#define memblock_dbg(fmt, ...) \
> > +	if (memblock_debug) printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
> > +
> 
> checkpatch doesn't like this much.
> 
> ERROR: Macros starting with if should be enclosed by a do - while loop to avoid possible if/else logic defects
> #101: FILE: mm/memblock.c:140:
> +#define memblock_dbg(fmt, ...) \
> +	if (memblock_debug) printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
> 
> WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
> #102: FILE: mm/memblock.c:141:
> +	if (memblock_debug) printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
> 
> ERROR: trailing statements should be on next line
> #102: FILE: mm/memblock.c:141:
> +	if (memblock_debug) printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
> 
> 
> The first one is significant:
> 
> 	if (foo)
> 		memblock_dbg(...);
> 	else
> 		save_the_world();
> 
> could end up inadvertently destroying the planet.

Well, it didn't till now ;-)

> This?
> 
> --- a/mm/memblock.c~memblock-make-memblock_debug-and-related-functionality-private-fix
> +++ a/mm/memblock.c
> @@ -137,8 +137,11 @@ struct memblock_type physmem = {
>  	     i < memblock_type->cnt;					\
>  	     i++, rgn = &memblock_type->regions[i])
>  
> -#define memblock_dbg(fmt, ...) \
> -	if (memblock_debug) printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
> +#define memblock_dbg(fmt, ...)						\
> +	do {								\
> +		if (memblock_debug)					\
> +			pr_info(fmt, ##__VA_ARGS__);			\
> +	} while (0)

Sure, thanks!

>  static int memblock_debug __initdata_memblock;
>  static bool system_has_some_mirror __initdata_memblock = false;
> _
> 

-- 
Sincerely yours,
Mike.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200819204848.GX752365%40kernel.org.
