Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDPB4XVAKGQECCPTC2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 5188F9177F
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 17:36:46 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id 9sf146368ljp.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 08:36:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566142605; cv=pass;
        d=google.com; s=arc-20160816;
        b=pQHOChk+XuRydJanDFh/8/jfipBpjJK3cvFsLOtquuPMmInAmmmXe+xKD2/9+eiyuI
         rn1uqcpTcHUzvoPXy5FJjq1xPaRH67YiNsZQYMnwwerkR1g9HSJ8/QOXEcwofbFiG+H0
         Q32L5OQ/4OIFa5CEL/tkgXPwP3BZXfmAUHQKdcvuapRAITXPI9rJ+GVYbcB9TB4VbOV6
         sij+xc4guhM0kKRJkKHi6b0K5PzDsOJ24c+1WDocfMrZVtnHjIQ1RPggYRdHhUeQ6Yfr
         KrGMsJVcgC1FRVXF/y0zOeY/T8uYV3J6PrsC0ohY/k4ofz728DBYN5YD1ff223qBvOrj
         zgTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=MR4n2TBaVSjrHS+IN13lwtcGrtpQPLpSdp0pMu8c4FY=;
        b=I9KfJa7Vd5cFwhKGZr7S5V5aD2PR98p4oEGfV/XbwVPqV5nVO8ppitxBkISfCo02J3
         Vbrol/PZdtB7XVW9r/TXBIqjqksclu47goKeSNKvgzlrswQyoi3gpWfC3VvGE+qtArt0
         pN+E/s4DZc/ic7rZ07ZAp/dgY6iVCTA95HYv+f0T/xR6ZZJBwmlpyleBvMUEKkKZKbU4
         /wrZ+oJdEthNPuw8N0ppKKyjuiZO1gYMRriCMD7qdah5lTZE3yfMTxNbXdsZEmTxEGhw
         T5PeHDuI3Vgzo/KDGki4s48ptEQSeHlc4SmO+6OnIvV96j/YZIIhuHWsz/xnJt7W5WyK
         OJmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l8XsDq+o;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MR4n2TBaVSjrHS+IN13lwtcGrtpQPLpSdp0pMu8c4FY=;
        b=innDRpOqxwC67Lgc6tueGypmqW1txWFjQJmg7hCwv1jSFVsp+r46eBmsVCUjj+SZRX
         9368Ot/BPbhnNExMyRKLxZBCr95HDNyJo7aqo7Ekfgr9nuqZbYS9fMV25pgg6tqikBNH
         7B1u1wg24a9PusoriCgAhpt5XO+IYV8FHUgZ6m0GuEy7tjTvs6PUh1zT59kk9+H65nXu
         xlH3+F5TC8Mb/JuD59f5vKENjUOJXJBjP5jhIpmqihA6yat0KGL9aVVm6qRru7Ec/taY
         IrQDxnCtYSEnYv9Fb2crjMJlTzmvRqADQou8i+CGmN4FmHxMurD/Koy2YsQwilmz2hRj
         yOUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MR4n2TBaVSjrHS+IN13lwtcGrtpQPLpSdp0pMu8c4FY=;
        b=j95NG28aHPsK8qvkycoPE9yUW/mKdzMpNwWE/5hpdbcVshhsK9nA8BxLqe5x1LZp3u
         8G+3iEQG/RayOhifcwTGKGBaUDxaBdzIsmV56o3DL/9929HwMGwdFHy4GiwdO7YCNDdl
         SRYaaKF62ZNUDNGJA7bQ+Ra0WBXIxGFOnP/kIbsW/GhTJQeilg+HTBpivjP8AF5xusRA
         mdjGcjCcnhPleafqNkYG93gu0RJyI6aIgRcO6689ofHkpbtziB76t6KJxti/uY0Ktd0K
         4YaBD2Xy4kOdTVSVVw2h1kZ4SmvSsRECuzclKlHCraHfR7ZHJTekmgusozxY70QnDgF9
         xsIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MR4n2TBaVSjrHS+IN13lwtcGrtpQPLpSdp0pMu8c4FY=;
        b=bQhjL0nbxn+dl/Sgw7h0ydJj/zfbmgkICzqNwHLskh1WYQGsb0v/fozlMCLjc4SaZ5
         Ry3B/YgFJywG8U1PEpuX+a3fKW+ZGoQBdzlunle3MWIfbKIUiRbVuVaGVXGBfuov5V9s
         SG8Z4MmM/SDX9nt/+gpLmBDnQk2ud4KBqSTNDI7+RvikpTIPvNtf89EnbL1tzsurI4jW
         TU2scuTrBk4jJG5YDzbW3W/izK5tV3MT6pQAZGMUW0ZuIuwzbjmqLRxIOt1Yag75PQN7
         lEDUchiHwL2IY9Dbm7R8mszZ4Jf7IB5IGSXjRWYHoys85qZTMeCom6QEHsXAIzhDlHtw
         9agA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXKC0KLteoTHB870dIYHNhJotskvYl8dl0JoMESSMP4TnFhmpgF
	7t13cQnVyuumzyquWz5p14c=
