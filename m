Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBWVBXX7AKGQERYLK5IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1206E2D2885
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 11:09:32 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id d192sf2605152oob.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 02:09:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607422170; cv=pass;
        d=google.com; s=arc-20160816;
        b=AUC0dkRlgTb5/Ue7vaJmZI1rWN93yQyclXfGiw/AQf8/uorQP4QkUxV32TyoktBCaD
         Ny3UEmtomtdVC5G8n/rzQRy2U232TsNycTCtI3XKlQvrhocNkfNYb3LRwFAkxH/kA4g9
         e5eR1saseGtYx8QktOPdW36zjzYg3IIRDatqZGA2eqmHouibi9XmW/T2ixC9T0Sh29ym
         xlMoMZ8aSkIqVutKgmiwE7f08bASCxq9Q476OduPeiLaBgyaJl4rf1XS3F/9EwZHeHLn
         UlHVgAWD8KRvS7UoWh8OFsAHEDugSrMR8/bhQro+AuCp+aMqrzZ3FJ+tiITqAOZw0V/Q
         cagw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=eN+KLwK1/SzqJbZ6Md9Wcc9hp9nEr83XHHuRP8jF2NI=;
        b=KTbD8Zr4rnxJTWAt5oFYn1M/8tmdKgS4S3bMCixVJX29qavFtrN2ge81RXd3HupcxR
         W72XFNC70pcSMS+xMmXtzCfuHGmqR4YwJN/tJpJnwTw4P3WHzgeuKKXtXK0vc0//b6DZ
         qC5yRUcvACyF9EnW9PVgdQMkhfOVerah65N16f5QZVlBzorBI8S315agBlLS0j8aKys4
         jNqsL6hvhTC0sKrN27KogFfcSpRX02Y1nA3QbW+tNVwUvCOqq/rhBpsQjIhhSwirV21t
         laRI4tzGj6VMU49lNK59BFTJKoVlQOqTdYLE/Y/B2IliyNMMy94Ldv9+nYg6efDYoe0b
         ztIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eN+KLwK1/SzqJbZ6Md9Wcc9hp9nEr83XHHuRP8jF2NI=;
        b=VdEs7j/Ok9OYEI+qsYLpxsmzsC+IHRsOk83upE/leXB442lKp+0Pn3STUKGs/1bSCo
         pqelIDOttjz6Xv+bka4QMv0iBf8Yqiv0vE5U3nwSH2MR3UjBmALjTMkO2212QiIgtmh4
         CZ8C1MpD5PBGFnVD/0Z/mEQEVD93mzabKO//tZiso8OuBN3WVnun39oEutk6oq8u87Uk
         y7Q9d5CC4IRQYTwcN/xw3bfzgAiExEzAqYQofmziaQq9U0VaRolpsx72Ix0xSDzcf8Cf
         BBijflq21GI7CCHJbrm+QpOgQGkb0Pn43DsHo2yHqAczFg08RQ2pQrKFdWHZXJF8Ojiz
         qWVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eN+KLwK1/SzqJbZ6Md9Wcc9hp9nEr83XHHuRP8jF2NI=;
        b=q3S9QMNDl6foTYEfrlClm+cMhwFwkZi77oPOEU1NzkESEX/X59adyb5RuWS1aT03ye
         tw9jLHAWqpcaKh1ouHzYYfTigpa5PGKv3t8DdThz/TUGOI+g2r9a5MrOkMr2kUukxfhE
         QFXsT2TvazvrjgKSzujj6Eu5nFOUxlyr2w7nsa0xCsdgrgM4SSjnteU383e9eSwEsLF8
         PAsmyjz4Xa2xCyipnS2KA2SQOvv7RHO++0xrGiLJ44LBP59rhZdfKlMsawqgCEVkyGZu
         DhsBv3ckIMByidrFjcp84hvHyRl4ugzr8iyRl3Pu/dfNWOYPodon1Ct4jSnHU60suc/L
         3IwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532QMTrB3N59K775+p9P5XA9N+mLbubsEOwUhUIi5i5e0LRoMTfp
	OXkiGnCEkR+cxghCg/iLD/o=
X-Google-Smtp-Source: ABdhPJzp94O4cbnM1kVIF+JHNyHlmG3+7IGg+hUzk6QkKsxlC6soK8A6rNeCYx0qGNBC91PtrJJwOQ==
X-Received: by 2002:aca:1004:: with SMTP id 4mr2100146oiq.4.1607422170572;
        Tue, 08 Dec 2020 02:09:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c413:: with SMTP id u19ls3713777oif.11.gmail; Tue, 08
 Dec 2020 02:09:30 -0800 (PST)
