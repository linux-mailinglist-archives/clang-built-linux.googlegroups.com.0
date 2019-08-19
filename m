Return-Path: <clang-built-linux+bncBCZNB4MJSMHRBUVW5LVAKGQEBAXR7CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C01923D8
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 14:51:32 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id i2sf2440106pfe.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 05:51:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566219091; cv=pass;
        d=google.com; s=arc-20160816;
        b=CZ2R3CIb/ZLbMyh84ph1z/YddtqOKNNvsbEWBc4R3EUJ2AG7fkR42Ccf9AJtnWxNfM
         krNkMoEPCakFNtQqvqqX9cevrR78d93mbVlJ/C3hDBc/u8erV7jPRpeQi66r34Nbj0OB
         cDeYLGUF+45CGQ9F3pMHYCNObG4gRSJviYAgRzWEgMF+/7hh9KNae1ROAhcn8kdnKe/T
         0KFK16T612cdEfgHLBxDQ9jbqgjFVQ6aj9H4wB8MtVBcPPXL0JP7R8jzYyHa6FbdeKxg
         4FdbD2HaFYgKMUnjm9kW3qTaI+eWSZNASMQCIDQnAvr/WwUH2+Fxt2ASBsZfRHtiI8gh
         /C2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=cLIiQa6zynvyKXa0NIePPl/Us+fAtbE/+BwY9uCcpks=;
        b=0Tsf9GjvF+D5raTYHZaEWCb5I7vwH062DWA/E0KDBXLC03ZRv/+zGsWcZbi/dFhts5
         zXNxT4XpW1dhe3W2i77cLzgnuAGPmo8kkPowQ/rqEtZDkwC1HoND2puoaYMthWCnnf8r
         kxrHnDY+klwrKp6hLIrg+ME+Zkk9ep1ENHYJrZP+M0QIOteSQCpYjGQMMA3vjcKk7b8K
         haCJD6F08FRFsuRlRJRrGJfS5W8XLCkJiNVK3SngSKOwAtNlP25SmqZfocFAbQTT/Tky
         3v4ToL33J0QoRFWiQ7fNQk4Qyizp9igO6XsJTO3rzZmJguAYPUb5pUaczuraUrcneieb
         0yNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cLIiQa6zynvyKXa0NIePPl/Us+fAtbE/+BwY9uCcpks=;
        b=fofpVKiy7awz4PUVNJBZIXNT7+vlZWaR+CvH868opp17vCpcPpzM8Up8GQUzSoZVDJ
         fbKJ1aC7xo0a1GG2AYZPf7zA5QyO8eXYkQPDaw9VuU2KISaFCd37Iyi+MCrGY0UIud17
         yfO9et1g+4svgtv+ibKDs6LHnUo7xZIYGYJo3A5on3fOdmoxP/v9JD6AKIRxlwurtIO0
         oTYmrgRzmvxIBtYih626EB6uW23ahi4tFDLcdXB9tPda0wSvcSY1tRf/v0mn7apPTd0j
         +GXZhZeTOURxwzl/DwY+OWwPZBupQu5I2F7GgmaBqCRwykm3Z2skC45+zxQWwL2xFcsT
         Lhsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cLIiQa6zynvyKXa0NIePPl/Us+fAtbE/+BwY9uCcpks=;
        b=Eksa7LU98fo0pwnXB42qkvwudf5+xjWIqBFySlM8dzOHlDfrLpmTusuOhr9DCETrhX
         tVKRhppVErGS0FobDFWJZLLhdH5ZE1++w9cMdSInhLmdTZMVItjj0+dNmroOQB9NNnbj
         qx8MYROXKIe4XI8WfPt9yjYAgvCccJtAA2RBCmkXXB2D1du4BGbgo0ka0wgqmnYTGYwh
         W4lxBqhijHeH6Pn35QHNbcxOkCPXrUpDvbMHxjPUKTNvQ1IB3syn4BenOvzeXtknFFw0
         bieqU390E/ixgZiPz5rLjlWHPGwEhckY8ZhafkOhru/pTWDVNIO0gMA7MT8JY0kNois+
         S3aQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX05KW9HPukZB4rbhv/bJ/ZKvBsvvWUWrnicAVB76Gzy83RQ4MF
	SnsFIgM8NI3IrfAb+wTf8NQ=
X-Google-Smtp-Source: APXvYqyluizVrYdnL4XK/hNXEt6r6v3kSO4UTKJJqnkBvp54xZr5A5v3/qcArDf5dtAETcYjid4jwQ==
X-Received: by 2002:a17:902:30d:: with SMTP id 13mr22500670pld.284.1566219091015;
        Mon, 19 Aug 2019 05:51:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:800d:: with SMTP id j13ls3956703pfi.12.gmail; Mon, 19
 Aug 2019 05:51:30 -0700 (PDT)
