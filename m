Return-Path: <clang-built-linux+bncBCT4XGV33UIBBXOQXKCQMGQE65LWGGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5AD392134
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 21:58:23 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id e10-20020a4ab14a0000b029020e1573bdb7sf1356765ooo.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 12:58:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622059101; cv=pass;
        d=google.com; s=arc-20160816;
        b=sjnTfjuxMUNA+6qof6OflpCLo/LqDMmWKg+4tKEF7SPZHFK/FLE+qs/TLcrHbF/p+A
         nGx+M7z7hwvxKRg+cPIo8G9ssymyN4cM0u7FfL/surSMusq0lOmL/Z7GK9Aj9a+eINmq
         wCNA1/XfA3szUpJJpv1efs9nE6Zrj92u31TucSIZw/3B3+CyPExqVNYWOMewxiY27vip
         qhka1vv6LjtUW/La/fCVxv/1XSELM37BcQPIWgD9GBmVrwjvc8r4ZRsk6RmsD6OiepBq
         J7+hkvlojI4rox7bCR95KDkwWVXYageb9eTRnnedvxrRaCFlZ1//7kpciS37RqP0KfSN
         3FZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=dN5h5eNRBfESYLwDOcJw9HrNZoUt9/LFuPC4j4nUaK4=;
        b=j8OoFwlAKEF7YFd0okgXB7g46wDhj6aFXEFyfQCkCNY3h8XIqAzPYM5Y/yjhfqw34s
         Cd66AqIeFYwF4vzAuxQSNuv2sTfi6NE9YepgsDMi124u9dY8OIf1x5NtE0TMEnE+ierU
         RGajnaRS2/FJD9/kEMqjDasWK5ZSSYc/hUH1BWgcDm0nC839U4Z0OpCjdb0F1AGx8Jhn
         j62LQq/Unp8N/5gZ3mprd5zWDz6A1WR52Asf+5/mUCEA8WtFMLQ7LrD7H8PMa5Y2w43D
         2iqujlHrI5B1OhaKlokl6JhB6do7eWT+lO3f2Smsl83OIzcinG/UNJHAi8hrZAvdf+fb
         l1Cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=zyGhaUnG;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dN5h5eNRBfESYLwDOcJw9HrNZoUt9/LFuPC4j4nUaK4=;
        b=arzfHSoFgYZ0/Hv2DYuPSZ1ec5hSMPqWXMnPTPTtxMWFfJwQSvB2419c8NOwb2C8Dj
         A/JqBoCeKELFi4Q1yMs8xrCXxdc/cMIIpBr+LmqPv7tB/wiIj5a5mRgSpYVxnl5IbWCs
         w2FiLBMCzK/TLqeQtb8ADEhC7uOEAhL7P1wtKWiLvnNNR91T+u+2VUOQHABimW4GiGin
         NecR8sPKXexdVFAd/xcwohFvzhtgzy3NxckhuZAdNzalHiSXU17XmXFeSXLtiVr4g1x2
         nRAR0piQxbVPa39dxDyDmR/eIZ/azCXtl5nwlXNLFp6hxvdbLazfWxzT45gt0zCnWlyH
         avbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dN5h5eNRBfESYLwDOcJw9HrNZoUt9/LFuPC4j4nUaK4=;
        b=tHce2YwRpVdEX44OxONml2K0yZXnWRWvhY4N7JIL1bD19XSz9ESMcVKCtfMtkVfoFc
         4YUJh5FQHpT4v0PTPIec+s9gMwPXAA+1fD5lQsGPV04omorgHq/5pMI8s0Fo6bZ8uJNr
         hnfuRB57D4Ro3Ze6YFf8xMx71v9xNOvL+2/fvTADrsJaNVp+jxZDDVYTMBcIbkwpVML4
         VaS+FkMwsFjCKdoiwrNEe+WeZ2rR15E8MxY3/C5j0Q0HeMeGE2V4Mgn96+yHOhXWPCfL
         3xEjUCiNquysQaPVLqvrc6hyqFBxBhtJX4lZRvZVj+qSpXCHojApLQs8ITYe5taJssqd
         s0gA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Setv6qWymek6HwPW1ata6bKeWDKUF15lCeadvYxIOFkcxlzBi
	ALzmmvN8j2pGQFGHOgYx4TQ=
X-Google-Smtp-Source: ABdhPJxcGIoIOEi3IsdfJcYNaIKErQXGCwIp7ju45+J1WUraOk+X3XG8T4pUGSCA7idY9AdgRXAxvA==
X-Received: by 2002:a9d:22a3:: with SMTP id y32mr29313ota.274.1622059101731;
        Wed, 26 May 2021 12:58:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7858:: with SMTP id c24ls249653otm.6.gmail; Wed, 26 May
 2021 12:58:21 -0700 (PDT)
