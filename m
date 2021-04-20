Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGFI7OBQMGQEXHZHUZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2693659A0
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 15:16:10 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id cq14-20020a17090af98eb029014de92947desf19889822pjb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 06:16:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618924568; cv=pass;
        d=google.com; s=arc-20160816;
        b=kdDI1hKQuBvW6IxzTPz4EhfYj3GEnbKeG6iyu1ifrDX+Q/IwR4wNLYNcnAMyGSvrM1
         kw0vm6QIrYefWdmxKvi4HiIKp/brGNW3SLNmcaiJO1zpAZjaYW7C9GuMuNkC31m+UG3Q
         OVJt4mI+I3mewaabNKG5a0b6vDaImrH6v4DHwT6MPtVMmFpWXbUIu9scLUTxiokkT0u8
         A2XTgwxSe4OxZZfUFIKW+xv0fuCRxY/JMQ0bvT7LvrO9gMO0O/Qy1uPL6V0X1mn6X2Md
         6TjwWwJz1eObePZXHd766uj++SbvdA8fx43D0ITsf0AyMrpkTWT2JjaNKoks711yDfOs
         Y5/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Ap6TLuERwEzCgsrbjzO52nNOeXK+90zmvleS+4f/AUU=;
        b=FAiGqr63KIjVVp3j9CslxAryDu1yl1UKmrKM82n3MQ+PjbHxCc+cC4fG8qiSGxtizu
         Efjkxt3iQuVfzW5OaBO4pqFuvEJ9Pgby1iehljAdeZUwtTJJjYCuPQqOpvVPMHr4N68a
         N3T7v9fRowSb108NM42EM8d6ZyJW75G2r456Fza0M/DLNOfuM8BcBubmLC/08k10jb6F
         bp8ZTkSc6NGm0Z1ExA4vjP65w2YmbTwJJM3MCtR6MksXKOm1v8cJG00FjWijlS6pqfwG
         hSrYn+tE2WaZBxFsLiq61mLFTSm+1yf+dDRjzehJXNKCL9+OS3xnLCCUhK1dM1dPH8hN
         N3zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ap6TLuERwEzCgsrbjzO52nNOeXK+90zmvleS+4f/AUU=;
        b=E9XsHG7Wvql8unhA1+NSMuxYdajYfbXdmRhCI2qvdh6SkkUkPZQTBrvOXXYXdtvATU
         s/wbrD9h7L03MOcUJA0wV7qb5cae5F1mwsPjxOEl1Uil6KHVAX+rAy1vjWpNuFxUuqVK
         ZlaYnmCYAFzPV5OyVa7VkkQo37QWDxdA0CfANIq6AZl5cDA5i0SNRA1ucpqAQHHwS4yI
         zuM52OzbPNyHz5dxfOkGKe3nc0H6qFaHN73eJYIEjks3X34ZLdfVhnt+PDgD29q7KXoA
         ivsDy8FAHGu7QBgDIxJbl7Wd89uhAbizQA2HYVeqy2GKv6ePYIATB0cAQmn4pWWZMvwm
         PrBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ap6TLuERwEzCgsrbjzO52nNOeXK+90zmvleS+4f/AUU=;
        b=WddtDeH0Mn3Hbrj4jouVUq2plYYs3txAkS6tu2U/pOf9EnLVZ0wXc57uks/iVMbelS
         FhVeJdtdu3McE9ANWJk4YJF0Yf6INSg7ftCEgTfSH2yg4+Axgnijn0cGpR/J6gbnB9nZ
         sNIfvzmd8UxZlTIASeF8CY6HCqkXfec9lrIiJA34XtyG2qddyxhSa5NHs9J/kdMrCnPq
         iSt54VN4HZHilnIVYho6fI+ulnPXIkeUVD5Vv8BQAqOLgbnEr0Tm7g+oqqwrcrQkZzKs
         pepO9QFzenevM3U0+KZ6saUt5MshykIqoNa7PUWg/tp8HJj2XGuD3kihChBMD2MusxvH
         KD4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532GCFaRjNYKKhiZk/zKM4mcOa74PfUES6BjpA2hj8GzWkTTJ2h5
	wySgLuzoko1aylGSOpjzzMc=
