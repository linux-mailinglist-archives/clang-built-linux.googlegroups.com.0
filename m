Return-Path: <clang-built-linux+bncBD7LZ45K3ECBBHMDQD4QKGQEUX5GT4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BA62307EF
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 12:44:45 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id s12sf7036722wmc.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 03:44:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595933085; cv=pass;
        d=google.com; s=arc-20160816;
        b=I+Zv/43JlNSfV/HRve1tBSbUWDKQILHpMXKXt+T4CJMGpIot2+tbHpr0S0Lbt1lEDk
         MGluZR+oro2/k36l+kZ3e/uxqxQax9/QijsksB+w5+Wj01dBaRrrKutCwdei6SSdwQpy
         G287/UaG6Yl0mdJMWxsp8SHFDiYPDq7lZJ84bPgePUCYN7OSliM44z4VCStKG3f+MXpd
         RkdwCn4eUzQW0Xhxv1zGuw4O9JdcJtCMW2kZgQRCCoyOXn+nzohkuq/+/4gU+5xyyijD
         pEVvO7JJRHP/zQHc6+SkKIzughRXO8BlvkNHODtZ9mF/ae/QnrNqE5SKHRa1Z+1hAfJw
         plEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BpXjla8g9rapE8E78ejUwnxzbi+kYNbalj6wRZD+hMk=;
        b=tlQkyZsVEVynhhYiDIEg7iVrLS7aa+CM/Iy0+hpEIk5oPWUxzPc+mH5ZvLHBLxzEUK
         xWoc47DrKG3mYWB3TEaPwneQfQraj6zru1DOtbZ1iVFtbVI8nt/nr42TtAkuvotJu4bg
         QlNpGbcXL04b6FYw7vPIm5dGAl+Nu9y1Axm9YYSi7nH4/Kqxel4BHwMqtT5mi5YMDEau
         AjCz1GvC4+/ec2lwcka0mHt8gkr+l0S0B2Oy3cyl7Csmrmj4r/spkROSqmRZdSa63gHB
         7qlM1XB3Ct+SwX5goyrQNs6lSE83RNEqAK3xsr+U5rMM6u1tGEINECYoeEvIkGMvPb91
         qfzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rFUcMCUj;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BpXjla8g9rapE8E78ejUwnxzbi+kYNbalj6wRZD+hMk=;
        b=cS6VroO/Lue3c2eNM0ONKnoBxaW5OoAzzyPuMgeq7HJ4J4Inbrf7uj5C4c3CijpS4z
         jmZTKSx0v9t5PRbOxLoE5jq5igGwIEeeqVWm2spw2nRYHQANHhM14bJWnGubLsRa4lB/
         087a7wajG3fKSQN3G8IqeaM5Eod86xShC32NSNpebkdpIwgVOnyQbGDRoOFpdZLkwixu
         GNhZmiy8tKH3rc2qyXKktxKzDS7OihhZ/ez+NviyITi7Y9IhmNf5PewYiF4X9zVZy7Fk
         3CeT1vopKa6arnhqJ6G+711/Hk5RrdVeqXkntRvUdCNPTgi0YWm9crxE4MyScrzW+/38
         FTAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BpXjla8g9rapE8E78ejUwnxzbi+kYNbalj6wRZD+hMk=;
        b=MY2ZtjpAEEGcmJ2dU39d96uEaIBJa7w0jgxWB/GIE60DLNzoGaCAupO30tGveT3obe
         LFTUx9KHju6k6HuFxyZVmRxkSjiQxs6T6Kxw10VdC17lpU+hegz+vlCHscMeTnZDDiCd
         UL7RffCugDGCAxnODdXMl2WA25a//0AV/GX3XgGWy5UkOzjZYvP9ersp9bl/NiZJ1aCl
         Wr4lhfSjrEQfx+vRNcUZFAMP9wnXaFuq2euKUdji5ZJbzwSyBxS5X505N5xMOPRnXjsb
         O0i4L6d0BAa+Bc/8hudABAnZMPQLAc8PZeyhjNzWV7YYc/KrhF0JzYw9CauDzJ7KiKpS
         CrJw==
X-Gm-Message-State: AOAM533Lp+xvZlFLA+0KARNK+KUJw7PuvPq94HWTrFyaH1kLtGJTMSsp
	vPmXWiR5jRK1siNmIoKPeVY=
