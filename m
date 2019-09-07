Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB77SZTVQKGQEFGKDM3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F32DAC4B5
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 07:00:48 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id l7sf1851360lfc.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 22:00:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567832447; cv=pass;
        d=google.com; s=arc-20160816;
        b=FoPFq000A7jPmt8w6zsXxTEtSp8O0ZUkHiLqrRNQxW4ZjYfm2aW5GwtdJ7uluw//HS
         HPJvgf3sQSU5OUv7Yp8/loCTeqSu3serOHsFyAsywkOC2Wy1Bcf7gvjNpP1HnGJFrZ2n
         I8MfXGDJdOCahjbXiIfhsyK3XZXOoXlwg8WuD1YMlbXecUiC/2tu3rFjCi4kob6l8EvW
         IYdVnIDRuPRq947WQPwm11yibNV1LJBG6eRYCxezOC2pCHxw7kmwAGCAYffjqKYBoqSY
         TUjtXeUamk1NDS9BWMUWix/TxuIqu2GeBeKA8FM2PpEtGnIGNT7w21C6K6Q054ZN8Sqy
         uqtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=F3Y7li+u1m1QZowCE6VVg2DxdZILTJOGhNJ24xYNIfk=;
        b=JnaLdwYYXXLt7pre2iCYeO6H7aA0Bs2imfQ787EaGquYpY66vE6GbgNzwLehfU1uXY
         FKWMfF5e0JoyC293jpckBZ8Qz0nAIXKFSBHSkt/BNxGt9vaGhKs6T4kxqD9hitIyZq6C
         2RTNAYvY7DVN2t48fuZEnsANJKPbOtoWsO8ldJV6nGJ8bd/DJZ9nvVmMXTqmwRl8MzkF
         e0FqLVQdYPcwN5RysCEkKEJcS7eGf7+j9URswFklgApjFs3sbyMm1vQgRspE9t1/owl0
         UY0ySqiQ45eqxMzjb2jEqfaIQuXPVBPMAUPvt+Ryl+ojtvYuLeIB4/WcPFycj9caK2nD
         uRCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="TnB/LlDP";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F3Y7li+u1m1QZowCE6VVg2DxdZILTJOGhNJ24xYNIfk=;
        b=Z4Eg2CNmXTOvv0gYO4BKd0X+GdtbfTIyNgTmsZsW38+Oxb6sjX7yDTRwi6Tkz3lNpN
         5YNOhhmUdDNWVdZteMKr0uK/VjgJU6qz8LNiXByK5zOGjmu+I2LArq31N2Dy8uoxq4tZ
         wQWiuitQGyBTDiOWqEqN8I1hH8f8x+QzRQ5DSYxNMyhjIka8zA8gpl6T1R/NrCBaE9zt
         Y13g5Hj8hCH86qQ34XBAjdotSaRGdTfFrHah+KY6w8KRojMJJ5mZC6FK1dK+qSxPSImG
         wPyNssTZhSwNNl8fNQXBwMJdgwVV9pHuJoGuIYPK+X08SJ2ORQojRHLjd8r8WniODMWR
         CjEg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F3Y7li+u1m1QZowCE6VVg2DxdZILTJOGhNJ24xYNIfk=;
        b=r2QmBETfVmdUKbNz+djBi9dl1uLdDWShNq2/MQR+qc8wlEycpXre3it2y5S/+ebqnY
         wJKyOgM6wx04Zd/pIxXzq0WNFaYChOStTY8Mvqjy6KOtnVWMiuo5Qrn/wAlp6TU/3/7l
         gqv4iks1MpcE/bkiE23JBL6964IQIhNXAYgpGz5c+a/VSS3wmDrkgqSebt1ThKGMfTwT
         MFT+S7CO6vqZTP5aEk7MlAew2kPm6bWNxaAjheAHqzkmFfGK5L0T85k+F6COKePhsMDT
         3+cS2G0f8KaXyjs8zOOmzyUiRkCoVHErl5Fd545CRq1G6fsYVzLrhbWxJf/ztN90w2n/
         JLpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F3Y7li+u1m1QZowCE6VVg2DxdZILTJOGhNJ24xYNIfk=;
        b=mbIBBrE1YKxRz/wemOm4ChnkzxQy2MhOKlpvrbAN9JP8SqtZGImR9OQQZjPIaku5iO
         7YM99jguwwhQDYimFjurTcYnH7Kf6eso6v+SYWPaRS9NUrQ49MFRBLeguY/7WZgEGin6
         +Z8M3CmxsmgzvsPSYdwBTS/olyNar+RBXn1cIpjLrVA+vwdp7XmDdTNlksf2nv4MBUqO
         I9QJrY+v73TYjakcMWouCUO4z8M6NqmF3LkYHudajSzrrRcR2e4uHhVzxxEDNfy/LL3v
         kdz86Tw24vCQlVKtg5I/89YK9AwVV0lR9YdW98YHcp1we2UjQvVhaBthCBT/ccWMdnwX
         FfdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUDIcTOdEr3PHg8ckaSxq7AlKk8Y/W2DfDdtjG8XWJ21Y3a0tP+
	I+W49q/KajqKxMwHKJsH+bM=