X-Received: by 2002:a9d:68c7:: with SMTP id i7mr29734oto.272.1622059101233;
        Wed, 26 May 2021 12:58:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622059101; cv=none;
        d=google.com; s=arc-20160816;
        b=EwBKLPnEY+XoZKdp5SD9VVH1t1aXr4FoCgj7+m0Qgxt6HTsAgoN7qgDbTwRwOCw9+j
         lyEBwOObeKMZw3kHdvQq9RwsEWVezTKsjtoysL+zU+LP1ZoaaXt9soZOmV2JhjwvOro+
         CQbsejUKVKV4i0tdkfbgpsP+LWkKsM+qPJz/t5JDaFrH7GPl91QSuI3/4Fc6pxaH3euL
         WEDgh2n6326hXCmvzeq5pe8XrnYtBIqoG7prs9YmgnUDKG5t2fJhpMPZUoB5iCD2/wcE
         fbKd2VFFCV67cbDd5h+XEaGUx5PoFCNUL+qnHQv6EuCkLFA+/1fZRgn23zDqaVKkAqyf
         yeOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=d7m09bNedz/uw8z4+4zG6XbJfZ8AI8jUGVH76KNkPQU=;
        b=rHgKm/KQ2agd5a7ZzUOHBcGNOoQvHxudApVeMDdOAjpOP/iDj9pK0aNlN2urcMYuU0
         sdtHEGwey4zgNT9IZOWX/pUlc4R5fTfD9t69oN0FuREGqgqC4qs+EEkK+hu7kem/zQSa
         bZE+lBCrjvh2ofBB/KfcA1ShEhKKb74QeWYcPY321JYNhod0zIiUEBIZFWNtoVixsh9f
         ZWm0Ysmy5UjEFn43gLv5IN6pn9BbWti5jQqaJwSKrPXoPHKA3tqhhZD870Lxqk94UI5Y
         nhp0ao5SwlCbQ3W0ZsezSPQteWDhZ2pgmXZ7JBhBz/pCBa+1O9BU8LWzU2D3exX0TMsG
         +sHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=zyGhaUnG;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 12si4639oin.2.2021.05.26.12.58.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 May 2021 12:58:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EB42A613D7;
	Wed, 26 May 2021 19:58:19 +0000 (UTC)
Date: Wed, 26 May 2021 12:58:19 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: kernel test robot <lkp@intel.com>
Cc: Mel Gorman <mgorman@suse.de>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Linux Memory Management List
 <linux-mm@kvack.org>, Yang Shi <shy828301@gmail.com>
Subject: Re: [linux-next:master 5267/5396]
 drivers/gpu/drm/i915/gem/i915_gem_object.h:39:6: error: shift count >=
 width of type
Message-Id: <20210526125819.b3f0bf497fb7f5cdc2923400@linux-foundation.org>
In-Reply-To: <202105270316.jfrF2O3P-lkp@intel.com>
References: <202105270316.jfrF2O3P-lkp@intel.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=zyGhaUnG;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Thu, 27 May 2021 03:24:25 +0800 kernel test robot <lkp@intel.com> wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   f6b46ef27317b3441138b902689bd89e4f82c6f4
> commit: 55b24f9ce03ee4d6a06b874350c8297ac8135bf5 [5267/5396] mm/early_ioremap: add prototype for early_memremap_pgprot_adjust
> config: x86_64-randconfig-a012-20210526 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 99155e913e9bad5f7f8a247f8bb3a3ff3da74af1)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=55b24f9ce03ee4d6a06b874350c8297ac8135bf5
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 55b24f9ce03ee4d6a06b874350c8297ac8135bf5
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c:7:
>    In file included from include/linux/dma-buf.h:16:
>    In file included from include/linux/dma-buf-map.h:9:
>    In file included from include/linux/io.h:13:
>    In file included from arch/x86/include/asm/io.h:44:
>    In file included from ./arch/x86/include/generated/asm/early_ioremap.h:1:
>    In file included from include/asm-generic/early_ioremap.h:6:
>    arch/x86/include/asm/fixmap.h:103:48: error: use of undeclared identifier 'NR_CPUS'
>            FIX_KMAP_END = FIX_KMAP_BEGIN + (KM_MAX_IDX * NR_CPUS) - 1,
>                                                          ^

urgh, so x86_64 asm/fixmap.h isn't standalone - it needs threads.h for
NR_CPUS.

We have a lot of asm/fixmap.h's, so lazyass here will try this:

--- a/include/asm-generic/early_ioremap.h~mm-early_ioremap-add-prototype-for-early_memremap_pgprot_adjust-fix
+++ a/include/asm-generic/early_ioremap.h
@@ -3,6 +3,7 @@
 #define _ASM_EARLY_IOREMAP_H_
 
 #include <linux/types.h>
+#include <linux/threads.h>	/* x86 fixmap.h needs NR_CPUS */
 #include <asm/fixmap.h>
 
 /*


but really we should make those fixmap.h's standalone.

> >> drivers/gpu/drm/i915/gem/i915_gem_object.h:39:6: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
>            if (overflows_type(size, obj->base.size))
>            ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_utils.h:125:32: note: expanded from macro 'overflows_type'
>            (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T))

Hopefully this is just fallout from the first error.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210526125819.b3f0bf497fb7f5cdc2923400%40linux-foundation.org.
