Return-Path: <clang-built-linux+bncBAABBVEIQD4QKGQEH4MF3OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id F116D230832
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 12:56:21 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id k127sf24319935ybk.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 03:56:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595933780; cv=pass;
        d=google.com; s=arc-20160816;
        b=mMHjFR47catx6IuM8LeHLqjbJ5iYfdKF7Pk0vOkeEml7e0pSYpCMIDnv7WPaLHEXv+
         WL0yNgDVrcpoMoHS4ivctJHv/+aMnnGBKJ2x7U7KDTrUmiOu8HootflIRljkEFRi15DV
         H4bARY6ZS5FFUfwEjrW13jWmzW1Q7kmyiPfeVFfm3Kbez2IOLE5NIlxBMqBhDcBTC6Kg
         aaNV+TvRKA1A3y0VEUX8qeuRmxNsf1uzf6rrTwS75Z/xb1lHAkYz8ozjlIkKAg4cJsLj
         WnfdVYfSfty5u0Qspjo9x6Xl6vc0nO6K6H2tsmqSqnJjCmux7y3Olfj3cmNho0wwju6b
         fAvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nVB3jlWZXnZQrghlLLbi3PcDZGC1DtE6vyqt8lFi8ag=;
        b=zYFxtORD7AIWB9qUJ6za/cguB52KjufDVUVYFOAV+X2ACnGPKYWjoOkwHsxYcV9HpJ
         WbSlWkK/K6Onwv2pXlnQ+zcKBgzYkmKN9WMGaZ5i22ocDcMdRJXEduBShRmY9tBUu6ND
         qrSuVS1Tz3fcmbOL+ts/EcyRxH8ezQ8a+EcO4O+TzPBt8d7/WwgHKr9fmodZxI9L6Fez
         ZeLG4+gP+DDpKa8QsclZIlIBKi1WiJ5KSDsltFkYvgcZ5RIsO66/mch5IkqcbbrFKtzB
         QVL+Baw+q9LeOiXuIwumTQJ3N5vnCe6fKyBjMyUN2tKvS+fC+njttN/v5AJ6+40dzG5u
         i5Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GaqX56Rb;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nVB3jlWZXnZQrghlLLbi3PcDZGC1DtE6vyqt8lFi8ag=;
        b=M51gBDGGe4T2JkQLseilv7HoUtPDa1oByC/+U/oB5kWsfqE7qVQSm/GANCQj1HpzQH
         2Uy0+iMik/7aZEvNrokvM5KVax2AFqDXWDXzULWaDnq4rrXdbS8GANjFsnaPvf+f04iY
         2bOnRsaZRUbB0sA4EzXeKkUsTWZ19mGNh+2yliU4w0Pvx0YKFCObi+Ju70kuBonaZxUM
         spCscx/e4rf5HGGSSgxts67uB0h6NqJ940PJbGEUkz9xlBIZr0oHb3f9nFtbzL6DZnrB
         0TWCr5XmUfRpj1e9CIp+0n7e63Md6eAU+dcPgPceBxYzE2VVVR8Rr94TQJjdC3zsfdmW
         NG/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nVB3jlWZXnZQrghlLLbi3PcDZGC1DtE6vyqt8lFi8ag=;
        b=DNuJtT8hvdG/lta9ZpOo8KvLWfvVXEKSAt4vu2CppFdTuaReNsVfMrQ875GDbcndic
         N/QXkgohIydho8YrIRVDYpZ6QGTu+MCMKdb2Gwrnm6raeVSKrbOstKtEH3uoEKA+Krs/
         AsyXQEQ2k7kKSt21buaO72JGqXl6OlFTnqEYOmupte98KmDDeWchnJsNCycOoDoTFDoI
         af13auDfoh1C+pDHZeT59CUWqpZFpRsHgM9gr9N8AW4wqkXARmeh8lRxsBmwYYHsrij6
         ONg+Ievmm7Y5q18zIXcxf4wfyB7HXimHOgifj42oM86d9S/KfQVulMOOhMrzGUHfNuRF
         uLbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xTMiUKM/IPsSomy3VkI+Mou+YxFlet/zN4+zEfo5raiFxk1Xc
	Ucp+8EX8OoNu7ScSu9uDQbM=
