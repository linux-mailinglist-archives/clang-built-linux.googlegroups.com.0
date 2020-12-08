Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5VEXP7AKGQESEV6WYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 336032D1FBA
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 02:10:16 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id l20sf13262355ioc.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 17:10:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607389815; cv=pass;
        d=google.com; s=arc-20160816;
        b=vnC5/QwygljKnb/rvA83fvTB6gwxbRTUgb0fJO0ESNY+3j7nuFDISHpBHB7+EhQXK/
         T1lFTywxOu90rW0DaxprMk8y2LqvWSYG2BTalUi/rSl3sQXpY4U+/nhq4mVIzPLTe9x4
         E/TbI9L9HtV4u41bYjTzLZeKCQvcMWWqLvlwd+6hSJuP+cZaP3Al0dXTxs1xaArtEVze
         B74LXgHCiAHoNJ0G2qGB9i7+JjZfVY0M6FnOKUAQIQOlUxSwYfosM+82gv5aBT7i2jnm
         ydCKOxqyaM7Djn2CytHqsmmj3dtAw/oHc3Ds8aoBsY3G1rM/ii8ergMIa4R1ea77tQ3Z
         BHQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=RNibJw/T0w6kBFmn+ECtZdroggjND5KaFbPFgKvZeSg=;
        b=S7vRSJ21RpuzSuYiSK/giM8NUsN/zhfRPYyC/DIbkBHLb99UuQh82NeNfXxqK9XlvC
         ozq2nqsR/4oA/5pMcyH8TSiA8ggEGUKoAQb2t8aVFv6unzKHtWQCFk8ebMzY+/Yo9Nr+
         +L5H1VLeyBXVBX9NwZgsmQDCM11LcNJltSYgCIGqaQ8c0aU2bwSDVhw6M04rrTCnBDth
         uB1je3GWZi6P1u0UqyiSoPNUmij6NkVyMXSbOT2pEcKs+iEqDLbVaSwxXM8ot2kwnn+4
         B6qHy9QPO/OsWyJCCGW96zR0zhl+/D5HDmqV/Bm6jrMrkKdxwsxHNxtW30CxezV2qBTR
         VdEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RNibJw/T0w6kBFmn+ECtZdroggjND5KaFbPFgKvZeSg=;
        b=RKekATnsnfa2Fky54nP6IzYlBuB+vfKBmN6zdM6pYLalgovH42Mz+8JEnthhiuzwyk
         JzXUGC0vie2oK8ZlR3d2oglggTywqtn6flWxp+kHuIJBYBaG7uAG6f6og5KdcGoQdNgt
         LKd/agEHoYR5AUXqzEpPSS+2NdLPDC97145EfWm2ehsitGNz+F5jkBvC9X0zfvZk3uSo
         91jfYIQDv2myGyo8635WvFw5VvZLZa/VnwA5va12aih3K4/9ctm5EpvRlgy6L3hnjhGa
         kFNNJHWa7fpTOXbUbv7pyvmw+R25fYX1cWeorMgLK+Xq+HhpmGVuU7gr4tthwe+HuJeG
         ewYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RNibJw/T0w6kBFmn+ECtZdroggjND5KaFbPFgKvZeSg=;
        b=NK5eCg06fZWQGyJORoAaOfVCV4oFqCdpG4/2gdgPpDZjEi6NrMjeYITxzAwKJ3lcqt
         mbbhHr5+9pfUdpMccKAftF3vwfe7GwL5a/dUtzW2IsmsaT89EWKy1MDHDI0O/UgIOK4L
         Ckjm8HOtPrs6Xg8rDBWwQvBP+EXz19bqmd0Dk/3wLbWfBH12xbZNb+FQfo6rcNkX8Hh0
         99xugi4fKc5bR/k+hVHUGOGRtps4uH0pvc00EizgEkjhhVrEPofjJQo88Y4l8HmquOcR
         BHF/n27D0kyM+6sYH0F533yHXYHkm8dtKAJ28UaHILf39NnY8jN1B/FDdqAfUI6ZgAdz
         gAXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GzO5Wrs24kGn5JZfgtiGzAFnSwzk98ckSNq9IDjU7VwfMz7NH
	TpvOuo9zh+xuvmBM290A8Y8=
