Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGFSWTVAKGQEOLSBVEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B2487281
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 08:56:25 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id x24sf1016920lfq.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 23:56:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565333785; cv=pass;
        d=google.com; s=arc-20160816;
        b=BVq3Q1adMB6bzK4deMsSVyoJ0fao8ZbktPpGj8iPj1Db5085vZgl/HKNZDBg32rioX
         OrF/p7RCEciHJJuvxHVfQUdAavUrMu53dapnRA8tUCnzN4ZUNs+L9p/LdUrgyZy4bKSs
         iFzI3MM9kzEecDuc9xmZRFXW90WPRwDCNNwN7ztI+BmGMZk+hCf96FjN1p/TshXbvb25
         WaxQbRV1cTcFkH60DO9TWCwEgeI0nIxpC/mLPAaTIs3e8D7/1lfCqVHDMAQpiutbQm+C
         zKB3qjAQLQ5wI01B7A6ToRY1gbsWqHqh1Kb2ns1XBoOFjDpFh7UNNAbUHK/wSw04dW0/
         uJFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=AqL1eWaJqy9Rww3geM8QKQvDyTWjWYrcBUYNTVvVjrg=;
        b=i8f8cz5R2uQz6j5U4FzCMglb7KFZAaP+iSriHhlY3jQ4Cdlo8dXWhUwZ5ACS3JgR2z
         gnCMIME/s/xzYUShUvKI6uaOFvZu9mfYYdkA+LmGDLeZQRGQu0kIYy53E597VksgJW+1
         dbJCNf/xPLx2IC3kKevhlqGbWsEvjDx2PF2B8ZIpMoz+IDvf1FPxDU4x9G2sYKT/cTXP
         ac1F+4Pz6iNK0QRioj5LYklxtpUZJTq8ftXpQ316rAc7R7N7MtE+Exo+Js9sPiBr/2sp
         xD81CDmm6tZBERB6qbZsLMzG8lc4kxApGAIozjNSngeZBQB/o8S9k0KF+dS0NY5j1By0
         RJZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=snjYQ7Lt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AqL1eWaJqy9Rww3geM8QKQvDyTWjWYrcBUYNTVvVjrg=;
        b=RWz0JTSmBFjKqovf+VGIdFf2sP7bK8nqOow52b2zlcgs5OYVBJ80gm/k5wJ2nhNKBq
         V7pC0edU5iPBC3jfB1+UyokLI/Szx4npkNRuqMyW6fG472ts/BIoNYX75tCrIRrUCe5a
         mCl26NTPiyQZ91YQCrL0r8KZsihBke5y3VhY5BNkZcLb2trAPj19dNiXy5lnaoXWNAU4
         g1yPFXEM6C8Zmw1kFGMMMQjM1rMg6bomv8zdsTz0DBA0CuuFG4O28uKNTRgnhcDue2eP
         IUZlavSeOCbXQVbIODZQtc9yxvrAxh2eab0iWgGYoLmR6kcXSb4pkJwg5gtX6nYmOUVT
         9NTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AqL1eWaJqy9Rww3geM8QKQvDyTWjWYrcBUYNTVvVjrg=;
        b=vXQc/nN0UPd43qsfNleByWukjn4z0+mkdqThX5I4elRcVsZSWNH2UOiIg8n7OcG0mS
         y4TzLOxhVhiiYRLxzpt5jXHfMSaQdkTkPTgYeEO1IYcxbhvoegH2RogvHuTBQZLH6hwv
         nFgRE/kQwlYDyqBImT8eTIpvjjpQATKn+Yrxoc5jYlpQ7DqMbHOEv15Qx6i5c/DAubge
         5++qEc3CiPp9NyM3a9wmoYQ63iYQMTSDxt4Tik9fgq8yVv4x00Hl6j3f0QVglWjrhN0u
         8kgfG7YYtvccpFGPu6aKScEEHWLSjQJSEU6sEw1L9kvgX8HrkYF+/ApOEJKD5gtHEcAq
         JBHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AqL1eWaJqy9Rww3geM8QKQvDyTWjWYrcBUYNTVvVjrg=;
        b=rWLCX43BF6IRNiMzuWQ754E9JtvLp77FuBEFTQse6OI9IW+P/dK0sF/vKhjbKUkX3W
         GdzttZhZ79zLSBnPjS1O+hCOXJKLbHvzwDbNezwltgh5Ebh5Q5hQ9hNfVnu3iLgLNl8k
         KAF+14ev0gmNWZLfb8SR1Li60AOvdk878P3NGOu/zQnTY//u02sePHHbxoSCjXimPP6r
         q7gzriB85spi57LOLaKaAa1sG9MWb2ZUQYRodwd1VTQjvXyugGjKR0UlgOO2qRA9VSaj
         PM3SxyuBHqzI5ehn9JZY9Jfkv0rPKSAR9WLCjhEcwLDymLt1uT0Nr1ZOAnClzAHp9y5q
         u2dw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWpGvSvLLZlqcYbtovPDB3r6taX83Fz1gaEmeBfNCtmdE1SPq1m
	GTxrirUrEDzrOzdywHOlMWc=
X-Google-Smtp-Source: APXvYqycKq1T5tytIFwbDGArlc8HtIaK1SEMxQwXDyF4B9Ug6e28QpsI50HXS23iUmWkoSRDZtnibg==
X-Received: by 2002:a19:ed0f:: with SMTP id y15mr12071825lfy.148.1565333785009;
        Thu, 08 Aug 2019 23:56:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8917:: with SMTP id d23ls10930504lji.14.gmail; Thu, 08
 Aug 2019 23:56:23 -0700 (PDT)
