Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEU4Z7WQKGQEBCUED2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7DCE58A2
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Oct 2019 06:39:47 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id l14sf3648392ybm.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 21:39:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572064786; cv=pass;
        d=google.com; s=arc-20160816;
        b=OuaQjheCqLZnJ+dj2HeqE5iwO3L7alo51VrqTX1JsFTUVHXv5MNkvoAEtUyyIyqJEZ
         CvWwhmR6tZU8fORhXQk2tgl42UuTUb7XTTfpuX/hxN/mUiGt5nW14kLn8VEzFBl6sDmz
         8JxAQXt/VhkeMz898h4NDiS7STdh3s6VjkhWSd3WJRlvV+/KM/fg3wIR90PLy7ASiZOJ
         AtXmCjIGWXHEFFURLoWfrwGHveYPESBFEa1gR5enb9eHx8c2NW+BirmtbUlsepJkpGlQ
         LhjJP7CXil9w1qEWSs/wM39urEdedNOQH6d0EWW+PaHsZAGvKFEjW2xZh7aoqnOXu0CB
         yA4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=qqHqEEu0GZW4+qsJMw+PanseBJpPjntz1z7eBuW7v84=;
        b=z+8nGCX0J9/fs0uS716OokS5OPWf1pHNLjrd7toVxr/7C9BZkEZ8EKPlvbF27jZ+kS
         r7J47sAGPdl3R1yGBLpVXDwjnslxFaoTAOZmyuvb92dI0ZAsn+J35YZmAvV4+UCW2xwV
         mr46FbLXDWKWQW6skS5FjimfAwPBELzHK4hX4mKLq2HqqzCR/ZH+K1GyhXoctr3hVZVK
         jaBT1k+MWOScnIzPXocIZC2gojYAqMt9BrLCx8W5LZbwYKzqa3xTVLPuXZslB37sSK1t
         ZTk7x1r1ksSsyPcfBE0aFpal+SisUe3KE1FIC6OrUMe95Y2fY/1Aqaz5nQFvFrXYKhi/
         aGDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NqK6WaZD;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qqHqEEu0GZW4+qsJMw+PanseBJpPjntz1z7eBuW7v84=;
        b=Sab7a6tKJyl7SyBqyR+Fco1IJ3VPhJ2KCL53D+j19m5U4oWjqCnOEeKm8HWxKM1+3S
         QbWvVcRIU9O3UuKmg1BKGvx4dvpNw34NECYTZTbquo968W8+hjJwMDPoFeiJzeDlCkDt
         hiRbDVhIikevKMOmJH88R0HvJff6n+IHr00CLEboOSGgCxS7A9UvrDuzASQJ8Dx/MhKf
         oFvOL0N265Q4a3s6oFwuzhbgMQabBQpsWykVhcHlCSku93Q7jmJg78MCxPoTN04Zt0s0
         As9D2PD1K/4ssQKHbF5lw6cC4TBCHNTSOKBveD+XFt1K8fQ1AumcgYj/x1mWCBD6bwC+
         Bw8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qqHqEEu0GZW4+qsJMw+PanseBJpPjntz1z7eBuW7v84=;
        b=tf0djmoSqUuaPmlrspWzQB5GNzSEYKATZJsB2uy/2yL/fldZS+7yeNfsP6/QsINJ+b
         2MHi5uQHI087HNVJ4/esf1wkr6MluLwRycALl0SYYzgdKAjLOfiD1Dm99yT5JRxbleQ4
         TCOSGfKfpKX2FhrrAkW/bx6kkLrDIkDh2OKrYSV9GRP70qmqOj96LvYnxxlyKb1oztgS
         1QarApeHvXJyUK4fn97KC4DHJbJNFe2LfhHTNd7g0wZDS8Sf0Pi6PE0tliDpWQEnAUnU
         24Kzu6oEouM4HWvf06wSjlrG3qxuTzJwAVjLxvlNH6MGQOUAA04FG7N3tf5oTgvolAuG
         XTkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qqHqEEu0GZW4+qsJMw+PanseBJpPjntz1z7eBuW7v84=;
        b=sOP347gMhP544Gny4nQrKbzGPX9Z+XvPmUI5gw6V5lIcHlZ/6GHTPEf5iCAYYqvmyD
         mmOmyNLI2/Z2XkJhjPnm9HzxGJf2XIuzVoWiQwLm6gBY/nXSMbowPtcYtSiwSSrANBRV
         0dRl/d7J1gTX/MNGGL47S4nZZXSYnmeJWLflLt1BKrKdJenQjQnQgNMOW3+nmYH93iAT
         7pe5G2Axem/rJcKJPnHUYnClU0S1Bm0+algw6PHSWdrWxmpA2yL/5T8PF6ns1vOEO/Zs
         qPjl5MzCQgmDyiJtIaNgLy6qAATJFzl7nslxsFTrV43n+yQYjlWQlp4CSn8uCJlC82pg
         VpVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXg1yGyb7eOKMrKqz4Jtk1186UPHKbPpsnPF9JqqgesZqwnA0IG
	rSYogzr6lFBuYg4b820Qmm8=
