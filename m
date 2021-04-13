Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBW7E26BQMGQEBZGIEUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0316735E722
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 21:34:53 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id l11sf4933100iop.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 12:34:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618342491; cv=pass;
        d=google.com; s=arc-20160816;
        b=tKwcBMa7fb2LxEZla8Y2PTQePhb24ZhKNjPuB2m44CkHfdGwMty3pYqNPSAXeNyXcG
         lXYcorENIsHxLWGehfZa0Dj6lVy/BuIq8BElfe2qDglJFARVD707BaMLOcYsnaRN+CxW
         K2gTo9vRNwHqY5zQfipLnEFnpDWqDsjlo7tLgtCJ9jrwifWhOjjVDcBLU3jVCYFL2XyT
         Z7VA3yJn27lMQVAiy5PccmxfqGgBV5uBuNYhm5KIqZ+QkcantJkkW10QdXgB+WUeoxhC
         5fIlb8VwXGVsbC4Q9lHiy4pf11kDKgubIivkHzoNDjuLfedxOGgMjlR7sRp6zD05ZP9B
         LRTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=pmUzAkowsI4baPD9At/nelj0RqoesKzxf9//2S/zHXE=;
        b=qVfLMAtWvaIwarUAC6vKeJM2xqAO0ZmYm9OCS+Vj4jk+aWRbNEtvidKX4L+DFq3BLJ
         Xs+Kd382SeCliAVmjnasISSHTs/vx7QpQstZJTHsE1VWNXLEbNy+hJgNx7KTUdC3UgCe
         fVeaBttJ4DEwQpHAl1WPBlqL8EEZBzr9nlaAdTILCKJg2PwBefUi3DIAXXb/MaMhdFB/
         oUsgz7DpyY+ai4FTnBPEC16iKHcrjy33z9QQvTDU2SQtkOUoUKtJNeoQE+bwE6IGRDpk
         HW5ntiXzUzbCGhrLqoJdtBcMrNQ4NYPbSlnnVlKhPGjl1tQ3KmydTMneKjy/BW7denPt
         ib5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pmUzAkowsI4baPD9At/nelj0RqoesKzxf9//2S/zHXE=;
        b=dtZrAbs5wu7qO+c3pjEo8PDRxyl6prpS74LtXAagpK7n32I0cNhSexB8g7oEJUAFRj
         Cc1lJ+NDnqum1MtgCNHzc03P5lI/O3rp8EweuMkNUhRs2G4LzBJHB1KH3cMqFXsOnwvX
         MQsiMjmixPx2ZTvhRGSg8mA+x+GzRH1kMJ8RHirwuNcIuv3ElSs7ph/az2PrE40zAEU1
         MSpbzUp3EFATrEBF+7Cc4MGvk2dm5CAesy5LNrNV9f08VFCrgE1Ty9iYEn2Cj89BRhAX
         NZAGYHR7fgS7M6JZB/bTnnM1gXMT5vaa9f5FxNr5lo+OpVNbqhPctim/StvJjG57eX4B
         Vx0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pmUzAkowsI4baPD9At/nelj0RqoesKzxf9//2S/zHXE=;
        b=DhmUGDinB0Xtc7S+f+i+Dxn8dJ4YjTx5pzioWs0QJPjAL5wlp0cgmSVck4tqGMGks1
         xfaLtUERMS0iz8qA/o+LC3+z+F19JDl8X+OFdYD3X2xs5L3aSveYvaWr3F1wbD0ycwP5
         eW6mKPOQ/Vtg7pa1Wcy4XbS71c6mjQ1v9HUy3wDMjxzyhrED1Eo0MafN4KghMbdQL5UN
         eEd5MMyZPEAfoYOx/+Y8cFzJkOBkOyr3I7PTbY75cCZ1bhE3CAcrIoBBZIQJv4rR/MRz
         PTuh/+nGRFc66TgNKbx+xjfnAQ5RtjBkbpmvWIXKBrfFbK+3xMX1xYRRtPRDa9xW8JU6
         N+7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303S0Z5FctYcUEjqTPYZVMDyRKtAheNK+aMVC4J3JFrrKx4B030
	/8NeLplX0/aTu6H1POhHkvs=