X-Google-Smtp-Source: ABdhPJyq+6OrOUsp6KdNLBsk/fc1adWD0JfskxmWMBNn+s2bSTeEvp9ndrJxrlD/W2dhU9QDgDz9HA==
X-Received: by 2002:a25:868b:: with SMTP id z11mr28491449ybk.108.1595933780679;
        Tue, 28 Jul 2020 03:56:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3812:: with SMTP id f18ls6159544yba.6.gmail; Tue, 28 Jul
 2020 03:56:20 -0700 (PDT)
X-Received: by 2002:a25:9012:: with SMTP id s18mr43308319ybl.86.1595933780398;
        Tue, 28 Jul 2020 03:56:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595933780; cv=none;
        d=google.com; s=arc-20160816;
        b=TCxp4RiXoHKjEEMAoz4pauqtElyGX98/KK7rqmqjvIFh0XaaQiQKW3IdoGwViv/uTh
         apgEWAq11BZFtXVCoVu2KIlq1iqKnF0V41wyEsTgpMW/O8CLJSkz1lJZwA9SMkt4sTUB
         XSJ/M947k8WbUlyazUmZaPkP42S/sT6x38shAE0icbBf25QmjARTxqpHOwbs6hLRYbF8
         0iCFQfidHK71Sn5hd53pIOeXg9be8U/j1WmRYux2a1VSibaK43D/VbLpKSQt9n+BVwfc
         zPt+M7n4OTKIzkbhdhCAw32RBShuxDM+IW/9egTmyY7wkYw8f77KpNEjCWtO46e93tvL
         lXTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=uhvGq0HgWffX1SUm40NP1O/C5jJZ5nIvQ7twCsLq85Q=;
        b=zzTjWTxA8LRWuYx57U/SN2ez5sjjKToRLNpe5Iff5VBukspvjgrWX0SsbZDVsWxTBc
         Df23d/e2Ya1ICyqXN5cl/c+0zUkE1x9Mo5hqIm8ANCG10pRHchVb/q61jX5D+ZnndL5T
         SzszYflS0CyGRjon+WfJ6JW5S4159J/uBTbtmNpOeg28s8L4BuysKykcte2rLIHezm1Q
         +w4o6xyFyVUlBCogtNlWhq6qMjJojCx7tnbkaW/PrFTIbyIL3CufP0GD0GUELwx+AAPF
         +TS7wTnqp3MLycuc1/dUvW4Af2pX+SCoxBfSYUvq0S3dJ4KOsdyLHzEfFfnLrUh1oi5B
         oBsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GaqX56Rb;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d125si129376ybh.5.2020.07.28.03.56.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Jul 2020 03:56:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [87.71.40.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0F93A204EA;
	Tue, 28 Jul 2020 10:56:07 +0000 (UTC)
Date: Tue, 28 Jul 2020 13:56:02 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Andy Lutomirski <luto@kernel.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Ingo Molnar <mingo@redhat.com>,
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
	iommu@lists.linux-foundation.org,
	linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	linux-mm@kvack.org, linux-riscv@lists.infradead.org,
	linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
	linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org,
	openrisc@lists.librecores.org, sparclinux@vger.kernel.org,
	uclinux-h8-devel@lists.sourceforge.jp, x86@kernel.org
Subject: Re: [PATCH 14/15] x86/numa: remove redundant iteration over
 memblock.reserved
Message-ID: <20200728105602.GB3655207@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
 <20200728051153.1590-15-rppt@kernel.org>
 <20200728104440.GA222284@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200728104440.GA222284@gmail.com>
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GaqX56Rb;       spf=pass
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

On Tue, Jul 28, 2020 at 12:44:40PM +0200, Ingo Molnar wrote:
> 
> * Mike Rapoport <rppt@kernel.org> wrote:
> 
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > 
> > numa_clear_kernel_node_hotplug() function first traverses numa_meminfo
> > regions to set node ID in memblock.reserved and than traverses
> > memblock.reserved to update reserved_nodemask to include node IDs that were
> > set in the first loop.
> > 
> > Remove redundant traversal over memblock.reserved and update
> > reserved_nodemask while iterating over numa_meminfo.
> > 
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> > ---
> >  arch/x86/mm/numa.c | 26 ++++++++++----------------
> >  1 file changed, 10 insertions(+), 16 deletions(-)
> 
> I suspect you'd like to carry this in the -mm tree?

Yes.
 
> Acked-by: Ingo Molnar <mingo@kernel.org>

Thanks!

> Thanks,
> 
> 	Ingo

-- 
Sincerely yours,
Mike.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728105602.GB3655207%40kernel.org.
