Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBFVW4WDAMGQEDPSNLQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB933B588C
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 07:16:08 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id y75-20020a1f7d4e0000b029024bcc2c4cd3sf6627628vkc.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Jun 2021 22:16:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624857367; cv=pass;
        d=google.com; s=arc-20160816;
        b=J+QRzU5w9EhgI+m25ghI6/VRg1VsdGonWAYndji9r48hkce+YDKGzUer0r/wKjOAuT
         x0gMurDoM/A7ZQgIGP25beaRwnuVtkN+PMsphhEXsPfMFO0/hv8pr/9s6XKghcSRn9d9
         vWI2BCO77N2tlvb/GusjByGEwbCF9tVG8EoLRRQ24npkPQxNQXArch4RfW80OfJzObTS
         PdpmwbqzuLLZ9c2EKrbZRCMoKnxFPOm4uTVl6vZ8OLxittrTXzdfRkRnZOwjxJK1r759
         01nswHS8aHrZxi3shAKwD3iNSuVgwRwDohhb/mqZXT10I2M1FAMAYeqwqt69roqDEoXm
         nG3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dO3M1FwR29jpSaYQWZWgh1a4ztnudvVcjIg9M3qAwRY=;
        b=mCZFIc8r0trowxk72ph4toWfH0f3rGJSrUYFq4gomKroXO/Ti/7cOYzIcOTxQpcQ6j
         /LzFmmsumz0JSJDj1Q1nppQ4Net+pMlEeOMyJbBI+BsWSu4+qP47mfsHTCQ5WTgpDojJ
         5W9qamlaocofUrYM0LJe9q/5McLiCCMqqKiVETN4jbISJ2zZa61JafQmr/jxfY93Hk2S
         SfcUFtlTrnWbK3i2Qkl+LrUxxW7N0iTphJWPcKGZIkO1iFi/806D6emGGpZ7L6uTh2dj
         BqKjZs3OU/WXMJPw7gd26KVADPyibqAp94+CUE5RC0m06oKHJWKsmmaVrdvDPowEUScp
         Yejg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dO3M1FwR29jpSaYQWZWgh1a4ztnudvVcjIg9M3qAwRY=;
        b=glqFtCZxkQs+CwuhejD5RsIwhsB4/LNWv2iPYLN5Vi7+Jej1oI7GGAdqRK6Cby+qxN
         eHLPzEHCPAn8+VocJ8dbVFZlSdLHR2HJS9+W5/6Ui63v9e0mlFZrqdoYqEI5OyvymL+j
         mjp6lsqshTK5R94XgvARUHjO1ks+6+uIkWD8kn6P0X0ipri9QeQvMOUiz6F0DIV5ONZn
         7W8pFiDdQED69LzlIE21z/BTetbOo057vDgoQK0YKxGmpW61RfN0mFp+WbMJSc/dIkKl
         ePUqLg5awGkKN8bbe4Q5jXZhvn506rqR8CR+fGkxcyXN4hP27j9Z6vlZ7/N62kjX5jCw
         fQ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dO3M1FwR29jpSaYQWZWgh1a4ztnudvVcjIg9M3qAwRY=;
        b=rRKh+kMGZjbJhcPf2uzgJR16+IPf0/HLUP77ZSEmWa3mm12CPCr9dd2rqLXRwvZ3ZN
         AP7VEOa8q8hiofs6eYyzXvxwCWIY0gJZovbuoz/3123lOEHAap9Om0TQozcEfVThlf5R
         H4fk2aTUbuSb23TWDd6ohP7Sh55qRexrOYB4XL5cnH9Je8uAhQQNxiRtT2cJiCgDlMwE
         3TWV474USeyrGhYy5Y+d32/5WnvSuu7fsxhF3E7CcXTOu5Cgh0kWmA2Wu/FfQ30Cqbu7
         QjD8ChYbm0nnWiKJh9HeyId510unZxiKnQozvVyNKkFw3DclcGvQsdnGQR8UFrQ55El3
         18Xw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XHDOb5IbQI1dCdJsh5dcT3iLrTIXZGNenfEQoAx/sTT7Ip1BG
	UqhhA1jEnSEu8JsHRoNgDDM=
X-Google-Smtp-Source: ABdhPJzenRYlHHNOh3rUiep3N04SfTS+rl+Qv86rSlvrHD8IP5Xs6phH1oo4nN99NzuXlkpUmIeLLQ==
X-Received: by 2002:ab0:23c3:: with SMTP id c3mr19277177uan.11.1624857367061;
        Sun, 27 Jun 2021 22:16:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9cd0:: with SMTP id f199ls1163214vke.5.gmail; Sun, 27
 Jun 2021 22:16:06 -0700 (PDT)
X-Received: by 2002:a1f:a897:: with SMTP id r145mr15360220vke.25.1624857366395;
        Sun, 27 Jun 2021 22:16:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624857366; cv=none;
        d=google.com; s=arc-20160816;
        b=jHZ1iGFBvmSHQlc61VZLSvChDWEjul3bdCYh/6D8/H3Q6PyugIkHMnDjHULB3CmgrJ
         JfhF5hkJtEyP+qFcavXuoOatIlKdRfmQZjOTlQAtibFT65NpYNs9/8dAHlXVf7qoD8n1
         YDCv98F58oh0CIm69BCZ9sgpjaGNHMzQAijhE0fz2molXvvKhghwDhMBQpaAmBHP15al
         lrfbS5cVScFw5MAYyTixoqIzXq9FCHo2GLFHJyfhMKNPq/BZBr3r/CqpT+YErdsOgMEV
         x+MaHInSAirToujk5SEVvLVQw7ccPz8RTKaYsiSZhzUGxg8sTiUCAA6ZzBN6NFBLPGwz
         2V6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=LO5rvE4PWTEU4sF1Rtr+kp9gsqnZuouE/6siRg4FDdI=;
        b=mhHj7LpGSFEDy6K2U7+1fEYF3CAz4mwnsQRyJKMwKXyQksdF/KIPgrX7VITZZB0z5b
         o8KK+/ogACOoO+KK/A0uo/UV/2tmUDGKUwIObzSGoYVIyX+bin6Xmj6ra1Xq7tDKbLXe
         xAnqaTsuJXQEp3YPgsETwToHD+i2OXvlXXkFNOCl+rjoFatGlEBVx4iyFn0bLaT1Egb0
         /t9GLq94b6fCCbgkV/9/Dzh/xPaCO/dNZ2DAa3EUmAWocQgcsA0ZTtb14v74WVMgzoQN
         WqQFlLXCA7X/KBZ3ZVFf9L5D8TMyiE+267dwM8YT/mJuRSzYGAjykjsv0Uzi3YJoLJ2l
         uuLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id g20si1345156vso.1.2021.06.27.22.16.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Jun 2021 22:16:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-IronPort-AV: E=McAfee;i="6200,9189,10028"; a="204882103"
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; 
   d="gz'50?scan'50,208,50";a="204882103"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jun 2021 22:16:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; 
   d="gz'50?scan'50,208,50";a="419035163"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2021 22:16:03 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lxjco-0008Qi-Hg; Mon, 28 Jun 2021 05:16:02 +0000
Date: Mon, 28 Jun 2021 13:14:34 +0800
From: kernel test robot <lkp@intel.com>
To: Ilya Dryomov <idryomov@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: net/ceph/messenger_v1.c:1204:5: warning: stack frame size (2880)
 exceeds limit (2048) in function 'ceph_con_v1_try_read'
Message-ID: <202106281329.JLKL1c31-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HlL+5n6rz5pIUxbD"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--HlL+5n6rz5pIUxbD
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Ilya,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   62fb9874f5da54fdb243003b386128037319b219
commit: 2f713615ddd9d805b6c5e79c52e0e11af99d2bf1 libceph: move msgr1 protocol implementation to its own file
date:   7 months ago
config: powerpc64-randconfig-r034-20210628 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 59558129276098d62046c8cda92240d292cbfb1c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2f713615ddd9d805b6c5e79c52e0e11af99d2bf1
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 2f713615ddd9d805b6c5e79c52e0e11af99d2bf1
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
   In file included from net/ceph/messenger_v1.c:8:
   In file included from include/net/sock.h:38:
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
   <scratch space>:246:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/ceph/messenger_v1.c:8:
   In file included from include/net/sock.h:38:
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
   <scratch space>:250:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/ceph/messenger_v1.c:8:
   In file included from include/net/sock.h:38:
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
   <scratch space>:254:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/ceph/messenger_v1.c:8:
   In file included from include/net/sock.h:38:
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
   <scratch space>:4:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/ceph/messenger_v1.c:8:
   In file included from include/net/sock.h:38:
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
   <scratch space>:8:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> net/ceph/messenger_v1.c:1204:5: warning: stack frame size (2880) exceeds limit (2048) in function 'ceph_con_v1_try_read' [-Wframe-larger-than]
   int ceph_con_v1_try_read(struct ceph_connection *con)
       ^
   14 warnings generated.


vim +/ceph_con_v1_try_read +1204 net/ceph/messenger_v1.c

  1200	
  1201	/*
  1202	 * Read what we can from the socket.
  1203	 */
> 1204	int ceph_con_v1_try_read(struct ceph_connection *con)
  1205	{
  1206		int ret = -1;
  1207	
  1208	more:
  1209		dout("try_read start %p state %d\n", con, con->state);
  1210		if (con->state != CEPH_CON_S_V1_BANNER &&
  1211		    con->state != CEPH_CON_S_V1_CONNECT_MSG &&
  1212		    con->state != CEPH_CON_S_OPEN)
  1213			return 0;
  1214	
  1215		BUG_ON(!con->sock);
  1216	
  1217		dout("try_read tag %d in_base_pos %d\n", (int)con->in_tag,
  1218		     con->in_base_pos);
  1219	
  1220		if (con->state == CEPH_CON_S_V1_BANNER) {
  1221			ret = read_partial_banner(con);
  1222			if (ret <= 0)
  1223				goto out;
  1224			ret = process_banner(con);
  1225			if (ret < 0)
  1226				goto out;
  1227	
  1228			con->state = CEPH_CON_S_V1_CONNECT_MSG;
  1229	
  1230			/*
  1231			 * Received banner is good, exchange connection info.
  1232			 * Do not reset out_kvec, as sending our banner raced
  1233			 * with receiving peer banner after connect completed.
  1234			 */
  1235			ret = prepare_write_connect(con);
  1236			if (ret < 0)
  1237				goto out;
  1238			prepare_read_connect(con);
  1239	
  1240			/* Send connection info before awaiting response */
  1241			goto out;
  1242		}
  1243	
  1244		if (con->state == CEPH_CON_S_V1_CONNECT_MSG) {
  1245			ret = read_partial_connect(con);
  1246			if (ret <= 0)
  1247				goto out;
  1248			ret = process_connect(con);
  1249			if (ret < 0)
  1250				goto out;
  1251			goto more;
  1252		}
  1253	
  1254		WARN_ON(con->state != CEPH_CON_S_OPEN);
  1255	
  1256		if (con->in_base_pos < 0) {
  1257			/*
  1258			 * skipping + discarding content.
  1259			 */
  1260			ret = ceph_tcp_recvmsg(con->sock, NULL, -con->in_base_pos);
  1261			if (ret <= 0)
  1262				goto out;
  1263			dout("skipped %d / %d bytes\n", ret, -con->in_base_pos);
  1264			con->in_base_pos += ret;
  1265			if (con->in_base_pos)
  1266				goto more;
  1267		}
  1268		if (con->in_tag == CEPH_MSGR_TAG_READY) {
  1269			/*
  1270			 * what's next?
  1271			 */
  1272			ret = ceph_tcp_recvmsg(con->sock, &con->in_tag, 1);
  1273			if (ret <= 0)
  1274				goto out;
  1275			dout("try_read got tag %d\n", (int)con->in_tag);
  1276			switch (con->in_tag) {
  1277			case CEPH_MSGR_TAG_MSG:
  1278				prepare_read_message(con);
  1279				break;
  1280			case CEPH_MSGR_TAG_ACK:
  1281				prepare_read_ack(con);
  1282				break;
  1283			case CEPH_MSGR_TAG_KEEPALIVE2_ACK:
  1284				prepare_read_keepalive_ack(con);
  1285				break;
  1286			case CEPH_MSGR_TAG_CLOSE:
  1287				ceph_con_close_socket(con);
  1288				con->state = CEPH_CON_S_CLOSED;
  1289				goto out;
  1290			default:
  1291				goto bad_tag;
  1292			}
  1293		}
  1294		if (con->in_tag == CEPH_MSGR_TAG_MSG) {
  1295			ret = read_partial_message(con);
  1296			if (ret <= 0) {
  1297				switch (ret) {
  1298				case -EBADMSG:
  1299					con->error_msg = "bad crc/signature";
  1300					fallthrough;
  1301				case -EBADE:
  1302					ret = -EIO;
  1303					break;
  1304				case -EIO:
  1305					con->error_msg = "io error";
  1306					break;
  1307				}
  1308				goto out;
  1309			}
  1310			if (con->in_tag == CEPH_MSGR_TAG_READY)
  1311				goto more;
  1312			ceph_con_process_message(con);
  1313			if (con->state == CEPH_CON_S_OPEN)
  1314				prepare_read_tag(con);
  1315			goto more;
  1316		}
  1317		if (con->in_tag == CEPH_MSGR_TAG_ACK ||
  1318		    con->in_tag == CEPH_MSGR_TAG_SEQ) {
  1319			/*
  1320			 * the final handshake seq exchange is semantically
  1321			 * equivalent to an ACK
  1322			 */
  1323			ret = read_partial_ack(con);
  1324			if (ret <= 0)
  1325				goto out;
  1326			process_ack(con);
  1327			goto more;
  1328		}
  1329		if (con->in_tag == CEPH_MSGR_TAG_KEEPALIVE2_ACK) {
  1330			ret = read_keepalive_ack(con);
  1331			if (ret <= 0)
  1332				goto out;
  1333			goto more;
  1334		}
  1335	
  1336	out:
  1337		dout("try_read done on %p ret %d\n", con, ret);
  1338		return ret;
  1339	
  1340	bad_tag:
  1341		pr_err("try_read bad con->in_tag = %d\n", (int)con->in_tag);
  1342		con->error_msg = "protocol error, garbage tag";
  1343		ret = -1;
  1344		goto out;
  1345	}
  1346	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106281329.JLKL1c31-lkp%40intel.com.

