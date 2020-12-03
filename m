Return-Path: <clang-built-linux+bncBAABBH6XUP7AKGQETHP2TKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id C063D2CD7C4
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 14:44:00 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id 4sf1197535pla.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 05:44:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607003039; cv=pass;
        d=google.com; s=arc-20160816;
        b=L1MmVw799ce63COBRzMVBuJuEp3kA9eMMyluVNgeMbJPLmJX1BwQgG4VBYLZg0FCXy
         bpza4GXA+LVmuBAGwGjyx3x2YYSL0jcmSx9qY4aYaUYdZHfOZeP1mVmHhTbWk7L5KWgy
         yp9/hcfhsBLpj9DVvSKA1aeZ+s1o8TYnEhPRBJCoPNcwtimWzZ1A7oGlvEBMZwDxcwlg
         5f3Gmhn0zOX0S0pczWsTPPjE8D7FwmCZjSglETX4Bt8veYXuT447dsCW6mg9DBY07DKS
         cHRbVkNg/9ztz7N5T/mdVArZWjc+UwiQnWFtC/QArPigIILNoufTJrYlVt0VWX1RwD2D
         EcnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AU5dhOBTgg/yCu5qK2FLxgOGg6dQwUjRL/qMRJkZY7U=;
        b=IILYvRkoNhAbDvY5bLd6mxNztLEi+C2ypPF39o9+03gXWgVoQ7z9+7rpG0Lo8o9R9c
         kDOzcJrX4YhesDe1iI1DSe7HCWq3MXn08XmnsKR9W855nYunyfhfX6PDH7qi+ipiv2MA
         Nzyg7QljlwWM8/0m/s3+1x5e7u9VfTQIpTeFcQQa/lcV3/E8nE3jFzzDan9Ug77se3Fm
         t11YOW5BX83aT54lib0wzkrkBsCmyUY++id2z1eUUVIDyIGKa2ufntzg9DTDhhIwNDSM
         PXqGFfOKLx/hMalKDfXtu1rvGwjxMvo0tS572dPgB3nb+bOAwlifvrfMVdtCoK1q2s86
         S6Gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=qYV20rKA;
       spf=pass (google.com: domain of idosch@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=idosch@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AU5dhOBTgg/yCu5qK2FLxgOGg6dQwUjRL/qMRJkZY7U=;
        b=h8MxhrOqZrV5E0iTBvHe0YbgUoBASsYtnvlIfsoZeBoominzigRU5TQJdx1sKzUhYz
         iTO525o7Nrh1LO97ErVPkI4LVvLHMdUIujNu48fT69bePSKAkNvVJza4Cii1Q9NdbNGp
         zauvQqUwipCGYMLkh+6Ybmg/3b1HSR/M0M+tkH+JYlAsP7mYcgGMx5fOPIRCPEoCR4Tl
         GrE6MW33kwVd+vSD9vw6J0UPYTsKJ4ZvjYTvV6ajX6oKEEomJ/lYh3xyhupF76rDOweP
         x8+vmxvjYDZe+bT1OHHRDqkaC4fGPXT9v90mbJZb3NWfszsPEzv0ZQplyAYRNbG5SD2/
         IMVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AU5dhOBTgg/yCu5qK2FLxgOGg6dQwUjRL/qMRJkZY7U=;
        b=YjrxYjc81R20ZauqFnJvOixw3ekOubXqr2nmw4OFh18s22HBlrLoGh5T7osA7jWbU0
         926E0OnYJ564MRzv+UETKUF/hLJ3hzIo164P/ttmzeVJpA73hmm0Viv9q5Oma/dh1mWW
         RGfZcI9cStpLBkez5IFhu171abht0bFelKc0QIZc1MbJpWfGIAKo4SwwhPbAam6Wt3ua
         pCka5+1bjWiLxv8aV74n95BiupgROgsaQqDN+zzk6IgMnvmDN3Er98IVdYcH4dLT9pHg
         5OblmwISs6qUXDEN9qvoXCyKCr9z/ideo+EUz7wQkuS4tptluyn3o1H54QbTK2wJPTMy
         9QOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532w8y7dxFGMDYth12hsqZ4YPLxEREttSncQRkX9Q8SdwU7MUu/x
	eTTA3YMtfb0TBpFqUqhEKok=
X-Google-Smtp-Source: ABdhPJzlrMtxZaJDE8XNQublVcEKpi1++y096gqtxLG2fBTL7EAKVQTbs6h3R1IoQTa3K/Sfd1a/5Q==
X-Received: by 2002:aa7:9f0f:0:b029:19b:c68f:61cd with SMTP id g15-20020aa79f0f0000b029019bc68f61cdmr3003862pfr.45.1607003039277;
        Thu, 03 Dec 2020 05:43:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c205:: with SMTP id 5ls2669822pll.11.gmail; Thu, 03
 Dec 2020 05:43:58 -0800 (PST)
X-Received: by 2002:a17:90b:384c:: with SMTP id nl12mr3117652pjb.72.1607003038645;
        Thu, 03 Dec 2020 05:43:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607003038; cv=none;
        d=google.com; s=arc-20160816;
        b=NNASUXyw23OYPE5MA2j6cqLiLe/zGbEqULKsyvNVUshWRtETYZ30NpXVQl+WHj8kOJ
         FMcWiaKoNTEQgLIlX3mh0HI9xeqpYKyhYev/zZ7mUOz2g+4M6aSuUD3Hxm2Sd0oBr2hr
         7k4mASDu7/nytGOXg7dvBtUSapu1EMGoHNND4ahwau/g6nQt4uKXAg89/h7kG93LBRsl
         YcXvZAbtu5GGV18n26+icdp5lHkB+oisU2WtBfwLQKlmn2IeTD8DIGaJGb25vnDc2A3b
         FSuIuT31P43XYxC++7hJxlszIHjEYPgL+uwW5tMuNVMgbxYNz+dRJC0fNVkxyaEpbB4I
         TBHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date;
        bh=raBSg/Yhyw8o7U6lMNHjSjCgfioFegRcBcS1dZ7IcV0=;
        b=ROLxWX4XA6g1juUF57oaVguGareifff5FpWovQgnOPIVba9E1XA0y7nL1WJd6UUB9v
         bPXbeH6WjYJXrG8qDlrwweohsGJGo8aSznX3ZoUubBov+oeOZZsc/GkQg7VV1ESPqmr1
         EfYizA2QE3V2P5s2euoZWgYIvuDnhZjCRcbEyCFTOMsvreGWI2g3rFD9i+tFRDIjaQtF
         oIEz34E8kvRqK7aWCWaqNyqSbCyzLNe3ugD9alVcLy18jJkQ4V6MYuciRqe5/4HGNIoZ
         i4giqlLh71VNj+EZe/HYlbcU9YfJ0UC75H3q3z8oKtqG/Duw71kDqe/qrZaoi2rNO+Yf
         LXOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=qYV20rKA;
       spf=pass (google.com: domain of idosch@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=idosch@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqnvemgate26.nvidia.com (hqnvemgate26.nvidia.com. [216.228.121.65])
        by gmr-mx.google.com with ESMTPS id f14si104418pfe.3.2020.12.03.05.43.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 05:43:58 -0800 (PST)
Received-SPF: pass (google.com: domain of idosch@nvidia.com designates 216.228.121.65 as permitted sender) client-ip=216.228.121.65;
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate26.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
	id <B5fc8eb9d0000>; Thu, 03 Dec 2020 05:43:57 -0800
Received: from localhost (10.124.1.5) by HQMAIL107.nvidia.com (172.20.187.13)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 3 Dec 2020 13:43:53
 +0000
Date: Thu, 3 Dec 2020 15:43:50 +0200
From: Ido Schimmel <idosch@nvidia.com>
To: kernel test robot <lkp@intel.com>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>, "Linux
 Memory Management List" <linux-mm@kvack.org>, Jakub Kicinski
	<kuba@kernel.org>, Jiri Pirko <jiri@nvidia.com>
Subject: Re: [linux-next:master 5737/10502]
 drivers/net/ethernet/mellanox/mlxsw/spectrum_router.c:6360:13: warning:
 stack frame size of 2064 bytes in function 'mlxsw_sp_router_fib_event_work'
Message-ID: <20201203134350.GA1613892@shredder.lan>
References: <202012032039.ypla4NJl-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012032039.ypla4NJl-lkp@intel.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-Original-Sender: idosch@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=qYV20rKA;       spf=pass
 (google.com: domain of idosch@nvidia.com designates 216.228.121.65 as
 permitted sender) smtp.mailfrom=idosch@nvidia.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=nvidia.com
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

On Thu, Dec 03, 2020 at 08:09:46PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   bfd521e1af519bb7096efc845f6a64a7de28c472
> commit: c0351b7c25ffd52408c1297fbe552f185d5aac3f [5737/10502] mlxsw: spectrum_router: Set FIB entry's type based on nexthop group
> config: powerpc64-randconfig-r032-20201203 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 32c501dd88b62787d3a5ffda7aabcf4650dbe3cd)

Is this some known issue with clang maybe? On x86 with gcc 10.2.1 I get:

0xffffffff8171c5c00 mlxsw_sp_router_fib_event_work [vmlinux]:592

Enabling a lot of debug options gets us to 944:

0xffffffff82d1eca00 mlxsw_sp_router_fib_event_work [vmlinux]:944

> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=c0351b7c25ffd52408c1297fbe552f185d5aac3f
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout c0351b7c25ffd52408c1297fbe552f185d5aac3f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/net/ethernet/mellanox/mlxsw/spectrum_router.c:6360:13: warning: stack frame size of 2064 bytes in function 'mlxsw_sp_router_fib_event_work' [-Wframe-larger-than=]
>    static void mlxsw_sp_router_fib_event_work(struct work_struct *work)
>                ^
>    1 warning generated.
> 
> vim +/mlxsw_sp_router_fib_event_work +6360 drivers/net/ethernet/mellanox/mlxsw/spectrum_router.c
> 
> d42b0965b1d4fe0 Yotam Gigi 2017-09-27  6359  
> c1b290d594a12b4 Jiri Pirko 2020-11-10 @6360  static void mlxsw_sp_router_fib_event_work(struct work_struct *work)
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6361  {
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6362  	struct mlxsw_sp_router *router = container_of(work, struct mlxsw_sp_router, fib_event_work);
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6363  	struct mlxsw_sp_fib_entry_op_ctx *op_ctx = router->ll_op_ctx;
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6364  	struct mlxsw_sp *mlxsw_sp = router->mlxsw_sp;
> 505cd65c66e8223 Jiri Pirko 2020-11-10  6365  	struct mlxsw_sp_fib_event *next_fib_event;
> 505cd65c66e8223 Jiri Pirko 2020-11-10  6366  	struct mlxsw_sp_fib_event *fib_event;
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6367  	int last_family = AF_UNSPEC;
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6368  	LIST_HEAD(fib_event_queue);
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6369  
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6370  	spin_lock_bh(&router->fib_event_queue_lock);
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6371  	list_splice_init(&router->fib_event_queue, &fib_event_queue);
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6372  	spin_unlock_bh(&router->fib_event_queue_lock);
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6373  
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6374  	/* Router lock is held here to make sure per-instance
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6375  	 * operation context is not used in between FIB4/6 events
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6376  	 * processing.
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6377  	 */
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6378  	mutex_lock(&router->lock);
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6379  	mlxsw_sp_fib_entry_op_ctx_clear(op_ctx);
> 505cd65c66e8223 Jiri Pirko 2020-11-10  6380  	list_for_each_entry_safe(fib_event, next_fib_event,
> 505cd65c66e8223 Jiri Pirko 2020-11-10  6381  				 &fib_event_queue, list) {
> 505cd65c66e8223 Jiri Pirko 2020-11-10  6382  		/* Check if the next entry in the queue exists and it is
> 505cd65c66e8223 Jiri Pirko 2020-11-10  6383  		 * of the same type (family and event) as the currect one.
> 505cd65c66e8223 Jiri Pirko 2020-11-10  6384  		 * In that case it is permitted to do the bulking
> 505cd65c66e8223 Jiri Pirko 2020-11-10  6385  		 * of multiple FIB entries to a single register write.
> 505cd65c66e8223 Jiri Pirko 2020-11-10  6386  		 */
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6387  		op_ctx->bulk_ok = !list_is_last(&fib_event->list, &fib_event_queue) &&
> 505cd65c66e8223 Jiri Pirko 2020-11-10  6388  				  fib_event->family == next_fib_event->family &&
> 505cd65c66e8223 Jiri Pirko 2020-11-10  6389  				  fib_event->event == next_fib_event->event;
> 505cd65c66e8223 Jiri Pirko 2020-11-10  6390  
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6391  		/* In case family of this and the previous entry are different, context
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6392  		 * reinitialization is going to be needed now, indicate that.
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6393  		 * Note that since last_family is initialized to AF_UNSPEC, this is always
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6394  		 * going to happen for the first entry processed in the work.
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6395  		 */
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6396  		if (fib_event->family != last_family)
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6397  			op_ctx->initialized = false;
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6398  
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6399  		switch (fib_event->family) {
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6400  		case AF_INET:
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6401  			mlxsw_sp_router_fib4_event_process(mlxsw_sp, op_ctx,
> 2d5bd7a111ca082 Jiri Pirko 2020-11-10  6402  							   fib_event);
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6403  			break;
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6404  		case AF_INET6:
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6405  			mlxsw_sp_router_fib6_event_process(mlxsw_sp, op_ctx,
> 2d5bd7a111ca082 Jiri Pirko 2020-11-10  6406  							   fib_event);
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6407  			break;
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6408  		case RTNL_FAMILY_IP6MR:
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6409  		case RTNL_FAMILY_IPMR:
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6410  			/* Unlock here as inside FIBMR the lock is taken again
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6411  			 * under RTNL. The per-instance operation context
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6412  			 * is not used by FIBMR.
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6413  			 */
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6414  			mutex_unlock(&router->lock);
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6415  			mlxsw_sp_router_fibmr_event_process(mlxsw_sp,
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6416  							    fib_event);
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6417  			mutex_lock(&router->lock);
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6418  			break;
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6419  		default:
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6420  			WARN_ON_ONCE(1);
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6421  		}
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6422  		last_family = fib_event->family;
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6423  		kfree(fib_event);
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6424  		cond_resched();
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6425  	}
> ae9ce81aa726efb Jiri Pirko 2020-11-10  6426  	WARN_ON_ONCE(!list_empty(&router->ll_op_ctx->fib_entry_priv_list));
> 91d20d71b2f0b1e Jiri Pirko 2020-11-10  6427  	mutex_unlock(&router->lock);
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6428  }
> c1b290d594a12b4 Jiri Pirko 2020-11-10  6429  
> 
> :::::: The code at line 6360 was first introduced by commit
> :::::: c1b290d594a12b4ed3b7386947162d5a061900b2 mlxsw: spectrum_router: Introduce FIB event queue instead of separate works
> 
> :::::: TO: Jiri Pirko <jiri@nvidia.com>
> :::::: CC: Jakub Kicinski <kuba@kernel.org>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203134350.GA1613892%40shredder.lan.