X-Google-Smtp-Source: APXvYqx319mD+DMABLI1RE8SJnSUG1v+j7kTRRsYuroc+0SklSUu2sgHSHp3waRzriZtxB7754mTKg==
X-Received: by 2002:a25:c7ca:: with SMTP id w193mr6076443ybe.474.1572064786281;
        Fri, 25 Oct 2019 21:39:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dc10:: with SMTP id y16ls1418119ybe.16.gmail; Fri, 25
 Oct 2019 21:39:45 -0700 (PDT)
X-Received: by 2002:a25:bc84:: with SMTP id e4mr6361859ybk.41.1572064785704;
        Fri, 25 Oct 2019 21:39:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572064785; cv=none;
        d=google.com; s=arc-20160816;
        b=Qeizb8PN2N80BPHz/ePVtEXqO93hSI44pevwjeCdE23C9HbKbwKpe7hgIzc1mY89SD
         jP66I0dhgWpDEGDj4j3ReszRr6YGsQ3quvlCtFssgkYafzXA6RyIK2h1oZeNAo326Wv/
         CSf5SaRj27Et42zwttnkqE4uEp+oFBlMAYHPLWR+X0548m/gCQ/xUVwtoDEqXYwbQXMy
         RzBbmsF9AE96zGnwAV71eCiQT0AvrDMAGURR/Pr/+y7SO/jznihPewripoIRHzB12dkG
         yF7b8ansfPtlDOcsk6T7HxDhX8sOyf/i9M2RU0dl4ffwD/ZDzSPveHvfLyZHGt4/p/8k
         1qkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dqJwOlQg1Dv8rBuQ5e6Qan3dPwnTfiPIIMyD33yylHE=;
        b=WQibJyP4bZ+8MJ5HNQM94ktVuW0kOPkfHcWe6NOT6Q55R0Y4Eu2Pu23XIcnrRZPcHY
         pneMMVINYOYZoebnXROdgeApgzU998chyJT6LPA6OVfkf+O4eGy7z4/HDBPDLkGTLaho
         BjM3Kgt/8f77T3ZcGV4/qdVPXriHQSv2JjjOEomNAkhmbkyEXoYymO+FllBV5VPjNsZt
         tnBLscUWUuujgNrWlySBF7oERRXGbAJ4llPHIGz/2w+RRVDj8JzlVR7s4qaNDdHV7UO+
         cneoMpeDyxMfqYvFgtGXDBPuE9QMsRmnz3xGdlh4YYCLyWr1K0g4aXqwhngVRRZuL8It
         /zYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NqK6WaZD;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id v135si338249ywa.0.2019.10.25.21.39.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 21:39:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id d8so3468804otc.7
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 21:39:45 -0700 (PDT)
X-Received: by 2002:a9d:5603:: with SMTP id e3mr5276303oti.90.1572064785032;
        Fri, 25 Oct 2019 21:39:45 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id i5sm1401624otk.10.2019.10.25.21.39.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 25 Oct 2019 21:39:44 -0700 (PDT)
Date: Fri, 25 Oct 2019 21:39:42 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: James Morse <james.morse@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [arm64:for-next/neoverse-n1-stale-instr 3/3]
 arch/arm64/kernel/sys_compat.c:40:21: warning: value size does not match
 register size specified by the constraint and modifier
Message-ID: <20191026043942.GA9588@ubuntu-m2-xlarge-x86>
References: <201910260339.l5vEPjIc%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201910260339.l5vEPjIc%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NqK6WaZD;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi James and Catalin,