X-Received: by 2002:a54:400f:: with SMTP id x15mr2093013oie.38.1607422170033;
        Tue, 08 Dec 2020 02:09:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607422170; cv=none;
        d=google.com; s=arc-20160816;
        b=PbZDtzEtSjt/0bNij/gLdE/tpBSeIP33Cu0Hja4Mr2kfWpH4mG32j61N2VHSS5Osr7
         LKJ7W9U/5l/3sJqxOCHJIZBuDeSafcIxdjBM9h2ON7WhqDCmpQD3hsu5QCqvGfxp16kT
         BbGkEby7xyR/wItfE838LU7kDhSmvS+mVcMu2Y76I01D91KqjLHVio2UW+mLxK6TMmMM
         cp4uyjRrMdfFh7jQDDbPVqFXTR21+lS0eH/hZLvx/UwXImMWrjOjXc/S/luMfLSoMWAC
         YfHpo+bRL52quTAHlhIHnfKd9K1S/ngHBYARlUApVOQ+34L1VHQR6CVC4FlWtKsqPhCM
         DHOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=HhNvyx21+aBwnhc+ILL0dBlo3CvsGjjz8OWj74i6eBI=;
        b=pQtECMNOAgrirL7rI0BTSipuHqeqV/YHvu3WUCbdbX/lEK/pUfjsWQJf1/pnP0xV+C
         PEHs6zpn3tOeoPrYa2b7Muto0v9kkAxQ8Dm3yqU8rWPRtR52Jrnu8EGkHaIm6ILXQBDX
         9HJaeWzfCSlRWcWLpxfP3/tJs08IvbTptbgHdilknwV2FDaeXK8g8dLTdo3/G0iMG3Ct
         HzqJdlAtWprjnfVr2SCn0FQK6lGkiZwlY71NAqRfoWhuab00ahgZJoaHt5YKAxR7r/Vg
         huuYRkfUkTywcpwAfMaIGt1xQ36TuhG4DsBLUZ5gZiotofGSHQ229K/CvbigHm1VdlGV
         Z+jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id c18si83038oib.5.2020.12.08.02.09.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Dec 2020 02:09:29 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: vuh1tL3az5yFJ/VR9L2Pv/Y8DYxln3YlgSYeI+uQdz/JzH4LsBTWgap1filzsx4emdoJgCwvzO
 4AP/JgZLsk4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="237969779"
X-IronPort-AV: E=Sophos;i="5.78,402,1599548400"; 
   d="gz'50?scan'50,208,50";a="237969779"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Dec 2020 02:09:23 -0800
IronPort-SDR: jK7tmhepP/1I1Y97Gnn1TE4brGRxVaQ34TNljqPsb88w+EF75BUQkCoGKdxieOWmswe9EV9P4U
 nWWa/bxUp/Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,402,1599548400"; 
   d="gz'50?scan'50,208,50";a="370328127"
Received: from lkp-server01.sh.intel.com (HELO c88bd47c8831) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2020 02:09:21 -0800
Received: from kbuild by c88bd47c8831 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kmZvs-00008o-Bz; Tue, 08 Dec 2020 10:09:20 +0000
Date: Tue, 8 Dec 2020 18:08:28 +0800
From: kernel test robot <lkp@intel.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: kernel/trace/trace_events_hist.c:4729:12: warning: stack frame size
 of 1328 bytes in function 'hist_show'
Message-ID: <202012081824.mIebC3bg-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="k+w/mQv8wyuph6w0"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Michael,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   cd796ed3345030aa1bb332fe5c793b3dddaf56e7
commit: e02152ba2810f7c88cb54e71cda096268dfa9241 powerpc: Drop -me200 addition to build flags
date:   3 weeks ago
config: powerpc64-randconfig-r025-20201208 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a2f922140f5380571fb74179f2bf622b3b925697)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=e02152ba2810f7c88cb54e71cda096268dfa9241
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout e02152ba2810f7c88cb54e71cda096268dfa9241
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   __do_insb
   ^
   arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace_events_hist.c:18:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:129:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace_events_hist.c:18:
   In file included from include/linux/trace_events.h:9:
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
   <scratch space>:131:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace_events_hist.c:18:
   In file included from include/linux/trace_events.h:9:
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
   <scratch space>:133:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace_events_hist.c:18:
   In file included from include/linux/trace_events.h:9:
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
   <scratch space>:135:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/trace/trace_events_hist.c:18:
   In file included from include/linux/trace_events.h:9:
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
   <scratch space>:137:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> kernel/trace/trace_events_hist.c:4729:12: warning: stack frame size of 1328 bytes in function 'hist_show' [-Wframe-larger-than=]
   static int hist_show(struct seq_file *m, void *v)
              ^
   7 warnings generated.
