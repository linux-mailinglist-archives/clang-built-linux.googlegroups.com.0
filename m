Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBCVYY6CQMGQEZGQGUIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD7F394ABB
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 May 2021 08:15:40 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id r6-20020a9276060000b02901d941f0ce72sf1013236ilc.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 23:15:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622268939; cv=pass;
        d=google.com; s=arc-20160816;
        b=XR4zavPYfOMp4pnkjPTRnBpUO7eIRvllNaKV1fnoA7zSIkdLMH9rJCojhv7WMM5Q6l
         z5vIpc+dWBYdjRx8+LuuowPycAeEBmK3QRab/lwZMsNGwf8OCA0UOp6B532hwx7Ris+y
         J4bdHNovg0op6WqWf3x8UqmPOFmzQwvB9DlExFY//BffqO/lxByMXJokvkTqmvAVL9D6
         Da33jTPPGmbzw2YvW8txaoqK2JbkyCR+ej3lTO/C1tWflGVmK12vcQfJZBJsI6pLZszF
         4vW1QBvIfLyqQtfP8qg/azQ+U2TystKzaCX+dK+juK6kD/kgwGa8IhOLgj3Kkqtlvk+Y
         KSmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=9hksI5tjASF9vioZ8rrSqKm6SIx2LhNMOya2WwNex7I=;
        b=PYONohd04Eb9lPoqWE+7iUhZG4CeDkI72SNFMzIUkpTjV6bKU8I/LZaj/ZKzJOuGiE
         0rcN/zNbE3a14zsxmZWnQh9/7DSEK8QXkyv2pVLS3l345QKjrTIpkntG8pDxCieO5h/e
         Sh6d/bfpCtcDigo3zLKA89DDqN+qSs8m8u1Ae2EHOKcTZMMcpD92lWGpCgnvUQRvLZQ4
         85bu+JwYoIFNWIvhS3HeDS8TMU7fOE6Ib0vrRmA8yW1x1sUB+cdMzwjhe7yiU3uT+TqV
         Ue4iCDJqpNQz6+sfdL64K9V1bMIZHytlRw6KP23Gbq4hpsA7JaxucUMp0v7OJ7C2EgSi
         UOMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9hksI5tjASF9vioZ8rrSqKm6SIx2LhNMOya2WwNex7I=;
        b=TgZAYcDR6C5h6LqyFa1WMT1EhC0wJw5PYgdsHFUsBecVw15i69bZB8HL4Vg+l2ezB6
         IUBGQb5jfKSiXDzY3738NPp2Os/7aeicrHRFJOLvBPEdEPMi4sH44+oAjf/WysZQxssL
         J7zdYT83Agxd0zcLvQ83vGjdVOidYPn5nVErbnGZ4iF2U49BjfWJysaCtAnNgafP0uz1
         X/dt5E2qLs6JRbODNtfvPo/SrsjkmdR2WTbFuO3x35VmY+vVS3hQQSMJcioMeJlh1KSn
         zv5mltZAzvOMMD1CLVDT7YI/qhg8LG0jKDueohynIBGATrN3XzGx+5puihSrRkXXlEOZ
         1rWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9hksI5tjASF9vioZ8rrSqKm6SIx2LhNMOya2WwNex7I=;
        b=p0YNfZWAOs3b38BTwYW2eLvpeM9VqI4QcQBfkYP2A0JNK4roBjKft6nBA6jQMkZrGD
         rnAuV5/4pIOaks8jNBhJSrOzg5rDrsWx4/zGJaIO3LphSoUJEvRNrt3JXyc4S8LmElci
         OwjvUtRzxEAK2I5cKJEeu3npYX49n8L6ueNCs3QaSAJAqc2xpwvoQFA+uLPOI1W4v33P
         kWwykA352pSaxaKY/Rop+x+9awW4/jtQkZJbIjKgVGSDh1weRwUTCc9CKV0JZpp5hxlw
         qFQTBc1e2/K88EkIpiuhBIB3RI6yXPmKRtEDCzAe/O0KDrx7Fi3cQrPsVsoBGb9KYI9a
         nj4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318y70WXXgedyyGDHUQD/D7wa4WFybALhFQCIgP8OmQStQ5dFJj
	5cNEUBXeuD1YEDO68eLqWTQ=
