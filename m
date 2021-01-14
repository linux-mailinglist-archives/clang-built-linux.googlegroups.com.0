Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXEYQKAAMGQEGV2GQEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 294102F6970
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 19:24:29 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id z51sf1981150otb.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 10:24:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610648668; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xv5H2L27+7UKqighaXTWDLcr73qEtqI+/sY1S9FIRafem9l50DEVljTajdqtGtBjIu
         3m+MgVYSqAQgMiyPtVOIPjrBJuT/6JkfUH4Pqst1goWow987T+th6GwxClA9/6AMtbYS
         8DXAKPQ3UQuNYRgR30rT/hoO2GXzkhHQ+ukB0KwyHXACK7vIwMQeOKYbnrnpI45HYkNW
         zrF6gzmVi6GmFpiXtMH5xjUru8oAm/RNkPvP7j3k5Im3dHIO8lyoFd0aJO5l2wFt2RoD
         Gz1IVSeInd/g3rcTjv0K16I1lrlTucmmYrdWwVDM1BXB23fEdN4FoBodpzx9P9YZn8Kg
         rtNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=KBO9GVvaUUSSEbtSzdweAkmk4CDMDAh8ht4h5BXxv/M=;
        b=dUegh6t67I1yygT+jHin44ldb5Zf/PyIOeYiTbZNS09nLBhkZcZyi0zwycvdlJSVqC
         jdzMy+PqI8FJUsc33e4d1SE/DQUuL1yVNzyRbIhBAxDm6p5bZXWcr0tyBZ0QwamNjy95
         U5t66cIH2hInDIfx51g6m1c3+1TPegbIEyOQkpb1P+EoGqFa1cI5u4+aS5+3s0PnwiQR
         +PuAr1hfHn2z3Qf3CcaKES/ORnnoRHoS7pCT1fiRZwBLp2sVUtwCL/RQD9MCwt0IhfTj
         OSP9psNI/vP2+yntBJ/FJsS/hgf8NtjtlYLY0flR+bV2od43K6Uvy/5hoL8C9eVs63dk
         ZXfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gH8mdsL2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f33 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KBO9GVvaUUSSEbtSzdweAkmk4CDMDAh8ht4h5BXxv/M=;
        b=NNu0dY9uQeSIqomUcBUQFwz2P+fjbUEP0x5YunIfGuIO4SDKU7tN5ZYJSv5LG02XJM
         hIfrK2Oh3c7oMOyP+bs3bOr+gXHqVMeAxHsy8F+QF+Vg7mMKXcrzvbw05hCiwWgAvurc
         5fsEKM/MYJpgMZ2w052KFPSJD47woQZEPalvY+2GWNWSuygraHtjnEuiC+1cf8uUo47P
         djr+kJzou0U/hUTtE8gjKnfJ2Y4Q8WI7GyT8X1D9nfqCpeO/Unx8i7RVf9c9ZIiN4Cf6
         WWUX5L8eDndB+0MxtrxMr/PT///0k6SzRlHuBFPoTGuyiBkwFPOq22xR1Y+THZrgtrNF
         TdoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KBO9GVvaUUSSEbtSzdweAkmk4CDMDAh8ht4h5BXxv/M=;
        b=LasRqy29Yy9uc9edirJXJzRo5W7CjgzDj3igHNLiYjorsnWbL1NSG4s0bj/3VhyrtS
         sLwNG4q6yJGxBey/w2YSuv/bZTTjDS2rsPLJx/vMhsqSRRDAyj4MGF3cnFAzVUIjCvY4
         kwcM7ZeWsat1TR5neL9W5g7YeDlkuqqIDuX6BDNaOxQqjsb7HKmPAj4rIk88dLtZk/S4
         JSJu7a3FC8dVGQwVzSHL5BmsGr7ut+2/havbIctGY5HDpY6fWfOOro09R+4Gm/IJKJTA
         PqvVV/Hm/UI9xGSp7m3toHNfdP+X6mZNu/Nczsu6Mehkng5OT/IcoZQIuDbwMDX36L/r
         dHhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KBO9GVvaUUSSEbtSzdweAkmk4CDMDAh8ht4h5BXxv/M=;
        b=ZM9eXRzd+NnfGo1XdpMOHl4Fxv0+2DxpX3eYFUr5rmaK2tglKvTe8fhgdXnL23DC4V
         bGi3TqiaPOrD7xxK2/c1gHlcOd8pIrLaKaPApW5hT4Zc9h0qTsZSAK4qX9swS08Ju6Us
         quezXD/W0SxKGOTLTA+YmJM+V4qhB24L5n/RklM/x9NAaGTr6aYXemEjLqB0RIYC5uwp
         V3KVgeY27a5AIs8ehbEaxnZOHXjRl4p+0Jvww9Wa8zg2ctvjM0obn3cFLd5N95Q/j2OT
         h2Z79hkCIeYgw4fUL8uqLoEmK2dtHbJi5QYwI9a9ybopurhdp0L0aBu6Z0j5LM0Xoj71
         NkmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533p9CQuGon1sofYKlG5dfimXAFMJ+nbOso3BdOtG+DqAs/jyzTo
	w2Pv7oVop/V1zjA4kwRk4Zg=
