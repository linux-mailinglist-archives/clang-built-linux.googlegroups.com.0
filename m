Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSPZ4ODAMGQETTDTFVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CDC3B5589
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 00:33:47 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id e24-20020a9d63d80000b029045ea018532dsf11824297otl.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Jun 2021 15:33:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624833226; cv=pass;
        d=google.com; s=arc-20160816;
        b=pRDuDHfP0W5pPPj3L9kyQX2X2+5hqSHH9WYINTAR3/mfvLHjtBdF/K+fOJyxlAmQbW
         HsrmsjHsvG1QOuKriHDdSZBYPfChEqpPzyd2RgCPs0HKrexTROJkhOLANSBmzfFf5EPI
         Y4i2Sl1Oh3zhzJpVxusVYdMn+5yQh5its/Bz+x6zgoar9cWnXCav4uW1r43H9vlCxBTP
         eWsCJWqIOFBEBAuzYjCiy0N7ya9qWW1odrqF/nx0S/h+WtO3r3VZOsI6m0lo86eiQVOF
         g1VADliH48yVbDJs8qYBnN3zMeLQl2AJd+gUTCXyMrRfkh7CLxDM99oHh7dnZ3UV8EJm
         sO8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PAT5U/FylkN8ZyUamXfPzlY/NcoDj4lUnwEVvdiDSoU=;
        b=umyGvozrf6tcd0fYM+WjjC56aNZfTutjVDgj4Gdh33aa2doIuOtlvuHx/V2bBLOvpo
         TUljh0e8NdMpFzH9wotQxuGxVI4FafONW6ECKZCvxS50E2hRhkLI8ekiVj6mtQVtAVXe
         7cTzQvNGF04FVdYFRyeWZXJbnXde/Fi23WZfliVJOoV81Ctnfz8Br1TDMbqtvf4xmb6A
         RI8763HUmKcgVP0EbLrs3y0IiXVj1103HuDWqO07NSLV6Fk6/Ga8PAiAdm/ceGIoMS5E
         +y+9q0b2DVGVvB/LIX52u3VFwD3bovUQlKnXygdq8/9rbRfFVJO+pI+Nx4I8o2mWC2gq
         SGag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PAT5U/FylkN8ZyUamXfPzlY/NcoDj4lUnwEVvdiDSoU=;
        b=qGLjblbJAa4UZ0k1nQmAPoJt+cvyMyD2IlK2INL/L0ThelC/5SD8IBpbofp+ktpLPK
         XJpsCw70v/ma4gBp8ukkLaGC9ZX1LoPvWEkV8B1C2M1dPIR+e1AvNqo7zSa4CKyTAjxN
         gckW9j0PStP6G8NnORjq1pM4hIlhjT9NfmBuwwIsa/umiwoUpcnw1Vd+89lVP0jUNjbJ
         FXXsND0IDJjg9q1fTfPt8adsHASSkyDr5+83DM5IahIM6pHFYgna5Je3umsQnYiby+Gr
         MHdIU4utTMHKhEkTZ4xy/dyzO+TF6dPwEkpr3S5kdbSkrQgpFxbbLPUDHJB4l4+V8NyV
         2kJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PAT5U/FylkN8ZyUamXfPzlY/NcoDj4lUnwEVvdiDSoU=;
        b=bJc4lx3V4kuhs6gNTdULW+pppwsx+BZyVl84apr4hbHOdthbeSK4+EAnS71ZNSYa12
         miOMiCvZr6erQyVFCEME0eTvyZNMNkdutwnkrsOAAnv93LC0asdSlP2850uvyki/Q54J
         o6Y/lmnJNEO6UKfFzp1Yl+Bj9NiiLEqQTizy/+NXc7tudW4XqF/Fr9DHZF6Ku+eExe7E
         b+ntUnkFefXa3Rfk89C5E/busmfjzlq4dHAMP5vDTh0QuY1D9Tnj7gQshglJVfD7eP6E
         HCkpSt7np2tDmXti06p/UsPpNhTwYBv/wZUMj+1qsDP1xnSNJEg8/M3EVAxL2M1bGalT
         KZQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gypn9Dw+G+nwLSgpBEz99AUWJzAeRRnP27a66FXQ1EDbCxnJM
	jRAaaQaBNHfMI2pUKD0YzvU=
X-Google-Smtp-Source: ABdhPJxgT4GK+cWAAuZIja0rd4geFxGrwTK7ZNk8tjbukPsr3uTG3DvVcLDCamEN6Ba6OZQqq5un8Q==
X-Received: by 2002:a05:6808:148:: with SMTP id h8mr9092514oie.12.1624833225823;
        Sun, 27 Jun 2021 15:33:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1d1:: with SMTP id x17ls3943939oic.9.gmail; Sun, 27
 Jun 2021 15:33:45 -0700 (PDT)
