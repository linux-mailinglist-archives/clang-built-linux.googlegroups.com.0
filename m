Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBC7EV6CAMGQEWYLA2SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 4958836F9B7
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 14:03:24 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id l10-20020a67d50a0000b029022737940836sf227235vsj.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 05:03:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619784203; cv=pass;
        d=google.com; s=arc-20160816;
        b=nMEbBfig+w+mwXYY5OWUGbockywO0iSotO6+0OPANUyfJhFPf/wo4fyJWipXGZ+fj/
         6XZ5scNI2u3cjaKD0AByRv2EJyfMYNbtU+KVWHi3ATOoJFSFTMXT3t6R6VC4LKJtWFJl
         Sz6GFZjfCl2/iJQ44+0Fnp0Nf0AyzBE1l5WHR0GhAv9vBl8X6fnPwUCTIkSlgkViT5hh
         0Gdc9/CNt8x5Wj9POKyn4J3dggkEJkHyWaJhvPMoPBbh3HQQFC2TwzxEVIfdxP3BtfoM
         +Kfs83HY9JgWklp/ZN1Wf7q+mSDnYolDy9z4dHhBsKSmEd46/yI0YxcF96MMDtMO7NLF
         EWUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=VI/wa1QOIJ+1NX191xp8lDkUmQAsUOvntcIUBZxM/4s=;
        b=b3Ot+50mt/rdifXhoF8CP1LjqQZkTYWzrj+B8LaCa1cD3Azgbr7Jfl8ztE7f+5MC46
         ak7YPVuVGXXECxfpD1905h58o18moQOPGFIQJigso1lZuSaAUiWHsijPkTTih3OsR6Nd
         Yn+4abeqN/PyYJyeJwV5cxuaAtHlmeyfoR8+elSl238brN4nEGzQj16IwlvBIlihJLFw
         wVkESHKIA/SEAofFrbnaEaoFep/57BiL1kvqIhjU8i7yVLuEWZJGV+EotGCFc4LzzhPk
         fmnh6EbWH+dbtqSZKTu0VcyWwtp5DOI6nDWhm4bzYik1M5LmgKlbKjt5pZGxACWizOXO
         qhLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VI/wa1QOIJ+1NX191xp8lDkUmQAsUOvntcIUBZxM/4s=;
        b=h66vKJUXxdJhge+sviDD3jV7+sXegRz5ntfGY1axj5826qJPmlOtrZ0TtU9baFGQVf
         LPHqANOm00/G/ustOrfemfXSwuv8m+aYT+67b8NxTffY7oCeA6RMwhgqh4fvtacMVJdx
         UfZO2rwn3yz9q2n41tCBaBLTq3HOST8uuCvnzfGF/vEUzxRXnuFvdQ1J6jJqq2wNlOhe
         b3N3gDNu/BanCLyg931ONOi+149lGOq6H7nYcmMNx7Sl8JvENXFaWlUWUzkFnvaiL4bS
         QYI+ALNlsZVcvSBR/Fo1x6FyAolJizDASQdrLx1kOOH5e9DygXFLCU7pOHhn9MlMc5pY
         R2kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VI/wa1QOIJ+1NX191xp8lDkUmQAsUOvntcIUBZxM/4s=;
        b=YaXFSO4mNfkoTr76RuvJZXMC1voum7mvM41zNzqiGMj74Vcto+M7BQOXaKjziujWyK
         yTW+GC1wmWaInlSHFIROlobQly3M87vcTM+LlZ2I9TIBflgZrSn7l//eZeOx/qee9tw3
         jMhqIXSdesf3c4ZuFpdKLvrnIhv61EfKS6ppBmxq+1+gTpYLDLqZhB3Zu4n1cVXmojse
         PVc2cwi8AfLkid6usLvb2kzR7M6XhsafxE5RUGwYFBVlHWSc+4i/PG7VNaYBW6BQ2Qp3
         4tB6VZecJmSKupVGDEGTLvv1QBSU+8TPW6GzDaBHh9d/qHEB/dRUjILo8oUG6wQndOg9
         f0eQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530l2SjQYlEUH53o1iUQfSzKKGOEmNlVaaFhCPNUSS/YF0mhu8Bh
	vmRU9joE0ZBaSjnEUD/2vxY=
