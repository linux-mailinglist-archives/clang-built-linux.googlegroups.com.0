Return-Path: <clang-built-linux+bncBAABBL5XTT3QKGQE623YYBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FFE1F8ED5
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 08:56:48 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id p9sf6667873wrx.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 14 Jun 2020 23:56:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592204208; cv=pass;
        d=google.com; s=arc-20160816;
        b=FKjLKAJE6yjtk2kzzwJ6jPObL3+H98dqKFjTpV99SK3AxXt5Mii5CHeM8eWn0AutfS
         bagCNK3rDoGg2pBxLBvUwsb99z1s23QmYIvHuL+N/YlHcF5VIwLR0PfkywpD31ljoVJ3
         zTF30S3spoTvNkuO8to+FteJBWs7nXI+UbybADRu536PNG0m9LC8fQ8zCikVB0MyVmDv
         KvMIzafSwzANpWKlDAn3DxQXm4X5r5LKUcvqn0YhcSWfhxGef/7QP6BWOSbjBv88felc
         U9yLGmdDZ7JazLIxOwHemnntWcFZs/69EJyZUKKzPOWArQz6bYsJtKx/KwwWezp0I5pP
         EyiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=CCXo592Ho6HMOJMJkoHhufNc/xM4KXA/IqeJmH9eY0M=;
        b=C9+1gOC0vCxXDyf5/4l3g7UheTu5m57i6xLUb3SubIaQ7qWt2BHkL1xleGxV2dr8PL
         ypZJ/gV/hwtMIV+owynvoSzpztglbadAl+T+T7zjBNm+n3JdQVdJ61QUwTk+PuyLcR8w
         aUvpvV66svoKdC2kBamjMjJhzfu+rPVYPzBX86NW3QKur6ehbwumv3NBxMOKYEb9hJX2
         JjzeXmWJjg9a7jIHPigj1hWQa8FpE9wFvCW5ztcVx2i4ner6/YHip7wCpkOniG/MGSdM
         G/CDNMrGSELTa7oWI4tW16CDMmQReZfD6on6nI/OyT1dhdp8TNW5P5xbG+jsWmFVZ7Jw
         uApg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CCXo592Ho6HMOJMJkoHhufNc/xM4KXA/IqeJmH9eY0M=;
        b=HTlx4cW5VH/Lc2EcXBitipGinRZv8ucD39qy5rOFJ7LTziYAUpEDdmntpeS6rLqRMg
         as5a5oM6JaCqM8iHTtwjO8lGBP6RX2iKfEYAMR+lgEY7A5EEcr4k1QNOTkA1yYIjLawL
         hbwKmlKpatNWXJ6pGKMTbpeGCj+4b1L8qPHfuQdgwPDRzEqRNnGFbX7aS5toVJxulTVm
         TDC0phYjP1yZ/EPvogibhAZeHzlQ0+t4auCVbYmdpaAoFYmByo38z1uRCaRQjBoeStE+
         Eatv6eaLwk6kjIyHaeQwXSa2J2bsKiAlDb8ua5KYopKL4dNrcbQUXGOaUr5a5kaCPHT8
         oPjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CCXo592Ho6HMOJMJkoHhufNc/xM4KXA/IqeJmH9eY0M=;
        b=a5z+nCI8d3/z6/w6pzCIXvK+4G/L3B0L4OF6Uy34/0aDPo4WTZHT9RkXdx9sPqDeQO
         WpmFqH5usR9lA3Q4T/4qe/3m+4MGVuH7ZJOTGXU+nR4l73Ack3ww5wY/NchvQ3TWOXMK
         L0x8aRoAbuEmrdKoc+R98JCOfEJ7JSa0ErzgjhBoTglIsluM2hK6viBFSo+WsvTJlJth
         4jjsx6yoTVt9qtH5E+8vVIvZNCAKKse2QGt7DS64H2zIBJCld2O0cq49CnaYpzRpzzgN
         uf2i4crrkGOYol3+B1Oag62xFTgk2YzT00VJa/0xOsoAJcKkcLvxwPlOUM+20sJDInSS
         XHkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yhxfs3RnIjuGOBn8DofIa9JZcm/nC/45trbtUOvrhyGkvMtqr
	Y7WIV/bU9MHjeQ4DCk2O898=