X-Google-Smtp-Source: ABdhPJwip927Bd3SJEUrs6ORcdzud8yYFl0vrj1ARMQizzvan9LRUjXEjWhJoeBuJlTn/FR7Mvbvhw==
X-Received: by 2002:a05:6808:1a:: with SMTP id u26mr3364802oic.77.1610648668178;
        Thu, 14 Jan 2021 10:24:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:5e41:: with SMTP id h62ls411147oob.4.gmail; Thu, 14 Jan
 2021 10:24:27 -0800 (PST)
X-Received: by 2002:a4a:b082:: with SMTP id k2mr5499966oon.60.1610648667726;
        Thu, 14 Jan 2021 10:24:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610648667; cv=none;
        d=google.com; s=arc-20160816;
        b=v8C7nQOMRId/tCpcHvZ7YSY59yvR6YozDAA2VAv7yJIZ1gtdvmpbv8nQ+BWncXOS5G
         Usw17vEQYQNS8SgCTttPLeRMRV+LvNOZcr9iPenruDEWjHAdEEycF27tfmPd090Yt7Vd
         jU22t/44SKXZmh9VGDY9xnbXSCQAbSZh8BFdfAPRBtKLS9oz3K7kjC2ZjxERnOEHtX+I
         X3fBvDbdBNca+8AUBHlZU+96W0O7UzQ+8CcjChvYfGmeJjNXHt85rACq1Uoinh7XpwIJ
         2CAtnhJguNrNKasUeya4PLgveTeWAKfn+j/CsvXWnNDffh/BrfIvC9SVzjGB5XiHde50
         XLMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=J6vziYHwm+lSX1U7LWnHMslYMHEx2Y52Z3S2HKYzLPI=;
        b=v7Y1iG2gtU4/UjxadcqpS4Dw1oyEo1imjh/qnpc+lOF6LDOkyT4b7iqRYvkRPQPGOR
         naev35c4Tlef4jnJC+jFgylMYBXL1CW1tHZRsaJ3A+kmfS88VEc/T0OFTH4EdG6uF+3O
         uz+UmKNCpkRs38+ueb8ymHjE3kXC52DGaXD/5+S5KRZzOOXDqoAvKBWWHhkGxbQhJ9p9
         U3BUzwSUNU6lHAtCUbM1fH7wkn8NqJGOhRe1jSn3MMh7xO8JwF55Sv90RutjCzuMby1v
         mMe9/J+JUshOcRBoD1xAlkLqLxj9wfAMH3JOCIpz8kBs11AYrwEKxsxtLJNBjRZFk6S2
         hPMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gH8mdsL2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f33 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com. [2607:f8b0:4864:20::f33])
        by gmr-mx.google.com with ESMTPS id c18si389465oib.5.2021.01.14.10.24.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 10:24:27 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f33 as permitted sender) client-ip=2607:f8b0:4864:20::f33;
Received: by mail-qv1-xf33.google.com with SMTP id bd6so2738811qvb.9
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 10:24:27 -0800 (PST)
X-Received: by 2002:a0c:f283:: with SMTP id k3mr8534666qvl.48.1610648667437;
        Thu, 14 Jan 2021 10:24:27 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id h1sm3255183qtr.1.2021.01.14.10.24.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 10:24:26 -0800 (PST)
Date: Thu, 14 Jan 2021 11:24:25 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: Stefan Popa <stefan.popa@analog.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Alexandru Tachici <alexandru.tachici@analog.com>
Subject: Re: drivers/iio/accel/adxl372.c:949:3: warning: converting the
 result of '<<' to a boolean always evaluates to true
Message-ID: <20210114182425.GA967189@ubuntu-m3-large-x86>
References: <202101150231.fTcE6qLr-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101150231.fTcE6qLr-lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gH8mdsL2;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f33 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Jan 15, 2021 at 02:19:41AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   65f0d2414b7079556fbbcc070b3d1c9f9587606d
> commit: b0fc6783d4ae58f796fb183c40dbc7fa3199d51d iio: accel: adxl372: Add support for FIFO peak mode
> date:   4 months ago
> config: mips-randconfig-r026-20210114 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 68ff52ffead2ba25cca442778ab19286000daad7)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b0fc6783d4ae58f796fb183c40dbc7fa3199d51d
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout b0fc6783d4ae58f796fb183c40dbc7fa3199d51d
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from include/linux/interrupt.h:8:
>    In file included from include/linux/cpumask.h:13:
>    In file included from include/linux/atomic.h:7:
>    arch/mips/include/asm/atomic.h:52:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
>    arch/mips/include/asm/atomic.h:45:9: note: expanded from macro 'ATOMIC_OPS'
>            return xchg(&v->counter, n);                                    \
>                   ^
>    arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
>            if (!__SYNC_loongson3_war)                                      \
>                 ^
>    arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
>    # define __SYNC_loongson3_war   (1 << 31)
>                                       ^

Sorry for the noise, I have sent a patch to fix this:

https://lore.kernel.org/lkml/20210114173416.738455-1-natechancellor@gmail.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114182425.GA967189%40ubuntu-m3-large-x86.