X-Google-Smtp-Source: APXvYqyjpvS9TmdlHxxRCq0cZTjOENOG+5AHsNtcdfFz2uWagkj/Y6MGZOKIBENBm31iGGEI7ZYlug==
X-Received: by 2002:a2e:b4c9:: with SMTP id r9mr10277640ljm.196.1566142605685;
        Sun, 18 Aug 2019 08:36:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b60e:: with SMTP id r14ls1392502ljn.13.gmail; Sun, 18
 Aug 2019 08:36:45 -0700 (PDT)
X-Received: by 2002:a2e:7604:: with SMTP id r4mr10414428ljc.225.1566142605243;
        Sun, 18 Aug 2019 08:36:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566142605; cv=none;
        d=google.com; s=arc-20160816;
        b=MYQhnyZrykWZ8DY5ewc6Q0+7q6DU07S0xsUQFd1iFIBCMEru6l9AW5gkRKE3c//zkq
         /sJPqhUV4mP7mDnCMDIRe+WjeYOfszUvHTo5DNXIAV/yaZpae4OMFhkyFKoZ7XFbx3k8
         lElVwQDmd3W/A+xrHuyFXe/3ltrtOTz2xDG9Iw4SI+uMBbea2C1Es41uIzeJNN6v20UA
         igM0NMiJLfPWDI/HUypOMsYtdnCNwboouwShQNhrqE8PwTRI3fWCA6/KkKcFG33hnK47
         bhWawykhIhGhnfGZwNapnJDMymErnXWTSsU/DG12/aV+f1tQy8GEpMQ0aMSU63pW3hUU
         ipCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=YY+qFqUptnodpIULq/LPZ4DKt7jCNXdhJiMo7HtIqIQ=;
        b=ZMK0TCSDC/E7q6jUJNER+AbWrfLhVDCmkkEpr7NOO9N14NMpDQ2dpwbr99kgPanUfn
         Y6xlwQgQ/6FYlquonfIpNcAJlaq8qya57I3nw+ZGqb5/AOMOlKWovDJFJUUzeHOql1yu
         Hnvt/mFcDKkY3ufbRwShcBFqybeVCCMLo6hO6vDNIUacDYqE9M8/s0i7uEoZIqW+HxS4
         LNK5SsDOJ1ksPTMdz9HXqdMTC8DJ5KK4NiRGFkkMAR793Do/ZCV+zgxB/JRm7R8Twc+v
         85Oo2tlHvbeQUx667vB1sM1E3KENZ/XiWtkd7H7Z0QN5P/su49wworWky5OfF3W5VvpL
         GYJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l8XsDq+o;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id u10si649035lfk.0.2019.08.18.08.36.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Aug 2019 08:36:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id p17so6134205wrf.11
        for <clang-built-linux@googlegroups.com>; Sun, 18 Aug 2019 08:36:45 -0700 (PDT)
X-Received: by 2002:a5d:4206:: with SMTP id n6mr22233685wrq.110.1566142604485;
        Sun, 18 Aug 2019 08:36:44 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id u186sm24302370wmu.26.2019.08.18.08.36.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2019 08:36:43 -0700 (PDT)
Date: Sun, 18 Aug 2019 08:36:42 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ming Lei <ming.lei@redhat.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH V5 2/2] genirq/affinity: Spread vectors on node according
 to nr_cpu ratio
Message-ID: <20190818153642.GA69866@archlinux-threadripper>
References: <201908181343.tKX0E9s0%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908181343.tKX0E9s0%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=l8XsDq+o;       spf=pass
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

Hi Ming,

The 0day team has been running clang builds for us and this warning
cropped up. It appears to be legitimate.