X-Received: by 2002:a2e:3013:: with SMTP id w19mr10532429ljw.73.1565333783935;
        Thu, 08 Aug 2019 23:56:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565333783; cv=none;
        d=google.com; s=arc-20160816;
        b=cWBofBBfLhUyWTlPVeiZ6e5L/ik26ycLNKBvrB0kwC97Do74PeiHa8biE6o+0YuERU
         cEaZccMkROj/9kRWW+ENjFYS605/XDJt+7/qqgYUNrwzqkHqN+zC2jfVfcG16bnqNvGe
         hkE0XrgVSbdRAkM8qVvhILBs3ZNky0wxLnVWIxwwckcxnwm0Sy0ZqrtbU7GVAjerGf1/
         q4ZWLkeRf6DjzEnwED7ZNN7ZxUeZMW0I3sA2OvfK2vikAMKNgpVZXLk/G0J/H8+/8z4Y
         INa3bThCxrlb+Rn8/4zbRoSoS7gFY4SCjhBFsFqRvW4Od6ZKoT/+Nw+lY6ams6vtLg8n
         cAWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+7L/O6OvMYzZ65+RJrwB0uk/e+pJMu5Id5ART1uJAF0=;
        b=WslTBlIcy8kux+Nu6BEqew/0IpDRdPb4gdOuTV+FoQmvxpUt4TmP/OrNgD+q5ikd76
         T/PusRo2dzgdr4x9Fiw0G0UDXFYFk7xLm728m/FepimGeAf8ZuVZZeRGURloT4f3Qztk
         vks435y8RSSn+rgjOt63e5hBEul6bVqMLWCLuSrFYGpUHALDxVYRO40nlmanGgjGzO8P
         POFG1k9J/gV4iqjnlZjFudKYVZqzaJpec3WAH2dlXpn7Iji8fcQVsrmaMYGv6OZs7DLG
         q93xQNXEVDjFQCx2To002msueKGy6rek9yeZjldCZhGPVqXR6TF4OCNdgtT5KtPfbd2+
         AOvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=snjYQ7Lt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id q25si843762lfm.4.2019.08.08.23.56.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Aug 2019 23:56:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id f72so4562244wmf.5
        for <clang-built-linux@googlegroups.com>; Thu, 08 Aug 2019 23:56:23 -0700 (PDT)
X-Received: by 2002:a1c:7e14:: with SMTP id z20mr8556324wmc.83.1565333783058;
        Thu, 08 Aug 2019 23:56:23 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id z7sm4408904wmg.22.2019.08.08.23.56.22
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 23:56:22 -0700 (PDT)
Date: Thu, 8 Aug 2019 23:56:21 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [mmotm:master 33/169] mm/memcontrol.c:1159:17: warning: using
 the result of an assignment as a condition without parentheses
Message-ID: <20190809065621.GA45762@archlinux-threadripper>
References: <201908091419.MCsY9pGu%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908091419.MCsY9pGu%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=snjYQ7Lt;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Aug 09, 2019 at 02:47:24PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Miles Chen <miles.chen@mediatek.com>
> CC: Johannes Weiner <hannes@cmpxchg.org>
> CC: Andrew Morton <akpm@linux-foundation.org>
> CC: Linux Memory Management List <linux-mm@kvack.org>
> 
> tree:   git://git.cmpxchg.org/linux-mmotm.git master
> head:   de0088f1c80aee9ac88842fec57df39b1e8f47e6
> commit: 8c4fc21d7c7ce7fb9c8b19db00b56311f964d794 [33/169] mm/memcontrol.c: fix use after free in mem_cgroup_iter()
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 8c4fc21d7c7ce7fb9c8b19db00b56311f964d794
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> mm/memcontrol.c:1159:17: warning: using the result of an assignment as a condition without parentheses [-Wparentheses]
>            } while (memcg = parent_mem_cgroup(memcg));
>                     ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~
>    mm/memcontrol.c:1159:17: note: place parentheses around the assignment to silence this warning
>            } while (memcg = parent_mem_cgroup(memcg));
>                           ^
>                     (                               )
>    mm/memcontrol.c:1159:17: note: use '==' to turn this assignment into an equality comparison
>            } while (memcg = parent_mem_cgroup(memcg));
>                           ^
>                           ==
>    1 warning generated.
> 
> vim +1159 mm/memcontrol.c
> 
>   1150	
>   1151	static void invalidate_reclaim_iterators(struct mem_cgroup *dead_memcg)
>   1152	{
>   1153		struct mem_cgroup *memcg = dead_memcg;
>   1154		struct mem_cgroup *last;
>   1155	
>   1156		do {
>   1157			__invalidate_reclaim_iterators(memcg, dead_memcg);
>   1158			last = memcg;
> > 1159		} while (memcg = parent_mem_cgroup(memcg));
>   1160	
>   1161		/*
>   1162		 * When cgruop1 non-hierarchy mode is used,
>   1163		 * parent_mem_cgroup() does not walk all the way up to the
>   1164		 * cgroup root (root_mem_cgroup). So we have to handle
>   1165		 * dead_memcg from cgroup root separately.
>   1166		 */
>   1167		if (last != root_mem_cgroup)
>   1168			__invalidate_reclaim_iterators(root_mem_cgroup,
>   1169							dead_memcg);
>   1170	}
>   1171	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

This is fixed in -next, guess this mmotm mirror is out of date:

https://git.kernel.org/next/linux-next/c/09e9529550df815068532cd96b31ef64794b6c43

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190809065621.GA45762%40archlinux-threadripper.