--HlL+5n6rz5pIUxbD
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICJpO2WAAAy5jb25maWcAlDzLduO2kvt8hU5nc2dxE7/a6cwcL0ASlBCRBA2Aku0NjlqW
O57YVl9Zzk3u108VwAcAgu6eLNKtqkIBKNQbYP/4w48z8nbcP2+Oj9vN09Pfsy+7l91hc9zd
zx4en3b/M8v4rOJqRjOmfgLi4vHl7a+fv+7/vTt83c4+/nR68tPJbLk7vOyeZun+5eHxyxuM
fty//PDjDymvcjbXaapXVEjGK63ojbr6sH3avHyZ/bk7vALd7PT8J+Txjy+Px//++Wf4//Pj
4bA//Pz09Oez/nrY/+9ue5xdbH89252f3t+fPJx+vj/9eLa733z6dL55ODt5ePjl4fN2szm9
+PXi43996GadD9NenXTAIhvDgI5JnRakml/97RACsCiyAWQo+uGn5yfwX0/uMPYxwH1BpCay
1HOuuMPOR2jeqLpRUTyrClbRAcXEtV5zsRwgScOKTLGSakWSgmrJhcNKLQQlsKEq5/A/IJE4
FA7ox9ncnPbT7HV3fPs6HFki+JJWGk5MlrUzccWUptVKEwF7ZiVTV+dnwKVbMi9rBrMrKtXs
8XX2sj8i415IPCVFJ6UPH4ZxLkKTRvHIYLNDLUmhcGgLXJAV1UsqKlro+R1zVupibu4GuE/c
r6CnjMyc0Zw0hTKbd+buwAsuVUVKevXhHy/7l92ggHJNnAXJW7lidToC4J+pKgZ4zSW70eV1
Qxsahw5D+vWviUoX2mDdHQwnI7iUuqQlF7eaKEXSRZSukbRgSUQIpAH7D8RLBMxpELggUjib
CKBG1UBrZ69vn1//fj3ungdVm9OKCpYapZYLvh6YhBhd0BUt4nhW/UZThYrlWUnGS8ICmGSl
D8i5SGnWWglzvYCsiZAUieKzZjRp5rk0J7F7uZ/tH4JdhoOMia5G4urQKVjCEjZZKRlBllzq
ps6Iop1I1eMzONGYVBVLl2C+FOTmHtudroEXz1jqak/FEcOygkZOHv5Ar62VIOnSSscxeB9n
RRnVLDNHhP2CzRdaUGlEIzxRjnY3cKsFpWWtgGsVn64jWPGiqRQRt5GpWxrHyNpBKYcxI7BV
LiP3tG5+VpvXP2ZHWOJsA8t9PW6Or7PNdrt/ezk+vnwZTmLFBHCsG01SwzcQoTkoHx3dUISN
rohiq9iZxYhBjdx5UX2NNn5j3kRmIACeUvAfQBrz6xhPpCKuziIIrKMgt2aQt2FE3YSshoOT
zIe3yvAdIjdHI9JmJiP2AGeoATc+bA8IPzS9ARtxjl96FIZRAML9m6GtqUZQI1CT0RgcLYmO
1wTiLQqMr6Xr4RBTUXBdks7TpGBS+bicVJBVXF1ejIHgS0l+5cRuRCWcRwO3mYenCarU5IK1
yTHKxLVg/zD8UJ6w6szzQmxp/xJZAFsugLl1D33OgIxyCAwsV1envwzHyiq1hEQhpyHNudUQ
uf19d//2tDvMHnab49th92rA7ZIj2D6oYbyTTV1DciV11ZREJwSSwtSLGW3eBqs4PfvkOcu5
4E0tI9vD9AFCDdjYwKbBKZzfmCpU0uUHsVoAKG5FLAtQ3VRUeWzTBU2XNYfVohNWXFB3Cgno
zGRkZu0RfhDKcgmWDtaUQmDKvNEBTq/OYsqFXsLJZAt0HCuTbQkn+za/SQkMJW8gyHgJpMhM
RhfjDooGmDPHMDJd3JXEXSiA/MzPxRR3sXTUIC4CJndSZbHUlXOMKfh3T004xJSS3VGMmhiX
4Y8StMk7gZBMwl9iURTzMTCqDG0w5eBbIE0gmmKOjlHC9RpAxkW9IBVkjcKBh4mo/Q3uMKUm
+FlTd06qzt2VWrcZWVsJWTJDZXVYz6kqMQ6MMiGrMyNwDsuF9CTMh/ucwTP+8LeuSuaWSs4p
0CIHcQl3VwQSvrzxJm8gyQl+goU5XGru7YHNK1LkjvKadboAk+O5ALmA5NzJn5lTKTKuG+H5
GJKtmKSdmBwBAJOECMFcYS+R5LaUY4j2ZNxDjQjQLDG78M57fDB4rqXRNwHEwqcGwy84yXxq
UzW5WzduFV3msHiNkySQU8r3yeRtlQbnB/n6taeWZUKzjMbs0hgN2p3uU24TCdpuRr07POwP
z5uX7W5G/9y9QLJBIEakmG5AXjrkFj6LPpJ8J5s+ZystD5t9emotiyaxtYaffJc1UVCqL6Ou
SxYkVsghL89JAxmIVMxpV9FGBwFRDpkP5hhagC3ycsSkxy+IyCARiolcLpo8L0DqBOaDM4bC
H2KOZ/6KltZ5gTqxnKWd93JSe56zIshX++wMXJQJZ95R+F2O/tzq9PKiO/T6sN/uXl/3B6g3
vn7dH47O+ULoBR++PJf60nP5PYICIrKavnIzadMwjK+p+AWh8diN6E/vo38N0aOlOk4QYLmb
uJECDdvLvVbyJlb0o8nRynaU6oIpXZdQDSisUkM5CCidb3RZTq2qLEFLmJfiINjaYNl0eZWD
RSBGA3+AMbZUCS8VkmUdLRrGh9pbWyb5+ZlnTlAuJegwqoyRKlYIAwHIQIEwLI23sMsLG+fX
gtS16wgvLxK3cwISCnxaWZJaiwozYsj5SnJzdX7+HgGrrk4/xQk6l9AxGtLid+iQ36nnEyVV
TY2StjUkJPbDkk290aGMc9U5E2D16aKplhN0xtzjZAIrUXn18fSs9wEKHL8tK0ZKYcEwIi/I
XI7xqJmQcI4RnSku1pTNF8o7Ol/ButhScVlTB0eJKG7HGQap2rYOVlqnn4a+rxGx59lMu28E
Nyk2L8G4cshvwRjQe7kKZHpp5gDH2/GSGRshWUKFTfkwSZIscdMmv4QxIcUcjnHFU2QNeNwk
NNyMrJ011nPbdzYdOnl10frUp80RY5/jUj2fYVxZtYrFCRCT111zR0ESwWisuFlCDJ031C2D
aU1qSK6JINgTCVnx3BotVhaQw7GpZhLu1zZUcvA8Lk3XDprlh92/3nYv279nr9vNk9cBMuME
dXqIHUTP+QrbsQJNbgIdFv09ElsuoQMziK4zjaOdsmLCpY2H4KlIsqLfZI7pnKlb4z3n2BBe
ZRRWk33/CMDBNKupVpcnK7eIeo5TvLu5yU3FCLutTHKaWnmvMw+hzszuD49/erklkFmJ+OrR
wnQNSTpUy26uE1fGbk52/7RrZwFQvxIEu9aJ+wj7wd4MdoADcRkPfK6pntcsVkCDB9NCpe7K
R+7Czcb3X/FS0ZHM4k6fnpy4wgfI2ceTqGYB6vxkEgV8TmL1wd3V6XCRZx31QmDDNvCUbYrU
Xq8suKqLkV8e0Qj4m6+GNovo3W5LmhNWNCJuYkt6Q9NpDITcaEsfyzLIq4kXGhygucDz1FoQ
udBZE6ZZXRBvSjKVPkpa0FR1m8FSsQgkA6FcAbqVUBiEzA3Md6Bbl+EF3EGWi2ZOVZG4ySQr
CjonRRdv9YoUDb06+evj/W5z/3m3ezix/7lB72JpouUoJF12iInk1+Q/bReyz3PaW9kW3Pdo
Te0T0pp7FUzp9B2vKIf6SmA/051CQByThOsCRBKEalqhU4TaLOgEpWVmLpaHS016A6FQKwLl
IFRQzkVrm1XQWGXupBxRoJYVqfEiSltX1Sf4EMIyjM2KqfZK2EEVlNYeMbYhO+gg/VKvyRJV
dxkVfhkQm5wiSqjTwitq1tc2WGiaQxXKsDKfLpBNhQNauKS3sR5A57yMQ0veXsfeLJeFLhLP
Hbp0fboMIQXCPmR+9sbaTURBxXieYyJx8tf2xP+vz5DsPTfwEO+R1YtbCZX3QBgS2Ot1SLcg
FU8X44t3i3G7PD181PpCYFm6DS+ErPIQEmbO7kw6ua2JlBHkypQwplHEuNffxISwAau4CzQX
RvkTt7W/bUGKKA789ntoTEFHubg3fIprHTC8YWnfp+q6GpvD9vfH426LtxX/vN99Bf3ZvRwj
ERNlwm37xF1Hn973uv8beHpdkIQWEV3ntQoLglGFYKYaDKepQM7zCu8SUrxJDLw4pFzmUkix
Sif+s4mloKPZDHPGIYBCOYt+Lzz26IBJTpH9uGzwEUwetL4NPm8q8+JAUyG4iL1AMGRe83l4
N2E4LuCcx0WdBOFj8tVGiEgLFMKBYvltdxUSsJclxtn2PU24K0GhbgZVtWV2ex6a1OEi2z6q
C1qsdQILstdFAc7pgUZ2DBD7RCXj85ApERl676YG96pAgiBKv9Yd+OPaY3BzE2b3gzlKTNyD
RnutGD0nagGDbdqDHcwoGq83v0FiQzy7CzOUNQH9xxYHOmcQNxQDGEbLcnSsrZzMzWVa1jfp
Iswh1yB8zNMoNuhJet0wEZ/OpBz4cqV7bRUhantA30XLi8yhj8lX0hQJ3kFhMmr7GkPbzmKm
WvPp+OWJiwYLgHi4uAvA8fcW36BoX0d4Dmb8QGLCjivMQtHNYZaJehCVAs8hgYCZbwMsmGqX
y9IUG96OevGsKcADoX/Emyq8k4mskt4whV7KPG5CK4h4DDPc9O09FR3W5zUZ3+tQOs3HyGin
szjFxCUJGo+wQWa7zX0PMLbWaiVICX7bvccuIC/WmJiuwaE4CFRdyeayAfFW7mtOu4oWTdLw
lqHFn5/BOo0eTBU4KF3Ml7TiOiud80Gv5l7phAIxljW6jLWRPeWrf37evO7uZ3/YDPLrYf/w
2LaV+jUiWZvSvbc6Q9aG/fbKb7gZeW+m8PrkG4lGX0lCuYd3pG5ENXeKssTZT3z1RvFr07VR
I80PAW0d5F8qtqimasG9eLwxFh0tX51gGbu+blcp0v6FqnsBOmwiMrVkkSdxY5IJhlAFktMJ
roA6O7uY2o5L9fHyO6jOP30Pr4+nsQccDg1o2+Lqw+vvm9MPIx5oUAJyjWkO2IRe65JBolw5
j2I0K00R70qiqcAnguXelgkv4k9glGBlR7fEe+3JiaV91FVAMtY4ESxpr7n6n0stU8nASV37
PebuyUoi51FgwZIxHJsOc8FU9OlLi9Lq9GSMxg6Ap+eIaEt5G8pF7BEKEK2TYNUA0OV1yMte
C+RxsRox4I1FTWJOB9H2ubqmVSpu69CvRgl03nYVRm3SenM4PqJ7mam/v+7cS/eubYCPIbDh
64mEpFxUA010J4TdfIOCyzxO0XEoIXI4DYzBv0PZzGKIkqQeeDASmXH57mRFVsY4Irh7GtCl
VfPo3E0BJnETw8imioGXBJxyfLk0Z9+QHd53XX76BpGjtTGqri8c6IBnoKO2ACpYeW2SPLeD
0IKFF6IRaFpE9oE6H17/OZoGoxi33V98XtV+ijGc3IBe3ia+7Q1vG1uKJL+ObtGfutfx/pUz
5LrMexJCZHXqHG3VmpSsoYTGUDdKAvtWKFGQA6ZalOuAwrytKRlfJxFEBYbGIQAWpK7RO5Ms
Q2eujYce6LE8ujNJvpEo/Wu3fTtuPj/tzMdEM/MQ5ujINmFVXirMTkeZWQwFP9LgiSL+NlVf
f2mEqW77XDTmoCxbmQpWq+GSqAVD8EmdmyPg3RaU/UlNbcnst9w97w9/z8rNy+bL7jnahIn3
w/vtdM3wklRN1MEOHW9L4lhxh4mATGMX/hJDreB/mJv3DfbBhkOaqUotJ1LpuRs8jeIsKa3N
cy1fH9u9M8mL0eMe/w4lun/zDkVZ268bvGx2FSdowZiyXFBUfa+AA88twm44lJs2GXOvwk1q
j9quVeQpR2+ajteUzgF0OmkEXLLKcLq6OPn10k1UxhVk9OWu86Bi6cyRFhTiHwH/4tohbMbv
pKX+m1f4OW6Gj7F5zIYQi69C5NUv3sk5RW5k1F27nn6EAfR5IRe9tOBP0Iz4ldfkoOCd7rcH
fLo4+//OEHvk9R75Iv2u/U68G56iv/rw9J+L37cfQs53NefFwDRpppkGpOc5L7LxUgMqU77x
9PuYXn34z/nD/ul+tMqOXTTJMSwGncU9OL+6Zfb87ILAYTtzWJh5HfHOkzz7mqdtIrs7N41X
4zW6ttO7hb/CZ5Or0jW0RQm+mWFPOHCHUIpI+70TDNDmBVMk0tb9HVLngahAkzdf2EQVFhyv
TiCZXpTEfwsaW63pMhGvBzAdtQbf47g9/IQAxCK8Pr5cJhhjaNX1nE08rHbHf+8Pf+DLhlEg
BFe9pMo9OwsB/0FiMocc52YIzfgLgrjjBg0Exw5EqpDeDzwq5r+vR6jiMX97kwuHO/7CDq7f
ejBQUsx5AGpfu/ezGKC5Zs7jD0sMgWwSja+Q0tuAnQ1WdMTRXAVKxdKYk7ZrWwSsoKQOIKz2
G7d4vKCCg+BagLOKgCFsLHW/dC2dFAp+dIcyrD2rIVLgWcfWzayyDQZZ2y8IUhL9NgnQXQGo
BW+CDjPDtnOCvQD6jgF1U9RF+/30JJmZoSUmKv4NbU8G6XLCZey4e5K0IFKyLFhyXcUyLWN3
tf/dsoXNMQWmZRN7w2sptGqqys805W0FsYUv40/p7LCVYr5iNJnDyoHnvBkBhmndVxeIdLXS
ADyt7CBjc+swgcIxu1hfjQ3QaGi4XoMZy8OAJ3wPTIfp4dztNYSoxPvur4OmTRy+plKtOc9c
u+iRC/hbvKfVU8iAZERwmxTEcX4dfEXnREbWU60iQPzWw9QEYz5FHWVe8Qj4lpoDH++CFVC0
chbTv54mS/Gsx0zTbB47hES4Eu1yDTiDyBwdtjuj0TAjrOhB9EOzeP7c4SGpjz1+69Dduq8+
bN8+P7oZHWLK7KOMfw5Zry59l7G6bJ0f9gzyiSHtl2QYMHQW2tUlWuWzbw6XaGxxH2ew1uam
ZitZfelxRCArYi/FLLuRoeIAdEHPHkS6NVgH0Zfex4IIrTIo5qFAy6i6rWmAjM7lebEOEicN
4kW4oCbBlrIcHVJpTmlKYpLOL3Wxjk5ocJDhpTG4/RTP04a6cDm5AWPqXUdZe17V/OxUzYMt
G/xnQPCNoHTPF1jjP0qCt7oTiSh62FrVbdTLb4OFmdFQb5vrNojWZR3PvoF0fJfcA3sfPX5y
uz/sMCV9eHw67g5T/1rNwGiU5A4oFCOrll6S1KJyUjIoLYio3xmInyY7g/EjxKoyBYcHxQ+Y
+/ffw1YtAlhBPht/kOkwNF/vR8t4j8pohbtXF5mr2jtpF8dEzLd6JImAMI75W3zLuJOEcfO9
c5xAstH8qhNlfPKK+JPB73YXPsxy9mGCZkzQVHnCQERJ5HVDBcmoh2pdwPMI1OWyI7g9Ohej
8BEtPkJ4dmGp8n/neEHWpUWeQPrPBqPiUK2+eQPMv98zQY47DemNWCborbg9cut7Juh58hvE
KX9z1w1XxAcJim+qYjArWl9Y9iLAg5kLSV+ELBkBIsxM9edBbMUy2iVY102s2wWHnUFd3p50
MGrATMgnX2fD0GCxY7jVC/tAKdyKg4t5q5teeY2LvDGd7dfZdv/8+fFldz973uOdxGvMPd6g
mohlOPS4OXzZHadG2KfFgftzCUJNigyu8OPxiQppTJxPz9WS9Pb+LpVj/O/SQYQs5Uigz5vj
9vf2X5qISxL/ASfsDmOy8q29WepYzBhTtR2FKZlaIqyNJz72eC9oOvWsdNXO/jafIJ59vAyg
CcPj067jDTGY5kwgzWd9IQ7NXPsxwsdMJCQ+0XuszQXCeMUOtvKdQzh//DMNlyqgiVDAFMNM
cfwk4j1cu/HoqgDNJppWLZn55js8/pUMfkaKFoROvce3WHBO7Tuxs/aKtl7J2fGweXnFD4Tw
rdJxv90/zZ72m/vZ583T5mWLzcbI94aWIb4W5nqqvHZpmixe2AwUZNH2LaLjg8opOt7N2Qe4
TFXdX0njfl+7m+HBp1p6IUIhr4UIDhKAxYReIX2RjunzWMlqUXyVh1P+H2VP0hy5zev9/Yo+
JlXffKNWt3p5VTlobSnWZkm9OBeVx+5kXPFWY0+S+feP4CKBJNTOO8zSAEhxAUmAAIE8yEMK
ZrUtSk1Im9ofL9LJj7dxZNZQXquNlo9Um04PFuPlgZ02qExxoUwhymRlFJ90Hrx9fX18uOO7
4Ozr+fHVLlsmXIKURf73XygeCdwLND7X4JbaGS5kDwXHcrCQPziGFkKUJApFNXlTyVHGt4Rw
YkO5mGS2S1YudB3cLCyQTDaN+hDXbHTdScAsQrL9bOgZKqtNkVzApdao8xzvhpQDoEaa/UyV
QitIiQaCoPDLXW5BG//IG6GcPy5wh2Sfv1b/joFGRlnpEzWwyYqaQF3L17lj9QshvAJ8SnQV
jGIUMziCLjxUPTHRK4orVnh0V1PTvxKzAbIOlBH+IRbBwCA6WOMPolY5x4irVnKaaWefi9NJ
bgf6iIRIs86iHeKvoB5uRkaOi8JwOFDg/7MwzKI3i4vwogCyHsjcSyf0QLWwvifApmeaQnZJ
E/aaW6SGGUPdyBGbbPXYJ/nSLr29+9PwklZVE94OuHqjAizkiANZAuBXHwU70GHDsjMR6mKY
W1b4hR3c42qGlyk6cPelfemmSpjhLzG93YIprHQzlmjwnn9CP4TLHOJugNHWB8AYM97Be5En
/KsvmLrlg3ylU/XcGbTSDAUANk0yo/9mV1Buki6+5YFfQxwJHXpATMsB+BUjB8SdZrYQa434
5CH3y37juHPNk3aE9rtDQwuciKYwaCRFFIea5C5+j5ZO1V4sg7Ef7vjL7/z8Cldw6P26zmMJ
RsskIkXek+uhqv0aLdo6rbTGrdgeX/slrlWCLjgTKYoyDa2aAMiKtvY3OAZ2xyIuJ7BpVdMI
83TCuKIKsjwj/ZcwGYw/+JNN1GIoDxbNjtHAy6Y0aqCZH9LSygimyMJCOyWoL9EDiSlgQC9T
cMZDR2Acx8C/nhYXa4T2ZS7/w8MDZjBbulsjVUhIMR9RyeZRlgw/HBqlTs24ExEc1EF4/f38
/cw2+s/S71aL2CKp+zC41u5WODDtAuM2RYCTlrwIl+i6ySq7Lm5G0rYNhWnI+GkK2yaB1TcG
JFrbxdc5AQ0Su3wYtFRL4o4yKA41+XTPdk0cUcMUtReMQ0DA/sUurEM5rOwOw3fNP26PxFVA
typMq6vYpr9Oronh4L65VhXJtcTYBfyrmKKnBjVNLw1qncXU2LFPMwxt8VElaa/ZcS7JKSYC
GwgJ6vH27e3hd6no6usjzK2qGAgeemX0XZei6EKuT0+0Eij4JmMsXoAnR3NUALpfUK+Shrra
Q23XBNAV1XxQUy62nknYF/FQwcQjAEXC1RA/J20j4ODC8Xqb4+GaNrzSUi4gZEia4hFBGdx0
BoNKzF4PhYcwBZMTJjsjaeCR7uUvZ3Ubm9f6I47e6dVo+aRKPiyJLNFExiikgl5GZQvhjStI
MoGUJSZB+vz90DjYI0z996DJgAid0wODSCKf7hoiKem1gigK0/GN/NKkeGUSTfSGR1r86Cug
c9Im+aqOy0N7zIBxh/E9SCe/cXQVRLgE2uC8qupAM2iIZzxjVVMIZSbXeYyb2id8uoo61037
HNLv2gpXwmFS2ptgwxKbGNPW9EroxbBM2Prg/nwBF0hgjtFswtdNh3gVfoFJFbeNw4o0m1w+
ZagH00eo5tQH+/am1yMXB9easwjE8P01s48F6dY7ez+/vRvKNnfxuOp2Mf3gi/vYNVXN5Owy
6ypjn5TquFW9gcDuxGPVqV9ADFL6EUBIyomBticFEEs3jui9O4CI+dOYaGLtMKZqk4n9Meio
CIcB2FLyxEyhIyIHPX4/v7+8vH+d3Z//erg72+Higo67GSOxBXoVFtrvNMyCbt8GRucVWARa
Eu/l6WYPlEFYGG0fUEVHhyXGNE1HPiGVFG2EJTgB3fvYRDfC2Jg12upBqHRJgsvqKvPJuoIQ
u6MihN+liyu7wxyX01oNolgcs4a6PkAkYu7oD7Cx/ugL1yHlXIc7sFudTmTXiuZAfJh903UW
lKgm8bU/d04WcyWCuTTggf3RYPyLJqC3Jl2Muc6pjLfaiIwqKJCSS8ZIWlPrBl0mJWxLbGpK
g2OoK7yC2q6J/UK+tB4HE+69Gz1oAUx4LjzIxp0o2YFuOrcW94B4Pp/v32bvL7MvZ9YBcB+4
h1eGM6nVztHLVAkBuVDZkE8iCI0zfvGYMSjJOk1ylU3wLWzUW/piIvQzSncJ4zrld7porhQM
vFK77mbqKnkgg0AnmqyG7vs1QyX7yc71XdaRbyQBW3J20wowUA+sMeEyFwKbEmfd7bdZ8nB+
hJDtT0/fn5XV7ydW4mfJUNjbhdWTRJpTGQf0mRvqwLr0FgsC1GurZwSLCrQGA8K93Ce+qliN
E8PUdnKkLBj1vfJUA2qqrkVybErPqEwAh9qGo/xfDev4+br1mSw24RnTZwlSbGwPWgXRHWUj
CEetv5vcNRXjRi2lAgiYEBwyg8Rb/anIjKdQHF+0mmANMTvhtTQ5K3GXdvBQbtp/UURPk9LX
YLkRW1dkHvl1GPqN9oKkDosw8y1OrsNPd7ff7mdfvj3c/8FZdowi93AnK55Vwzutob69CGKT
xnk90SV29HZFPaFAsM2pjPz8QqYuXn2SNcXRb0QkONt5N3n49vT37bczd/XA1vbkyOPBaFux
AvGHfBHkABqRIsSl+hoKOjmW4vHERHe1WaUIyNAVVgH1iFNro+K9YVGYfRzOEZ8HnzzgB+nq
cOIxU2icAUWzBfE9RMIO0uTA0fGhwWeZgIJYKkv2RADbor+uWuQfTk44r0NEZJQ18UB7REtE
RYpoCEur1uqYXYGLrLwWGn3Y5+yHz6/2M9yrJt5pbzfFb75ZmbDj3ALpUStVWZwsMCoglivj
M86ECWZSQCVxGcZDXh093pK9JIfooeOhMy6yDHZHmAGm1lHabpoBBs+WBF2wi+JvDWd1xTZS
iNKHz4Zd2dJrvyAfNkcdGt5KyyJUJfCQs5vIIFolPEBCpwXhY0DxmpdEXVXBrxoguin9ItMa
oKJZaDBtHitwQ4Bg3mwitQgLAgHCigYToTJu9A/zN/XKiJvG8OAfLWQeIw1yE8jAhjxQjExi
MK4wAaIVAREfyJZgDkU8a82kJgDtzWAaHEi+bsQEiR80IgypXhAMxZNl0IBzgPCpsOqQrhYQ
zLVLGyqZCCaD+yKyXmW0JjCGIKlhoL4PPileo41yDB5cEQPk4e3OFgv9yHO9Ux/VOFopAuri
IduxixvJgaPpK2y3C7ddOnOiiWwjyZnS3kDyjubA86yMFuA6ardMUfC1h5ht7m4dZ2FCXAcP
TxuXbdW0fcdwnkcFSVcUQTpfr7Vw7ArDP791KC0yLcLVwkPG6qidrzbod9v4+BE2pP1hCk6U
4MQcELOlb7r2hBteH2rIzEEulDRrM/YXvGk2BONRcXHNZSbi2cTskCnsDEECznRVV7ODSjDE
GQ8pi7LEM/VstVl7uPkSs12EJ8pVSqKzqOs327SOW6TUS1wczx1niVnVaLxIIHv+5/Ztlj2/
vX/7/sRzU719ZQLIPfKxfXx4ZgozY+qHV/gvTjHbyyjxKl/r/78ym1vyrOWqDu3yAb5NPkiU
NaX3xWFaEXzRq7suFe8Ar1BN5s7wy56Mu/PJRCbn27cz+xSTv1/ueOe4tvL54f4Mf/777e2d
6+jgCvr54fn3lxlTZVgF4qYB7QMMBh4ZPNyuuXNzZOt35AtJhtppBlUB6S+RD1+yv8MQsVkb
z8zKg2TTpndGAm/JjMhwwkORdfXu68MrAygG+/zl+x+/P/yjiymqBZC3AmI+WhVBhD11S2Mt
Mx5+r6g0Zafxs4inUKGkHiiAHZ9YcS3+F4eot3yaixaDT/WVN1G2bfb+4/U8+4lx9J//mb3f
vp7/MwujT2yZ/YzuZGWfWz1TSNoIKH2YD2jyvkQhsZmQt3k4BtAWCvCQx40vdesvx+TVbkfb
Nji6DcH2A8K60kN59zu1ot+M2WnrTMyG0YAkJMEZ/5vCtH4r4T8seJ4FrW93RRShlsOAhmTt
ekp7gWrqoRFjJlijo/+jD9vRyEYuuqLEAw3IcwxNW9g4zT5p05COT8q6m9D7oeDoiVs1jpRh
8PSxjUy2iVImMOGnxQqa1n17tMGxFuJDAv1871vjZyzlQSTp0CqUyf4gVoaIpa6jeABVxX3h
y/P7t5dHCJM3+/vh/Svr9POnNklmz2xD/us8e4Ckir/f3mnZbGBP7f00zMh9ZzxdgCKMD7Rd
l2Ovqya7Jsaa5+xIkmGNsAbdmS29+/72/vI040IyaiWqISjE7iTqAFYmK+JkVv+iY2htVfWH
dQiyrPr08vz4wyTFwXrYF9TgaXIWIJhyM7mhK13299vHxy+3d3/OPs8ez3/c3v1AxqtRXaQX
gBS9QVuhvb2ysqsgQQ2/KcBRg/2Q8eq+qPZtHHQo1tsxK6PEbzTrlXhXCaIzfZl6sDuXPb9+
f588rrKy3uNQBfCT2wqR/xyHJQkolaalQODAQDv1zFtQiCh9V/STSEFS+BD6E0iURLN/O397
hCzqAytqEyGLwbjRhmtB8Gt1o1ndBDQ+GE9eFdjYp9AQWpebRlkmqweV31CXCaip2u0GAPq6
pSMWAw7SyPm5ZuzncOEdW+1DSgEWJEFYeNv10i4b3vg1vX0IfAwOv4Z0qxEc2tPp5Pt2zWYa
LQPNTmi/hkhQF2sfqQzz7zCdEByENtwKEv6yYsI1UxDAwLVhE8eUxV1OFkTZtDh9s6mLzco5
9VXJpnuyMCdTVOZK8qP1fHmyeybgk3qFJOqKOO9DNkLm5BuEQeHPSWVYMvri5PTBvut0fxS1
FE/r9cpzPuglI9tsXW/opVlLOF+sN4u+PjbiQ9MVFf5m6TnmGgV26gOmEmpvRUZUFIOTI407
ZEHjWyPfZfxGuItdsxAEtGPauETbE3916n7dTnaAJ2EqtMBjAnET+1Ju18BhMXe2JrCJd/sc
Ug0zPQ8WgInv6nblufPNOKAED51ql/FdHZMviUU1x3zpLJxLtSgSPoiX1tExXznLj+n2/J8L
BHWYeM5qsYCEupfJNt6ajgIvx/Bq43jQNYNvDTLOIk3FzuwbUEeAiybHK/K3judOMTnHeh8s
FD865YvlyeYqiZjYDwVNVrSs43v709l16662dKgiwWT+wnGsVSXB+mWe7ExzcGFzE/xHHPSc
YOUpgukx43TroSLjOw1P4FtrLKhU5SJbmtnSAaS1lkPaIjBoEnxTqCD8CK0MuBvJuxyTfj63
IK4JWWg3iBJGM6VEUnMkUJ6nROn09ts9t6tln6uZqbXqXSCu4RUFuqpigD7bOEtKuBBY9ree
gFiAmSrHRBITKt6DaiB51Xmq254oIO/BCAwDFXoaRFGgCcl6at6cJ7NvfA0bstNoDuY0JGrn
F7Ftn5D6IDULw5NISpAWYuDX22+3d/BM0rpT73DyhANOkFox/stjEVlZxJjGTqidIqBgZuLB
9EhSj2AIHR5psaUhEumWHSXdDfqquASeBIrwPTxaxqj38wBmYNo0U5cIBZHpVbePtg+gkGuF
TSzUwvwLxMb1HHPKJZgd+3UTh+ywjXiwODojCi4wX3mew9R3n4G0FDeYKAG/tisap9/HIUTZ
cMcWFN8bYxvIyFTEAwnZGx6QNiIf0mAyv60htvZhcBujmkm/CtCa1LmbDWXlkERIS1ZaWPny
/AnKMmo+l/xK0b72FOWvdlEgc6uZ34eW5xkZWE5S6Ns+Atrcrfhadw2WRdosyXSjv4ZQhS8N
1vVFbBuG5YnSZAf8fJW169OJmKkBNynoS0K5f/7a+btJ5ymd9CMyuV+z7dqkNKprQn2rFzDg
dpHkZm5VzVOD1per5TRZmeTxiXOxPT8GBTVRJnOU8Yk7nmS7LGRbUGM1vK2bSLvx03ckg7oI
uybnRwsxdSKxaRkZOv54z8QOYpHLPT308I4lTEmX7l2VR0kGsT7w4YCh0llgZPvxhqfftdST
4nKf57w+HKsVfDYY09P+Wwfl2oLOkQM84wx21oriSYL29ssG1UAUbqDIhiyjOhT2FZ44WBMr
OQasoCILGSVRAom49BrDUxt1t5kJYEtdfziMsjvSigFvCehxVUIHJy0CqhmjxfYok9dNeZ8V
8STqysCpST1opmUmgllTBs60HB4fWhzHis3BLkzj8IoHqkQFupD9qZGrMAdkrdh9TahNxnYt
cQmhcRpCsvWblTGp7WOycn+oDOUT0LzqiaIH1u6eBwmhvt12i8Vvtbuc3FfZ9pffGJ5HYwgx
S4TD5juYVrac9m3H7STCYc6+JmQfti9YsZsWdJzfEbJB0sR1QIjYgBTrARJykGrXmAxY7E/q
lC6+P74/vD6e/2E9gHaEXx9eycawnTwQsjN/3xeXODSHrNTaAEc4HcBb4fMuXC6clV1hHfpb
bzmfQvxDfayJJ1aqxBf5KazziJzOi8OB2yAdJEGA1ceWqZd4w+Mjl+8qLbmKArJOKDUOPjYo
EeCbNs7ByCM/3t7PT7Mv4LkmjqHZT08vb++PP2bnpy/n+/vz/eyzpPrEpC8wWv+sT2IITnF8
lgwmiuI225XcR5UydyDKuIgPrt4XOe0GpBfuYCJ3MFaZ+UTUoTl3Fewk5N0AQ7KhGiVMo+3N
FfmMg89GVnSxsZCEOPPLkMaJLd5ndrIz1Gc2eWxwb+9vX/mKJm7sYaiyCm669/TdCxDkpTFA
TRVUXbL/7be+EgcMwnV+1bJDrNBLdFl5ozvLA/SQ1WBL9LlowttVvX8VrCrbjphDn/mkzbA4
M8lv2uh1e6MBTOPE3oADSHrmmFMqcODwCI6PU8PFvW9Nd70RAyvlYlHl+4m6ZvVmgZgghGcY
DCKfJuJGR0eEoGXimn6T2DI5gBKXsIiRcnv5uI2LC5w2M+ySI/jxAVyNUJZzcHdgO/pYZY0T
xbIfZoyasqsljbCG1q2q1d7loXiY86TmV+r0R0LqgOS6O9FXRCJ3hOGbf/Asq+8v36yNre5q
1qKXuz+J9rC2z73NBhLg8hxbYsHyZ0OzOr3Js2AGZr7J8NrvL9ytiS0RtqbveZo9ttD5197+
i5e1/iXwPdu49WJB9dGilM8EVT4/qzvoK1kJagIl2bPh0kJGSQBPPgbuqiKg8S/e3FUUTOOW
+7hRJGuuwzTTXOVhkZibPt+hLb8NjAyF3KCXAGB/oLw0OVo6puut4nahhTPKHCInz9Pt6ys7
sbjxj9hqecn1kim84Io+9UGhwo7rQTSSiVklTt0nzD5HLcCPOKI6+MfBqUhxP/CRo6EbU9Lh
4DQ/0hoex+YV0zUP1MIRgxRsVky/t+fIL3wvchn3VAHlMyyIsupkDAKb21CPrc7B4vSbbqVf
RH1iWgj1ZErUxA1CCoee/3llC5OaUD+qPbZ8Lnw/IhPEiGE/sgmJjH4K5nIoqHuiGNE96f7v
4kIY5MmFOYYSOkWv+wRLOJiaLoxvV2ehu5k75AATAyhWTBJ9NLBBtHY898LABhFr8Lw4Uh4P
Yn1wg5XVI2GpmiykyTqCz+vFdrmwFkdeb9aknDbMzHrlmutQWZSNeWlCr/M2C4O4CxfeZmvO
OTd/OpuVUYWyilLgrbUfdNfFabMygcLcadYgjJv4UCCmTziqtIE9rbguTd4bqiOK6Xvibsd0
IF+TucVosiMLJ7LEz36O815sF7xl809/P0jBsLhl+gRuGaNUMR1ad7l1tDoQBvu6Y8z8qMmJ
I2rSDWQkaXcZuXCI9uJ+tI+3f+lOQKxKKZym8YTL3EDSTt3ADBTQXYdaIzrFRhsqjGBKqx/x
6CA/JqqfU9KIXsvKGNYR5X5UeON4k19eOB93fkFJBDrFYrJ1i0Ufkok2dKqJ0fOc01TN6w3l
yKJTzOlaN7GznMLM13g16iyGpD24E+QvqyjFR2AhcXGupYrB8As5TOvIF6S025R0sLEoJJ6/
UuTIsYuB37EFdjN4KiF1KQUXxYYf3c5qrsUrkIX8sNtslx4ZoUGShEfXmaP30woOk7ByqEon
J1AjmOPR0zCUAVsRtIGW3kd1kYFJJ8zSl1iqncG1uz6d6CN/aBA/Wy/1xd/OPYfqC5vM+Zod
KBcKSxLXnk2OcefEbE7Ps3KqGedKYbK2hu9QI8dZzqG2GUUB57+7tj9nKiZjjXzUyWEd6uwW
K4/aelCz5ktvvaaaHMUdv5gSRCuPeoyE6lFyCNV1htte6jtjkeXcI8aaI7YO1X9Aud76g1rX
C49qE0N57IMXBw9o2Jx9SLPdXKZpi2CxvNROKWqtbfbc+ftdDLe/7nY5J9DStEWtuqbzHFJD
V19tOrYjefaQ78N27jguOWoXZOiRZrvdehNuO6XXrcDRbmLfTY8F9lniP5mMF5kgeSMmtHhh
TBcvAAh/CPkOMVov5yhWvAbfUPBi7rjzKYQ3hdBEDB21JYdEoyGlBEwx5yvVRmyZdEMhuvVp
PoFYTiPIbjPEyp1A/B9lV9YcN46k/4piHjZ6Hjq6SIos1m7MA4tkVcEiSIpgXX6pUNuyW9Hy
sbIcO/73mwnwwJEoxTx0W5VfEkjcmTgyl+S7UQVRWt/EIaIlJYXIwdShpDixyyarZbT2rqmo
L/E2B0HvTy2RXg7/yxhGVe8aqgTyULAvOe0LZ+ISYJddKSW+aw0DMn11BTIrKOXOYCI63GYZ
R8tYuMBW5C5xvDQMeRFfVHGQCk6JCFC4IE/GJw5QTzIizSXVXYZzj9pFdmyXBBHZkdiaZ+Q5
rsbQlifq03e5556egmEi6oIwJPpgxeoy04/wJkBOxkR7KIAYnwNgXrU0wBVZbDz0C2KPV3iN
JwyujTHJERJNIYHb2JdzmFzr04qDGFKoKySLhExWYsH1eVDyJPQSo/OsqAVVY4iCZUQ0Kz63
JqcWCUQrj9hJcrUbSY7Yl92K6BNKwhX1Sd5GC3q66PPEXFjtT8t6EwZrntsL6cTQLWE0R0Rf
4ElEdgS+jK73P25O8BTDtZYCmFh9K55SQ5KnHiHTt2RIr8tAtQNQQzo3UpPV4DiMCE1DArdE
z1MAMaHUfa52X5jozQtYA573YP+RQtZtzpcek2ua+3AndkVPLy137nNYX4tdf3XaAZwaZkCO
/k2Sc4K7hFXrluqvAISBB0jQkCay4CK/XfJgRUyFou/FMiY/4klCKnt5EKZFKlVHQvERYF1f
n8MyEDQNr+l7rM7CxcrNG+n2DcgJicKrafb5kuia/Y7n1OzV8zZYENUl6eRQlMj1ggOL5cWE
ZLleDN7GAdH6xzRaLqMtJRlCaUCfPuk8q4C+MaxxhISCKQGPRCtyMVQI6kKeM0+NsVqmcU9o
egpKzFgUcsrwxFmgbuqNaYo1qENCsLV+H1joNyyQBX1vyof0Gu9cNo3Bk8Xg0Ms8ml3nPCMT
RMC5DibvIH36+fWD9Bno84bLN4V18Rkp40acnomkgyUS0L1yhEP6RUTLWa5O7UJ6G0B+n/Vh
ulw4r5hNJvkEES/p5g2l7c48uyovcrNg8lXqQnfwKqnjmZZVC/I129ywM812/IgIx0t59DM0
WXg0UMiDqwmNQzP/we4xrvBN9NhuG6QmdOVPMLUkD2CgP4CUNONIDinbrC/xhoSynQwI7abT
yaqrgWhq9BJowyRcmbQdA+UxkJWh7WP06OJLsFw7o0MapIgnuFYNsHswMenVHOE7sFAratpC
UD2ZXZgyKWJsFtXd8VStP+0QmlTrOHKmxguKVz8dnKn6nDlR09vI4U1XC1cE3MQnOFdLuwIV
OfVUEe+TKLGFBtrKznHUr02ydghpZduVPXUjAaFpE9nw3Tm81rQ2BFwG+yRQz1Pu+5kSOsfB
kniX6gdukqT250yiKHPn8pmks9tlcro+pYkqTO27pDrMY11Vm0jW8iDpd+cU+qGh7WbrU7x4
Y1IVoCuQjiMQG2+AaLSegWoWRfHp0ovc2CxBdDi6/2XS0mWa2rUD6VSeN7ey+bOKZ9RZCu4F
B4vY0O/UCb19JcIAl9T8K+UYT/dt+SR9Rdn4E2xsSY+FkrcU7CViAOKEMgm09NxqQnqaXJVe
3TZwP1sFoc/hgWKBaS/Sds3H19euVjAi2b7Q+934DNv94FgF4TIigIpHcWR1EOfahSSOFyaM
clVNvquzbeY5tsRlumPvmzrzXsaX0vH0duFXRgCOAv8zqZElXrzFslpRuxFyIml2HE8LgtTW
SEYEzxGc6XL6ymM8qQGNKyllHQzDfaMt1uOD6OENhnmN3adCTh+PfgO0lyKTKwHrGukMbNgJ
3xM2VY/bhwQDPvHZqzdWYm88IZl58JmtaPGV0cT1xeWCBXsLY8cDmau+BSX6ajpjqB6nSUyJ
pGnOLlbE0SolEUvTnBFXYdWwoX9Qnw2dioRGZZcABzXUh5BFBiQMyDqUiHGyrnWArI6jOKa3
pCy21HN0OLN5VnrNp4VULykhFXKII7IITFSraEGWG6AkXAZkU+MKuPSUXGK0oq4zpcuQmu9N
lohsYrnIxD4kJbtgpeZf8iOAkqVxZjeDo+J7VVRkinXV1oAsFdnGYrJhUFdNbkl5JWReBjFB
UJLfElfqzP4E4rfab9Cw38rG0vhtTNf7LSxdkMNUYWFCYoM9Nk3zJMcypaxEkyc1N311sA2g
wd6snTa+DZI3mdI0ppzemCz0zM7b++UqpHsO2CxBQFY6ICFd5YDE5ExrW0UmsiLXD7z1ext7
OuhovVwteLvZv0fvtfQM0x5gxiQPpiyelBRcQityRHaZaNdl151bpruxQs+QrD5TiY1GFQWZ
ppUG2AaWBoHyQ6bV36YLcn6fLD2iorqeHzz7UTOTCHmbefZiTS4RUAqXxhPzdJmQXYIy3DS0
2sbQ2m9KCmksEtLdi86ThrfkmJHQsqYgMBPiIDFDIBqotMauZoxMIQ4VolWVmRVGfmxJSuxe
yrawICJnycluI2t7tMLeqO3R6nqr1KN9RSWhLKqrKRxw41srRG49le7wnZnhUbVi5DVYGTVe
OpvSfZx3l7qcgDlVJkeuh56Q9HcHOh3R1GcayOpzQyO7rGs1ZCoawyWmvNytixElGwnYTryl
WGYGpq5IUeXjnMpb1p/j/HIA83n7R6PUTc82TDdekNoy4z3NQFJ+XfGdK2W0yYDwyIl3eq2I
BzLv3TIKqcN3BO27kRhYrt1XokwRJmtQxp7LWA0tUTRHL5uSa5DJOYLYvjx8/+vpg/5Yb/qy
IByhZkDTA3cMZqhOVoFuXh6+PN78+fPTp8eXwS+mdqSxWV9yXuDNlLnagSbb4qyT9MadQutA
gah9OEwU/tuwqurKXAuwNwB5057h88wBGAcDd10x8xNxFnRaCJBpIUCntYFux7bQf2poi9oo
87rpdzN9LiwgbDsAZLsCB2TTVyXBZJWiaYUhTlFuoCeDca/vEQGdw3ga3rsLS5ieVbJYdgRR
t7H/Gt8aOwdZkMxhmwWJIcv+UAqzGjEKq3wgbjQ+FCUopHLsqw254eqpBS7y/eZkJbgvqNNK
7BBrftmeetD/FtYn4z1VnwzDlgidLC/7rqkbXhrFxdeAob4PMNPwLWhpNcQI+Xa0NjJMHcxR
rIe/vXUloC5NE2uO30QNXRW15+HD389Pn/96vfmvmyovXJfB8/qWF5e8yoQY5mOiQvANTCVd
1OmMen3PHHd9Ecb0/Z2ZSe1YXs3J3juZkdmedKD7vOGXY2UGgp/hrEALh760b/AsF3QC42nV
1RS0q/p00cGQuZ4AuijR38/OkKbYOpimhjmY/TJWk+cQh4tlRd82ndnWBeiklAGu1VyXn/K6
prIftkQ9EpS02483uvCYC8xTos/6KXRG/u3rj2/PMujH9+eH0eu3+5AdvnNdkak4ONfJ8G+1
57X4V7qg8a45ovsebRR3GS9VOC7aX9not+a66GNuVbM1FBD8jXdH0Y0KTFpEI2kcalqnv86r
fR+Gt6RsjvYxpi2afV1olzdq/aZKXQwuiwySKO/nOUSjd9mRs8IIo4nkRoiS78nrKjUeavKL
4xgBgV0nyZ7PhqhcF87qxoj5UMuT2wvGOBRG5HspudLNLrC2XLKW8i0hRVKBPGyBxpADCJMv
/E0mVvd3dhLe0AuqVvf4wr6z609WN/ZQ/4cXrHfltcttKqpNBs/3jn6xK37Pfn58+qZrnBNN
T3iHj+VALauqJlcRZJNbow7b3C68L3aSlLNxgxHsQPd0hj0Q9XTh5/z+rO/KekuGIQM29Jk6
9ZI9kczgnsARQ3x//IBe6lAcR9HCD7Nb9C6n3clAWp7v5ZaQdn1Dkrv9yeYE0mWzsajoU976
FknM6B2SLMj4fRLaYwOZCa/L6o7VZsrrsm9aFMGksu26rB1yvsMdL5vG4NfZrtHhqYRHurzZ
b7POlI5nOfSos0mE8VZg8C1hFz2XBpcv+TYMgtCSE+qjR6+TYr2I9dcvEjxbETeRCN1m29Qd
M2MFzNSL6Z/OEK/k4kK6r5NglVmtUFZgZXMz+7Jq7EKX72nv1qoL8zXrCjPd7cb07iRpVdOx
xttxdk2F/lfnZORvp5Me2CGrCmYSt32SRp0pAkisBoPBeXcubbn2uXTo4RHrmFXQUe0KObDy
KJra+9X23EmPvmbmDP2Z2NnTHlEReZehC3sjhf7I6p3diHdlLcBus5zpIVLl3hdsiJo6ryLV
zYHSBiQI1SRnnS8U9VK88wDwo9ViTU90vWmR2O35uirbrAgVpKsbbLu6XdA9G9Hjriwr4XQW
sNZZrqJuWAXl0KxdQ5veCj9vwG6hLUFkAPtaDkhPXYGa0DWi2fRmnYCuBcuG6Ude0jGcpS+c
BzLUPTNTqvuObU0SKBnlnd29wDDAi7Yw9qhNFclR1lz6df5iUvusOtcnJz10s+qJASVxmGOw
Zi3v8CZP5432rqoWEih8owIUoTyzhIUZX80dRjoi42Jf0+/uJQ7Lhx/EB3q+0NeI92VmTZxA
gk4I63lpTeggRVvtLWLHmS3wFk9yMsHoO6wyJZ51/bvmjMl5mWC18Q1hmMqE8fBQEncwe3Bb
GIxsKnrXgZo+c6KCc2lFZJbsmOUNN7M4MibDalh5nBh0PW853pddYxdUh88F6DGNNRmqK+eX
ne7wTqPnUCaw9wfn/6auU7VWE3FYz8PhidPoPZhQzCYXMKTyiPu4O2ZVecs082fgGL10ac5h
9ARn75JGLvOOOzqzZLRZ7Hw2qdl6Bpo4DcYRM/YfTXHnPXCNCK3OTUdVSIVV5oJzFdGKCO+r
lg2uhY3P4M/ad6kEcRkDYYfR8nKzKk2ZsrqGuS0vL3V5HA8P/vVrDoL7+Pz88PXx288fsr6/
EXHlxXoKiIwbp8wTCxH5NpCH3JnDGYx5QnTJBA1D0lPCpt/adQkkqZnu8766JgjyFUxgGCTp
X76rswqHhD8nMD253QQYBUw2nXxtL9b2CYNezWB4gE0ASwnamxhUOtRh9chvHifffrxqQfK0
iFp6B0iWp8XCad7LCbsmTS3W21wPlD4BbY5xf+oSAzJ+cVHHNxxCJZmPpHYYKhGq89L3dgtJ
vO+xuwmwWqg1d2LbiIrOUjoSbzY+cPbPr7fhaR8Gi10rRTYQdPYRJCe3LBtod/hmAMwONGTm
EV9UaRBQ300A5OobuV2aJUm8WrqS4nfCjPk1kqWnG25pBVOHGiKz5c8PP35QLghlF82ptyry
IK6T/rzNyjkWVgX3fIouWsNS9t83srx9A1pgefPx8TvMqD8woK6MKPnnz9ebOaTqzZeHX6Ob
zIfnH99u/ny8+fr4+PHx4//coF9LPaXd4/N3GaX3y7cXjBT56ZtdkJGTqgj25eHz09fPbhgS
OQqLPNXDAUka6qmW7gR01vpvq8vBWdSC2ouXSco2K7rcykmSGxmNeYhX/PAKBf1ys33++XhT
Pfx6fBkrictG5RlUwkct/KRMAh/mN7Vur8sZ9ai/UBkpV/JTc44Wct6coPHjZoNuh1sy/sDA
FDp5hkae24ePnx9f/yh+Pjz//oLbtFigm5fH//359PKo1hzFMsfqlb3jUfpG/UiIFV5xJjWx
oOP/O4xgJ0pUc8mNQ9mMOwaaSJk5i+9Av3geyBk8XFgjZUIYP3mQ0b2oM1Et9ZtcGtGdvSYA
H/l1aut9GgeyKp2NMzl6xoCKDk3zeWqOtzF2iN0VKK6MdTkuu2/ydXdREFCeijQme99Mg/Jd
pL/R1pDjDmyhXambSBqKcTJwo7CsZAwkOu0WVoUTDan9qgtP7S4zBvThbelT9cYgH32BARsa
MoMDM/RyDWFtdk8DnU+WYusEevJzXXrmSWeTBmHkCzOlc8Xk60K9h2Vg9dWebFh7vP412+/J
ChhDF7aFM5BNjreKcFcJ6nhC52jWDEPY0B2H5/1lH0ahRwp5QP6WDLwRyyXppsZiSm8XtBCn
vbdn19mBZ/SAaqsw0h/qa1DTsyTV755q2H2e7U+e8t7vswptoreKLNq8TU/UiySdKduUnnwQ
urRZUdiHotQkVnZgs7OuxEC+b+R45uuGnim9QyU/r8vuXeaJzqoxnmCeJB8P6zPZ0dNWKuqX
R4SG16wmXTVaKeQNnfoJNwcunO5BRyZ266YuSVCIfbCge+V97xsV+7ZYppvFkryEqM/c8iGP
ZkWZ5iu52JWc6c6NBpLp/EvqxsW+39MbckqCg/DO6lW5bfrBBaVpPnp2CaUiMKwj+XmZk2+i
FZN0EWALywq5o+u3wnF9waMOL4c81QL7GCwpegNQMlz4hkm/7cpjnK91GNi968M2c9SGEcCt
DF/dWQYQxgLMSxlNVT3nMgveHLOuYw1941J+X17ZFCh3ouyVIbVhp35/Rb1nAm9ZbHzr0Rm+
PVnW6XtZ9Sert6GRDP+GcXByzTrBcvwjikl3kzrLbaI7cZU1x+q7CzQfeiWEEunjov3r14+n
Dw/PyqSgB0a70+yHumnVZkBesoMpv3LebASCGXXPaBHY23WenM1ibzNQOKjpqT+3paYRy5+X
Pm+NATBRc2qlVugGK9X0t6OAfU6u7wrcFZEQkeFjbMhM3rJOTzZd9JBPkMzhALAK+l/fH3/P
9fA7fxSPejAe8X9Prx/+crdJVZoyIhCLZAHiQZHQKvg/Td0WK3uWMWJeH2842mFO11BCFC1G
I8DNBrvI9YHhbdsZpaTzZGJsgcgYnkfW68eTnGsWc3vs8BpFSRFFkS5T7crWSJYGykyGTy/r
IeCGTRqvsKTajYgCurongB9+pw8z+P2HKP7AT97ezMOPx1eo87VlIIpil9MxWBC9ehcTGQ57
6CSe18Mcp40d+eRaQsWOJdAIC7Nq8OYCnjnvdWcyCOT3IKlJ2ol7k8B77fCal1wGqTeKPNBc
A14LpiFenz78TW1hTV/va6nvwfK556TDANF2zdTw8/dC0a7m629LVw6tsggpcLsd94+1E17c
TZZ3QbWj4Il2kaetJCLPRsfYjvOZMDKsO1ynatQkMNYtxrwr3Ri0eFmQqFGZAnU70+TIaphL
YzLMtsJFlOBzY1u2DN17UQubkjznSaS/HJ6pceqkJe++UvrhjIZWUsMDfyIl2kXghK7Ck5tU
sghOTlrqsZ4vLRVyI3S+Gui+sx3JY8YhU0KgR4tbghg7JW/jxcmVFsixfHqJh1T+5lbvc70V
JC8DWxnKEsVujgPdHw5h4kqiKx3QdTlu4tNDJW9fK0LL/Z4qSx/FK/rWtWpe9ymqydDnGb4L
u8JQ5fEq8FzpV3kM74t9oruPcEey9J5DjZP431eyGx3j+FnwLjqMAZ9ATETBpoqClT1IBkBd
9bemHbmf/+fz09e/fwv+KVWFbru+Ge4w/8TAH9S58s1v8+G8Fv1PNSnqv9yuleoEfcGpFPTR
4CuO8v4ynty6w56o4ytPDSUutjwK5N7MVAv9y9Pnz4ZOoB8tGndejTNH5y4uzQbmuNg1lN5i
sIHBd2ctRyO0K0HvWeOeKY1PF8+tKhrxvN17vszynh2YHubXgImJbhJ3OHSeY7k8fX/FU4Ef
N6+qPufeUz++fnpCtRMD0H16+nzzG1b768PL58dXu+tMlYtx55lxedcsU8ZL/fqZAbYYsdeD
1WVvBCq1PsR7s3ZXm2pL+rXRPSfleYne9lgFdUg0sIw1y9ZZbdxkm6my86NjuKvfKi6V1yyZ
k0qph3acQfmIkeNfbbaFwUoyZUUxVPkb8EWBG5oPHyCZ0eg7+AWq/5GUW3QtSWfCetQ5Q13f
jcH/yJFns0JKB3J+KYsMAwU3eM9B5N1eu5ghIecKCVItnqrcZvlZRbezIMeikFSwi1chtZPa
9ZCaHpgPCUob1d8FA3GX9w1k6EkDkL7Z5WY6A3F8n/CPl9cPi3+YqfoP7RCt7djQcrwDcvP0
FUb1pwfjLBe/YHW/merFSEsi+FzAUwKJGwNUp172rLzgywk72aI7ONtL05UklNQxpsevJnd9
X0jEjPozQtl6Hb8vBa19zExl8570TzExnNLFiSpKIewHcgSD7oNWoyfL0Kw8pO/OPI2TyAUG
hy9OQuhye2V4PpqBwYmgI/XwjO2K2LNm5ALK1YmDKCcQRG6diPPI5ydn4GGiCsIFpS+bHGFI
5TBg1DHoyHIChphqQekWOrzeQSSP5XSTZorIXWiDJYncupNASgD8NujTBdmGErkcC3p+HdmI
ECY2x30U3lE5XPFpMHI4wfE0RHlLcLvJ5EbE7Sg5eguh/eWPPALM0dWC9IwxcGxAb4zIKutg
FNNeHmaGOKVkhg8tL0IDUnKw6q+N/+4ADMSwRbrh0mKip+mCrB0RU+dcE1rAPJSOKh4GJfZO
pjLaOK7qLdP5MXLu/1f2ZMttI7v+iitP51YlE0uWlzzkgSIpiRE3c5HkvLAcR0lUE1suS64z
uV9/gV7IRjdanjtVmUQA2Huj0Y3tTSYc1ReWYpZiZCT+t/bJeDTmr3tk1D6FY+eU6I1vaCud
AsKs4M0mDf47vjnFMIDgcsSsBYRfshOELP0GI1xnScoJmQbd9YSZepGzjzsq7FBuJvzShdfN
cnTdBNxZMblpSJQqA35xycMvP7Hcp86uxuwD0MBWJtZrQT+55WXoi8KjSHD6PTFyhlXkBFdy
iL7e5bc0mY1YK/unD3DTOr3QGSOefm3JbMKnWFAD/zofcYdyH17ZHVIRZeoUK7mWuqLewbDe
Ph32L29tBe4BXJFEGOpa2zI7MFc2NnAr/vUZje2cOB54tYjzOYnjgbA+MuQiyPM4pY0ghqsy
qzOsujm5tERrkSIJYIbCa1ajMU5m+LCjWWaK+t7gylD/ycTHao10USlL7vsq/PkX+FGXzTPu
VWCgIC3C1lgRZBR0ANQgWsvv+lEL7dzuQX2Xh12zofc0+KE0KM7gYpiXyChy2s4MS3RdMxY6
S0jM+7WAkjrg2y4rVrETbEXh6jidYTuIvb3CLeKgtJiv0m5Zjep72m6UFp14CUWTCZ/vMclw
dMIkQdsA8kkzulp6eAJq3zHexDSFlcX5f5kENKzPgPD7crXsK3RS3XbTu1KoH2T6QrNgeQt3
vZkNNH3GkBB8fuTCbK+i0lgo+At1eQZEmDgmRZNObWBF3htWyvSUkGClNiyPG9I8AVzVlnqI
YmkjBQxd3GrlH6Lu6oNvxcPL/rD/cTxb/HnevnxYnf183R6OxHFFx7h9g3Ro57yK77z5Xhrx
+MK0v08++MeGdGVSGvtpgREnwtR4JIQfeCdOi4KkW9aE6IxeBiTklHhIVYUMC7GH9tcwbh0T
qk+Tm0uuXPe6ZuDq5PJiwqbRpDSXI7ZoQI0mnoYDbsInS6RE154ckwNRGIXx9fkbI4BEMmg+
W0Q9PseA6lyCebM5MiIgKQTAKlz26W9Xoa9yFdn3rW7K+MpZxvKXxRok91zpaOXh/3v/8PdZ
vX99IUlCBr0rGuqj/TQs2uZqMmX5NFuIUUaQpNOCe7lPoN2t8SQnjde3T9uX3cOZQJ6V9z+3
4v2Z2MzrSB9vkNJ6hAgy6/2wqu3j/rh9ftk/sOJQjJ6D9oNWXzPzsSz0+fHwky2vBGlEcWS+
RPKlwWEwaAmaTjrCEwaS+E/953DcPp4VT2fhr93z/5wdUKPzA8ZkUKLLEGuPv/c/AVzvqfSn
Q60xaPkdFLj97v3MxcqYTi/7++8P+0ffdyxeOrlsyo+zl+328HAPE3m7f0lurUK0ONUmYTjI
iX3RbxUgdRp/ZRtf2xycQN6+3v+GBnt7xOLNWQTZLHGmcLP7vXv6h++gEjhXYWta/HBf9F6i
/2pB6PJLDHa4mlXxbS8Eyp9n8z0QPu3NxigUnGErZfEDUo/UPxjCnkFUxhV6i6FhoSF8mgRo
vFnDkUZuDAZBH+SdZXmkKBCYQCpybxeqP4w9ydB5GUqG0yRsmnDQgsX/HB/2T9rly7E2ksRw
mQjgBDUeuBScJuxQQDd1zIC4uDCv6gPcUkubCEwLY5zPA8oTj1oRlE1+OTJDbSt41dx8ur4g
dxyFqbNLK9IzxWsLRrM1GbDTird6TTxmCuXa1U2AgHz2AMvaNeQDjEp4PGjxQABPePbtlGM0
p0Qnpinr/13FaMsKPzC9bkqlc4mbVmFWN1P8FXqSjElCecmcc7aukqBJdAIWpdIuF3dwsH07
iP09dFy9PFDbUgMIR3gJd16JJiah6TxDAqYF0zDrlphGA41oRcnGVGKZ6k2ja4qq4nePSRXJ
EhiMdAwwG0awQbryrA2gwot7km1usluPMZjs/AaGeRgC0opyE3TjmzwTBr8eFI4ARWVBWS4K
uD9nUXZ1RUNxI74I47RoUEMZsRFjkUa8BUhTY1q4gbCbpOJK6BaROoVN7NhOgaMWO104fZHI
f6Xf8rBLw6mz5crtC76g3j89oBvh0+64f+GuU6fI+oUd9MJX8PT9Zb8jnoZwlFSFJ5KAJjf4
f8AJlEKjaZhY409bj6uTnsQo3WV6dy3WZ8eX+wf0YnV4S90YZcIP1HM2RTcNyBwNCAyP2tAv
RFAzc9YQCKJdpXKYOHH2XLLeWoTpt0E2Qy9McqhKVtMs2JFl+t2/jJVz41VMvamVVZcYCWN8
SOEuzjQUy0T7yWjOfQ/ncfw1VnjmayUSlZUI09yWqRmuTxRdxfPENCkqZha8r1KAoxkbVbU2
Aj3BDx3FocsLGkgJcTJUic+u0KAgsUEMuErKTiqsZXgsUlE9jWfJjKsEhJmiNB4K6qQw1N74
C88z50yu08Sbx1a4psO/8zjkpjHEyD1k8GEB3rboDEbzI/bXxyacAl8vbf8PTVeYb5T4SzLB
iHghCHgIE8G/FlLRTMYQ3sEdQDI+U5gNg3ARd+uiirT5jfnMFqRJFDSwk2qQLCvejA1wcKmk
3BPEn3HHOj0D5gKjLD5aAEzqmWygDSkRDgWqjsO2IiZcgJlYsRoFqMXYbEUl6ucrn/jrmpyo
yzV2QeiyxVgj4jWXqe3LNCLJAvC3NxYkVJ1NxWQY7DlGMyHAmOPVA4GUGpj3GBHJMsnZDWKU
2W2CpqnY6sgIuRUY48T122rxF195XzzlEAK/3Y74vAmaBM3huQnYyIYYNSJERwNd8Y9pSHLb
Fg0fAmpj9sVTJY1Mj5Aix1Ds0gjLW+w6qHj174YbBS3dzuqx1UcFwgxxywSEpCjltN8YzNT+
UsO6YhxyUmSPN5KOpW3dUFO2ngrnhpsWSSB6hIx/mRbGC7qJNEWVaVPp2bQg/NrqsWKbCCY+
96zXnrRqc0zIAFRyT7vl+aZBYuHuHZv2dEPB8QxDxBJ1UJ6k/QxoHjDWO2c47cZqIC1uSgn0
Xub4yrgfA7cqYd6a5F/gZCOhEnWhcPQKL9GEqnU0Ov3KX0kGPL/FNP5r3XBmoV/hRuEORO2R
c33sHPe4fUJImHLAKkpucaKCT2+doTh83EED/zsbb7YPLmrVnXCM5ntdizXALsFZ3WsLB7Fe
gjwyicD5LMtngZPpQUHUIY9vUhicBNpqLArB9ogmFwGoqxLOnkIQmvleoUQMH/UFsjJeFSTx
VkpECWxA4jVgswxYtGFFIgFj66uwMSYdY2DN6glZ6BJG176QEsjqCi13Zi3/SK0hpS1gFtPg
ztqQ8vp2//BrSx7XZrU403ldgaSW5NEHuIF9jFaRENQcOS2pi09ww7YY9pciTWLeiu1r4os6
E810h3Q7+Lrlu2FRf5wFzcd4g//PG751M8GfjO1Sw3dEBljZJPhbG9hjmpkSc2BOLq45fFKg
IrmOm8/vdoc9ZkT7MHrHEbbN7MbkAarSRwphin09/rgx7IXzRiwZXrY+NSLymeCwff2+P/vB
jRQTZFyAlnawJxOJj1/mOhdAHDAM65aQtKMCBbeMNKpig6Ev4yo3R9+xW26y0nPALNo57P8p
u5bkX4OUpR9A3AHoV0ZSSyMKtNiOMyp+VOg9yIy83sqRg9OYmSVyxoIT2zcEDewyYIE+ZfXC
Kgp+YwhMKnrEtiwSz2qbq03tNlm/wyrI3N/ycNKRKPV0wX2yXniGZbXxDUuW5HAumu0sMudg
XZS+z2/zzcRqM4CueJBzQapUXdyixgBqBq+Xv3FfpnjZ1FKH8eYnCUDeMJHDDtLoSY/mj6ie
bhH+K8qbyfhf0aEgwxJSsr7tb/VcsyjCJtwx0GRv19gX+O779sfv++P2nVNw6D69UQLU2jIN
glXr/wZFOae3U9PAY4DhH1z3794xuCWqjK2EAwYacz9UcVCDnDpm0KX59bCr7uoVv0Bba3vL
390apDfy6NWevJ/GVeHbASBSrYtqaXFCjbR2GP5ekXduAeHM5QViYpPW64DPFCPJO85eJZfX
PO0AFOVWA539LoAq4mkblVxCNJOWE/zn+FyLomlSGGFZBD+ko9HHudUz2eZVab4/i9/d3OQh
AKhjAeuW1ZSYpCty3fokF48SGHc3xKgTbNIP9Qll+Qq6KatGuIUZzD0uF7bMKUH8c4JDpd9J
ujSYxh7SxHNIR4FVdeBdl6YpKfwY+IYreCFaS24dSG5k1Zm46wveZJ0SXfNpsAnRzSVv22QR
cU9/FomhUbYw13QABgzNpmzheKNsi4h35LGI2G1NSSa+xl9dnmgin2vYIuJdSAjRpwvOcoyS
XJ57RvHTxdiHmXzyjfy11WG42uBa7G484zAam0p8GzWiKGEOS2vW5Y948JgHX9hjrxETz3Bp
/CXfuysefM3X/omnHl144MTKkGA45zYkWBbJTVfR4gSspS1CI24Q/mi6RY0IYwwl4qlBEuRN
3FYFrUdgqiJokiC3h1ng7qokTRM+qoAmmgdxerJujP6/dCtOQoxlFjGIvE0aT+c9DW3aasl7
FCAFvb9GKVF8wc9TkWfzJORTNiRFt741r2dEEyTN57YPry+74x/X6F0k4Plj/gI567bFEGZa
WTEIhDI4O0wgEqJhNC80N5jWIBb5YVgNkXxGUwRmBfC7ixaYv1LmdmEPZn1ORnDJEwYkTZWE
pgraUfBoCLkg62KUpMZgDM9386pmfdhtZhUnIPd0ZdCYGXJQI78IqijOY+n1jplQO5FwKyA3
fYfoBKqbQQEYQoG8WIJ0hi+CUlnuUbnDOIeiGAy3JTOX8pS6O3UsstK9QZQFrKF7T9AUWXFX
MIMuEULex5dMuM7DcqvuPo/PJzcnidsoaTBRzefR+XjCNEnRFlnSGOqNtAj45Mn2d2UBrOVO
0X9+9/Hwbff08bh/3P/Zf9g97Y7vfB+K8BRiNesYDPpr+Zm3pb2UOm0T4Kk5EDjJY+1Pg7IM
YCYrZmA1CjM6LN7CG/dTL50tGvMESmdSs1vIIpWvNp6kDu5Hg3L29Ac4Z2XCv9n3RHdBxnnO
Dis6mKGpmplUxKgALjDFOu/SOnsD3cVBZQZWF4oKgcQXvDjFTYupNIqccF4PGav0eusjgQX2
AUetN+SHKnZoZw+CW/Y8D9C0gUMG9V2GMYiBp9i8fSAyjoeKX88Drc7EoIn5EsXm5/Uo7KzG
K3Lwws8OtWtwZWpbNjO2oIgiqYQznfHUS7PL14ZT3SbR65dtr0MdBZxAgwvt3e/7p+/ojfAe
//d9/9+n93/uH+/h1/33593T+8P9jy18svv+HiNc/MTj/71kWO+/Pf94JwWD5fblaftbpJze
PqFh1CAgGKHrzpBV7e5/7/73HrGD9BCGIkEM6mC6VVDJ1Cw6AM2fk1SYeojOJgDhPII1i6uf
XRU9BZx2RjVcGUiBVfjKAXYsk1ySIEAWBdpoUYLBpYofGI32j2tvwG6LZLryDbA28UZsrDMh
MOFwSV3Sy5/n4/7sAdNX7F/Ofm1/P4vEDoQYujcPysQuQ4HHLjwOIhboktbLMCkXZjoPC+F+
Qg8dA+iSVqZedoCxhO45pRvubUnga/yyLF3qpZlWT5eAj64u6eDFyMKJpZBCebS79MP+2Uqb
LFCq+Ww0vpHRZCgib1Me6DZd/BW5HW2bRZyHTMPZMDXl67ffu4cPf2//nD2IFfoTkxP/cRZm
VQdMkRF3Z1K4OAydxsVhtGCAVVQHDrjOmD631SoeX16OPmmz2OD1+Gv7dNw93B+338/iJ9EJ
2Jpn/90df50Fh8P+YSdQ0f3x3ulVGGbu3IQZ09NwARerYHwOIuXd6OKcfxbrN+A8wXAM/rGp
49tk5dQcQw3AxVaaZUyF2xqmRjm4LZ+G7ujMps4oho27uENmRcbh1IGl1dqBFTMSsFpBS2iO
v7ebpnbaBaLBugpKpqwA3Wablrue6baiN40epMX94ZdvjIiPuuZfEmjXurF6YONXWeCmI452
P7eHo1tvFV6MuUokoluVWX2qf4LMGbHNhuXH0zRYxmN38iTcnWgovBmdR8nMj1ENdHcG2wC9
I5wGZ9HE5avRJQezU1RrTAI7QrhHnJybKotO7jbEX50z5QNifMm/wA4UF2zWDb2RF8HI6RAC
VY8cBNTHgS9H7oQD+ILhihfu92ikMy3mzGZq5tWIjdqp8OsSa9Yiyu75F3Ea6/mZu4wA1pm5
V/tVV6yFU7kP4cTU1IsvyOI0TdxjIAzwVcv3Ud1cMr1GOOtIrU6tuGYWw0z8fWox1EFaB6dW
gz4k3BmKqxJDSjrwbMK0pFkXdoATOT/7x+eX7eFApXndJ6Gsdnn418IZtpsJJ9dYdoEOcuGu
Z9Sw64O4govN/vEsf338tn2Rjs/2vUOtnLxOurBEidFuWFRN51ZgBhPjYd0SF7DvtyYJdxQi
wgF+SfCSgk9Y5AHPkP86FNLt1muElJu92F4Q91LIoeHkTo2GFb5infwtUnE/OFFUnAshtZii
kQGbcNuQ+oXxunWd+b379nIPV6qX/etx98ScwWkyZfkHwtURxcUmcqlOrM1kqnaeUZKPhEf1
YuXpEgbpk0NHnm7qAxJkaDR2GJ0iOVV9f9D6ezfIpyxRf/7Y47zg3Dzpu5BI9TCUaiDLdpoq
mrqdUrLN5fmnLozxTTsJ0ZhGOqwMBOUyrG/QTHWFWCxDUTyaFNf6mZH9/lpmb1nGhvskvnjF
mK5b2gYLO29sQTJ4TIfblyM6nsP14CBCUR92P5/uj69wQX/4tX34e/f008jWUEQtJqdIhMLj
87sH+PjwEb8Asg6uT389bx+H92RhPWI/mhnPjA6+NixsFDbeNFVgDp7zvUMhzWkm55+uyGtp
kUdB9W/e8FS5sOUwsHPdeFs+UAjOgP/CDgzWq/9ibHWR0yTH1glT5ZmenNTLWDAq1FVX3prL
WMO6KVx94ZioOD0GensEVSfsGU1rr8AyK58mIE9hDCNjwLW/MohaeYiqm0q4wZor0SRJ49yD
zWM0iE1Mi46wqCLiS1slWQyX/myKQcAHUxmxeAPTshpzPaM5UJiVm3AhH4+reGZR4DMe5muS
GSPKNKHvHSHcgpOGyCbh6IpSuDeGsEuatqNfXYytn31YLQcODCOe3t1QVmRgPCF1JElQrYOG
141JimnC+gRW4RW5kYSW8BVyUQiAb/b3uYHSMHKw72WwvqIiYztvWi5SKLqL2vCvyLLhzKVy
3Vd51FhQYoRJoFzJ1NaSwPmWmJaUFpij33xFsP2725ixGhVMeHmXLm1CY9tJYGAmox5gzQL2
ioOo4ahwy52GXxyYFYCu71A3/ZqYb4YGJv1KgtiZCKPZetMzimK4sWEK2rQgJnMmFFXu5j4k
OKjRxAknkBVmICTuGkFdF2ECfGMVwzhVAdFGCwdR0xldgoQXXhaUFG7H7EM/HQegQsMN8Fw0
WeKBJc5NnbrAiWiEQSlU2ma7kW0hTsZ/764mU9OkAzEwAGkgDGQXQlSnWBGJTjZx0NJgeRhm
weMtVs9TOVHGsIqwTFLBblRwa/DgeVpM6a9h3xumKdSnM0y/dk1gfIdx9UByM8rNyoTEZWc0
eFGSERL4MYuMgSiSSLiV16iKHwrCyAqFfYrgHJcYi4BoH3oUYKoYJwrXedDAOEFzGLpWOTLN
UkwzRf1meyJh+2Dm76phdsmKQ+uQfG4OZC9YOHIB1YhpqU1An192T8e/RSDg74/bg6know5S
S5FSw+9AtYT7FoZT4Z0t8O6ERgwpCA1pr9y49lLctkncfO4NprVk65TQU0R3eYDpAizlPQFb
ETplklJAxlUFVOaqEdTwByScaVGT0FTeAeufH3a/tx+Ou0clxR0E6YOEv3DDK2vzeD2r22fW
4guP8ptWqFkFjRYea9KIxDB+qZISGBtGzcj4EDhBJIoNavKOv4jRCKRGC40GJpP5Ura1lm6X
6BOTBSQRnY0RzbNyrisXWaGzX8fBEs2vVBqUQTb+t+NIos2pJR5tv73+FLnsk6fD8eX1kQZZ
zYJ5IlyTqluDlwzAXjEqx/7z+T8jjkplA2dL0Eld0eAMg2cN9xbDP9haAOiGC6x13Vkj75Kh
3kxQZhjBwTtLfYE58WUQhlqC0SznkcEa3V/dosiLViltxfWFonXiXrl5zTcUgXaiC1D0MuI8
tQc2Oa0D5dQM9zXsiTlkAsv5QGHn4LoLnyIbTnR8JyvW4MmFQkdRmpjYqxe9wfQ1TGnM+8II
60SuBVfQOK993rWCpFjnLOsUyLJI6iIn9y8KhxlW7t/mGFk0HqMB2R9BS65FEl5M0cW69oAZ
8Z3iZ1LUspawxoocTRx/omTKitFTSBW2gm+9WQxwGWAyfdQTT4sVv9Xny8jgqmk71cQemyuk
8MUOECtTLSkQFVJgfG6nNObE/pdWIC0eh5yABmdEpGjiPLKPDFkENRLSMKG+c11+baqK27U9
tpzDpWtuejHr/axIZPhvpn6J8JYtY88JAxaLlRnDgg7OM+B4doc9SGW+swyQXbivihKLq09u
sYEXgcSt481Qq5mBBzjTtsBwdY5yFOnPiv3z4f1Zun/4+/VZHnOL+6efVATDpFlouVPwzv8E
j9FvWji3eqEX2HdbQkMaWOLEhrKYNV7ktCgauB4GmUlW0uRdfhrVBmP/oG2vVRk724jqFhgk
rQlqsnblqdyjBP8oWtik43O3QQOZt80Widvk9S3ILyDFRAV3GRIPqrJHpvR9ek6l1TpINN9f
RZZU49AgW9g2QhVApVwYGA5CHYYzWGIx1djrEsdwGcel9dZpUcG9Pc5K1zIG+2ecov85PO+e
0CADuv74etz+s4V/bI8Pf/31l5lKrtCJbOfiBtNHDjYuFBiGXsWq4N6bsATst73R8VreNvEm
dk4sI2Yy5Ss8+XotMcDTi7UydLfGpFrXMStdS7Roo3VXlg7SpVuWQpyYAZ0NLY1jTqk1FIND
KlRofbR+Uj1Ge8QrcqeO7WGt9z1WH7Kny4x+b6rN6khWsA6ShnP30JfT/8eSGe66wL91SDzd
XrxYoDFkm9dxHMHukI+KzKEqz3YP8/1bioLf74/3ZygDPuADPHM/Q/nXLz5R6VgtubkNEZFM
EittpRQouihoArygVi0TiIWwFk+L7QaHVayMod1wHyA0cazHWhv6tggSFgZCja1HQIT7VhPi
MHbQ8B13DQUiFMnEZbPn5uMRqYDOOoLiWydigWiicJehrrjGCU27bA8WcHp5Ia3EVdQ70TIA
Dwj0GEqQ9BjfmvPwrim47ZkXpewJcYMBHjdr81C5UJzCQqfKBU+jXzhm1kjJAgSwy4TQCxOC
ahSLBEN0iOFHSrgt5CbHkNkK1IeylAEpmyOcVKy6Za0h5bfiuWrazmZmF0TcZkFPrjfwV4OD
LPPcOx03ilJXXHQUN25H8rjCF0O2W059+hHarkgRugkn7dFGoQIXsFH04K5E59jnr4S82SEg
A6q6BZtuPk9pdNDqFgSwmb+A/lPdQSpD+D9crGFhO+Oi1pVaO7WzJuo8KDGvrheh33ysiZPF
ToGTw6yDFDDDWKFkMAkudizqTRFCEAQ5MN0ANbrySz6aryaGfaDJmEq9g4SRGjC0aFL0O2F4
64DCp7Fc6GzEBhNvLKhy5sD0Vrfh/hJU5Xj1qZKIvH3mzWL4ZBDSUV2tkyt7F6LctTL8mjV5
YqsNKmZyJhi7ltVBG36WspYgFZoPnBuWTi/DJoBTqPR7TJk1+4hd1hHFGCyLnnnGuCHTcKSg
OsCw+mykn+EiLAIaJ+p1LqZOmPIQkzTOsf28/+/25fnB89RkBIJYw3yz1yskkkhz+eCUSQ4E
QijIumasEfwCk7qKPcTcNXqOHaHhCXBrUyvhmzXMcAJzcELUzOqkkyoP5pEJ24QzhJdOEYjR
lgc2GY37t5H6QF/MGYmGsatBpJ+ab9Xmh11VoImLrSewEjzhSQAHIpxenuEXjnJ2gy0EPneE
JMIdEihgB1JS2TaGHQtDk+Q9yWhs6AZmQZJKnR3PNqGIsonajL+LIFqYSajETfJ8ZmVVd62a
Wqhmezii+I8X4xAzVdz/3Bq+2y155pH+kEPml4G3so6SBBlvxI60trHECbFHJTTrBTUpoXdi
jxgRJgfLk4wnIuGqUWDyl2dUJ/Kdv0XVCxB2o4bz2BsPE6a7ToUalS4B8eArrqfM0FnFmY7a
tJQsWMbarZ4tRyy2XrS3P5/hhZPnEVYLtEbjFGNdhoXpLyKf72o4uYuVFqCMu7iiHtYSkqnX
X6HBrfDhnKtQUKKKrGozPAcCUyctkcCbgioO5P47/2dyDv/1wisI0UJShDFDXqlseYeLxDJq
OMcH+dyE53NNRFEBz5Jc5OAbFo0AC8pHWxipzVixnDijb9uC9dq3vinaT9hXRNPuwr4LEsML
77krX+ft81Q+e1xNTh0VoqeLeINcy6xXjoBUk0v7BE9UB0VXhyXnNCztJgHfFBtr1JU5Hh1z
pah/tCqwHXApdiNMT3y1G0/X9LMKzaoaXLP+oj1W3wKXRIHVpXSZOU2HHvGvzgK7yuQrl9Nh
NKBGruH7EARUtyq0mVwUQgOz4jlDkkfYopNmjKKsWVJl68DU+MuZtmJSQlnAe9NInTqmMCco
T58y0gK0pzA/J7aUfuEU6j+BlUMpRFFfP1WsC2Ega48nigNwf+PeJPS3+GSYNNYihu+UqoWW
JxyHSzuWgZbZ4qzf+9RdmD/uHZ9iaZnyfyhEMCSzkwEA

--HlL+5n6rz5pIUxbD--
