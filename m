Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZEX26BQMGQEF2FFI4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA2E35E456
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 18:50:45 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id o17-20020ac869910000b02901a7c59f1c14sf127997qtq.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 09:50:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618332644; cv=pass;
        d=google.com; s=arc-20160816;
        b=CfmLVMzIUjfLSYx1niaBHVrPtsVpzu6hPglosOLBqJFwgUtPeJzliTraj0UEAaOuQ1
         hy3GSoEChCqRVLfKIPf5DFgML8ljbghqeGdD9IJY+/zx1U0hZPBNv/IZrGD5o9ihKKxQ
         xwxerOh431/xNXuEMLD896s+vOET4MUteoCulAb/HnlzduzZhkOnV02YGklI4Uao9lWs
         x6CaI/7E+qG6GdjJpHOx4YTSJiG5ZU4k6AOyr65bRrWk6v6XbCDonMdczwxISVZC6pVV
         vPJYYplVaH0XfMkMEc3Y8fgde5brsfD8QHbc5gL5vXx3+tmF+j5XS668sQleKNIsBiVZ
         7pmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=zSI+RAt2HAqZHXNglI7X+N/VseY/AOEvhvoPcCY5j1Q=;
        b=z15k0z+R8lyuLqor9Fdx6mDs+9c/IHyiALAyLUxpe2q8K+N5YtHkHwOAjgazb/pFXg
         1yLI9p6nLPKtqkfENK+H1ui5eicOJ3i4h0hHL+NzOM+ZB5EHfb3GrZHKXhUIbRINshH/
         T8SNEdV5hj1ICSzWPzDdSgN+lbAGvNl+g27aoYvYaQPKu32vbsdCKl3ndUbcAQJwC2bO
         h4jUcJM+c3POYswn4qATWTqejzZ9xk0QC8RMZNJROP/Wzgb8sei6OWXw6ErwgGUeuB5g
         OMDrDtwuXVT82r9YOtPlE7nxOqoketGQ+o0EycC4Gs4OMFzcHuTolZkUAkg+Ycq8/qOs
         RvQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zSI+RAt2HAqZHXNglI7X+N/VseY/AOEvhvoPcCY5j1Q=;
        b=B+Xbe+WZCM6fYIAKast+fbdKe1mU4skN595udAujfyTC/mj5j2vjNSeJUA/7g4BgXS
         L77Aervw4OjTXcPvcUTIKw8lPLD64yi+JEvqZkjKkGa2aZdPj6cCrH/OfsnbsuFZuD1X
         Sss4pb619zu8q1GA3auxrv8xYQcvNzc1NbmPUVZ82ZY4LmxaQAhRpDQdOHDA4OsK1WQJ
         8vghF1+cGpL4ArUY+iM+amxLoAPYS49ZRo1xWxMsNZcV5r+e16EXbho5b69fXlVfxT9Q
         lk6BTP53aFQkyL2AAWtdoeYgoZCYDPYgeEndbhIKKwZYhe0x9HbAY6Qtecv1+qRRPPZS
         6A0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zSI+RAt2HAqZHXNglI7X+N/VseY/AOEvhvoPcCY5j1Q=;
        b=IIHRRTG/HCaZoGOhIHk2MEfv9On0Uz8OKfvnx8sowoWIatJoJ8yqSr6UxBiMhQuJSu
         cCxWKGlhw1gjMNzmzLT+5RhNkiZDvK805oGd6GxGQsBG2rMLC92llcb+TCKcJgPK84IT
         K9zRqH31I0+Mwj8kO+lncm6YdQFjEHtOWTfU4/SBNdQLu9buLNzFtYh8xUHE014/33Yr
         Bm30IOj+fS5eyUWd53bIWEY2csjAu/0WwmBdXEqKK/Ow1sK0ulbhdzEUhy25Q3RKaKtj
         FkJ2iyQ7C/DCvlD5vHO66M3JFJe2OXdWc0sOHnUXaToQRVFA7Ibe6iERlwZqKMUozF/4
         Q5dw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hmWGj1j2LwWtK9xn+HbnL37uSO+v6bu5RUdgGVi8fh3fCiC69
	01lHQU+58T16RQ+0dUZAdTM=