X-Google-Smtp-Source: ABdhPJyTcTCMj2edR48jtiqhsdIAo4wUQDidbpspFK4n5L0uMqcyZjS12qfJhh5FJ57YQK3cjZry6w==
X-Received: by 2002:a05:6e02:929:: with SMTP id o9mr23806078ilt.42.1607389814973;
        Mon, 07 Dec 2020 17:10:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:a41:: with SMTP id 62ls2336930jaw.1.gmail; Mon, 07 Dec
 2020 17:10:14 -0800 (PST)
X-Received: by 2002:a02:9f8b:: with SMTP id a11mr24856362jam.108.1607389814325;
        Mon, 07 Dec 2020 17:10:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607389814; cv=none;
        d=google.com; s=arc-20160816;
        b=yvS0BA1JxH4/qqnWA9yX+3dcPJ4k96xscqUFu6GsLOKVeHFw18ob7elGyMAYzps845
         QjtjufN3lOzxRNaTYXxKeWtOyjSvZRYMdkQAHVOKH3MUFmR1E68JIuYFaUSX1Abyabfp
         iyG5/gz0buUcLMwjG+D/ezddAjkwOIPL+YBgCfRxpvHYtce+jogRitML6boFoilRO7vQ
         r24nFEofbFsNL1UF8RS8dAhnLLqbsYbL/FF8sT/p9vYSXVUcyc6190TgTWBhGabx5BQC
         Oap8wbEKDHyeKy9ITQUkoDYWq8sV0txjGEI2ZElhQURF1c7L0mO1WiSv9IM11VgNgOQ+
         O//A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=AclLmwtDmn2qf/U3p5O23AbBCEkGqfh+xk7ZGnYB8H0=;
        b=AzbrAsAlkQRSQ7kpwSsfX87lTRADipj5bipmn8un7jTx1wHV7gjW+IjLt0N+EXN1du
         cvHxeYoewOmS0VkKPLD7zZeQfP+DtAE7wnTMthB/nFUCwPTYa6OipgP6WVZHa2Wuyobm
         pEFjexEBEjKnQG9DkO1BqnR6SGD4Ktp1ZbgkEx+M9kq0Y6oSYotJgWmSRsxfPxFaanFd
         KTKSzVo/S2s7BVPAdksk5EypVGP7rzorGY8T6pIKdH19PgpNRnrBO1XJiYt5TN8qiGUI
         R4ro9jReKp7X1eBQAp1V7jczEu//OAb0wzzAUUYN3GYnGXc8xZxGtW1hm4VfNxT74wh4
         lnGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id b8si567140ile.1.2020.12.07.17.10.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Dec 2020 17:10:14 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: v6RFaJpxsGfzwXQOkR114aTAtb1CC3i5MCUC9euci+H4fA/E0P6TRdk0d8LuRv/g4TWU484Kud
 tfEAn/vT0QWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="153620159"
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; 
   d="gz'50?scan'50,208,50";a="153620159"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Dec 2020 17:10:10 -0800
IronPort-SDR: TdnT/t8kCYcXrmUV5AAh7ct+cwe01qOBlQVHMhFYiiXXw5wcYgn5kebqMa9/t2ODDwg7eSrWDI
 1E8hOztQMLIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; 
   d="gz'50?scan'50,208,50";a="318158421"
Received: from lkp-server01.sh.intel.com (HELO 6c6df46aa5de) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 07 Dec 2020 17:10:07 -0800
Received: from kbuild by 6c6df46aa5de with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kmRW2-00000k-E2; Tue, 08 Dec 2020 01:10:06 +0000
Date: Tue, 8 Dec 2020 09:09:20 +0800
From: kernel test robot <lkp@intel.com>
To: ira.weiny@intel.com, Thomas Gleixner <tglx@linutronix.de>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Ira Weiny <ira.weiny@intel.com>,
	Dave Hansen <dave.hansen@intel.com>,
	Matthew Wilcox <willy@infradead.org>,
	Christoph Hellwig <hch@infradead.org>,
	Dan Williams <dan.j.williams@intel.com>,
	Al Viro <viro@zeniv.linux.org.uk>,
	Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH V2 2/2] mm/highmem: Lift memcpy_[to|from]_page to core