X-Received: by 2002:a63:6f8f:: with SMTP id k137mr19680002pgc.90.1566219090560;
        Mon, 19 Aug 2019 05:51:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566219090; cv=none;
        d=google.com; s=arc-20160816;
        b=yg7scDDVPSxbtSEjZXRfUInexzsjZWyUbBMxlfDevdTPCPHPyZV7EhBLD2iS01hNxy
         yFtPnIajyZ5Ro7AUip1QA23veYIn8EygUyqMDJjV93v0Y6xALIctpAJ2G1YqMsDY7ccA
         uIBRTIERf1RbFDWu08Nb8E3YI47GgEn9Xh101vAiq/tq+MyuCNnGcH+FRtse6Quq3NDE
         HF2zhSiZEZfozeRgE8ZM1nqqHaVQIw9j5TXJJzdzS4dsPkg6+wFjGZMjT6JdhjsIISeO
         euRwS1TkmHY/yWhU4nQH9QcxBwwcN8ylXZlDU6YDq6ew06K5PNOQXaw8t8XW+mj0pAee
         vSoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=wfzYrrvSDx9Cz1KZFeRa6dH0XUxTw1I9gvsKDQSs0kg=;
        b=CmYVxG0MOqTDvmHR6iO36diHamc5cUFdE4V9JD1iRWHhmf1yqPYKbJzYJLqHK1uWko
         trvFIryv5ZJ8bGD14D8QMpqnB/ZnGtbww7EsSFzcdGWV6/lJN1zEGxNYntLngQ5HFjpI
         bSa4g5poxVtbkXMfYNiVBSIaoeSw10xYa0yMCTVMxBFpulAwVMuj3RXmKGhWCEKmk/RM
         j91LqaCJ73kEwXe545m56D1cDL2cr0o3WVG9glUd+bTvXlGMFuHUAK8me+O50RzNwdra
         2ZhSf2Z2+pZ/SMIXRnmyy0Br87kJXA/J7lJ/5eYBF2GCmLatnCZxnoHw5TIeO99rooXD
         AbvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id i184si620594pge.5.2019.08.19.05.51.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Aug 2019 05:51:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 252BF80038D;
	Mon, 19 Aug 2019 12:51:29 +0000 (UTC)