X-Received: by 2002:aca:b343:: with SMTP id c64mr14946434oif.137.1624833225292;
        Sun, 27 Jun 2021 15:33:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624833225; cv=none;
        d=google.com; s=arc-20160816;
        b=ebrpx/SZiXCZ3L0h2b5GEQ5Gas8WBj9Ka/pyl9nnUwOrqSbqO4YWuQnBO+5CoHj+jt
         aOP8ogOMM50tbl6+ZihRsqlLvtVzRGeHg9mPrTqd0ZwMJr812U1vOuzbK9MdKG3BTRal
         ikOHADnwErJ9s/daauNSikigRxFl4B5Y4rwhbU4B18vpkZTUxukPFj2hrZdvUet9afFW
         RTdJ4dYO9qYSVB/0ZaJ48mRvgnL3ydUdWdezhTVRrWlIwbg0EKSasJf3+MqD8vRRZYV1
         jyICIKgufKdBHMc16juaTSDK0VI6hmIbz86cdU4KL3/ClwGeIDrx93GuotJ7mv4iIpkj
         YJVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=MYbg4+xLtNPL2SOvi1xcWTP60Uk5ZtUGmmLKfpfh/cE=;
        b=DYiBJYpeCP3N0PcJ9dQOZgkfdPFWP5pgwXvGX3kzNoFHgwSVhETNo+1ybIwQb37z9N
         zMmF5fBkYvrBVHaheMf/5evqXKYF9J3eB68fh3spp0gpD54e26iHYfj4563WOB/uVHHK
         da0GyQf4DYIsoy1GOaC7c29dziCOzvBmJkIo3H6mZOWZ4R6zGtW7AjY0hkzc/Ao147ef
         BAVmrB0swsfr/8QzA4lfAvnn55ImvhhQt95VIHtqoki4sa45BxkpWZcaoLmz6qLv85mW
         VGMNS0HqGrL9BwC7yLTn5xWpOloQpVmW8Zu90IEPOsVTgdntvuz8FtN0hFd3u107BjSZ
         fScQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id k18si1707084otj.1.2021.06.27.15.33.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Jun 2021 15:33:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6200,9189,10028"; a="207901616"
X-IronPort-AV: E=Sophos;i="5.83,304,1616482800"; 
   d="gz'50?scan'50,208,50";a="207901616"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jun 2021 15:33:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,304,1616482800"; 
   d="gz'50?scan'50,208,50";a="418957354"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2021 15:33:41 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lxdLQ-0008JN-J1; Sun, 27 Jun 2021 22:33:40 +0000
Date: Mon, 28 Jun 2021 06:32:43 +0800
From: kernel test robot <lkp@intel.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>
Subject: net/qrtr/ns.c:669:13: warning: stack frame size (2176) exceeds limit
 (2048) in function 'qrtr_ns_worker'
Message-ID: <202106280638.18tOFxZV-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--FCuugMFkClbJLl1L
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   b4b27b9eed8ebdbf9f3046197d29d733c8c944f3
commit: 082bb94fe18e54cc64026a623d94ed6bc7242a5f net: qrtr: ns: Fix the incorrect usage of rcu_read_lock()
date:   9 months ago
config: powerpc64-randconfig-r034-20210628 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 59558129276098d62046c8cda92240d292cbfb1c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=082bb94fe18e54cc64026a623d94ed6bc7242a5f
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 082bb94fe18e54cc64026a623d94ed6bc7242a5f
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
   In file included from net/qrtr/ns.c:11:
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
   <scratch space>:36:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/qrtr/ns.c:11:
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
   <scratch space>:41:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/qrtr/ns.c:11:
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
   <scratch space>:46:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/qrtr/ns.c:11:
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
   <scratch space>:51:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/qrtr/ns.c:11:
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
   <scratch space>:56:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> net/qrtr/ns.c:669:13: warning: stack frame size (2176) exceeds limit (2048) in function 'qrtr_ns_worker' [-Wframe-larger-than]
   static void qrtr_ns_worker(struct work_struct *work)
               ^
   14 warnings generated.


vim +/qrtr_ns_worker +669 net/qrtr/ns.c