X-Google-Smtp-Source: ABdhPJzQW0D7UQUZN7p055mPFrsFnlvyaw/rXrk5YaoJWFaRlvf07HFahm6n/EYiwfTGxV3Seus9pw==
X-Received: by 2002:ac5:ccca:: with SMTP id j10mr5433713vkn.0.1619784203253;
        Fri, 30 Apr 2021 05:03:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:31d0:: with SMTP id x199ls1193007vsx.0.gmail; Fri, 30
 Apr 2021 05:03:22 -0700 (PDT)
X-Received: by 2002:a67:fc57:: with SMTP id p23mr5585292vsq.40.1619784202530;
        Fri, 30 Apr 2021 05:03:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619784202; cv=none;
        d=google.com; s=arc-20160816;
        b=ZBji2ZrjSRvE2t59Dgiagd84HwmnSdvIZKPR1zFDjFwBsSFERXFVeaShNnwWLFMZCP
         l7qnUnLIUyOVykI82+oStzP45KsmEIw1ExPZabS1sp3TbjcDNunAGuxraVLJIXrTOBu0
         K4JP+c6uVRBRQtE+sZo1FAI1IXlo5q4ZyfK2Gg/M9jZkSp7I24N1y1a3gIszlav47QIs
         RvqDBYPiaqsujRl6vUKNLcubyjdrT+c3vlNAolfKt5dErmgqDomqT03FUoFjeVsKAAVx
         ZLI6bBXpX0artNeb22pixTgtijaX0jRIwfa1YfrWgh9900otULroZQWhnmIL1m1ThKoI
         uYEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=6+O2b86RlIsEirgllnspcWDsQzM812Bg6tYEpRJkQ5g=;
        b=Id8sbWS4Fc48lazc7v4wmCJTSyQ58Aq0ZNen6+lzvUkjXZbDmoP1lrRmXTcLJU6yqj
         etDLsqBeFJvADzoV8P189MwVS9Yg4O9QYWu8ZUAyAjjIFS973aNVCEBmKYO3Sen4UET7
         IOPNdHmZKyEOqFjCmujfFoQUgptJkal//W693SR1NI49Yt2oj/7McQt2T+c+irGpGbZi
         h1rqxqcaYOngVKopYhxmnbEmLlgBC9wMjNIMFjPdf3MRMk34c+p52LREFAqhEo5VO09/
         x1zGmfse7hvR52HVU3Rd9YUZg9ND40XSINGhU4VcvMjhDH02JiBP3SomDGrLmXvQnLQt
         qlgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id v23si548851uak.0.2021.04.30.05.03.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Apr 2021 05:03:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: jKMsKZ3vInXErQBK6vHn9cJ6MlR0FX3gRfcxS8ikowQ+qSh5wumHxsZpVJgqiJUAnZv6atCJuC
 BapaG6OXBA9Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="176744048"
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; 
   d="gz'50?scan'50,208,50";a="176744048"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Apr 2021 05:03:20 -0700
IronPort-SDR: 2GxHWCYei0UptnLhXB2eOwz7umkHDToEhu+2AVRb5vedNi61m3Ja5DjwF6j6rycKtB9jbzStHm
 gL8Cn06w1fKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; 
   d="gz'50?scan'50,208,50";a="459392272"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 30 Apr 2021 05:03:17 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lcRrY-00088j-Tn; Fri, 30 Apr 2021 12:03:16 +0000
Date: Fri, 30 Apr 2021 20:03:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: fs/ntfs/file.c:1727:16: warning: stack frame size of 4064 bytes in
 function 'ntfs_perform_write'
Message-ID: <202104302043.QTwjFznm-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pWyiEgJYm5f9v55/"
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