Received: from ming.t460p (ovpn-8-19.pek2.redhat.com [10.72.8.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C84EC1C930;
	Mon, 19 Aug 2019 12:51:22 +0000 (UTC)
Date: Mon, 19 Aug 2019 20:51:17 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH V5 2/2] genirq/affinity: Spread vectors on node according
 to nr_cpu ratio
Message-ID: <20190819125116.GA13664@ming.t460p>
References: <201908181343.tKX0E9s0%lkp@intel.com>
 <20190818153642.GA69866@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190818153642.GA69866@archlinux-threadripper>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.67]); Mon, 19 Aug 2019 12:51:29 +0000 (UTC)
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ming.lei@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=ming.lei@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Sun, Aug 18, 2019 at 08:36:42AM -0700, Nathan Chancellor wrote:
> Hi Ming,
> 
> The 0day team has been running clang builds for us and this warning
> cropped up. It appears to be legitimate.
> 
> On Sun, Aug 18, 2019 at 02:05:27PM +0800, kbuild test robot wrote:
> > CC: kbuild-all@01.org
> > In-Reply-To: <20190816022849.14075-3-ming.lei@redhat.com>
> > References: <20190816022849.14075-3-ming.lei@redhat.com>
> > TO: Ming Lei <ming.lei@redhat.com>
> > CC: Thomas Gleixner <tglx@linutronix.de>
> > CC: linux-kernel@vger.kernel.org, Ming Lei <ming.lei@redhat.com>, Christoph Hellwig <hch@lst.de>, Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, Jon Derrick <jonathan.derrick@intel.com>, Jens Axboe <axboe@kernel.dk>
> > 
> > Hi Ming,
> > 
> > Thank you for the patch! Perhaps something to improve:
> > 
> > [auto build test WARNING on linus/master]
> > [cannot apply to v5.3-rc4 next-20190816]
> > [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> > 
> > url:    https://github.com/0day-ci/linux/commits/Ming-Lei/genirq-affinity-Improve-__irq_build_affinity_masks/20190818-045204
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64 
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> kernel/irq/affinity.c:366:6: warning: variable 'nr_others' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
> >            if (nr_present < 0) {
> >                ^~~~~~~~~~~~~~
> >    kernel/irq/affinity.c:391:22: note: uninitialized use occurs here
> >            if (min(nr_present, nr_others) >= 0)
> >                                ^~~~~~~~~
> >    include/linux/kernel.h:854:36: note: expanded from macro 'min'
> >    #define min(x, y)       __careful_cmp(x, y, <)
> >                                             ^
> >    include/linux/kernel.h:847:17: note: expanded from macro '__careful_cmp'
> >                    __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), op))
> >                                  ^
> >    include/linux/kernel.h:841:25: note: expanded from macro '__cmp_once'
> >                    typeof(y) unique_y = (y);               \
> >                                          ^
> >    kernel/irq/affinity.c:366:2: note: remove the 'if' if its condition is always false
> >            if (nr_present < 0) {
> >            ^~~~~~~~~~~~~~~~~~~~~
> >    kernel/irq/affinity.c:342:55: note: initialize the variable 'nr_others' to silence this warning
> >            unsigned int curvec = startvec, nr_present, nr_others;
> >                                                                 ^
> >                                                                  = 0
> >    1 warning generated.
> > 
> > vim +366 kernel/irq/affinity.c
> > 
> >    332	
> >    333	/*
> >    334	 * build affinity in two stages:
> >    335	 *	1) spread present CPU on these vectors
> >    336	 *	2) spread other possible CPUs on these vectors
> >    337	 */
> >    338	static int irq_build_affinity_masks(unsigned int startvec, unsigned int numvecs,
> >    339					    unsigned int firstvec,
> >    340					    struct irq_affinity_desc *masks)
> >    341	{
> >    342		unsigned int curvec = startvec, nr_present, nr_others;
> >    343		cpumask_var_t *node_to_cpumask;
> >    344		cpumask_var_t nmsk, npresmsk;
> >    345		int ret = -ENOMEM;
> >    346	
> >    347		if (!zalloc_cpumask_var(&nmsk, GFP_KERNEL))
> >    348			return ret;
> >    349	
> >    350		if (!zalloc_cpumask_var(&npresmsk, GFP_KERNEL))
> >    351			goto fail_nmsk;
> >    352	
> >    353		node_to_cpumask = alloc_node_to_cpumask();
> >    354		if (!node_to_cpumask)
> >    355			goto fail_npresmsk;
> >    356	
> >    357		ret = 0;
> >    358		/* Stabilize the cpumasks */
> >    359		get_online_cpus();
> >    360		build_node_to_cpumask(node_to_cpumask);
> >    361	
> >    362		/* Spread on present CPUs starting from affd->pre_vectors */
> >    363		nr_present = __irq_build_affinity_masks(curvec, numvecs,
> >    364							firstvec, node_to_cpumask,
> >    365							cpu_present_mask, nmsk, masks);
> >  > 366		if (nr_present < 0) {
> >    367			ret = nr_present;
> >    368			goto fail_build_affinity;
> 
> If we take this goto...
> 
> >    369		}
> >    370	
> >    371		/*
> >    372		 * Spread on non present CPUs starting from the next vector to be
> >    373		 * handled. If the spreading of present CPUs already exhausted the
> >    374		 * vector space, assign the non present CPUs to the already spread
> >    375		 * out vectors.
> >    376		 */
> >    377		if (nr_present >= numvecs)
> >    378			curvec = firstvec;
> >    379		else
> >    380			curvec = firstvec + nr_present;
> >    381		cpumask_andnot(npresmsk, cpu_possible_mask, cpu_present_mask);
> >    382		nr_others = __irq_build_affinity_masks(curvec, numvecs,
> >    383						       firstvec, node_to_cpumask,
> >    384						       npresmsk, nmsk, masks);
> >    385		if (nr_others < 0)
> >    386			ret = nr_others;
> >    387	
> >    388	 fail_build_affinity:
> >    389		put_online_cpus();
> >    390	
> >    391		if (min(nr_present, nr_others) >= 0)
> 
> nr_others is used uninitialized here. Not sure how it should be
> initialized or how the code should be shuffled.
> 
> Please look into this if you get a chance.
> 
> Cheers,
> Nathan
> 
> >    392			WARN_ON(nr_present + nr_others < numvecs);
> >    393	
> >    394		free_node_to_cpumask(node_to_cpumask);
> >    395	
> >    396	 fail_npresmsk:
> >    397		free_cpumask_var(npresmsk);
> >    398	
> >    399	 fail_nmsk:
> >    400		free_cpumask_var(nmsk);
> >    401		return ret;
> >    402	}
> >    403	
> > 

Thanks for your report, and it has been fixed in V6.

Thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190819125116.GA13664%40ming.t460p.