X-Google-Smtp-Source: ABdhPJzv92DyfQPw5ygm4dVHdoa5wwharvDgJIojzhAn7wEDYGFGYhPc7TRT6PLrhIRotaX1Pe9cKw==
X-Received: by 2002:ad4:5429:: with SMTP id g9mr34697088qvt.39.1618332644215;
        Tue, 13 Apr 2021 09:50:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4d8d:: with SMTP id a13ls4470571qtw.5.gmail; Tue, 13 Apr
 2021 09:50:43 -0700 (PDT)
X-Received: by 2002:ac8:66da:: with SMTP id m26mr22615922qtp.268.1618332643583;
        Tue, 13 Apr 2021 09:50:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618332643; cv=none;
        d=google.com; s=arc-20160816;
        b=eYGz/SraWIASwP5dhBSaB/wTQhu/qKzls/oznMlJmUuP5vBqzeHZkVy3jfdMUwSDjJ
         N094wotNhmUmGQFUIjWmSDc1REBheCGFnVmhceWtLa5Xkwd70Z66svkULHjkPAuUyA88
         fG2LOfeXegW+odOtp9c4mFi9+d83MTxzh5LOo8wKhqelHyNMo3BgMIw9Xz+YZoLeEcT+
         OwR/P/jCpJV1QRd282fWpBkTlTDjcZoLh1onn8xMjKQYmM73jyxv9kNI1vBpb3o5uy34
         QlcSkhiA/3OI7jNVzVPt+TXOxMWR4ncvjBBFAXc0eeCbvse8lzcXsesr8WVDoo6znhET
         MXAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=7gUWCzLkbIZHjKOrSvN2KImasg5xAA96qq8/qznQa08=;
        b=IDdUaE285kdEMD80rvwe5dqDbtTJPuET3kA4m72LhmGOd0lUcqhgnhLuXjvVSDqGxX
         oorXob3YPX/lMeADS7w24FgjThFSyNNEz20Chm9PBekBDEKSh2LplL/SctDdEJdKhqrp
         xNcgcioLBejBlRF6A5msM+BdAe78DH9Em2V7qOFPdAzDA0lLPaJ8ditEaWc4B/EOgF5g
         Ctrp0MRCqGo2WiIJTyIe4zzQstd15WipxgvURowP6VO24hpAGqmtoCtp5HH2X+ndMWnP
         IBjzMp5fKCf4wnggieFaKRY9jjrC/spzciZ/DueeNHyYrXGs5l2wj3wtRtCx1dA3zSjE
         aH3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id l15si383946qke.1.2021.04.13.09.50.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 09:50:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: z3O7ZIAOY2iLm9KBIHsY4ZeWtlnNA+1KEHM/1ZaydqNPnfSmWgXV53q6oFcXOd2Qqpmz+e9dcD
 eSnBQPsHV2Vw==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="181970449"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="gz'50?scan'50,208,50";a="181970449"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 09:50:19 -0700
IronPort-SDR: q+E8ZoEB+nzR4yaxJwAxc0wdFgyTDpPmyzNfRN3UWnTmRx4FoYvIMveY9O1BG674dW982Rvils
 RLeTZkdFJ17g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="gz'50?scan'50,208,50";a="600406429"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 13 Apr 2021 09:50:16 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lWMEx-00019o-Eh; Tue, 13 Apr 2021 16:50:15 +0000
Date: Wed, 14 Apr 2021 00:49:47 +0800
From: kernel test robot <lkp@intel.com>
To: Chao Yu <yuchao0@huawei.com>, Chao Yu <chao@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Jaegeuk Kim <jaegeuk@kernel.org>
Subject: fs/f2fs/gc.c:622:12: warning: stack frame size of 1616 bytes in
 function 'get_victim_by_default'