--pWyiEgJYm5f9v55/
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   8ca5297e7e38f2dc8c753d33a5092e7be181fff0
commit: 0060ef3b4e6dd1410da164d48a595eadb2fb02f7 mm: support THPs in zero_user_segments
date:   5 months ago
config: powerpc-randconfig-r023-20210430 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0060ef3b4e6dd1410da164d48a595eadb2fb02f7
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 0060ef3b4e6dd1410da164d48a595eadb2fb02f7
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:109:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/ntfs/file.c:8:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:113:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/ntfs/file.c:8:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:117:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/ntfs/file.c:8:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:121:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/ntfs/file.c:8:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
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
   <scratch space>:125:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> fs/ntfs/file.c:1727:16: warning: stack frame size of 4064 bytes in function 'ntfs_perform_write' [-Wframe-larger-than=]
   static ssize_t ntfs_perform_write(struct file *file, struct iov_iter *i,
                  ^
   13 warnings generated.


vim +/ntfs_perform_write +1727 fs/ntfs/file.c

9014da7525dffe Marco Stornelli    2012-12-15  1720  
98b270362bb9ea Anton Altaparmakov 2005-10-11  1721  /**
a632f559304130 Anton Altaparmakov 2015-03-11  1722   * ntfs_perform_write - perform buffered write to a file
a632f559304130 Anton Altaparmakov 2015-03-11  1723   * @file:	file to write to
a632f559304130 Anton Altaparmakov 2015-03-11  1724   * @i:		iov_iter with data to write
a632f559304130 Anton Altaparmakov 2015-03-11  1725   * @pos:	byte offset in file at which to begin writing to
98b270362bb9ea Anton Altaparmakov 2005-10-11  1726   */
a632f559304130 Anton Altaparmakov 2015-03-11 @1727  static ssize_t ntfs_perform_write(struct file *file, struct iov_iter *i,
a632f559304130 Anton Altaparmakov 2015-03-11  1728  		loff_t pos)
98b270362bb9ea Anton Altaparmakov 2005-10-11  1729  {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1730  	struct address_space *mapping = file->f_mapping;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1731  	struct inode *vi = mapping->host;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1732  	ntfs_inode *ni = NTFS_I(vi);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1733  	ntfs_volume *vol = ni->vol;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1734  	struct page *pages[NTFS_MAX_PAGES_PER_CLUSTER];
98b270362bb9ea Anton Altaparmakov 2005-10-11  1735  	struct page *cached_page = NULL;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1736  	VCN last_vcn;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1737  	LCN lcn;
a632f559304130 Anton Altaparmakov 2015-03-11  1738  	size_t bytes;
a632f559304130 Anton Altaparmakov 2015-03-11  1739  	ssize_t status, written = 0;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1740  	unsigned nr_pages;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1741  
a632f559304130 Anton Altaparmakov 2015-03-11  1742  	ntfs_debug("Entering for i_ino 0x%lx, attribute type 0x%x, pos "
a632f559304130 Anton Altaparmakov 2015-03-11  1743  			"0x%llx, count 0x%lx.", vi->i_ino,
a632f559304130 Anton Altaparmakov 2015-03-11  1744  			(unsigned)le32_to_cpu(ni->type),
a632f559304130 Anton Altaparmakov 2015-03-11  1745  			(unsigned long long)pos,
a632f559304130 Anton Altaparmakov 2015-03-11  1746  			(unsigned long)iov_iter_count(i));
98b270362bb9ea Anton Altaparmakov 2005-10-11  1747  	/*
98b270362bb9ea Anton Altaparmakov 2005-10-11  1748  	 * If a previous ntfs_truncate() failed, repeat it and abort if it
98b270362bb9ea Anton Altaparmakov 2005-10-11  1749  	 * fails again.
98b270362bb9ea Anton Altaparmakov 2005-10-11  1750  	 */
98b270362bb9ea Anton Altaparmakov 2005-10-11  1751  	if (unlikely(NInoTruncateFailed(ni))) {
a632f559304130 Anton Altaparmakov 2015-03-11  1752  		int err;
a632f559304130 Anton Altaparmakov 2015-03-11  1753  
bd5fe6c5eb9c54 Christoph Hellwig  2011-06-24  1754  		inode_dio_wait(vi);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1755  		err = ntfs_truncate(vi);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1756  		if (err || NInoTruncateFailed(ni)) {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1757  			if (!err)
98b270362bb9ea Anton Altaparmakov 2005-10-11  1758  				err = -EIO;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1759  			ntfs_error(vol->sb, "Cannot perform write to inode "
98b270362bb9ea Anton Altaparmakov 2005-10-11  1760  					"0x%lx, attribute type 0x%x, because "
98b270362bb9ea Anton Altaparmakov 2005-10-11  1761  					"ntfs_truncate() failed (error code "
98b270362bb9ea Anton Altaparmakov 2005-10-11  1762  					"%i).", vi->i_ino,
98b270362bb9ea Anton Altaparmakov 2005-10-11  1763  					(unsigned)le32_to_cpu(ni->type), err);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1764  			return err;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1765  		}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1766  	}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1767  	/*
98b270362bb9ea Anton Altaparmakov 2005-10-11  1768  	 * Determine the number of pages per cluster for non-resident
98b270362bb9ea Anton Altaparmakov 2005-10-11  1769  	 * attributes.
98b270362bb9ea Anton Altaparmakov 2005-10-11  1770  	 */
98b270362bb9ea Anton Altaparmakov 2005-10-11  1771  	nr_pages = 1;
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1772  	if (vol->cluster_size > PAGE_SIZE && NInoNonResident(ni))
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1773  		nr_pages = vol->cluster_size >> PAGE_SHIFT;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1774  	last_vcn = -1;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1775  	do {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1776  		VCN vcn;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1777  		pgoff_t idx, start_idx;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1778  		unsigned ofs, do_pages, u;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1779  		size_t copied;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1780  
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1781  		start_idx = idx = pos >> PAGE_SHIFT;
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1782  		ofs = pos & ~PAGE_MASK;
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1783  		bytes = PAGE_SIZE - ofs;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1784  		do_pages = 1;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1785  		if (nr_pages > 1) {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1786  			vcn = pos >> vol->cluster_size_bits;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1787  			if (vcn != last_vcn) {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1788  				last_vcn = vcn;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1789  				/*
98b270362bb9ea Anton Altaparmakov 2005-10-11  1790  				 * Get the lcn of the vcn the write is in.  If
98b270362bb9ea Anton Altaparmakov 2005-10-11  1791  				 * it is a hole, need to lock down all pages in
98b270362bb9ea Anton Altaparmakov 2005-10-11  1792  				 * the cluster.
98b270362bb9ea Anton Altaparmakov 2005-10-11  1793  				 */
98b270362bb9ea Anton Altaparmakov 2005-10-11  1794  				down_read(&ni->runlist.lock);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1795  				lcn = ntfs_attr_vcn_to_lcn_nolock(ni, pos >>
c49c31115067bc Richard Knutsson   2006-09-30  1796  						vol->cluster_size_bits, false);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1797  				up_read(&ni->runlist.lock);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1798  				if (unlikely(lcn < LCN_HOLE)) {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1799  					if (lcn == LCN_ENOMEM)
98b270362bb9ea Anton Altaparmakov 2005-10-11  1800  						status = -ENOMEM;
a632f559304130 Anton Altaparmakov 2015-03-11  1801  					else {
a632f559304130 Anton Altaparmakov 2015-03-11  1802  						status = -EIO;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1803  						ntfs_error(vol->sb, "Cannot "
98b270362bb9ea Anton Altaparmakov 2005-10-11  1804  							"perform write to "
98b270362bb9ea Anton Altaparmakov 2005-10-11  1805  							"inode 0x%lx, "
98b270362bb9ea Anton Altaparmakov 2005-10-11  1806  							"attribute type 0x%x, "
98b270362bb9ea Anton Altaparmakov 2005-10-11  1807  							"because the attribute "
98b270362bb9ea Anton Altaparmakov 2005-10-11  1808  							"is corrupt.",
98b270362bb9ea Anton Altaparmakov 2005-10-11  1809  							vi->i_ino, (unsigned)
98b270362bb9ea Anton Altaparmakov 2005-10-11  1810  							le32_to_cpu(ni->type));
a632f559304130 Anton Altaparmakov 2015-03-11  1811  					}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1812  					break;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1813  				}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1814  				if (lcn == LCN_HOLE) {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1815  					start_idx = (pos & ~(s64)
98b270362bb9ea Anton Altaparmakov 2005-10-11  1816  							vol->cluster_size_mask)
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1817  							>> PAGE_SHIFT;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1818  					bytes = vol->cluster_size - (pos &
98b270362bb9ea Anton Altaparmakov 2005-10-11  1819  							vol->cluster_size_mask);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1820  					do_pages = nr_pages;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1821  				}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1822  			}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1823  		}
a632f559304130 Anton Altaparmakov 2015-03-11  1824  		if (bytes > iov_iter_count(i))
a632f559304130 Anton Altaparmakov 2015-03-11  1825  			bytes = iov_iter_count(i);
a632f559304130 Anton Altaparmakov 2015-03-11  1826  again:
98b270362bb9ea Anton Altaparmakov 2005-10-11  1827  		/*
98b270362bb9ea Anton Altaparmakov 2005-10-11  1828  		 * Bring in the user page(s) that we will copy from _first_.
98b270362bb9ea Anton Altaparmakov 2005-10-11  1829  		 * Otherwise there is a nasty deadlock on copying from the same
98b270362bb9ea Anton Altaparmakov 2005-10-11  1830  		 * page(s) as we are writing to, without it/them being marked
98b270362bb9ea Anton Altaparmakov 2005-10-11  1831  		 * up-to-date.  Note, at present there is nothing to stop the
98b270362bb9ea Anton Altaparmakov 2005-10-11  1832  		 * pages being swapped out between us bringing them into memory
98b270362bb9ea Anton Altaparmakov 2005-10-11  1833  		 * and doing the actual copying.
98b270362bb9ea Anton Altaparmakov 2005-10-11  1834  		 */
4bce9f6ee8f84f Al Viro            2016-09-17  1835  		if (unlikely(iov_iter_fault_in_readable(i, bytes))) {
a632f559304130 Anton Altaparmakov 2015-03-11  1836  			status = -EFAULT;
a632f559304130 Anton Altaparmakov 2015-03-11  1837  			break;
a632f559304130 Anton Altaparmakov 2015-03-11  1838  		}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1839  		/* Get and lock @do_pages starting at index @start_idx. */
98b270362bb9ea Anton Altaparmakov 2005-10-11  1840  		status = __ntfs_grab_cache_pages(mapping, start_idx, do_pages,
4c99000ac47cbd Minchan Kim        2010-05-24  1841  				pages, &cached_page);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1842  		if (unlikely(status))
98b270362bb9ea Anton Altaparmakov 2005-10-11  1843  			break;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1844  		/*
98b270362bb9ea Anton Altaparmakov 2005-10-11  1845  		 * For non-resident attributes, we need to fill any holes with
98b270362bb9ea Anton Altaparmakov 2005-10-11  1846  		 * actual clusters and ensure all bufferes are mapped.  We also
98b270362bb9ea Anton Altaparmakov 2005-10-11  1847  		 * need to bring uptodate any buffers that are only partially
98b270362bb9ea Anton Altaparmakov 2005-10-11  1848  		 * being written to.
98b270362bb9ea Anton Altaparmakov 2005-10-11  1849  		 */
98b270362bb9ea Anton Altaparmakov 2005-10-11  1850  		if (NInoNonResident(ni)) {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1851  			status = ntfs_prepare_pages_for_non_resident_write(
98b270362bb9ea Anton Altaparmakov 2005-10-11  1852  					pages, do_pages, pos, bytes);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1853  			if (unlikely(status)) {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1854  				do {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1855  					unlock_page(pages[--do_pages]);
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1856  					put_page(pages[do_pages]);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1857  				} while (do_pages);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1858  				break;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1859  			}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1860  		}
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1861  		u = (pos >> PAGE_SHIFT) - pages[0]->index;
a632f559304130 Anton Altaparmakov 2015-03-11  1862  		copied = ntfs_copy_from_user_iter(pages + u, do_pages - u, ofs,
a632f559304130 Anton Altaparmakov 2015-03-11  1863  					i, bytes);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1864  		ntfs_flush_dcache_pages(pages + u, do_pages - u);
a632f559304130 Anton Altaparmakov 2015-03-11  1865  		status = 0;
a632f559304130 Anton Altaparmakov 2015-03-11  1866  		if (likely(copied == bytes)) {
a632f559304130 Anton Altaparmakov 2015-03-11  1867  			status = ntfs_commit_pages_after_write(pages, do_pages,
a632f559304130 Anton Altaparmakov 2015-03-11  1868  					pos, bytes);
a632f559304130 Anton Altaparmakov 2015-03-11  1869  			if (!status)
a632f559304130 Anton Altaparmakov 2015-03-11  1870  				status = bytes;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1871  		}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1872  		do {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1873  			unlock_page(pages[--do_pages]);
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1874  			put_page(pages[do_pages]);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1875  		} while (do_pages);
a632f559304130 Anton Altaparmakov 2015-03-11  1876  		if (unlikely(status < 0))
98b270362bb9ea Anton Altaparmakov 2005-10-11  1877  			break;
a632f559304130 Anton Altaparmakov 2015-03-11  1878  		copied = status;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1879  		cond_resched();
a632f559304130 Anton Altaparmakov 2015-03-11  1880  		if (unlikely(!copied)) {
a632f559304130 Anton Altaparmakov 2015-03-11  1881  			size_t sc;
a632f559304130 Anton Altaparmakov 2015-03-11  1882  
a632f559304130 Anton Altaparmakov 2015-03-11  1883  			/*
a632f559304130 Anton Altaparmakov 2015-03-11  1884  			 * We failed to copy anything.  Fall back to single
a632f559304130 Anton Altaparmakov 2015-03-11  1885  			 * segment length write.
a632f559304130 Anton Altaparmakov 2015-03-11  1886  			 *
a632f559304130 Anton Altaparmakov 2015-03-11  1887  			 * This is needed to avoid possible livelock in the
a632f559304130 Anton Altaparmakov 2015-03-11  1888  			 * case that all segments in the iov cannot be copied
a632f559304130 Anton Altaparmakov 2015-03-11  1889  			 * at once without a pagefault.
a632f559304130 Anton Altaparmakov 2015-03-11  1890  			 */
a632f559304130 Anton Altaparmakov 2015-03-11  1891  			sc = iov_iter_single_seg_count(i);
a632f559304130 Anton Altaparmakov 2015-03-11  1892  			if (bytes > sc)
a632f559304130 Anton Altaparmakov 2015-03-11  1893  				bytes = sc;
a632f559304130 Anton Altaparmakov 2015-03-11  1894  			goto again;
a632f559304130 Anton Altaparmakov 2015-03-11  1895  		}
a632f559304130 Anton Altaparmakov 2015-03-11  1896  		iov_iter_advance(i, copied);
a632f559304130 Anton Altaparmakov 2015-03-11  1897  		pos += copied;
a632f559304130 Anton Altaparmakov 2015-03-11  1898  		written += copied;
a632f559304130 Anton Altaparmakov 2015-03-11  1899  		balance_dirty_pages_ratelimited(mapping);
a632f559304130 Anton Altaparmakov 2015-03-11  1900  		if (fatal_signal_pending(current)) {
a632f559304130 Anton Altaparmakov 2015-03-11  1901  			status = -EINTR;
a632f559304130 Anton Altaparmakov 2015-03-11  1902  			break;
a632f559304130 Anton Altaparmakov 2015-03-11  1903  		}
a632f559304130 Anton Altaparmakov 2015-03-11  1904  	} while (iov_iter_count(i));
98b270362bb9ea Anton Altaparmakov 2005-10-11  1905  	if (cached_page)
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1906  		put_page(cached_page);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1907  	ntfs_debug("Done.  Returning %s (written 0x%lx, status %li).",
98b270362bb9ea Anton Altaparmakov 2005-10-11  1908  			written ? "written" : "status", (unsigned long)written,
98b270362bb9ea Anton Altaparmakov 2005-10-11  1909  			(long)status);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1910  	return written ? written : status;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1911  }
98b270362bb9ea Anton Altaparmakov 2005-10-11  1912  

:::::: The code at line 1727 was first introduced by commit
:::::: a632f5593041305c8adbf4727bc1ccdf0b45178b NTFS: Version 2.1.32 - Update file write from aio_write to write_iter.

:::::: TO: Anton Altaparmakov <anton@tuxera.com>
:::::: CC: Al Viro <viro@zeniv.linux.org.uk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104302043.QTwjFznm-lkp%40intel.com.

--pWyiEgJYm5f9v55/
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--pWyiEgJYm5f9v55/--