X-Google-Smtp-Source: ABdhPJz39ogLlPKtg1+fYpOShhr1B3JZTqiDFVA2n2jm7gwhj59f9O98pra/37rEJgkn2tqAstKP9g==
X-Received: by 2002:a05:6e02:2162:: with SMTP id s2mr1228982ilv.237.1618342491208;
        Tue, 13 Apr 2021 12:34:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:78d:: with SMTP id q13ls3605032ils.10.gmail; Tue,
 13 Apr 2021 12:34:50 -0700 (PDT)
X-Received: by 2002:a05:6e02:1a65:: with SMTP id w5mr28951183ilv.5.1618342490692;
        Tue, 13 Apr 2021 12:34:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618342490; cv=none;
        d=google.com; s=arc-20160816;
        b=cM+INW4SMhL4aSSWkrztbTgbqo+lgsFU4hS+jwf4Qug2zi6Jha5o4m8vv7AOfahfNK
         LfpcLrGHRlzwu2iNO/NWX2sZfKoabbsSchN6BoV2wkT01sCLNkaHRCdm7aUNnk1RVemX
         xydm94GsVKEgbZnzxagBmYtrakaMPjPuUdX6ERic1fZ9vTlIgIcJviV5O7iy0SUqXrsC
         X3DOz+bGfW/tt67AAnat/g+TftlSKCDtObM87xr7ljNerm204MWyzeBu5Ds3zsLJuZxj
         mAX31b9ise4xj+7qwFp+z3Jib61ecf5kPO7ReajKipZf068VBJbIBoyHsYEOTYVNb4t9
         CgHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=3uj6jsBiUELDut4qwiHGN+XZWzT14UoUbYlaSlg+0co=;
        b=YgLGNiVYqD19Edyq/VRdlMKG5betYclTUeVnn0HJz7ZQxevcfZezz+6QJX29BU6xUY
         IeBkza5fNWTHld7HbLMZ8G0v8f1JxrJ1rTjwU3KOI57aDOn2aqQskUsSWOhMxyZ2eVuE
         EJC4lP9/Irr+OGiB/Lm0ggpKmBpcLyqAtCnGZ5CSjwU6OnBRNE2CUSnOXdMrt78vJX+M
         xCvrPmKOkB+KfMb8xs8WK9zM2wvoH4GHhWtFqck1wTbG2A3xbiB58fdjQq6qVJeF3+WG
         jzo7KF0KbLcV2zHmNRrnvqMR2KWkCPWck6z1VemcewVddbyAfBJDmtq2A/5rHtY0HSKJ
         CG8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id y8si1004949iom.1.2021.04.13.12.34.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 12:34:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: LqkLEZVRUsNICJSd4SwZ1Gugd/HBaWrjdAZinuzqdjRTfmxwjLEu15wwxgymbnOvJ3SroxxJ7u
 qucVSAD+YehA==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194513606"
X-IronPort-AV: E=Sophos;i="5.82,220,1613462400"; 
   d="gz'50?scan'50,208,50";a="194513606"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 12:34:35 -0700
IronPort-SDR: ZnPC2xLVwii4KpPnjfdB9NX4LTgLMQZeMjlt1t4K6eiF63gF13Cstq6HARfK6HYl3kUY8IFwmO
 zNnYSW5iqifw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,220,1613462400"; 
   d="gz'50?scan'50,208,50";a="383413353"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 13 Apr 2021 12:34:32 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lWOnw-0001FZ-5F; Tue, 13 Apr 2021 19:34:32 +0000
Date: Wed, 14 Apr 2021 03:34:03 +0800
From: kernel test robot <lkp@intel.com>
To: Ilya Dryomov <idryomov@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: net/ceph/messenger_v1.c:1351:5: warning: stack frame size of 1216
 bytes in function 'ceph_con_v1_try_write'
Message-ID: <202104140357.4sPe46YT-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VS++wcV0S1rZb1Fb"
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


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   89698becf06d341a700913c3d89ce2a914af69a2
commit: 2f713615ddd9d805b6c5e79c52e0e11af99d2bf1 libceph: move msgr1 protocol implementation to its own file
date:   4 months ago
config: powerpc64-randconfig-r014-20210413 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
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
   <scratch space>:12:1: note: expanded from here
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
   <scratch space>:14:1: note: expanded from here
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
   <scratch space>:16:1: note: expanded from here
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
   <scratch space>:18:1: note: expanded from here
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
   <scratch space>:20:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> net/ceph/messenger_v1.c:1351:5: warning: stack frame size of 1216 bytes in function 'ceph_con_v1_try_write' [-Wframe-larger-than=]
   int ceph_con_v1_try_write(struct ceph_connection *con)
       ^
   7 warnings generated.