X-Google-Smtp-Source: ABdhPJxUiv+0nh1C+rqv7jrSsbNvhI16zvH7J6Ttz0hZfEXblfZws0MCUv0f/U0KeWlXWTsArE5HLQ==
X-Received: by 2002:adf:f582:: with SMTP id f2mr29382740wro.204.1592204207964;
        Sun, 14 Jun 2020 23:56:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ce:: with SMTP id 72ls7706435wrc.1.gmail; Sun, 14 Jun
 2020 23:56:47 -0700 (PDT)
X-Received: by 2002:a05:6000:7:: with SMTP id h7mr29207296wrx.55.1592204207639;
        Sun, 14 Jun 2020 23:56:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592204207; cv=none;
        d=google.com; s=arc-20160816;
        b=L0ga4uGOA6CdnMJGVyHTeAU6n49quWoQFeR2cm6Kr8e522dSTSmJgypxwAcu03+wcX
         4aXK8Ks68gagALgd4iEPwlq+Mugs4yj8CY01iB3UoSvk9oIzW0Ii2wxLmajby2kKrzwz
         XiqBsBqPDpSh3SjTP9eT1xbMGjlmCNbN+HhvZeUHiXHqcbObwlgYjc86Bx/4Tzp2FsNb
         ChqsSTo4hse+QG36gITDOmqDK//ygOemLKBQQBQzNogsBXP1ooJJNFuE1P5L1k9I26u2
         12ofPW09FpFtXQofsGLeHH25mOqvbHDvuhe51TpOtpUw3pp7zEH77QtxzIn0mQ40KjrE
         VXyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=wN+/IwjM/03TfG4FacefTQ2gkVtzu++xdotiM6Rur8U=;
        b=p9E2Jes0/+dhtrjROlZ+ExuiRS1BJa3ys5jGnApu9yFwIvMFbkWyY/pD7T9Y9L5Ibd
         flLtXE1CkQunmQI/HdyOVNqccQjvnJRAg7Kx3obReFCMQzQdq5/KeyTdFtx9T2xi5v3b
         Umsnqgf4d3Ec+qd7UgGIYqvpaDaKX7quhtCJAUyb1CeLgwjvU5kM9sxCjg5G/94H6BJB
         fAQvYaEJxVgsQriNVwZvBzMPUrLWJFyGVDXFi+8hVaLO9kizW+jvVNFQvqTASRQvGo8S
         ru2GpuW3iXsWNbDOsxCba9pilKmD4T75RGLlI9KlYvdOgX30m20k1EU2sESz7Cozrnj/
         QIjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id m16si1405698wmg.2.2020.06.14.23.56.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Jun 2020 23:56:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 49lhvY0lbZzB09ZN;
	Mon, 15 Jun 2020 08:56:41 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id cQs_S25EY5ey; Mon, 15 Jun 2020 08:56:41 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 49lhvX6sWZzB09ZM;
	Mon, 15 Jun 2020 08:56:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 2862E8B77C;
	Mon, 15 Jun 2020 08:56:47 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id Mz-jSYSEVN6f; Mon, 15 Jun 2020 08:56:47 +0200 (CEST)
Received: from pc16570vm.idsi0.si.c-s.fr (po15451.idsi0.si.c-s.fr [172.25.230.104])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id D9E6E8B75F;
	Mon, 15 Jun 2020 08:56:46 +0200 (CEST)
Subject: Re: arch/powerpc/mm/pgtable_32.c:38:34: error: array is too large
 (34359672832 elements)
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
References: <20200615062259.GH12456@shao2-debian>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <118352b5-bf96-37ea-214e-b8a825ea89ac@csgroup.eu>
Date: Mon, 15 Jun 2020 06:56:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200615062259.GH12456@shao2-debian>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as
 permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
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



On 06/15/2020 06:22 AM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   08bf1a27c4c354b853fd81a79e953525bbcc8506
> commit: 925ac141d106b55acbe112a9272f970631a3c082 powerpc/mm: Allocate static page tables for fixmap

Guilty commit is b8e8efaa8639 ("powerpc: reserve fixmap entries for 
early debug")


> date:   3 weeks ago
> :::::: branch date: 49 minutes ago
> :::::: commit date: 3 weeks ago
> config: powerpc64-randconfig-r011-20200614 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project c669a1ed6386d57a75a602b53266466dae1e1d84)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install powerpc64 cross compiling tool for clang build
>          # apt-get install binutils-powerpc64-linux-gnu
>          git checkout 925ac141d106b55acbe112a9272f970631a3c082
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All error/warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> In file included from arch/powerpc/mm/pgtable_32.c:20:

gcc fails long before that, at:

CC      arch/powerpc/kernel/asm-offsets.s

Christophe

> In file included from include/linux/mm.h:95:
> In file included from arch/powerpc/include/asm/pgtable.h:20:
> In file included from arch/powerpc/include/asm/nohash/pgtable.h:8:
> In file included from arch/powerpc/include/asm/nohash/32/pgtable.h:77:
> arch/powerpc/include/asm/fixmap.h:57:2: warning: overflow in enumeration value
> FIX_KMAP_BEGIN, /* reserved pte's for temporary kernel mappings */
> ^
> In file included from arch/powerpc/mm/pgtable_32.c:20:
> In file included from include/linux/mm.h:95:
> In file included from arch/powerpc/include/asm/pgtable.h:20:
> In file included from arch/powerpc/include/asm/nohash/pgtable.h:8:
> In file included from arch/powerpc/include/asm/nohash/32/pgtable.h:77:
> In file included from arch/powerpc/include/asm/fixmap.h:96:
> include/asm-generic/fixmap.h:32:19: warning: result of comparison of constant '__end_of_fixed_addresses' (4294967376) with expression of type 'const unsigned int' is always false [-Wtautological-constant-out-of-range-compare]
> BUILD_BUG_ON(idx >= __end_of_fixed_addresses);
> ~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~
> include/linux/build_bug.h:50:19: note: expanded from macro 'BUILD_BUG_ON'
> BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
> ^~~~~~~~~
> include/linux/build_bug.h:39:58: note: expanded from macro 'BUILD_BUG_ON_MSG'
> #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
> ^~~~
> include/linux/compiler.h:350:22: note: expanded from macro 'compiletime_assert'
> _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
> ^~~~~~~~~
> include/linux/compiler.h:338:23: note: expanded from macro '_compiletime_assert'
> __compiletime_assert(condition, msg, prefix, suffix)
> ^~~~~~~~~
> include/linux/compiler.h:330:9: note: expanded from macro '__compiletime_assert'
> if (!(condition))                                                                ^~~~~~~~~
> In file included from arch/powerpc/mm/pgtable_32.c:20:
> In file included from include/linux/mm.h:95:
> In file included from arch/powerpc/include/asm/pgtable.h:20:
> In file included from arch/powerpc/include/asm/nohash/pgtable.h:8:
> In file included from arch/powerpc/include/asm/nohash/32/pgtable.h:77:
> In file included from arch/powerpc/include/asm/fixmap.h:96:
> include/asm-generic/fixmap.h:38:39: warning: result of comparison of constant 18445618177942224896 with expression of type 'const unsigned long' is always true [-Wtautological-constant-out-of-range-compare]
> BUG_ON(vaddr >= FIXADDR_TOP || vaddr < FIXADDR_START);
> ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~
> arch/powerpc/include/asm/bug.h:73:27: note: expanded from macro 'BUG_ON'
> if (__builtin_constant_p(x)) {                                                              ^
> In file included from arch/powerpc/mm/pgtable_32.c:20:
> In file included from include/linux/mm.h:95:
> In file included from arch/powerpc/include/asm/pgtable.h:20:
> In file included from arch/powerpc/include/asm/nohash/pgtable.h:8:
> In file included from arch/powerpc/include/asm/nohash/32/pgtable.h:77:
> In file included from arch/powerpc/include/asm/fixmap.h:96:
> include/asm-generic/fixmap.h:38:39: warning: result of comparison of constant 18445618177942224896 with expression of type 'const unsigned long' is always true [-Wtautological-constant-out-of-range-compare]
> BUG_ON(vaddr >= FIXADDR_TOP || vaddr < FIXADDR_START);
> ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~
> arch/powerpc/include/asm/bug.h:74:7: note: expanded from macro 'BUG_ON'
> if (x)                                                                 ^
>>> arch/powerpc/mm/pgtable_32.c:38:34: error: array is too large (34359672832 elements)
> static u8 early_fixmap_pagetable[FIXMAP_PTE_SIZE] __page_aligned_data;
> ^~~~~~~~~~~~~~~
> arch/powerpc/include/asm/fixmap.h:91:25: note: expanded from macro 'FIXMAP_PTE_SIZE'
> #define FIXMAP_PTE_SIZE (FIXMAP_ALIGNED_SIZE / PGDIR_SIZE * PTE_TABLE_SIZE)
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>> arch/powerpc/mm/pgtable_32.c:42:23: warning: implicit conversion from 'unsigned long long' to 'unsigned long' changes value from 18445618175950192640 to 2147483648 [-Wconstant-conversion]
> unsigned long addr = ALIGN_DOWN(FIXADDR_START, PGDIR_SIZE);
> ~~~~   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/linux/kernel.h:34:26: note: expanded from macro 'ALIGN_DOWN'
> #define ALIGN_DOWN(x, a)        __ALIGN_KERNEL((x) - ((a) - 1), (a))
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/uapi/linux/kernel.h:10:31: note: expanded from macro '__ALIGN_KERNEL'
> #define __ALIGN_KERNEL(x, a)            __ALIGN_KERNEL_MASK(x, (typeof(x))(a) - 1)
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/uapi/linux/kernel.h:11:54: note: expanded from macro '__ALIGN_KERNEL_MASK'
> #define __ALIGN_KERNEL_MASK(x, mask)    (((x) + (mask)) & ~(mask))
> ~~~~~~~~~~~~~~~^~~~~~~~~
> 5 warnings and 1 error generated.
> 
> # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=925ac141d106b55acbe112a9272f970631a3c082
> git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> git remote update linus
> git checkout 925ac141d106b55acbe112a9272f970631a3c082
> vim +38 arch/powerpc/mm/pgtable_32.c
> 
> 14cf11af6cf608 arch/powerpc/mm/pgtable.c    Paul Mackerras   2005-09-26  37
> 925ac141d106b5 arch/powerpc/mm/pgtable_32.c Christophe Leroy 2020-05-19 @38  static u8 early_fixmap_pagetable[FIXMAP_PTE_SIZE] __page_aligned_data;
> 925ac141d106b5 arch/powerpc/mm/pgtable_32.c Christophe Leroy 2020-05-19  39
> 925ac141d106b5 arch/powerpc/mm/pgtable_32.c Christophe Leroy 2020-05-19  40  notrace void __init early_ioremap_init(void)
> 925ac141d106b5 arch/powerpc/mm/pgtable_32.c Christophe Leroy 2020-05-19  41  {
> 925ac141d106b5 arch/powerpc/mm/pgtable_32.c Christophe Leroy 2020-05-19 @42  	unsigned long addr = ALIGN_DOWN(FIXADDR_START, PGDIR_SIZE);
> 925ac141d106b5 arch/powerpc/mm/pgtable_32.c Christophe Leroy 2020-05-19  43  	pte_t *ptep = (pte_t *)early_fixmap_pagetable;
> 925ac141d106b5 arch/powerpc/mm/pgtable_32.c Christophe Leroy 2020-05-19  44  	pmd_t *pmdp = pmd_ptr_k(addr);
> 925ac141d106b5 arch/powerpc/mm/pgtable_32.c Christophe Leroy 2020-05-19  45
> 925ac141d106b5 arch/powerpc/mm/pgtable_32.c Christophe Leroy 2020-05-19  46  	for (; (s32)(FIXADDR_TOP - addr) > 0;
> 925ac141d106b5 arch/powerpc/mm/pgtable_32.c Christophe Leroy 2020-05-19  47  	     addr += PGDIR_SIZE, ptep += PTRS_PER_PTE, pmdp++)
> 925ac141d106b5 arch/powerpc/mm/pgtable_32.c Christophe Leroy 2020-05-19  48  		pmd_populate_kernel(&init_mm, pmdp, ptep);
> 925ac141d106b5 arch/powerpc/mm/pgtable_32.c Christophe Leroy 2020-05-19  49
> 925ac141d106b5 arch/powerpc/mm/pgtable_32.c Christophe Leroy 2020-05-19  50  	early_ioremap_setup();
> 925ac141d106b5 arch/powerpc/mm/pgtable_32.c Christophe Leroy 2020-05-19  51  }
> 925ac141d106b5 arch/powerpc/mm/pgtable_32.c Christophe Leroy 2020-05-19  52
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> 
> 
> _______________________________________________
> kbuild mailing list -- kbuild@lists.01.org
> To unsubscribe send an email to kbuild-leave@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/118352b5-bf96-37ea-214e-b8a825ea89ac%40csgroup.eu.
