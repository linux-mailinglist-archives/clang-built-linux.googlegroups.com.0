Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHUP2T5QKGQEAUISCOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDF327F52D
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 00:33:03 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id z4sf1790699pgv.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 15:33:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601505182; cv=pass;
        d=google.com; s=arc-20160816;
        b=plnovEXjifaaNAbOZhuCvWnSYpFOWEqbq4YW1u+CexaKOc0Y9ey7lc69YU3SQSuxpO
         PwwEGYL/1vwehVTmaFwfb03awmsrkDBDP1B29m3sNq/kF1JgDih1hfvlIxkyaRt2z380
         8wHn3XmXH/TVsOKXkfyIoUHGz6Zp661m5MrVxfYCv+tRV07s/mu34tP/b0BtD5c5TwNa
         xnphm4ao7EDGSSRL6g/eAod+mSlKQNSRZcVEHDCcW+rfmiYJePvjVIKihfT1+C8Lllna
         96fOxP6I4kBZbXZoy0mmCRsWVBC/I4t1FG444IYpRxqVlEUQ4A54FeBQae8NFfr1tE9x
         zZwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=y+v58a1CYEK3oXpX3NDPs4/DCNIQ5zHv4xqrw5F+i+k=;
        b=YtvUK9hMf587l4lSlvkzqxAfziSLb6YC9saiAwuBRdTbvpevHnQqtFtF7qRNMRlDbU
         M8fNU2R69lFGZqTjWkxs5icnkqaiNO3Ykv8BohQnlteqxwqzXFncl4e9YJ21uUSvv+Py
         8TAkPgjkhmidEUUqV7XVkvu42lqV78hGM25UWMG0405A+0oFC/t+LbwurbGTX7DDjpEH
         eKU2aKRB4DaR8Yfhr9RT8hn5TAF0N1kLxZsNgTzgjrYyJjNM8Hfel1GiT9sdL0jKjQ9N
         xJiJjluTPMx6IWRi9FaKdcdTiAvHCPMeu88RD6JJUzUj39+nT6W8SN5Bv3lVJzyb03PL
         BLjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dE0SNTEQ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y+v58a1CYEK3oXpX3NDPs4/DCNIQ5zHv4xqrw5F+i+k=;
        b=DI1lm/sbzxGuMC3VvtWgEWmzXHegOLPogxwPyZtIJSqN72KtJDfHaIckuUmJpfm9zu
         OHQUEv5BpqgSZxW4zXPjhEYm2IfCHQ/Yd5z96/QUpsfvBjfADEvOax9ia3WEZRoimCHw
         JM3Xd180v1kzAX1OuJOjDTKUIGCTDUJj9cy2Tng1KZCP/UK1h6SSy39Wup55Or1XRTUx
         /fTgdmHMVs5b+s9DkAd5q6MYMHJFJJIJ1rB+WAfW3ESiAbUomLigslbrIwzlO0yGBlCq
         51qFXWKiVjy9tg7ljZ8mKftH325s1CnrHMjbqsi8SaWhKwHP2Vxzopgql/6BKLqqN4tN
         Ok5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y+v58a1CYEK3oXpX3NDPs4/DCNIQ5zHv4xqrw5F+i+k=;
        b=oEW2I8iz4of3GZhTzHj0glvnZXAWAbNVUZ7Rgvd5IDjIXZTUor/b8bk7YXxd/MSw4G
         7sjgj9qbJicpMRUHoJI1jlOsN9+BDI2S0++7TPdTtgkh7HWM8g9+P4aLlrMgo0V/PMBG
         viYBtOKl8COysyVu7GhxzPZHA8KuvrrxW8PcZutayTlsOPw8Pb+BV2KDU7fYVlfZnVVr
         9k6h9zCgq4xLzs909wtrSwR6VECOhnh4UtPKmIH/F83aAXwsqKjIMmbdMtGQT57JQZkj
         kv3wl8dQo8tqWqg0eTYBmFDmjNVj+9RjIQikV08Pe7nM5LLQruGIbA2Mygmy4SQHIiK1
         SsDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=y+v58a1CYEK3oXpX3NDPs4/DCNIQ5zHv4xqrw5F+i+k=;
        b=WD4M630nnbi/PwbBdakLYnA0OsWIpdbWx7PRihEz39hjeCQDJruINNY5bm1IJyqvvj
         GkfAC/HRvf6X4v8NecNbNC342I9pNmb2BE69brilPhqdkt2Rs5HgkUOM08k+BE/xKbQZ
         oZmctJ0iSKQCDk9uHl+HfTveaVPOe3m1wAQxZzui4vP/MSnXS3LmEJBBQIgCdFdXa3w5
         rq2QuJJbwfRXGDB4QCXQgXsjrOMvJz6MWWfcKo2Lm+mjmVfI2/tiXwOyIhUiCwiNbmse
         etVek17QQhab1Il4fExevo+oFJ1izAUCWYK+g+ncQLBpE6LQJ4bIQxV4Mo/FWik6u3eX
         HU9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303qjxr90rl8dm+UmOk+5Myr5EdTvFvX9OGPZpNyWCjlNB1IVLv
	nhqhekIH60Z9fg34vk54nHA=