X-Google-Smtp-Source: ABdhPJygpMjvBOx+qx1hMIEJsCW/c1SHpN43p8htAnf8/KfptGviU11biRnzueqnp0uwP6HP8nEWzA==
X-Received: by 2002:a02:4844:: with SMTP id p65mr11619726jaa.102.1622268938697;
        Fri, 28 May 2021 23:15:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:c00c:: with SMTP id u12ls1412272iol.7.gmail; Fri, 28 May
 2021 23:15:38 -0700 (PDT)
X-Received: by 2002:a6b:7901:: with SMTP id i1mr9887562iop.41.1622268938137;
        Fri, 28 May 2021 23:15:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622268938; cv=none;
        d=google.com; s=arc-20160816;
        b=fEZE9rewB/DXCFvGtCWVNBpX5iyLWRwuZfIzHP+UvP1U4CVD8KqG6IFu3usgg6dK8K
         H7nmDXmOdi0fN27tr3nmIubSmMJ4hUIAhLB7acguWU5N34aU8bBZxl1gT6D42w5slSDg
         /QLP5oTl0/oh7dYzsFLkFcgN8k3Ek3zabaKxEATMeO2WHrmTiICMTiYNiOvexXPaeOtQ
         TcFDGXsYMKZQBw3+G0Q48uROsl4Ju+qJ7FUeQUkQsf69eOXyvhrt8lUY12IFVEYJ7U93
         6jNnu+ZkLz+7mfLoH9nikZulxjmIWmrvRTJQkYnUCVCcKbNKUItY845ZnRY+CxOZZxwa
         7h1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=l/3GiEgkg5lc9mdpqgL7ti4mg6WtNgm9LYzkgLsQQpM=;
        b=IuCdriXBfEM7zVyzzOpR+ELIuUu4uB0g0seqJOk3bRndjq+dbRVEZWMNplDnb2z/A3
         AA2PM+ExXWt8NOczBbc64E8Trzl5VTs7CUZigqi7zRfsvOKNaQZ8WcvLmt3Euizb1IGn
         oc1TsYnlV0ScTHiMcjT97fW7btzv3vfqq+4LB+OHCRJhDaYwWu5wEAXYwjqS8O6ye6r8
         KhfMoeeGeyE8TOHaMWKAVZRInBxmxmr0hHGTRvIFuLK3Y65wRff0mTb/rH2+Qw1quDrX
         Iuk6371w/PgTSm19dGdB2ir3gzm8aaH3RX5b89jAifdskdtbgaCWD1JEZFwY0CV/rNYR
         0Vjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id a7si602435iod.4.2021.05.28.23.15.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 May 2021 23:15:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: cG0wDs0htPRHwlFjdIdjBnlXgvO3YJ1V0AlZzMGvl79gCHW1wDpcasqwwZjtQhBT63RWBUssXM
 GYMN6xVHNb3Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9998"; a="224335276"
X-IronPort-AV: E=Sophos;i="5.83,231,1616482800"; 
   d="gz'50?scan'50,208,50";a="224335276"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 May 2021 23:15:35 -0700
IronPort-SDR: 4ozH0dJcwuacMbPU31at3Vng8VjlwPX4lwZbY37mactIz0b6HxbthufgPDDP4HL/Hr2tOve3ex
 IHrrScAFgxiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,231,1616482800"; 
   d="gz'50?scan'50,208,50";a="415541413"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 28 May 2021 23:15:32 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lmsFw-0003eZ-3E; Sat, 29 May 2021 06:15:32 +0000
Date: Sat, 29 May 2021 14:15:19 +0800
From: kernel test robot <lkp@intel.com>
To: Daniel Rosenberg <drosen@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
	Andreas Dilger <adilger@dilger.ca>
Subject: fs/ext4/dir.c:126:12: warning: stack frame size of 2096 bytes in
 function 'ext4_readdir'