vim +/ceph_con_v1_try_write +1351 net/ceph/messenger_v1.c

  1346	
  1347	/*
  1348	 * Write something to the socket.  Called in a worker thread when the
  1349	 * socket appears to be writeable and we have something ready to send.
  1350	 */
> 1351	int ceph_con_v1_try_write(struct ceph_connection *con)
  1352	{
  1353		int ret = 1;
  1354	
  1355		dout("try_write start %p state %d\n", con, con->state);
  1356		if (con->state != CEPH_CON_S_PREOPEN &&
  1357		    con->state != CEPH_CON_S_V1_BANNER &&
  1358		    con->state != CEPH_CON_S_V1_CONNECT_MSG &&
  1359		    con->state != CEPH_CON_S_OPEN)
  1360			return 0;
  1361	
  1362		/* open the socket first? */
  1363		if (con->state == CEPH_CON_S_PREOPEN) {
  1364			BUG_ON(con->sock);
  1365			con->state = CEPH_CON_S_V1_BANNER;
  1366	
  1367			con_out_kvec_reset(con);
  1368			prepare_write_banner(con);
  1369			prepare_read_banner(con);
  1370	
  1371			BUG_ON(con->in_msg);
  1372			con->in_tag = CEPH_MSGR_TAG_READY;
  1373			dout("try_write initiating connect on %p new state %d\n",
  1374			     con, con->state);
  1375			ret = ceph_tcp_connect(con);
  1376			if (ret < 0) {
  1377				con->error_msg = "connect error";
  1378				goto out;
  1379			}
  1380		}
  1381	
  1382	more:
  1383		dout("try_write out_kvec_bytes %d\n", con->out_kvec_bytes);
  1384		BUG_ON(!con->sock);
  1385	
  1386		/* kvec data queued? */
  1387		if (con->out_kvec_left) {
  1388			ret = write_partial_kvec(con);
  1389			if (ret <= 0)
  1390				goto out;
  1391		}
  1392		if (con->out_skip) {
  1393			ret = write_partial_skip(con);
  1394			if (ret <= 0)
  1395				goto out;
  1396		}
  1397	
  1398		/* msg pages? */
  1399		if (con->out_msg) {
  1400			if (con->out_msg_done) {
  1401				ceph_msg_put(con->out_msg);
  1402				con->out_msg = NULL;   /* we're done with this one */
  1403				goto do_next;
  1404			}
  1405	
  1406			ret = write_partial_message_data(con);
  1407			if (ret == 1)
  1408				goto more;  /* we need to send the footer, too! */
  1409			if (ret == 0)
  1410				goto out;
  1411			if (ret < 0) {
  1412				dout("try_write write_partial_message_data err %d\n",
  1413				     ret);
  1414				goto out;
  1415			}
  1416		}
  1417	
  1418	do_next:
  1419		if (con->state == CEPH_CON_S_OPEN) {
  1420			if (ceph_con_flag_test_and_clear(con,
  1421					CEPH_CON_F_KEEPALIVE_PENDING)) {
  1422				prepare_write_keepalive(con);
  1423				goto more;
  1424			}
  1425			/* is anything else pending? */
  1426			if (!list_empty(&con->out_queue)) {
  1427				prepare_write_message(con);
  1428				goto more;
  1429			}
  1430			if (con->in_seq > con->in_seq_acked) {
  1431				prepare_write_ack(con);
  1432				goto more;
  1433			}
  1434		}
  1435	
  1436		/* Nothing to do! */
  1437		ceph_con_flag_clear(con, CEPH_CON_F_WRITE_PENDING);
  1438		dout("try_write nothing else to write.\n");
  1439		ret = 0;
  1440	out:
  1441		dout("try_write done on %p ret %d\n", con, ret);
  1442		return ret;
  1443	}
  1444	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104140357.4sPe46YT-lkp%40intel.com.

--VS++wcV0S1rZb1Fb
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ZA3xFpIoHL62j9OjAsd5CCevof8Hvrjehh2zAQA=

--VS++wcV0S1rZb1Fb--