X-Google-Smtp-Source: ABdhPJwvTqeT6ofxlLnElhbcqKNzwFl2/TbFWj8LkizNclxiRcVehKgWjCPukMJyM/2n4G2ndt+h6g==
X-Received: by 2002:a17:902:361:b029:e9:8392:7abd with SMTP id 88-20020a1709020361b02900e983927abdmr28898537pld.8.1618924568285;
        Tue, 20 Apr 2021 06:16:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7102:: with SMTP id h2ls1655183pjk.0.canary-gmail;
 Tue, 20 Apr 2021 06:16:07 -0700 (PDT)
X-Received: by 2002:a17:90a:2ac8:: with SMTP id i8mr4730017pjg.112.1618924567146;
        Tue, 20 Apr 2021 06:16:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618924567; cv=none;
        d=google.com; s=arc-20160816;
        b=oybfNCiR62UOtoeK/3ttZic+mjqo3R1W6UUHJ3W/caFo+7yoqYXI7TWX+2XPW8s0uY
         bnk+uDEqdOHoMcQ+c/DHETEZMIPhD2FuFjlcPoij783JUtL1vtpzhKlQkhbhVA/SPt8y
         P1uFkJLL6Ck8/EgSYNuu6w8oP1K42ZeJAGB4hk9jy1vSWMW4NTubQ7Jr9b0pbCk6y7Gq
         3vDKpnEFeJk5AMLE+s5017Tk555ZocCff6K/VHiumB/mIRoHz6G/m8bntfP7kBxidL23
         aU8BzCpMahvVi1HJ56mS5fx1W14KUiqQvctlyeqAn/4+p3EWPrzRgMiV6//FdS0sP/VN
         Pu2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=C7TIjE3mrlvrXN6XOPr+5p/XdsZED2qz/LB6MJgXjsM=;
        b=STlvlN5kIm8S3uixGo+ws5c2vwZP1QkM8tXtn0lyVhphPdwUDzc7tgS7P+7hQDOcNl
         yy9VOkWWbQTTtjrD5j9PzQEaaOm4cu+CMZpS7YpOl2oJ+mfM02CEj2EWysuRyZstIzB9
         h8pple8weDAZ4RG0W7CQbMU2+35HL00lFY+mheNRGJu4gkK/tYoBueow7+QOQraX1y8H
         Yh4UYzIFpWXy5rr5403DoGaOaF/XfsECiKxCGqoFLC10iywcBoln3+R82OP+Q0QijuOt
         8RUmCy7hZH4GY2IOmm8/ZIAV2SDKQIdtvxzb01gkxlkHAeoJjEJcRoWUX3tX0EUxy8Y2
         C7iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id j184si958201pfb.1.2021.04.20.06.16.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Apr 2021 06:16:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: tJ/N6jn3rDaEXWMFDgl9KS2Vu+MJQ+wVW9+3l1FVuEcwEA1gW7gE+ZoFopBCl0KYcZlGHrO4bO
 AELdnFNJzHng==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="174988323"
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; 
   d="gz'50?scan'50,208,50";a="174988323"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2021 06:16:06 -0700
IronPort-SDR: iGlUkOhfQXdjRq570Kgx8lWR1nPLgveWcKitbrvBv03mVLGqfOjfW1txkg5YGAboJB/4GZSZu0
 Z5y2gCgk85hA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; 
   d="gz'50?scan'50,208,50";a="423012969"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 20 Apr 2021 06:16:03 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lYqEV-0002TU-4u; Tue, 20 Apr 2021 13:16:03 +0000
Date: Tue, 20 Apr 2021 21:15:27 +0800
From: kernel test robot <lkp@intel.com>
To: Harshad Shirwadkar <harshadshirwadkar@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Theodore Ts'o <tytso@mit.edu>, Andreas Dilger <adilger@dilger.ca>
Subject: [linux-next:master 10419/14048] fs/ext4/mballoc.c:2614:1: warning:
 stack frame size of 2416 bytes in function 'ext4_mb_regular_allocator'