Message-ID: <202012080947.F09M388M-lkp@intel.com>
References: <20201207225703.2033611-3-ira.weiny@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="OgqxwSJOaUobr8KG"
Content-Disposition: inline
In-Reply-To: <20201207225703.2033611-3-ira.weiny@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--OgqxwSJOaUobr8KG
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi,

I love your patch! Yet something to improve:

[auto build test ERROR on hch-configfs/for-next]
[also build test ERROR on linus/master v5.10-rc7]
[cannot apply to hnaz-linux-mm/master next-20201207]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/ira-weiny-intel-com/Lift-memcpy_-to-from-_page-to-core/20201208-070017
base:   git://git.infradead.org/users/hch/configfs.git for-next
config: powerpc64-randconfig-r002-20201207 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a2f922140f5380571fb74179f2bf622b3b925697)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/0day-ci/linux/commit/23e6d3f08a315c6e70fde3d63a275c91e1dcb0ee
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review ira-weiny-intel-com/Lift-memcpy_-to-from-_page-to-core/20201208-070017
        git checkout 23e6d3f08a315c6e70fde3d63a275c91e1dcb0ee
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   <scratch space>:223:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:225:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   include/linux/highmem.h:229:15: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           void *addr = kmap_local_page(page);
                        ^
   include/linux/highmem.h:229:15: note: did you mean 'kmap_to_page'?
   include/linux/highmem.h:130:28: note: 'kmap_to_page' declared here
   static inline struct page *kmap_to_page(void *addr)
                              ^
   include/linux/highmem.h:229:8: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
           void *addr = kmap_local_page(page);
                 ^      ~~~~~~~~~~~~~~~~~~~~~
   include/linux/highmem.h:231:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(addr);
           ^
   include/linux/highmem.h:282:16: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           void *kaddr = kmap_local_page(page);
                         ^
   include/linux/highmem.h:282:8: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
           void *kaddr = kmap_local_page(page);
                 ^       ~~~~~~~~~~~~~~~~~~~~~
   include/linux/highmem.h:284:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(kaddr);
           ^
   include/linux/highmem.h:291:16: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           void *kaddr = kmap_local_page(page);
                         ^
   include/linux/highmem.h:291:8: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
           void *kaddr = kmap_local_page(page);
                 ^       ~~~~~~~~~~~~~~~~~~~~~
   include/linux/highmem.h:301:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(kaddr);
           ^
   include/linux/highmem.h:324:10: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           vfrom = kmap_local_page(from);
                   ^
   include/linux/highmem.h:324:8: warning: incompatible integer to pointer conversion assigning to 'char *' from 'int' [-Wint-conversion]
           vfrom = kmap_local_page(from);
                 ^ ~~~~~~~~~~~~~~~~~~~~~
   include/linux/highmem.h:325:6: warning: incompatible integer to pointer conversion assigning to 'char *' from 'int' [-Wint-conversion]
           vto = kmap_local_page(to);
               ^ ~~~~~~~~~~~~~~~~~~~
   include/linux/highmem.h:327:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(vto);
           ^
   include/linux/highmem.h:339:10: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           vfrom = kmap_local_page(from);
                   ^
   include/linux/highmem.h:339:8: warning: incompatible integer to pointer conversion assigning to 'char *' from 'int' [-Wint-conversion]
           vfrom = kmap_local_page(from);
                 ^ ~~~~~~~~~~~~~~~~~~~~~
   include/linux/highmem.h:340:6: warning: incompatible integer to pointer conversion assigning to 'char *' from 'int' [-Wint-conversion]
           vto = kmap_local_page(to);
               ^ ~~~~~~~~~~~~~~~~~~~
   include/linux/highmem.h:342:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(vto);
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:14:
>> include/linux/pagemap.h:1036:14: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           char *dst = kmap_local_page(dst_page);
                       ^