Message-ID: <202104140038.nLiTojHl-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Chao,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   89698becf06d341a700913c3d89ce2a914af69a2
commit: 093749e296e29a4b0162eb925a6701a01e8c9a98 f2fs: support age threshold based garbage collection
date:   7 months ago
config: powerpc64-randconfig-r014-20210413 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=093749e296e29a4b0162eb925a6701a01e8c9a98
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 093749e296e29a4b0162eb925a6701a01e8c9a98
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:187:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/gc.c:10:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:13:
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
   <scratch space>:189:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/gc.c:10:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:13:
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
   <scratch space>:191:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/gc.c:10:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:13:
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
   <scratch space>:193:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/gc.c:10:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:13:
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
   <scratch space>:195:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> fs/f2fs/gc.c:622:12: warning: stack frame size of 1616 bytes in function 'get_victim_by_default' [-Wframe-larger-than=]
   static int get_victim_by_default(struct f2fs_sb_info *sbi,
              ^
   7 warnings generated.


vim +/get_victim_by_default +622 fs/f2fs/gc.c

093749e296e29a4 Chao Yu       2020-08-04  613  
0a8165d7c2cf139 Jaegeuk Kim   2012-11-29  614  /*
111d2495a8a8fbd Masanari Iida 2013-03-19  615   * This function is called from two paths.
7bc0900347e069a Jaegeuk Kim   2012-11-02  616   * One is garbage collection and the other is SSR segment selection.
7bc0900347e069a Jaegeuk Kim   2012-11-02  617   * When it is called during GC, it just gets a victim segment
7bc0900347e069a Jaegeuk Kim   2012-11-02  618   * and it does not remove it from dirty seglist.
7bc0900347e069a Jaegeuk Kim   2012-11-02  619   * When it is called from SSR segment selection, it finds a segment
7bc0900347e069a Jaegeuk Kim   2012-11-02  620   * which has minimum valid blocks and removes it from dirty seglist.
7bc0900347e069a Jaegeuk Kim   2012-11-02  621   */
7bc0900347e069a Jaegeuk Kim   2012-11-02 @622  static int get_victim_by_default(struct f2fs_sb_info *sbi,
093749e296e29a4 Chao Yu       2020-08-04  623  			unsigned int *result, int gc_type, int type,
093749e296e29a4 Chao Yu       2020-08-04  624  			char alloc_mode, unsigned long long age)
7bc0900347e069a Jaegeuk Kim   2012-11-02  625  {
7bc0900347e069a Jaegeuk Kim   2012-11-02  626  	struct dirty_seglist_info *dirty_i = DIRTY_I(sbi);
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  627  	struct sit_info *sm = SIT_I(sbi);
7bc0900347e069a Jaegeuk Kim   2012-11-02  628  	struct victim_sel_policy p;
3fa565039e3338f Sheng Yong    2016-09-29  629  	unsigned int secno, last_victim;
04f0b2eaa3b3ee2 Qiuyang Sun   2019-06-05  630  	unsigned int last_segment;
093749e296e29a4 Chao Yu       2020-08-04  631  	unsigned int nsearched;
093749e296e29a4 Chao Yu       2020-08-04  632  	bool is_atgc;
97767500781fae9 Qilong Zhang  2020-06-28  633  	int ret = 0;
7bc0900347e069a Jaegeuk Kim   2012-11-02  634  
210f41bc048263d Chao Yu       2014-09-15  635  	mutex_lock(&dirty_i->seglist_lock);
04f0b2eaa3b3ee2 Qiuyang Sun   2019-06-05  636  	last_segment = MAIN_SECS(sbi) * sbi->segs_per_sec;
210f41bc048263d Chao Yu       2014-09-15  637  
7bc0900347e069a Jaegeuk Kim   2012-11-02  638  	p.alloc_mode = alloc_mode;
093749e296e29a4 Chao Yu       2020-08-04  639  	p.age = age;
093749e296e29a4 Chao Yu       2020-08-04  640  	p.age_threshold = sbi->am.age_threshold;
7bc0900347e069a Jaegeuk Kim   2012-11-02  641  
093749e296e29a4 Chao Yu       2020-08-04  642  retry:
093749e296e29a4 Chao Yu       2020-08-04  643  	select_policy(sbi, gc_type, type, &p);
7bc0900347e069a Jaegeuk Kim   2012-11-02  644  	p.min_segno = NULL_SEGNO;
093749e296e29a4 Chao Yu       2020-08-04  645  	p.oldest_age = 0;
3fa565039e3338f Sheng Yong    2016-09-29  646  	p.min_cost = get_max_cost(sbi, &p);
7bc0900347e069a Jaegeuk Kim   2012-11-02  647  
093749e296e29a4 Chao Yu       2020-08-04  648  	is_atgc = (p.gc_mode == GC_AT || p.alloc_mode == AT_SSR);
093749e296e29a4 Chao Yu       2020-08-04  649  	nsearched = 0;
093749e296e29a4 Chao Yu       2020-08-04  650  
093749e296e29a4 Chao Yu       2020-08-04  651  	if (is_atgc)
093749e296e29a4 Chao Yu       2020-08-04  652  		SIT_I(sbi)->dirty_min_mtime = ULLONG_MAX;
093749e296e29a4 Chao Yu       2020-08-04  653  
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  654  	if (*result != NULL_SEGNO) {
97767500781fae9 Qilong Zhang  2020-06-28  655  		if (!get_valid_blocks(sbi, *result, false)) {
97767500781fae9 Qilong Zhang  2020-06-28  656  			ret = -ENODATA;
97767500781fae9 Qilong Zhang  2020-06-28  657  			goto out;
97767500781fae9 Qilong Zhang  2020-06-28  658  		}
97767500781fae9 Qilong Zhang  2020-06-28  659  
97767500781fae9 Qilong Zhang  2020-06-28  660  		if (sec_usage_check(sbi, GET_SEC_FROM_SEG(sbi, *result)))
97767500781fae9 Qilong Zhang  2020-06-28  661  			ret = -EBUSY;
97767500781fae9 Qilong Zhang  2020-06-28  662  		else
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  663  			p.min_segno = *result;
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  664  		goto out;
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  665  	}
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  666  
97767500781fae9 Qilong Zhang  2020-06-28  667  	ret = -ENODATA;
3342bb303bf48dd Chao Yu       2015-10-05  668  	if (p.max_search == 0)
3342bb303bf48dd Chao Yu       2015-10-05  669  		goto out;
3342bb303bf48dd Chao Yu       2015-10-05  670  
e3080b0120a15e6 Chao Yu       2018-10-24  671  	if (__is_large_section(sbi) && p.alloc_mode == LFS) {
e3080b0120a15e6 Chao Yu       2018-10-24  672  		if (sbi->next_victim_seg[BG_GC] != NULL_SEGNO) {
e3080b0120a15e6 Chao Yu       2018-10-24  673  			p.min_segno = sbi->next_victim_seg[BG_GC];
e3080b0120a15e6 Chao Yu       2018-10-24  674  			*result = p.min_segno;
e3080b0120a15e6 Chao Yu       2018-10-24  675  			sbi->next_victim_seg[BG_GC] = NULL_SEGNO;
e3080b0120a15e6 Chao Yu       2018-10-24  676  			goto got_result;
e3080b0120a15e6 Chao Yu       2018-10-24  677  		}
e3080b0120a15e6 Chao Yu       2018-10-24  678  		if (gc_type == FG_GC &&
e3080b0120a15e6 Chao Yu       2018-10-24  679  				sbi->next_victim_seg[FG_GC] != NULL_SEGNO) {
e3080b0120a15e6 Chao Yu       2018-10-24  680  			p.min_segno = sbi->next_victim_seg[FG_GC];
e3080b0120a15e6 Chao Yu       2018-10-24  681  			*result = p.min_segno;
e3080b0120a15e6 Chao Yu       2018-10-24  682  			sbi->next_victim_seg[FG_GC] = NULL_SEGNO;
e3080b0120a15e6 Chao Yu       2018-10-24  683  			goto got_result;
e3080b0120a15e6 Chao Yu       2018-10-24  684  		}
e3080b0120a15e6 Chao Yu       2018-10-24  685  	}
e3080b0120a15e6 Chao Yu       2018-10-24  686  
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  687  	last_victim = sm->last_victim[p.gc_mode];
7bc0900347e069a Jaegeuk Kim   2012-11-02  688  	if (p.alloc_mode == LFS && gc_type == FG_GC) {
7bc0900347e069a Jaegeuk Kim   2012-11-02  689  		p.min_segno = check_bg_victims(sbi);
7bc0900347e069a Jaegeuk Kim   2012-11-02  690  		if (p.min_segno != NULL_SEGNO)
7bc0900347e069a Jaegeuk Kim   2012-11-02  691  			goto got_it;
7bc0900347e069a Jaegeuk Kim   2012-11-02  692  	}
7bc0900347e069a Jaegeuk Kim   2012-11-02  693  
7bc0900347e069a Jaegeuk Kim   2012-11-02  694  	while (1) {
da52f8ade40b032 Jack Qiu      2020-06-18  695  		unsigned long cost, *dirty_bitmap;
da52f8ade40b032 Jack Qiu      2020-06-18  696  		unsigned int unit_no, segno;
da52f8ade40b032 Jack Qiu      2020-06-18  697  
da52f8ade40b032 Jack Qiu      2020-06-18  698  		dirty_bitmap = p.dirty_bitmap;
da52f8ade40b032 Jack Qiu      2020-06-18  699  		unit_no = find_next_bit(dirty_bitmap,
da52f8ade40b032 Jack Qiu      2020-06-18  700  				last_segment / p.ofs_unit,
da52f8ade40b032 Jack Qiu      2020-06-18  701  				p.offset / p.ofs_unit);
da52f8ade40b032 Jack Qiu      2020-06-18  702  		segno = unit_no * p.ofs_unit;
a43f7ec327b0d86 Chao Yu       2015-10-05  703  		if (segno >= last_segment) {
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  704  			if (sm->last_victim[p.gc_mode]) {
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  705  				last_segment =
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  706  					sm->last_victim[p.gc_mode];
e066b83c9b40f3a Jaegeuk Kim   2017-04-13  707  				sm->last_victim[p.gc_mode] = 0;
7bc0900347e069a Jaegeuk Kim   2012-11-02  708  				p.offset = 0;
7bc0900347e069a Jaegeuk Kim   2012-11-02  709  				continue;
7bc0900347e069a Jaegeuk Kim   2012-11-02  710  			}
7bc0900347e069a Jaegeuk Kim   2012-11-02  711  			break;
7bc0900347e069a Jaegeuk Kim   2012-11-02  712  		}
a57e564d14d9d12 Jin Xu        2013-09-13  713  
a57e564d14d9d12 Jin Xu        2013-09-13  714  		p.offset = segno + p.ofs_unit;
688159b6db47a9e Fan Li        2016-02-03  715  		nsearched++;
688159b6db47a9e Fan Li        2016-02-03  716  

:::::: The code at line 622 was first introduced by commit
:::::: 7bc0900347e069a1676d28ad6f98cafaf8cfd6e9 f2fs: add garbage collection functions

:::::: TO: Jaegeuk Kim <jaegeuk.kim@samsung.com>
:::::: CC: Jaegeuk Kim <jaegeuk.kim@samsung.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104140038.nLiTojHl-lkp%40intel.com.

--VS++wcV0S1rZb1Fb
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--VS++wcV0S1rZb1Fb--