Message-ID: <202104202112.1Cba8V4g-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   593ef1658ecf61d3619885bdbbcfffa3d1417891
commit: 196e402adf2e4cd66f101923409f1970ec5f1af3 [10419/14048] ext4: improve cr 0 / cr 1 group scanning
config: powerpc-randconfig-r036-20210420 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project ca8eef7e3da8f750d7c7aa004fe426d1d34787ea)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=196e402adf2e4cd66f101923409f1970ec5f1af3
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 196e402adf2e4cd66f101923409f1970ec5f1af3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:63:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/ext4/mballoc.c:12:
   In file included from fs/ext4/ext4_jbd2.h:16:
   In file included from include/linux/jbd2.h:23:
   In file included from include/linux/buffer_head.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:65:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/ext4/mballoc.c:12:
   In file included from fs/ext4/ext4_jbd2.h:16:
   In file included from include/linux/jbd2.h:23:
   In file included from include/linux/buffer_head.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:67:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/ext4/mballoc.c:12:
   In file included from fs/ext4/ext4_jbd2.h:16:
   In file included from include/linux/jbd2.h:23:
   In file included from include/linux/buffer_head.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:69:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/ext4/mballoc.c:12:
   In file included from fs/ext4/ext4_jbd2.h:16:
   In file included from include/linux/jbd2.h:23:
   In file included from include/linux/buffer_head.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:71:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> fs/ext4/mballoc.c:2614:1: warning: stack frame size of 2416 bytes in function 'ext4_mb_regular_allocator' [-Wframe-larger-than=]
   ext4_mb_regular_allocator(struct ext4_allocation_context *ac)
   ^
   13 warnings generated.


vim +/ext4_mb_regular_allocator +2614 fs/ext4/mballoc.c