The 0day clang builds caught this warning with the following commit.
Mind taking a look?

On Sat, Oct 26, 2019 at 03:40:42AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> CC: linux-arm-kernel@lists.infradead.org
> TO: James Morse <james.morse@arm.com>
> CC: Catalin Marinas <catalin.marinas@arm.com>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/neoverse-n1-stale-instr
> head:   222fc0c8503d98cec3cb2bac2780cdd21a6e31c0
> commit: 222fc0c8503d98cec3cb2bac2780cdd21a6e31c0 [3/3] arm64: compat: Workaround Neoverse-N1 #1542419 for compat user-space
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 55c223a7ed522293cf9995d07d348368c345d1f2)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 222fc0c8503d98cec3cb2bac2780cdd21a6e31c0
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> arch/arm64/kernel/sys_compat.c:40:21: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
>                            __tlbi(aside1is, 0);
>                                             ^
>    arch/arm64/kernel/sys_compat.c:40:4: note: use constraint modifier "w"
>                            __tlbi(aside1is, 0);
>                            ^
>    arch/arm64/include/asm/tlbflush.h:46:26: note: expanded from macro '__tlbi'
>    #define __tlbi(op, ...)         __TLBI_N(op, ##__VA_ARGS__, 1, 0)
>                                    ^
>    arch/arm64/include/asm/tlbflush.h:44:35: note: expanded from macro '__TLBI_N'
>    #define __TLBI_N(op, arg, n, ...) __TLBI_##n(op, arg)
>                                      ^
>    <scratch space>:142:1: note: expanded from here
>    __TLBI_1
>    ^
>    arch/arm64/include/asm/tlbflush.h:37:47: note: expanded from macro '__TLBI_1'
>    #define __TLBI_1(op, arg) asm ("tlbi " #op ", %0\n"                            \
>                                                  ^
> >> arch/arm64/kernel/sys_compat.c:40:21: warning: value size does not match register size specified by the constraint and modifier [-Wasm-operand-widths]
>                            __tlbi(aside1is, 0);
>                                             ^
>    arch/arm64/kernel/sys_compat.c:40:4: note: use constraint modifier "w"
>                            __tlbi(aside1is, 0);
>                            ^
>    arch/arm64/include/asm/tlbflush.h:46:26: note: expanded from macro '__tlbi'
>    #define __tlbi(op, ...)         __TLBI_N(op, ##__VA_ARGS__, 1, 0)
>                                    ^
>    arch/arm64/include/asm/tlbflush.h:44:35: note: expanded from macro '__TLBI_N'
>    #define __TLBI_N(op, arg, n, ...) __TLBI_##n(op, arg)
>                                      ^
>    <scratch space>:142:1: note: expanded from here
>    __TLBI_1
>    ^
>    arch/arm64/include/asm/tlbflush.h:39:37: note: expanded from macro '__TLBI_1'
>                                   "dsb ish\n               tlbi " #op ", %0",     \
>                                                                          ^
>    2 warnings generated.
> 
> vim +40 arch/arm64/kernel/sys_compat.c
> 
>     23	
>     24	static long
>     25	__do_compat_cache_op(unsigned long start, unsigned long end)
>     26	{
>     27		long ret;
>     28	
>     29		do {
>     30			unsigned long chunk = min(PAGE_SIZE, end - start);
>     31	
>     32			if (fatal_signal_pending(current))
>     33				return 0;
>     34	
>     35			if (cpus_have_const_cap(ARM64_WORKAROUND_1542419)) {
>     36				/*
>     37				 * The workaround requires an inner-shareable tlbi.
>     38				 * We pick the reserved-ASID to minimise the impact.
>     39				 */
>   > 40				__tlbi(aside1is, 0);

Changing this to 0UL appears to fix the issue. Not sure if that is a
fix you would prefer but that seems easy enough.

>     41				dsb(ish);
>     42			}
>     43	
>     44			ret = __flush_cache_user_range(start, start + chunk);
>     45			if (ret)
>     46				return ret;
>     47	
>     48			cond_resched();
>     49			start += chunk;
>     50		} while (start < end);
>     51	
>     52		return 0;
>     53	}
>     54	
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191026043942.GA9588%40ubuntu-m2-xlarge-x86.