X-Google-Smtp-Source: APXvYqzF8fHYGjtcpRVGBI5KMxFXKosnKBSBQNkUB2yxi+3Kh2+Q1JPKceoTNyieufyeMHT/G5a80Q==
X-Received: by 2002:a2e:7502:: with SMTP id q2mr7709748ljc.202.1567832447777;
        Fri, 06 Sep 2019 22:00:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:969a:: with SMTP id q26ls929699lji.9.gmail; Fri, 06 Sep
 2019 22:00:47 -0700 (PDT)
X-Received: by 2002:a2e:91d9:: with SMTP id u25mr7976013ljg.85.1567832447348;
        Fri, 06 Sep 2019 22:00:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567832447; cv=none;
        d=google.com; s=arc-20160816;
        b=O639BaE9DKj5QxS+keflT6ucX5nWsMt5mJ/NG+SJoLtrq8erDte3XsQ3Df2tl0wb8I
         b7tDC7LeDFtHyCaQjzl+Xuxp5GrbpBat5457LU47SHVOWZ0/hnKZLBYN1vzycCs3radI
         WYbFFbi+Vjw+UaW+OIKc8SFrpLhVeyGZgE0CmPQ00x8y2lAd5COp58Dz2Tcb+dV6nuAX
         fOek9KGk+WujKl0cti6ucHHlcEhE6wmnnaXqQEfAYXjnvSoSHeZMu9fKwgcDbiEXIkPU
         oIPuio/SyRc6bjqRWbKyVUNC9VlZnKyUVhk+YF8L9nFQNjIhBrXlq4YANy3RHTkPx6OG
         eA5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ag61ZTo6BHpBaYj7CdEjv+kHpxUTR1g1+bAwpvtVAEY=;
        b=jFptM3gwDiYbT/oY+lsxJ67OHu2GbORpRZgPe4wU16MND0oTlDV9/lTGalBUGN7Ipt
         wMAoqu0E6qvkY0MsSeDmEVCCvfF1iX911ekmyWVvfLSHd01zPjbQB5JBtjt1mM3UXHnG
         CdgrB4y7Dz6aIRJb7FCCYlRdOYGKJceZs8SWOm8IZyVVwqu+F+qJcgRiHkhWYd+XWhol
         6NAYUSrRtk7nbaxyBR7uJuXwhqXrH6/kvUxns+8LYXG8mIxeGghcbChQqH8CNu2Edvwf
         7Y1rTnzGOvDNbozgMjqHgQ6ynnHxk+h2QDFHmWsf9O+NnAsFM37QTqy7gwX2b+qPKzkL
         RfSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="TnB/LlDP";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x17si544384ljh.0.2019.09.06.22.00.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 22:00:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id h7so7504339wrw.8
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 22:00:47 -0700 (PDT)
X-Received: by 2002:a5d:4742:: with SMTP id o2mr9780882wrs.253.1567832446581;
        Fri, 06 Sep 2019 22:00:46 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id n12sm3296218wmk.41.2019.09.06.22.00.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2019 22:00:45 -0700 (PDT)
Date: Fri, 6 Sep 2019 22:00:44 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [hch-misc:dma-mmap-improvements 43/43]
 kernel/dma/mapping.c:272:1: warning: all paths through this function will
 call itself
Message-ID: <20190907050044.GA14449@archlinux-threadripper>
References: <201909060153.fUJWrF1F%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201909060153.fUJWrF1F%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="TnB/LlDP";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Christoph,

You might be interested in this clang build warning that cropped up from
0day.

On Fri, Sep 06, 2019 at 01:35:54AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Christoph Hellwig <hch@lst.de>
> 
> tree:   git://git.infradead.org/users/hch/misc.git dma-mmap-improvements
> head:   0fd479f1564a6457c04addd3ecbad40f1374db38
> commit: 0fd479f1564a6457c04addd3ecbad40f1374db38 [43/43] dma-mapping: add new dma_mmap_prepare and dma_mmap_fault APIs
> config: x86_64-allnoconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout 0fd479f1564a6457c04addd3ecbad40f1374db38
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> kernel/dma/mapping.c:272:1: warning: all paths through this function will call itself [-Winfinite-recursion]
>    {
>    ^
>    1 warning generated.
> 
> vim +272 kernel/dma/mapping.c
> 
>    267	
>    268	/* prepare for mmaping coherent memory.  Called from ->mmap */
>    269	int dma_mmap_prepare(struct device *dev, struct vm_area_struct *vma,
>    270			void *cpu_addr, dma_addr_t dma_addr, size_t size,
>    271			unsigned long attrs)
>  > 272	{
>    273		/* can't support the non-coherent pool (yet) */
>    274	#ifdef CONFIG_DMA_DECLARE_COHERENT
>    275		if (dev->dma_mem)
>    276			return -EOPNOTSUPP;
>    277	#endif
>    278		return dma_mmap_prepare(dev, vma, cpu_addr, dma_addr, size, attrs);

I assume this should be __dma_mmap_prepare?

>    279	}
>    280	EXPORT_SYMBOL_GPL(dma_mmap_prepare);
>    281	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190907050044.GA14449%40archlinux-threadripper.