X-Google-Smtp-Source: ABdhPJwHBpon/pU5nYQkkKOmdg/bxWdoEobVArDtcEK0SID6z0eELEx3ntJz+e7MziEAISXGa55nYA==
X-Received: by 2002:a17:902:8509:b029:d3:89e2:7931 with SMTP id bj9-20020a1709028509b02900d389e27931mr438013plb.51.1601505182380;
        Wed, 30 Sep 2020 15:33:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96cd:: with SMTP id h13ls1350813pfq.0.gmail; Wed, 30 Sep
 2020 15:33:01 -0700 (PDT)
X-Received: by 2002:a62:7511:0:b029:142:2501:35da with SMTP id q17-20020a6275110000b0290142250135damr4497074pfc.58.1601505181865;
        Wed, 30 Sep 2020 15:33:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601505181; cv=none;
        d=google.com; s=arc-20160816;
        b=bZPJJbsY2oS8pUzXKIJywtkllEPaFpJwwGJger4tZKs6pfM66X0nrKv9BPXKhTOA3/
         9O+N0uuJP0Y/R0/ULmzAEELPc69ODp8Wmy9BloKH6T3LphxGk8oLSo8MKdD0CyUKzvLB
         OEceLnnEN4ipndhD+XqWoPOF2UWvD9nxvXJCJ1zT/MuPK5+AqLmwh8W2TaqxmNI7FJpO
         Am4i7bIqIon3wv8LTkOzBo284SlIhnUf4EsJ2rggxOaP6vbKDhcgZnPrUp0ERl35BUW3
         Lvk71+VEKEnP6nDz4Bt0ep/tGiDg6bCIOlH85ABxD7O4kntsivtfGugEpsrV2H9sx+bN
         BvqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cvF1QpUpPRGOd7V7teirXKEGZaq2d1f4eUH6fey90OI=;
        b=folwkui4R6h3phR5IcWKiO6PpFVoo1AHTK/aA/eustHI4qOpNJofYuigLcKdhAqeri
         Zxl/gUHTUzO0DF3N8b1fNEXqYPnGilD0GwbVQ7NmDH0bIqVcGPNQ5w488SpJaOMgXUz7
         fzypvAlptIOFzBY6vkHGKKOSyPpntNT2/hmfufeqlUbfBJmZ5pXbIrS3LIFFURmcouKu
         GubtMu3jeOaCuDB7CZQT2JuHl8wWWMum1H5If/3vItEfLSaTIFCup8GBsmdToh64lxjt
         L5oZQoXfF+7AN3yutTlWfHZeCfD5Wn0KniRKYq1mNtctn/8BQrqrohyD2eVHMnszC/Pv
         8CIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dE0SNTEQ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id mm16si251686pjb.2.2020.09.30.15.33.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 15:33:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id d9so2408833pfd.3
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 15:33:01 -0700 (PDT)
X-Received: by 2002:a17:902:59c8:b029:d2:ac2e:d79f with SMTP id d8-20020a17090259c8b02900d2ac2ed79fmr4296262plj.3.1601505181434;
        Wed, 30 Sep 2020 15:33:01 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id y197sm3702155pfc.220.2020.09.30.15.33.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 15:33:00 -0700 (PDT)
Date: Wed, 30 Sep 2020 15:32:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: Arnd Bergmann <arnd@arndb.de>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [linux-next:master 10422/12330]
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:970:13:
 warning: variable 'userdata' is used uninitialized whenever 'if' condition
 is false
Message-ID: <20200930223259.GA3060945@ubuntu-m3-large-x86>
References: <202010010624.1kQbwfjp-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202010010624.1kQbwfjp-lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dE0SNTEQ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Oct 01, 2020 at 06:30:28AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   de69ee6df1cfbf3c67787d8504fd21b59da39572
> commit: 4184da4f316a549ae732d91088571fef46a2f58d [10422/12330] staging: vchiq: fix __user annotations
> config: arm64-randconfig-r035-20200930 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bcd05599d0e53977a963799d6ee4f6e0bc21331b)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=4184da4f316a549ae732d91088571fef46a2f58d
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 4184da4f316a549ae732d91088571fef46a2f58d
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:970:13: warning: variable 'userdata' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            } else if (args->mode == VCHIQ_BULK_MODE_WAITING) {
>                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1001:10: note: uninitialized use occurs here
>                                         userdata, args->mode, dir);
>                                         ^~~~~~~~
>    drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:970:9: note: remove the 'if' if its condition is always true
>            } else if (args->mode == VCHIQ_BULK_MODE_WAITING) {
>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:953:16: note: initialize the variable 'userdata' to silence this warning
>            void *userdata;
>                          ^
>                           = NULL
>    1 warning generated.

Dan Carpenter sent a patch for this already:

https://lore.kernel.org/linux-arm-kernel/20200930123036.GC4282@kadam/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200930223259.GA3060945%40ubuntu-m3-large-x86.