0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  668  
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20 @669  static void qrtr_ns_worker(struct work_struct *work)
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  670  {
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  671  	const struct qrtr_ctrl_pkt *pkt;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  672  	size_t recv_buf_size = 4096;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  673  	struct sockaddr_qrtr sq;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  674  	struct msghdr msg = { };
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  675  	unsigned int cmd;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  676  	ssize_t msglen;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  677  	void *recv_buf;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  678  	struct kvec iv;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  679  	int ret;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  680  
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  681  	msg.msg_name = (struct sockaddr *)&sq;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  682  	msg.msg_namelen = sizeof(sq);
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  683  
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  684  	recv_buf = kzalloc(recv_buf_size, GFP_KERNEL);
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  685  	if (!recv_buf)
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  686  		return;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  687  
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  688  	for (;;) {
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  689  		iv.iov_base = recv_buf;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  690  		iv.iov_len = recv_buf_size;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  691  
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  692  		msglen = kernel_recvmsg(qrtr_ns.sock, &msg, &iv, 1,
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  693  					iv.iov_len, MSG_DONTWAIT);
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  694  
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  695  		if (msglen == -EAGAIN)
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  696  			break;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  697  
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  698  		if (msglen < 0) {
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  699  			pr_err("error receiving packet: %zd\n", msglen);
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  700  			break;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  701  		}
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  702  
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  703  		pkt = recv_buf;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  704  		cmd = le32_to_cpu(pkt->cmd);
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  705  		if (cmd < ARRAY_SIZE(qrtr_ctrl_pkt_strings) &&
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  706  		    qrtr_ctrl_pkt_strings[cmd])
dfddb54043f0a3 Manivannan Sadhasivam 2020-04-21  707  			trace_qrtr_ns_message(qrtr_ctrl_pkt_strings[cmd],
dfddb54043f0a3 Manivannan Sadhasivam 2020-04-21  708  					      sq.sq_node, sq.sq_port);
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  709  
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  710  		ret = 0;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  711  		switch (cmd) {
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  712  		case QRTR_TYPE_HELLO:
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  713  			ret = ctrl_cmd_hello(&sq);
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  714  			break;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  715  		case QRTR_TYPE_BYE:
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  716  			ret = ctrl_cmd_bye(&sq);
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  717  			break;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  718  		case QRTR_TYPE_DEL_CLIENT:
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  719  			ret = ctrl_cmd_del_client(&sq,
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  720  					le32_to_cpu(pkt->client.node),
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  721  					le32_to_cpu(pkt->client.port));
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  722  			break;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  723  		case QRTR_TYPE_NEW_SERVER:
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  724  			ret = ctrl_cmd_new_server(&sq,
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  725  					le32_to_cpu(pkt->server.service),
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  726  					le32_to_cpu(pkt->server.instance),
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  727  					le32_to_cpu(pkt->server.node),
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  728  					le32_to_cpu(pkt->server.port));
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  729  			break;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  730  		case QRTR_TYPE_DEL_SERVER:
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  731  			ret = ctrl_cmd_del_server(&sq,
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  732  					 le32_to_cpu(pkt->server.service),
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  733  					 le32_to_cpu(pkt->server.instance),
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  734  					 le32_to_cpu(pkt->server.node),
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  735  					 le32_to_cpu(pkt->server.port));
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  736  			break;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  737  		case QRTR_TYPE_EXIT:
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  738  		case QRTR_TYPE_PING:
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  739  		case QRTR_TYPE_RESUME_TX:
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  740  			break;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  741  		case QRTR_TYPE_NEW_LOOKUP:
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  742  			ret = ctrl_cmd_new_lookup(&sq,
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  743  					 le32_to_cpu(pkt->server.service),
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  744  					 le32_to_cpu(pkt->server.instance));
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  745  			break;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  746  		case QRTR_TYPE_DEL_LOOKUP:
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  747  			ctrl_cmd_del_lookup(&sq,
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  748  				    le32_to_cpu(pkt->server.service),
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  749  				    le32_to_cpu(pkt->server.instance));
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  750  			break;
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  751  		}
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  752  
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  753  		if (ret < 0)
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  754  			pr_err("failed while handling packet from %d:%d",
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  755  			       sq.sq_node, sq.sq_port);
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  756  	}
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  757  
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  758  	kfree(recv_buf);
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  759  }
0c2204a4ad710d Manivannan Sadhasivam 2020-02-20  760  

:::::: The code at line 669 was first introduced by commit
:::::: 0c2204a4ad710d95d348ea006f14ba926e842ffd net: qrtr: Migrate nameservice to kernel from userspace

:::::: TO: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106280638.18tOFxZV-lkp%40intel.com.

--FCuugMFkClbJLl1L
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--FCuugMFkClbJLl1L--