>> include/linux/pagemap.h:1036:8: warning: incompatible integer to pointer conversion initializing 'char *' with an expression of type 'int' [-Wint-conversion]
           char *dst = kmap_local_page(dst_page);
                 ^     ~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/pagemap.h:1037:8: warning: incompatible integer to pointer conversion initializing 'char *' with an expression of type 'int' [-Wint-conversion]
           char *src = kmap_local_page(src_page);
                 ^     ~~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/pagemap.h:1039:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(src);
           ^
   include/linux/pagemap.h:1047:14: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           char *dst = kmap_local_page(dst_page);
                       ^
   include/linux/pagemap.h:1047:8: warning: incompatible integer to pointer conversion initializing 'char *' with an expression of type 'int' [-Wint-conversion]
           char *dst = kmap_local_page(dst_page);
                 ^     ~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/pagemap.h:1048:8: warning: incompatible integer to pointer conversion initializing 'char *' with an expression of type 'int' [-Wint-conversion]
           char *src = kmap_local_page(src_page);
                 ^     ~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/pagemap.h:1050:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(src);
           ^
   include/linux/pagemap.h:1056:15: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           char *from = kmap_local_page(page);
                        ^
   include/linux/pagemap.h:1056:8: warning: incompatible integer to pointer conversion initializing 'char *' with an expression of type 'int' [-Wint-conversion]
           char *from = kmap_local_page(page);
                 ^      ~~~~~~~~~~~~~~~~~~~~~
   include/linux/pagemap.h:1058:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(from);
           ^
   include/linux/pagemap.h:1063:13: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           char *to = kmap_local_page(page);
                      ^
   include/linux/pagemap.h:1063:8: warning: incompatible integer to pointer conversion initializing 'char *' with an expression of type 'int' [-Wint-conversion]
           char *to = kmap_local_page(page);
                 ^    ~~~~~~~~~~~~~~~~~~~~~
   include/linux/pagemap.h:1065:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(to);
           ^
   include/linux/pagemap.h:1070:15: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           char *addr = kmap_local_page(page);
                        ^
   include/linux/pagemap.h:1070:8: warning: incompatible integer to pointer conversion initializing 'char *' with an expression of type 'int' [-Wint-conversion]
           char *addr = kmap_local_page(page);
                 ^      ~~~~~~~~~~~~~~~~~~~~~
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 warnings and 20 errors generated.
--
   <scratch space>:223:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:225:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   include/linux/highmem.h:229:15: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           void *addr = kmap_local_page(page);
                        ^
   include/linux/highmem.h:229:15: note: did you mean 'kmap_to_page'?
   include/linux/highmem.h:130:28: note: 'kmap_to_page' declared here
   static inline struct page *kmap_to_page(void *addr)
                              ^
   include/linux/highmem.h:229:8: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
           void *addr = kmap_local_page(page);
                 ^      ~~~~~~~~~~~~~~~~~~~~~
   include/linux/highmem.h:231:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(addr);
           ^
   include/linux/highmem.h:282:16: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           void *kaddr = kmap_local_page(page);
                         ^
   include/linux/highmem.h:282:8: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
           void *kaddr = kmap_local_page(page);
                 ^       ~~~~~~~~~~~~~~~~~~~~~
   include/linux/highmem.h:284:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(kaddr);
           ^
   include/linux/highmem.h:291:16: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           void *kaddr = kmap_local_page(page);
                         ^
   include/linux/highmem.h:291:8: warning: incompatible integer to pointer conversion initializing 'void *' with an expression of type 'int' [-Wint-conversion]
           void *kaddr = kmap_local_page(page);
                 ^       ~~~~~~~~~~~~~~~~~~~~~
   include/linux/highmem.h:301:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(kaddr);
           ^
   include/linux/highmem.h:324:10: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           vfrom = kmap_local_page(from);
                   ^
   include/linux/highmem.h:324:8: warning: incompatible integer to pointer conversion assigning to 'char *' from 'int' [-Wint-conversion]
           vfrom = kmap_local_page(from);
                 ^ ~~~~~~~~~~~~~~~~~~~~~
   include/linux/highmem.h:325:6: warning: incompatible integer to pointer conversion assigning to 'char *' from 'int' [-Wint-conversion]
           vto = kmap_local_page(to);
               ^ ~~~~~~~~~~~~~~~~~~~
   include/linux/highmem.h:327:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(vto);
           ^
   include/linux/highmem.h:339:10: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           vfrom = kmap_local_page(from);
                   ^
   include/linux/highmem.h:339:8: warning: incompatible integer to pointer conversion assigning to 'char *' from 'int' [-Wint-conversion]
           vfrom = kmap_local_page(from);
                 ^ ~~~~~~~~~~~~~~~~~~~~~
   include/linux/highmem.h:340:6: warning: incompatible integer to pointer conversion assigning to 'char *' from 'int' [-Wint-conversion]
           vto = kmap_local_page(to);
               ^ ~~~~~~~~~~~~~~~~~~~
   include/linux/highmem.h:342:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(vto);
           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:14:
>> include/linux/pagemap.h:1036:14: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           char *dst = kmap_local_page(dst_page);
                       ^
>> include/linux/pagemap.h:1036:8: warning: incompatible integer to pointer conversion initializing 'char *' with an expression of type 'int' [-Wint-conversion]
           char *dst = kmap_local_page(dst_page);
                 ^     ~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/pagemap.h:1037:8: warning: incompatible integer to pointer conversion initializing 'char *' with an expression of type 'int' [-Wint-conversion]
           char *src = kmap_local_page(src_page);
                 ^     ~~~~~~~~~~~~~~~~~~~~~~~~~
>> include/linux/pagemap.h:1039:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(src);
           ^
   include/linux/pagemap.h:1047:14: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           char *dst = kmap_local_page(dst_page);
                       ^
   include/linux/pagemap.h:1047:8: warning: incompatible integer to pointer conversion initializing 'char *' with an expression of type 'int' [-Wint-conversion]
           char *dst = kmap_local_page(dst_page);
                 ^     ~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/pagemap.h:1048:8: warning: incompatible integer to pointer conversion initializing 'char *' with an expression of type 'int' [-Wint-conversion]
           char *src = kmap_local_page(src_page);
                 ^     ~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/pagemap.h:1050:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(src);
           ^
   include/linux/pagemap.h:1056:15: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           char *from = kmap_local_page(page);
                        ^
   include/linux/pagemap.h:1056:8: warning: incompatible integer to pointer conversion initializing 'char *' with an expression of type 'int' [-Wint-conversion]
           char *from = kmap_local_page(page);
                 ^      ~~~~~~~~~~~~~~~~~~~~~
   include/linux/pagemap.h:1058:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(from);
           ^
   include/linux/pagemap.h:1063:13: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           char *to = kmap_local_page(page);
                      ^
   include/linux/pagemap.h:1063:8: warning: incompatible integer to pointer conversion initializing 'char *' with an expression of type 'int' [-Wint-conversion]
           char *to = kmap_local_page(page);
                 ^    ~~~~~~~~~~~~~~~~~~~~~
   include/linux/pagemap.h:1065:2: error: implicit declaration of function 'kunmap_local' [-Werror,-Wimplicit-function-declaration]
           kunmap_local(to);
           ^
   include/linux/pagemap.h:1070:15: error: implicit declaration of function 'kmap_local_page' [-Werror,-Wimplicit-function-declaration]
           char *addr = kmap_local_page(page);
                        ^
   include/linux/pagemap.h:1070:8: warning: incompatible integer to pointer conversion initializing 'char *' with an expression of type 'int' [-Wint-conversion]
           char *addr = kmap_local_page(page);
                 ^      ~~~~~~~~~~~~~~~~~~~~~
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 warnings and 20 errors generated.
   make[2]: *** [scripts/Makefile.build:117: arch/powerpc/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1200: prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.

vim +/kmap_local_page +1036 include/linux/pagemap.h

  1031	
  1032	static inline void memcpy_page(struct page *dst_page, size_t dst_off,
  1033				       struct page *src_page, size_t src_off,
  1034				       size_t len)
  1035	{
> 1036		char *dst = kmap_local_page(dst_page);
  1037		char *src = kmap_local_page(src_page);
  1038		memcpy(dst + dst_off, src + src_off, len);
> 1039		kunmap_local(src);
  1040		kunmap_local(dst);
  1041	}
  1042	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012080947.F09M388M-lkp%40intel.com.

--OgqxwSJOaUobr8KG
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--OgqxwSJOaUobr8KG--