--
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:31:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/erofs/zdata.c:7:
   In file included from fs/erofs/zdata.h:10:
   In file included from fs/erofs/internal.h:13:
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
   <scratch space>:33:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/erofs/zdata.c:7:
   In file included from fs/erofs/zdata.h:10:
   In file included from fs/erofs/internal.h:13:
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
   <scratch space>:35:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/erofs/zdata.c:7:
   In file included from fs/erofs/zdata.h:10:
   In file included from fs/erofs/internal.h:13:
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
   <scratch space>:37:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/erofs/zdata.c:7:
   In file included from fs/erofs/zdata.h:10:
   In file included from fs/erofs/internal.h:13:
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
   <scratch space>:39:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> fs/erofs/zdata.c:564:12: warning: stack frame size of 1104 bytes in function 'z_erofs_do_read_page' [-Wframe-larger-than=]
   static int z_erofs_do_read_page(struct z_erofs_decompress_frontend *fe,
              ^
   7 warnings generated.
--
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:67:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/md/raid5-ppl.c:8:
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
   <scratch space>:69:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/md/raid5-ppl.c:8:
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
   <scratch space>:71:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/md/raid5-ppl.c:8:
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
   <scratch space>:73:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/md/raid5-ppl.c:8:
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
   <scratch space>:75:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/md/raid5-ppl.c:1332:5: warning: stack frame size of 1312 bytes in function 'ppl_init_log' [-Wframe-larger-than=]
   int ppl_init_log(struct r5conf *conf)
       ^
   7 warnings generated.
..

vim +/hist_show +4729 kernel/trace/trace_events_hist.c

52a7f16dedff8f Tom Zanussi      2016-03-03  4728  
52a7f16dedff8f Tom Zanussi      2016-03-03 @4729  static int hist_show(struct seq_file *m, void *v)
52a7f16dedff8f Tom Zanussi      2016-03-03  4730  {
52a7f16dedff8f Tom Zanussi      2016-03-03  4731  	struct event_trigger_data *data;
52a7f16dedff8f Tom Zanussi      2016-03-03  4732  	struct trace_event_file *event_file;
52a7f16dedff8f Tom Zanussi      2016-03-03  4733  	int n = 0, ret = 0;
52a7f16dedff8f Tom Zanussi      2016-03-03  4734  
52a7f16dedff8f Tom Zanussi      2016-03-03  4735  	mutex_lock(&event_mutex);
52a7f16dedff8f Tom Zanussi      2016-03-03  4736  
52a7f16dedff8f Tom Zanussi      2016-03-03  4737  	event_file = event_file_data(m->private);
52a7f16dedff8f Tom Zanussi      2016-03-03  4738  	if (unlikely(!event_file)) {
52a7f16dedff8f Tom Zanussi      2016-03-03  4739  		ret = -ENODEV;
52a7f16dedff8f Tom Zanussi      2016-03-03  4740  		goto out_unlock;
52a7f16dedff8f Tom Zanussi      2016-03-03  4741  	}
52a7f16dedff8f Tom Zanussi      2016-03-03  4742  
aeed8aa3874dc1 Masami Hiramatsu 2019-12-20  4743  	list_for_each_entry(data, &event_file->triggers, list) {
52a7f16dedff8f Tom Zanussi      2016-03-03  4744  		if (data->cmd_ops->trigger_type == ETT_EVENT_HIST)
52a7f16dedff8f Tom Zanussi      2016-03-03  4745  			hist_trigger_show(m, data, n++);
52a7f16dedff8f Tom Zanussi      2016-03-03  4746  	}
52a7f16dedff8f Tom Zanussi      2016-03-03  4747  
7ef224d1d0e3a1 Tom Zanussi      2016-03-03  4748   out_unlock:
7ef224d1d0e3a1 Tom Zanussi      2016-03-03  4749  	mutex_unlock(&event_mutex);
7ef224d1d0e3a1 Tom Zanussi      2016-03-03  4750  
7ef224d1d0e3a1 Tom Zanussi      2016-03-03  4751  	return ret;
7ef224d1d0e3a1 Tom Zanussi      2016-03-03  4752  }
7ef224d1d0e3a1 Tom Zanussi      2016-03-03  4753  

:::::: The code at line 4729 was first introduced by commit
:::::: 52a7f16dedff8f23d03df3ea556dec95b92a5801 tracing: Add support for multiple hist triggers per event

:::::: TO: Tom Zanussi <tom.zanussi@linux.intel.com>
:::::: CC: Steven Rostedt <rostedt@goodmis.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012081824.mIebC3bg-lkp%40intel.com.

--k+w/mQv8wyuph6w0
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--k+w/mQv8wyuph6w0--