X-Google-Smtp-Source: ABdhPJyICDaOGlWh9F5ur5/sTLpyy64gAmXblDM9S6PChpiNF8hVfJ3NEcWeLNTnYs4FlKNdGUOI/g==
X-Received: by 2002:a5d:4ad1:: with SMTP id y17mr26036058wrs.132.1595933085415;
        Tue, 28 Jul 2020 03:44:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:b1cf:: with SMTP id r15ls11809275wra.3.gmail; Tue, 28
 Jul 2020 03:44:44 -0700 (PDT)
X-Received: by 2002:a5d:6748:: with SMTP id l8mr25662664wrw.358.1595933084737;
        Tue, 28 Jul 2020 03:44:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595933084; cv=none;
        d=google.com; s=arc-20160816;
        b=RxyuFIrzYUNhfuursv5AsKosWvGnLk0gRDvrmvCQgx4YLmjCiAurRjilpnikac3Q3a
         01l+N+9mCYijasUfq8rMr2dWGdvh+NniSuiDK7ljItGCWKG7WEW8fX5QfAeU5OIwku5K
         MYaB+maeidKejauSZ1wYG8et+2q9AtxUcELEi+v3YgKIQE5x/LWaL30mReE09smeFp4b
         cqFsCw+MZqCq13N/n9qLoIp46fij+A0A8Cqw186iOl3AXQZvJIgIrWDdSoP+H1iNK2+b
         o/qaNtmYIFmNtssrTz6QJFKSy/uOJNNB0cufWgNtE/0uDcHtdHErNYd9jmahTyJRmORi
         6VHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=3Jtd/NLDfEi5mS55S0K4WbnSIzqpGJbZScZKeEtsXAQ=;
        b=kCOoxZALP5Omv1CNJOB9mHFyT8Wo83gKANYvRSfuAD2MpGT/FdWU8b2sI+F8Hb7b6T
         yeu100srUAedk5dtx16ROEon5sXvzw03LDmtWxkm7rcNLsNBWETcsQPtPnz8+JP2LFIa
         KmTGbYb6cyl5EZOIdEdvpycaGBoB3o37kGRmBYx4rRllHVqfGQBPKbJjLz+zeJdU2Ix4
         0Ojgg+Kg+s+A1lXUEehuGhk0/aQziDa5sSgzjJNb/oVfSjkzOT3ZRSQZ5AQVkH3jUdRT
         YUy9fEnmqoC6AONa5Dq4BXQC4C9QlBzko0645UPAl3FhEGOnGBflQ9mfNbZWVlWWeRyH
         zyFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rFUcMCUj;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id i11si338544wra.3.2020.07.28.03.44.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2020 03:44:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Received: by mail-ed1-x544.google.com with SMTP id b13so12048513edz.7
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jul 2020 03:44:44 -0700 (PDT)
X-Received: by 2002:aa7:dd15:: with SMTP id i21mr12013673edv.153.1595933084517;
        Tue, 28 Jul 2020 03:44:44 -0700 (PDT)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
        by smtp.gmail.com with ESMTPSA id cf10sm460841ejb.4.2020.07.28.03.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2020 03:44:43 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Tue, 28 Jul 2020 12:44:40 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Mike Rapoport <rppt@kernel.org>
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
Message-ID: <20200728104440.GA222284@gmail.com>
References: <20200728051153.1590-1-rppt@kernel.org>
 <20200728051153.1590-15-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200728051153.1590-15-rppt@kernel.org>
X-Original-Sender: mingo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rFUcMCUj;       spf=pass
 (google.com: domain of mingo.kernel.org@gmail.com designates
 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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


* Mike Rapoport <rppt@kernel.org> wrote:

> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> numa_clear_kernel_node_hotplug() function first traverses numa_meminfo
> regions to set node ID in memblock.reserved and than traverses
> memblock.reserved to update reserved_nodemask to include node IDs that were
> set in the first loop.
> 
> Remove redundant traversal over memblock.reserved and update
> reserved_nodemask while iterating over numa_meminfo.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/x86/mm/numa.c | 26 ++++++++++----------------
>  1 file changed, 10 insertions(+), 16 deletions(-)

I suspect you'd like to carry this in the -mm tree?

Acked-by: Ingo Molnar <mingo@kernel.org>

Thanks,

	Ingo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728104440.GA222284%40gmail.com.