Message-ID: <202105291411.ygMZz3Hl-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="DocE+STaALJfprDB"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--DocE+STaALJfprDB
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   6799d4f2da496cab9b3fd26283a8ce3639b1a88d
commit: 471fbbea7ff7061b2d6474665cb5a2ceb4fd6500 ext4: handle casefolding with encryption
date:   8 weeks ago
config: powerpc64-randconfig-r036-20210529 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project bc6799f2f79f0ae87e9f1ebf9d25ba799fbd25a9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=471fbbea7ff7061b2d6474665cb5a2ceb4fd6500
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 471fbbea7ff7061b2d6474665cb5a2ceb4fd6500
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:199:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/ext4/dir.c:26:
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
   <scratch space>:201:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/ext4/dir.c:26:
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
   <scratch space>:203:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/ext4/dir.c:26:
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
   <scratch space>:205:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/ext4/dir.c:26:
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
   <scratch space>:207:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> fs/ext4/dir.c:126:12: warning: stack frame size of 2096 bytes in function 'ext4_readdir' [-Wframe-larger-than=]
   static int ext4_readdir(struct file *file, struct dir_context *ctx)
              ^
   14 warnings generated.


vim +/ext4_readdir +126 fs/ext4/dir.c

ac27a0ec112a08 Dave Kleikamp       2006-10-11  125  
725bebb27882ae Al Viro             2013-05-17 @126  static int ext4_readdir(struct file *file, struct dir_context *ctx)
ac27a0ec112a08 Dave Kleikamp       2006-10-11  127  {
498e5f24158da7 Theodore Ts'o       2008-11-05  128  	unsigned int offset;
aa13d5f67c6f5f Giedrius Rekasius   2014-05-27  129  	int i;
617ba13b31fbf5 Mingming Cao        2006-10-11  130  	struct ext4_dir_entry_2 *de;
ac27a0ec112a08 Dave Kleikamp       2006-10-11  131  	int err;
725bebb27882ae Al Viro             2013-05-17  132  	struct inode *inode = file_inode(file);
d1f5273e9adb40 Fan Yong            2012-03-18  133  	struct super_block *sb = inode->i_sb;
4461471107b79b Michael Halcrow     2015-04-12  134  	struct buffer_head *bh = NULL;
a7550b30ab709f Jaegeuk Kim         2016-07-10  135  	struct fscrypt_str fstr = FSTR_INIT(NULL, 0);
ac27a0ec112a08 Dave Kleikamp       2006-10-11  136  
ec0caa974cd092 Eric Biggers        2020-12-02  137  	err = fscrypt_prepare_readdir(inode);
3b1ada55b905f3 Eric Biggers        2019-12-09  138  	if (err)
28b4c263961c47 Theodore Ts'o       2016-02-07  139  		return err;
28b4c263961c47 Theodore Ts'o       2016-02-07  140  
d1f5273e9adb40 Fan Yong            2012-03-18  141  	if (is_dx_dir(inode)) {
725bebb27882ae Al Viro             2013-05-17  142  		err = ext4_dx_readdir(file, ctx);
400086d7c11327 Milan Djurovic      2021-03-15  143  		if (err != ERR_BAD_DX_DIR)
725bebb27882ae Al Viro             2013-05-17  144  			return err;
400086d7c11327 Milan Djurovic      2021-03-15  145  
48a34311953d92 Jan Kara            2020-02-10  146  		/* Can we just clear INDEX flag to ignore htree information? */
48a34311953d92 Jan Kara            2020-02-10  147  		if (!ext4_has_metadata_csum(sb)) {
ac27a0ec112a08 Dave Kleikamp       2006-10-11  148  			/*
ac27a0ec112a08 Dave Kleikamp       2006-10-11  149  			 * We don't set the inode dirty flag since it's not
48a34311953d92 Jan Kara            2020-02-10  150  			 * critical that it gets flushed back to the disk.
ac27a0ec112a08 Dave Kleikamp       2006-10-11  151  			 */
48a34311953d92 Jan Kara            2020-02-10  152  			ext4_clear_inode_flag(inode, EXT4_INODE_INDEX);
48a34311953d92 Jan Kara            2020-02-10  153  		}
ac27a0ec112a08 Dave Kleikamp       2006-10-11  154  	}
8af0f082279770 Tao Ma              2013-04-19  155  
8af0f082279770 Tao Ma              2013-04-19  156  	if (ext4_has_inline_data(inode)) {
8af0f082279770 Tao Ma              2013-04-19  157  		int has_inline_data = 1;
4461471107b79b Michael Halcrow     2015-04-12  158  		err = ext4_read_inline_dir(file, ctx,
8af0f082279770 Tao Ma              2013-04-19  159  					   &has_inline_data);
8af0f082279770 Tao Ma              2013-04-19  160  		if (has_inline_data)
4461471107b79b Michael Halcrow     2015-04-12  161  			return err;
4461471107b79b Michael Halcrow     2015-04-12  162  	}
4461471107b79b Michael Halcrow     2015-04-12  163  
592ddec7578a33 Chandan Rajendra    2018-12-12  164  	if (IS_ENCRYPTED(inode)) {
8b10fe68985278 Jeff Layton         2020-08-10  165  		err = fscrypt_fname_alloc_buffer(EXT4_NAME_LEN, &fstr);
b7236e21d55ff9 Theodore Ts'o       2015-05-18  166  		if (err < 0)
4461471107b79b Michael Halcrow     2015-04-12  167  			return err;
4461471107b79b Michael Halcrow     2015-04-12  168  	}
8af0f082279770 Tao Ma              2013-04-19  169  
725bebb27882ae Al Viro             2013-05-17  170  	while (ctx->pos < inode->i_size) {
2ed886852adfcb Theodore Ts'o       2010-05-16  171  		struct ext4_map_blocks map;
ac27a0ec112a08 Dave Kleikamp       2006-10-11  172  
1f60fbe7274918 Theodore Ts'o       2016-04-23  173  		if (fatal_signal_pending(current)) {
1f60fbe7274918 Theodore Ts'o       2016-04-23  174  			err = -ERESTARTSYS;
1f60fbe7274918 Theodore Ts'o       2016-04-23  175  			goto errout;
1f60fbe7274918 Theodore Ts'o       2016-04-23  176  		}
1f60fbe7274918 Theodore Ts'o       2016-04-23  177  		cond_resched();
4e19d6b65fb4fc Theodore Ts'o       2019-06-20  178  		offset = ctx->pos & (sb->s_blocksize - 1);
725bebb27882ae Al Viro             2013-05-17  179  		map.m_lblk = ctx->pos >> EXT4_BLOCK_SIZE_BITS(sb);
2ed886852adfcb Theodore Ts'o       2010-05-16  180  		map.m_len = 1;
2ed886852adfcb Theodore Ts'o       2010-05-16  181  		err = ext4_map_blocks(NULL, inode, &map, 0);
4e19d6b65fb4fc Theodore Ts'o       2019-06-20  182  		if (err == 0) {
4e19d6b65fb4fc Theodore Ts'o       2019-06-20  183  			/* m_len should never be zero but let's avoid
4e19d6b65fb4fc Theodore Ts'o       2019-06-20  184  			 * an infinite loop if it somehow is */
4e19d6b65fb4fc Theodore Ts'o       2019-06-20  185  			if (map.m_len == 0)
4e19d6b65fb4fc Theodore Ts'o       2019-06-20  186  				map.m_len = 1;
4e19d6b65fb4fc Theodore Ts'o       2019-06-20  187  			ctx->pos += map.m_len * sb->s_blocksize;
4e19d6b65fb4fc Theodore Ts'o       2019-06-20  188  			continue;
4e19d6b65fb4fc Theodore Ts'o       2019-06-20  189  		}
ac27a0ec112a08 Dave Kleikamp       2006-10-11  190  		if (err > 0) {
2ed886852adfcb Theodore Ts'o       2010-05-16  191  			pgoff_t index = map.m_pblk >>
09cbfeaf1a5a67 Kirill A. Shutemov  2016-04-01  192  					(PAGE_SHIFT - inode->i_blkbits);
725bebb27882ae Al Viro             2013-05-17  193  			if (!ra_has_index(&file->f_ra, index))
cf914a7d656e62 Rusty Russell       2007-07-19  194  				page_cache_sync_readahead(
dc7868fcb9a739 Fengguang Wu        2007-07-19  195  					sb->s_bdev->bd_inode->i_mapping,
725bebb27882ae Al Viro             2013-05-17  196  					&file->f_ra, file,
cf914a7d656e62 Rusty Russell       2007-07-19  197  					index, 1);
09cbfeaf1a5a67 Kirill A. Shutemov  2016-04-01  198  			file->f_ra.prev_pos = (loff_t)index << PAGE_SHIFT;
1c2150283cae89 Theodore Ts'o       2014-08-29  199  			bh = ext4_bread(NULL, inode, map.m_lblk, 0);
c906f38e8853cf Kirill Tkhai        2016-02-16  200  			if (IS_ERR(bh)) {
c906f38e8853cf Kirill Tkhai        2016-02-16  201  				err = PTR_ERR(bh);
c906f38e8853cf Kirill Tkhai        2016-02-16  202  				bh = NULL;
c906f38e8853cf Kirill Tkhai        2016-02-16  203  				goto errout;
c906f38e8853cf Kirill Tkhai        2016-02-16  204  			}
ac27a0ec112a08 Dave Kleikamp       2006-10-11  205  		}
ac27a0ec112a08 Dave Kleikamp       2006-10-11  206  
ac27a0ec112a08 Dave Kleikamp       2006-10-11  207  		if (!bh) {
e6c4021190c828 Eric Sandeen        2006-12-06  208  			/* corrupt size?  Maybe no more blocks to read */
725bebb27882ae Al Viro             2013-05-17  209  			if (ctx->pos > inode->i_blocks << 9)
e6c4021190c828 Eric Sandeen        2006-12-06  210  				break;
725bebb27882ae Al Viro             2013-05-17  211  			ctx->pos += sb->s_blocksize - offset;
ac27a0ec112a08 Dave Kleikamp       2006-10-11  212  			continue;
ac27a0ec112a08 Dave Kleikamp       2006-10-11  213  		}
ac27a0ec112a08 Dave Kleikamp       2006-10-11  214  
b0336e8d2108e6 Darrick J. Wong     2012-04-29  215  		/* Check the checksum */
b0336e8d2108e6 Darrick J. Wong     2012-04-29  216  		if (!buffer_verified(bh) &&
f036adb3997646 Theodore Ts'o       2019-06-21  217  		    !ext4_dirblock_csum_verify(inode, bh)) {
725bebb27882ae Al Viro             2013-05-17  218  			EXT4_ERROR_FILE(file, 0, "directory fails checksum "
b0336e8d2108e6 Darrick J. Wong     2012-04-29  219  					"at offset %llu",
725bebb27882ae Al Viro             2013-05-17  220  					(unsigned long long)ctx->pos);
725bebb27882ae Al Viro             2013-05-17  221  			ctx->pos += sb->s_blocksize - offset;
d5ac7773051602 Guo Chao            2013-01-28  222  			brelse(bh);
4461471107b79b Michael Halcrow     2015-04-12  223  			bh = NULL;
b0336e8d2108e6 Darrick J. Wong     2012-04-29  224  			continue;
b0336e8d2108e6 Darrick J. Wong     2012-04-29  225  		}
b0336e8d2108e6 Darrick J. Wong     2012-04-29  226  		set_buffer_verified(bh);
b0336e8d2108e6 Darrick J. Wong     2012-04-29  227  
ac27a0ec112a08 Dave Kleikamp       2006-10-11  228  		/* If the dir block has changed since the last call to
ac27a0ec112a08 Dave Kleikamp       2006-10-11  229  		 * readdir(2), then we might be pointing to an invalid
ac27a0ec112a08 Dave Kleikamp       2006-10-11  230  		 * dirent right now.  Scan from the start of the block
ac27a0ec112a08 Dave Kleikamp       2006-10-11  231  		 * to make sure. */
c472c07bfed9c8 Goffredo Baroncelli 2018-02-01  232  		if (!inode_eq_iversion(inode, file->f_version)) {
ac27a0ec112a08 Dave Kleikamp       2006-10-11  233  			for (i = 0; i < sb->s_blocksize && i < offset; ) {
617ba13b31fbf5 Mingming Cao        2006-10-11  234  				de = (struct ext4_dir_entry_2 *)
ac27a0ec112a08 Dave Kleikamp       2006-10-11  235  					(bh->b_data + i);
ac27a0ec112a08 Dave Kleikamp       2006-10-11  236  				/* It's too expensive to do a full
ac27a0ec112a08 Dave Kleikamp       2006-10-11  237  				 * dirent test each time round this
ac27a0ec112a08 Dave Kleikamp       2006-10-11  238  				 * loop, but we do have to test at
ac27a0ec112a08 Dave Kleikamp       2006-10-11  239  				 * least that it is non-zero.  A
ac27a0ec112a08 Dave Kleikamp       2006-10-11  240  				 * failure will be detected in the
ac27a0ec112a08 Dave Kleikamp       2006-10-11  241  				 * dirent test below. */
3d0518f4758eca Wei Yongjun         2009-02-14  242  				if (ext4_rec_len_from_disk(de->rec_len,
471fbbea7ff706 Daniel Rosenberg    2021-03-19  243  					sb->s_blocksize) < ext4_dir_rec_len(1,
471fbbea7ff706 Daniel Rosenberg    2021-03-19  244  									inode))
ac27a0ec112a08 Dave Kleikamp       2006-10-11  245  					break;
3d0518f4758eca Wei Yongjun         2009-02-14  246  				i += ext4_rec_len_from_disk(de->rec_len,
3d0518f4758eca Wei Yongjun         2009-02-14  247  							    sb->s_blocksize);
ac27a0ec112a08 Dave Kleikamp       2006-10-11  248  			}
ac27a0ec112a08 Dave Kleikamp       2006-10-11  249  			offset = i;
725bebb27882ae Al Viro             2013-05-17  250  			ctx->pos = (ctx->pos & ~(sb->s_blocksize - 1))
ac27a0ec112a08 Dave Kleikamp       2006-10-11  251  				| offset;
ee73f9a52a3437 Jeff Layton         2018-01-09  252  			file->f_version = inode_query_iversion(inode);
ac27a0ec112a08 Dave Kleikamp       2006-10-11  253  		}
ac27a0ec112a08 Dave Kleikamp       2006-10-11  254  
725bebb27882ae Al Viro             2013-05-17  255  		while (ctx->pos < inode->i_size
ac27a0ec112a08 Dave Kleikamp       2006-10-11  256  		       && offset < sb->s_blocksize) {
617ba13b31fbf5 Mingming Cao        2006-10-11  257  			de = (struct ext4_dir_entry_2 *) (bh->b_data + offset);
725bebb27882ae Al Viro             2013-05-17  258  			if (ext4_check_dir_entry(inode, file, de, bh,
226ba972b08637 Tao Ma              2012-12-10  259  						 bh->b_data, bh->b_size,
226ba972b08637 Tao Ma              2012-12-10  260  						 offset)) {
63f5793351d821 Andrew Morton       2006-10-11  261  				/*
725bebb27882ae Al Viro             2013-05-17  262  				 * On error, skip to the next block
63f5793351d821 Andrew Morton       2006-10-11  263  				 */
725bebb27882ae Al Viro             2013-05-17  264  				ctx->pos = (ctx->pos |
ac27a0ec112a08 Dave Kleikamp       2006-10-11  265  						(sb->s_blocksize - 1)) + 1;
725bebb27882ae Al Viro             2013-05-17  266  				break;
ac27a0ec112a08 Dave Kleikamp       2006-10-11  267  			}
3d0518f4758eca Wei Yongjun         2009-02-14  268  			offset += ext4_rec_len_from_disk(de->rec_len,
3d0518f4758eca Wei Yongjun         2009-02-14  269  					sb->s_blocksize);
ac27a0ec112a08 Dave Kleikamp       2006-10-11  270  			if (le32_to_cpu(de->inode)) {
592ddec7578a33 Chandan Rajendra    2018-12-12  271  				if (!IS_ENCRYPTED(inode)) {
725bebb27882ae Al Viro             2013-05-17  272  					if (!dir_emit(ctx, de->name,
ac27a0ec112a08 Dave Kleikamp       2006-10-11  273  					    de->name_len,
ac27a0ec112a08 Dave Kleikamp       2006-10-11  274  					    le32_to_cpu(de->inode),
4461471107b79b Michael Halcrow     2015-04-12  275  					    get_dtype(sb, de->file_type)))
4461471107b79b Michael Halcrow     2015-04-12  276  						goto done;
4461471107b79b Michael Halcrow     2015-04-12  277  				} else {
a7550b30ab709f Jaegeuk Kim         2016-07-10  278  					int save_len = fstr.len;
a7550b30ab709f Jaegeuk Kim         2016-07-10  279  					struct fscrypt_str de_name =
a7550b30ab709f Jaegeuk Kim         2016-07-10  280  							FSTR_INIT(de->name,
a7550b30ab709f Jaegeuk Kim         2016-07-10  281  								de->name_len);
d229959072eba4 Theodore Ts'o       2015-05-18  282  
4461471107b79b Michael Halcrow     2015-04-12  283  					/* Directory is encrypted */
a7550b30ab709f Jaegeuk Kim         2016-07-10  284  					err = fscrypt_fname_disk_to_usr(inode,
471fbbea7ff706 Daniel Rosenberg    2021-03-19  285  						EXT4_DIRENT_HASH(de),
471fbbea7ff706 Daniel Rosenberg    2021-03-19  286  						EXT4_DIRENT_MINOR_HASH(de),
471fbbea7ff706 Daniel Rosenberg    2021-03-19  287  						&de_name, &fstr);
ef1eb3aa50930f Eric Biggers        2016-09-15  288  					de_name = fstr;
a7550b30ab709f Jaegeuk Kim         2016-07-10  289  					fstr.len = save_len;
ef1eb3aa50930f Eric Biggers        2016-09-15  290  					if (err)
4461471107b79b Michael Halcrow     2015-04-12  291  						goto errout;
4461471107b79b Michael Halcrow     2015-04-12  292  					if (!dir_emit(ctx,
ef1eb3aa50930f Eric Biggers        2016-09-15  293  					    de_name.name, de_name.len,
4461471107b79b Michael Halcrow     2015-04-12  294  					    le32_to_cpu(de->inode),
4461471107b79b Michael Halcrow     2015-04-12  295  					    get_dtype(sb, de->file_type)))
4461471107b79b Michael Halcrow     2015-04-12  296  						goto done;
725bebb27882ae Al Viro             2013-05-17  297  				}
ac27a0ec112a08 Dave Kleikamp       2006-10-11  298  			}
725bebb27882ae Al Viro             2013-05-17  299  			ctx->pos += ext4_rec_len_from_disk(de->rec_len,
3d0518f4758eca Wei Yongjun         2009-02-14  300  						sb->s_blocksize);
ac27a0ec112a08 Dave Kleikamp       2006-10-11  301  		}
ae05327a00fd47 Al Viro             2016-05-12  302  		if ((ctx->pos < inode->i_size) && !dir_relax_shared(inode))
4461471107b79b Michael Halcrow     2015-04-12  303  			goto done;
ac27a0ec112a08 Dave Kleikamp       2006-10-11  304  		brelse(bh);
4461471107b79b Michael Halcrow     2015-04-12  305  		bh = NULL;
4461471107b79b Michael Halcrow     2015-04-12  306  		offset = 0;
725bebb27882ae Al Viro             2013-05-17  307  	}
4461471107b79b Michael Halcrow     2015-04-12  308  done:
4461471107b79b Michael Halcrow     2015-04-12  309  	err = 0;
4461471107b79b Michael Halcrow     2015-04-12  310  errout:
a7550b30ab709f Jaegeuk Kim         2016-07-10  311  	fscrypt_fname_free_buffer(&fstr);
4461471107b79b Michael Halcrow     2015-04-12  312  	brelse(bh);
4461471107b79b Michael Halcrow     2015-04-12  313  	return err;
ac27a0ec112a08 Dave Kleikamp       2006-10-11  314  }
ac27a0ec112a08 Dave Kleikamp       2006-10-11  315  

:::::: The code at line 126 was first introduced by commit
:::::: 725bebb27882ae617d50776cc8b6cacd84481c91 [readdir] convert ext4

:::::: TO: Al Viro <viro@zeniv.linux.org.uk>
:::::: CC: Al Viro <viro@zeniv.linux.org.uk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105291411.ygMZz3Hl-lkp%40intel.com.

--DocE+STaALJfprDB
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
7drXf+Day2YV/wEsyygEcZMBAA==

--DocE+STaALJfprDB--