On Sun, Aug 18, 2019 at 02:05:27PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <20190816022849.14075-3-ming.lei@redhat.com>
> References: <20190816022849.14075-3-ming.lei@redhat.com>
> TO: Ming Lei <ming.lei@redhat.com>
> CC: Thomas Gleixner <tglx@linutronix.de>
> CC: linux-kernel@vger.kernel.org, Ming Lei <ming.lei@redhat.com>, Christoph Hellwig <hch@lst.de>, Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, Jon Derrick <jonathan.derrick@intel.com>, Jens Axboe <axboe@kernel.dk>
> 
> Hi Ming,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on linus/master]
> [cannot apply to v5.3-rc4 next-20190816]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> 
> url:    https://github.com/0day-ci/linux/commits/Ming-Lei/genirq-affinity-Improve-__irq_build_affinity_masks/20190818-045204
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> kernel/irq/affinity.c:366:6: warning: variable 'nr_others' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>            if (nr_present < 0) {
>                ^~~~~~~~~~~~~~
>    kernel/irq/affinity.c:391:22: note: uninitialized use occurs here
>            if (min(nr_present, nr_others) >= 0)
>                                ^~~~~~~~~
>    include/linux/kernel.h:854:36: note: expanded from macro 'min'
>    #define min(x, y)       __careful_cmp(x, y, <)
>                                             ^
>    include/linux/kernel.h:847:17: note: expanded from macro '__careful_cmp'
>                    __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), op))
>                                  ^
>    include/linux/kernel.h:841:25: note: expanded from macro '__cmp_once'
>                    typeof(y) unique_y = (y);               \
>                                          ^
>    kernel/irq/affinity.c:366:2: note: remove the 'if' if its condition is always false
>            if (nr_present < 0) {
>            ^~~~~~~~~~~~~~~~~~~~~
>    kernel/irq/affinity.c:342:55: note: initialize the variable 'nr_others' to silence this warning
>            unsigned int curvec = startvec, nr_present, nr_others;
>                                                                 ^
>                                                                  = 0
>    1 warning generated.
> 
> vim +366 kernel/irq/affinity.c
> 
>    332	
>    333	/*
>    334	 * build affinity in two stages:
>    335	 *	1) spread present CPU on these vectors
>    336	 *	2) spread other possible CPUs on these vectors
>    337	 */
>    338	static int irq_build_affinity_masks(unsigned int startvec, unsigned int numvecs,
>    339					    unsigned int firstvec,
>    340					    struct irq_affinity_desc *masks)
>    341	{
>    342		unsigned int curvec = startvec, nr_present, nr_others;
>    343		cpumask_var_t *node_to_cpumask;
>    344		cpumask_var_t nmsk, npresmsk;
>    345		int ret = -ENOMEM;
>    346	
>    347		if (!zalloc_cpumask_var(&nmsk, GFP_KERNEL))
>    348			return ret;
>    349	
>    350		if (!zalloc_cpumask_var(&npresmsk, GFP_KERNEL))
>    351			goto fail_nmsk;
>    352	
>    353		node_to_cpumask = alloc_node_to_cpumask();
>    354		if (!node_to_cpumask)
>    355			goto fail_npresmsk;
>    356	
>    357		ret = 0;
>    358		/* Stabilize the cpumasks */
>    359		get_online_cpus();
>    360		build_node_to_cpumask(node_to_cpumask);
>    361	
>    362		/* Spread on present CPUs starting from affd->pre_vectors */
>    363		nr_present = __irq_build_affinity_masks(curvec, numvecs,
>    364							firstvec, node_to_cpumask,
>    365							cpu_present_mask, nmsk, masks);
>  > 366		if (nr_present < 0) {
>    367			ret = nr_present;
>    368			goto fail_build_affinity;

If we take this goto...

>    369		}
>    370	
>    371		/*
>    372		 * Spread on non present CPUs starting from the next vector to be
>    373		 * handled. If the spreading of present CPUs already exhausted the
>    374		 * vector space, assign the non present CPUs to the already spread
>    375		 * out vectors.
>    376		 */
>    377		if (nr_present >= numvecs)
>    378			curvec = firstvec;
>    379		else
>    380			curvec = firstvec + nr_present;
>    381		cpumask_andnot(npresmsk, cpu_possible_mask, cpu_present_mask);
>    382		nr_others = __irq_build_affinity_masks(curvec, numvecs,
>    383						       firstvec, node_to_cpumask,
>    384						       npresmsk, nmsk, masks);
>    385		if (nr_others < 0)
>    386			ret = nr_others;
>    387	
>    388	 fail_build_affinity:
>    389		put_online_cpus();
>    390	
>    391		if (min(nr_present, nr_others) >= 0)

nr_others is used uninitialized here. Not sure how it should be
initialized or how the code should be shuffled.

Please look into this if you get a chance.

Cheers,
Nathan

>    392			WARN_ON(nr_present + nr_others < numvecs);
>    393	
>    394		free_node_to_cpumask(node_to_cpumask);
>    395	
>    396	 fail_npresmsk:
>    397		free_cpumask_var(npresmsk);
>    398	
>    399	 fail_nmsk:
>    400		free_cpumask_var(nmsk);
>    401		return ret;
>    402	}
>    403	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908181343.tKX0E9s0%25lkp%40intel.com.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190818153642.GA69866%40archlinux-threadripper.