cfd73237722135 Alex Zhuravlev     2020-04-21  2612  
4ddfef7b41aebb Eric Sandeen       2008-04-29  2613  static noinline_for_stack int
4ddfef7b41aebb Eric Sandeen       2008-04-29 @2614  ext4_mb_regular_allocator(struct ext4_allocation_context *ac)
c9de560ded61fa Alex Tomas         2008-01-29  2615  {
cfd73237722135 Alex Zhuravlev     2020-04-21  2616  	ext4_group_t prefetch_grp = 0, ngroups, group, i;
bbc4ec77e9f9c7 Ritesh Harjani     2020-05-10  2617  	int cr = -1;
42ac1848eac588 Lukas Czerner      2015-06-08  2618  	int err = 0, first_err = 0;
cfd73237722135 Alex Zhuravlev     2020-04-21  2619  	unsigned int nr = 0, prefetch_ios = 0;
c9de560ded61fa Alex Tomas         2008-01-29  2620  	struct ext4_sb_info *sbi;
c9de560ded61fa Alex Tomas         2008-01-29  2621  	struct super_block *sb;
c9de560ded61fa Alex Tomas         2008-01-29  2622  	struct ext4_buddy e4b;
66d5e0277e225c brookxu            2020-08-17  2623  	int lost;
c9de560ded61fa Alex Tomas         2008-01-29  2624  
c9de560ded61fa Alex Tomas         2008-01-29  2625  	sb = ac->ac_sb;
c9de560ded61fa Alex Tomas         2008-01-29  2626  	sbi = EXT4_SB(sb);
8df9675f8b498d Theodore Ts'o      2009-05-01  2627  	ngroups = ext4_get_groups_count(sb);
fb0a387dcdcd21 Eric Sandeen       2009-09-16  2628  	/* non-extent files are limited to low blocks/groups */
12e9b892002d9a Dmitry Monakhov    2010-05-16  2629  	if (!(ext4_test_inode_flag(ac->ac_inode, EXT4_INODE_EXTENTS)))
fb0a387dcdcd21 Eric Sandeen       2009-09-16  2630  		ngroups = sbi->s_blockfile_groups;
fb0a387dcdcd21 Eric Sandeen       2009-09-16  2631  
c9de560ded61fa Alex Tomas         2008-01-29  2632  	BUG_ON(ac->ac_status == AC_STATUS_FOUND);
c9de560ded61fa Alex Tomas         2008-01-29  2633  
c9de560ded61fa Alex Tomas         2008-01-29  2634  	/* first, try the goal */
c9de560ded61fa Alex Tomas         2008-01-29  2635  	err = ext4_mb_find_by_goal(ac, &e4b);
c9de560ded61fa Alex Tomas         2008-01-29  2636  	if (err || ac->ac_status == AC_STATUS_FOUND)
c9de560ded61fa Alex Tomas         2008-01-29  2637  		goto out;
c9de560ded61fa Alex Tomas         2008-01-29  2638  
c9de560ded61fa Alex Tomas         2008-01-29  2639  	if (unlikely(ac->ac_flags & EXT4_MB_HINT_GOAL_ONLY))
c9de560ded61fa Alex Tomas         2008-01-29  2640  		goto out;
c9de560ded61fa Alex Tomas         2008-01-29  2641  
c9de560ded61fa Alex Tomas         2008-01-29  2642  	/*
e9a3cd48d65307 brookxu            2020-08-07  2643  	 * ac->ac_2order is set only if the fe_len is a power of 2
e9a3cd48d65307 brookxu            2020-08-07  2644  	 * if ac->ac_2order is set we also set criteria to 0 so that we
c9de560ded61fa Alex Tomas         2008-01-29  2645  	 * try exact allocation using buddy.
c9de560ded61fa Alex Tomas         2008-01-29  2646  	 */
c9de560ded61fa Alex Tomas         2008-01-29  2647  	i = fls(ac->ac_g_ex.fe_len);
c9de560ded61fa Alex Tomas         2008-01-29  2648  	ac->ac_2order = 0;
c9de560ded61fa Alex Tomas         2008-01-29  2649  	/*
c9de560ded61fa Alex Tomas         2008-01-29  2650  	 * We search using buddy data only if the order of the request
c9de560ded61fa Alex Tomas         2008-01-29  2651  	 * is greater than equal to the sbi_s_mb_order2_reqs
b713a5ec55bf73 Theodore Ts'o      2009-03-31  2652  	 * You can tune it via /sys/fs/ext4/<partition>/mb_order2_req
d9b22cf9f5466a Jan Kara           2017-02-10  2653  	 * We also support searching for power-of-two requests only for
d9b22cf9f5466a Jan Kara           2017-02-10  2654  	 * requests upto maximum buddy size we have constructed.
c9de560ded61fa Alex Tomas         2008-01-29  2655  	 */
4b68f6df105966 Harshad Shirwadkar 2021-04-01  2656  	if (i >= sbi->s_mb_order2_reqs && i <= MB_NUM_ORDERS(sb)) {
c9de560ded61fa Alex Tomas         2008-01-29  2657  		/*
c9de560ded61fa Alex Tomas         2008-01-29  2658  		 * This should tell if fe_len is exactly power of 2
c9de560ded61fa Alex Tomas         2008-01-29  2659  		 */
c9de560ded61fa Alex Tomas         2008-01-29  2660  		if ((ac->ac_g_ex.fe_len & (~(1 << (i - 1)))) == 0)
1a5d5e5d51e75a Jeremy Cline       2018-08-02  2661  			ac->ac_2order = array_index_nospec(i - 1,
4b68f6df105966 Harshad Shirwadkar 2021-04-01  2662  							   MB_NUM_ORDERS(sb));
c9de560ded61fa Alex Tomas         2008-01-29  2663  	}
c9de560ded61fa Alex Tomas         2008-01-29  2664  
4ba74d00a20256 Theodore Ts'o      2009-08-09  2665  	/* if stream allocation is enabled, use global goal */
4ba74d00a20256 Theodore Ts'o      2009-08-09  2666  	if (ac->ac_flags & EXT4_MB_STREAM_ALLOC) {
c9de560ded61fa Alex Tomas         2008-01-29  2667  		/* TBD: may be hot point */
c9de560ded61fa Alex Tomas         2008-01-29  2668  		spin_lock(&sbi->s_md_lock);
c9de560ded61fa Alex Tomas         2008-01-29  2669  		ac->ac_g_ex.fe_group = sbi->s_mb_last_group;
c9de560ded61fa Alex Tomas         2008-01-29  2670  		ac->ac_g_ex.fe_start = sbi->s_mb_last_start;
c9de560ded61fa Alex Tomas         2008-01-29  2671  		spin_unlock(&sbi->s_md_lock);
c9de560ded61fa Alex Tomas         2008-01-29  2672  	}
4ba74d00a20256 Theodore Ts'o      2009-08-09  2673  
c9de560ded61fa Alex Tomas         2008-01-29  2674  	/* Let's just scan groups to find more-less suitable blocks */
c9de560ded61fa Alex Tomas         2008-01-29  2675  	cr = ac->ac_2order ? 0 : 1;
c9de560ded61fa Alex Tomas         2008-01-29  2676  	/*
c9de560ded61fa Alex Tomas         2008-01-29  2677  	 * cr == 0 try to get exact allocation,
c9de560ded61fa Alex Tomas         2008-01-29  2678  	 * cr == 3  try to get anything
c9de560ded61fa Alex Tomas         2008-01-29  2679  	 */
c9de560ded61fa Alex Tomas         2008-01-29  2680  repeat:
c9de560ded61fa Alex Tomas         2008-01-29  2681  	for (; cr < 4 && ac->ac_status == AC_STATUS_CONTINUE; cr++) {
c9de560ded61fa Alex Tomas         2008-01-29  2682  		ac->ac_criteria = cr;
ed8f9c751feb3a Aneesh Kumar K.V   2008-07-11  2683  		/*
ed8f9c751feb3a Aneesh Kumar K.V   2008-07-11  2684  		 * searching for the right group start
ed8f9c751feb3a Aneesh Kumar K.V   2008-07-11  2685  		 * from the goal value specified
ed8f9c751feb3a Aneesh Kumar K.V   2008-07-11  2686  		 */
ed8f9c751feb3a Aneesh Kumar K.V   2008-07-11  2687  		group = ac->ac_g_ex.fe_group;
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2688  		ac->ac_last_optimal_group = group;
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2689  		ac->ac_groups_linear_remaining = sbi->s_mb_max_linear_groups;
cfd73237722135 Alex Zhuravlev     2020-04-21  2690  		prefetch_grp = group;
ed8f9c751feb3a Aneesh Kumar K.V   2008-07-11  2691  
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2692  		for (i = 0; i < ngroups; group = next_linear_group(ac, group, ngroups),
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2693  			     i++) {
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2694  			int ret = 0, new_cr;
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2695  
2ed5724d5a78a2 Theodore Ts'o      2013-06-12  2696  			cond_resched();
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2697  
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2698  			ext4_mb_choose_next_group(ac, &new_cr, &group, ngroups);
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2699  			if (new_cr != cr) {
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2700  				cr = new_cr;
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2701  				goto repeat;
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2702  			}
c9de560ded61fa Alex Tomas         2008-01-29  2703  
cfd73237722135 Alex Zhuravlev     2020-04-21  2704  			/*
cfd73237722135 Alex Zhuravlev     2020-04-21  2705  			 * Batch reads of the block allocation bitmaps
cfd73237722135 Alex Zhuravlev     2020-04-21  2706  			 * to get multiple READs in flight; limit
cfd73237722135 Alex Zhuravlev     2020-04-21  2707  			 * prefetching at cr=0/1, otherwise mballoc can
cfd73237722135 Alex Zhuravlev     2020-04-21  2708  			 * spend a lot of time loading imperfect groups
cfd73237722135 Alex Zhuravlev     2020-04-21  2709  			 */
cfd73237722135 Alex Zhuravlev     2020-04-21  2710  			if ((prefetch_grp == group) &&
cfd73237722135 Alex Zhuravlev     2020-04-21  2711  			    (cr > 1 ||
cfd73237722135 Alex Zhuravlev     2020-04-21  2712  			     prefetch_ios < sbi->s_mb_prefetch_limit)) {
cfd73237722135 Alex Zhuravlev     2020-04-21  2713  				unsigned int curr_ios = prefetch_ios;
cfd73237722135 Alex Zhuravlev     2020-04-21  2714  
cfd73237722135 Alex Zhuravlev     2020-04-21  2715  				nr = sbi->s_mb_prefetch;
cfd73237722135 Alex Zhuravlev     2020-04-21  2716  				if (ext4_has_feature_flex_bg(sb)) {
82ef1370b0c175 Chunguang Xu       2020-12-04  2717  					nr = 1 << sbi->s_log_groups_per_flex;
82ef1370b0c175 Chunguang Xu       2020-12-04  2718  					nr -= group & (nr - 1);
82ef1370b0c175 Chunguang Xu       2020-12-04  2719  					nr = min(nr, sbi->s_mb_prefetch);
cfd73237722135 Alex Zhuravlev     2020-04-21  2720  				}
cfd73237722135 Alex Zhuravlev     2020-04-21  2721  				prefetch_grp = ext4_mb_prefetch(sb, group,
cfd73237722135 Alex Zhuravlev     2020-04-21  2722  							nr, &prefetch_ios);
cfd73237722135 Alex Zhuravlev     2020-04-21  2723  				if (prefetch_ios == curr_ios)
cfd73237722135 Alex Zhuravlev     2020-04-21  2724  					nr = 0;
cfd73237722135 Alex Zhuravlev     2020-04-21  2725  			}
cfd73237722135 Alex Zhuravlev     2020-04-21  2726  
8a57d9d61a6e36 Curt Wohlgemuth    2010-05-16  2727  			/* This now checks without needing the buddy page */
8ef123fe02ca09 Ritesh Harjani     2020-05-20  2728  			ret = ext4_mb_good_group_nolock(ac, group, cr);
42ac1848eac588 Lukas Czerner      2015-06-08  2729  			if (ret <= 0) {
42ac1848eac588 Lukas Czerner      2015-06-08  2730  				if (!first_err)
42ac1848eac588 Lukas Czerner      2015-06-08  2731  					first_err = ret;
c9de560ded61fa Alex Tomas         2008-01-29  2732  				continue;
42ac1848eac588 Lukas Czerner      2015-06-08  2733  			}
c9de560ded61fa Alex Tomas         2008-01-29  2734  
c9de560ded61fa Alex Tomas         2008-01-29  2735  			err = ext4_mb_load_buddy(sb, group, &e4b);
c9de560ded61fa Alex Tomas         2008-01-29  2736  			if (err)
c9de560ded61fa Alex Tomas         2008-01-29  2737  				goto out;
c9de560ded61fa Alex Tomas         2008-01-29  2738  
c9de560ded61fa Alex Tomas         2008-01-29  2739  			ext4_lock_group(sb, group);
8a57d9d61a6e36 Curt Wohlgemuth    2010-05-16  2740  
8a57d9d61a6e36 Curt Wohlgemuth    2010-05-16  2741  			/*
8a57d9d61a6e36 Curt Wohlgemuth    2010-05-16  2742  			 * We need to check again after locking the
8a57d9d61a6e36 Curt Wohlgemuth    2010-05-16  2743  			 * block group
8a57d9d61a6e36 Curt Wohlgemuth    2010-05-16  2744  			 */
42ac1848eac588 Lukas Czerner      2015-06-08  2745  			ret = ext4_mb_good_group(ac, group, cr);
8ef123fe02ca09 Ritesh Harjani     2020-05-20  2746  			if (ret == 0) {
c9de560ded61fa Alex Tomas         2008-01-29  2747  				ext4_unlock_group(sb, group);
e39e07fdfd98be Jing Zhang         2010-05-14  2748  				ext4_mb_unload_buddy(&e4b);
c9de560ded61fa Alex Tomas         2008-01-29  2749  				continue;
c9de560ded61fa Alex Tomas         2008-01-29  2750  			}
c9de560ded61fa Alex Tomas         2008-01-29  2751  
c9de560ded61fa Alex Tomas         2008-01-29  2752  			ac->ac_groups_scanned++;
d9b22cf9f5466a Jan Kara           2017-02-10  2753  			if (cr == 0)
c9de560ded61fa Alex Tomas         2008-01-29  2754  				ext4_mb_simple_scan_group(ac, &e4b);
506bf2d82165c0 Eric Sandeen       2010-07-27  2755  			else if (cr == 1 && sbi->s_stripe &&
506bf2d82165c0 Eric Sandeen       2010-07-27  2756  					!(ac->ac_g_ex.fe_len % sbi->s_stripe))
c9de560ded61fa Alex Tomas         2008-01-29  2757  				ext4_mb_scan_aligned(ac, &e4b);
c9de560ded61fa Alex Tomas         2008-01-29  2758  			else
c9de560ded61fa Alex Tomas         2008-01-29  2759  				ext4_mb_complex_scan_group(ac, &e4b);
c9de560ded61fa Alex Tomas         2008-01-29  2760  
c9de560ded61fa Alex Tomas         2008-01-29  2761  			ext4_unlock_group(sb, group);
e39e07fdfd98be Jing Zhang         2010-05-14  2762  			ext4_mb_unload_buddy(&e4b);
c9de560ded61fa Alex Tomas         2008-01-29  2763  
c9de560ded61fa Alex Tomas         2008-01-29  2764  			if (ac->ac_status != AC_STATUS_CONTINUE)
c9de560ded61fa Alex Tomas         2008-01-29  2765  				break;
c9de560ded61fa Alex Tomas         2008-01-29  2766  		}
a6c75eaf11032f Harshad Shirwadkar 2021-04-01  2767  		/* Processed all groups and haven't found blocks */
a6c75eaf11032f Harshad Shirwadkar 2021-04-01  2768  		if (sbi->s_mb_stats && i == ngroups)
a6c75eaf11032f Harshad Shirwadkar 2021-04-01  2769  			atomic64_inc(&sbi->s_bal_cX_failed[cr]);
c9de560ded61fa Alex Tomas         2008-01-29  2770  	}
c9de560ded61fa Alex Tomas         2008-01-29  2771  
c9de560ded61fa Alex Tomas         2008-01-29  2772  	if (ac->ac_b_ex.fe_len > 0 && ac->ac_status != AC_STATUS_FOUND &&
c9de560ded61fa Alex Tomas         2008-01-29  2773  	    !(ac->ac_flags & EXT4_MB_HINT_FIRST)) {
c9de560ded61fa Alex Tomas         2008-01-29  2774  		/*
c9de560ded61fa Alex Tomas         2008-01-29  2775  		 * We've been searching too long. Let's try to allocate
c9de560ded61fa Alex Tomas         2008-01-29  2776  		 * the best chunk we've found so far
c9de560ded61fa Alex Tomas         2008-01-29  2777  		 */
c9de560ded61fa Alex Tomas         2008-01-29  2778  		ext4_mb_try_best_found(ac, &e4b);
c9de560ded61fa Alex Tomas         2008-01-29  2779  		if (ac->ac_status != AC_STATUS_FOUND) {
c9de560ded61fa Alex Tomas         2008-01-29  2780  			/*
c9de560ded61fa Alex Tomas         2008-01-29  2781  			 * Someone more lucky has already allocated it.
c9de560ded61fa Alex Tomas         2008-01-29  2782  			 * The only thing we can do is just take first
c9de560ded61fa Alex Tomas         2008-01-29  2783  			 * found block(s)
c9de560ded61fa Alex Tomas         2008-01-29  2784  			 */
66d5e0277e225c brookxu            2020-08-17  2785  			lost = atomic_inc_return(&sbi->s_mb_lost_chunks);
66d5e0277e225c brookxu            2020-08-17  2786  			mb_debug(sb, "lost chunk, group: %u, start: %d, len: %d, lost: %d\n",
c55ee7d202857b brookxu            2020-08-15  2787  				 ac->ac_b_ex.fe_group, ac->ac_b_ex.fe_start,
c55ee7d202857b brookxu            2020-08-15  2788  				 ac->ac_b_ex.fe_len, lost);
c55ee7d202857b brookxu            2020-08-15  2789  
c9de560ded61fa Alex Tomas         2008-01-29  2790  			ac->ac_b_ex.fe_group = 0;
c9de560ded61fa Alex Tomas         2008-01-29  2791  			ac->ac_b_ex.fe_start = 0;
c9de560ded61fa Alex Tomas         2008-01-29  2792  			ac->ac_b_ex.fe_len = 0;
c9de560ded61fa Alex Tomas         2008-01-29  2793  			ac->ac_status = AC_STATUS_CONTINUE;
c9de560ded61fa Alex Tomas         2008-01-29  2794  			ac->ac_flags |= EXT4_MB_HINT_FIRST;
c9de560ded61fa Alex Tomas         2008-01-29  2795  			cr = 3;
c9de560ded61fa Alex Tomas         2008-01-29  2796  			goto repeat;
c9de560ded61fa Alex Tomas         2008-01-29  2797  		}
c9de560ded61fa Alex Tomas         2008-01-29  2798  	}
a6c75eaf11032f Harshad Shirwadkar 2021-04-01  2799  
a6c75eaf11032f Harshad Shirwadkar 2021-04-01  2800  	if (sbi->s_mb_stats && ac->ac_status == AC_STATUS_FOUND)
a6c75eaf11032f Harshad Shirwadkar 2021-04-01  2801  		atomic64_inc(&sbi->s_bal_cX_hits[ac->ac_criteria]);
c9de560ded61fa Alex Tomas         2008-01-29  2802  out:
42ac1848eac588 Lukas Czerner      2015-06-08  2803  	if (!err && ac->ac_status != AC_STATUS_FOUND && first_err)
42ac1848eac588 Lukas Czerner      2015-06-08  2804  		err = first_err;
bbc4ec77e9f9c7 Ritesh Harjani     2020-05-10  2805  
d3df14535f4a5b Ritesh Harjani     2020-05-10  2806  	mb_debug(sb, "Best len %d, origin len %d, ac_status %u, ac_flags 0x%x, cr %d ret %d\n",
bbc4ec77e9f9c7 Ritesh Harjani     2020-05-10  2807  		 ac->ac_b_ex.fe_len, ac->ac_o_ex.fe_len, ac->ac_status,
bbc4ec77e9f9c7 Ritesh Harjani     2020-05-10  2808  		 ac->ac_flags, cr, err);
cfd73237722135 Alex Zhuravlev     2020-04-21  2809  
cfd73237722135 Alex Zhuravlev     2020-04-21  2810  	if (nr)
cfd73237722135 Alex Zhuravlev     2020-04-21  2811  		ext4_mb_prefetch_fini(sb, prefetch_grp, nr);
cfd73237722135 Alex Zhuravlev     2020-04-21  2812  
c9de560ded61fa Alex Tomas         2008-01-29  2813  	return err;
c9de560ded61fa Alex Tomas         2008-01-29  2814  }
c9de560ded61fa Alex Tomas         2008-01-29  2815  

:::::: The code at line 2614 was first introduced by commit
:::::: 4ddfef7b41aebbbede73f361cb938800ba3072dc ext4: reduce mballoc stack usage with noinline_for_stack

:::::: TO: Eric Sandeen <sandeen@redhat.com>
:::::: CC: Theodore Ts'o <tytso@mit.edu>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104202112.1Cba8V4g-lkp%40intel.com.

--PEIAKu/WMn1b1Hv9
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--PEIAKu/WMn1b1Hv9--
