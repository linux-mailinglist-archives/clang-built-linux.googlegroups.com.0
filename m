Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBXJSL7QKGQE4SC7NZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BB42E27EE
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Dec 2020 16:32:23 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id m1sf1656652qvp.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Dec 2020 07:32:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608823942; cv=pass;
        d=google.com; s=arc-20160816;
        b=s1yEFx9zP5Oa1R6HRCUUxZrmU50ayghC1x7z2aovWzVqCDvpKSPIbrJp7g/l6naQJW
         GLcxcRHndEEXRcztdrwM5O7LQmY9hgHq8pyyxNWL8XrnetlqQJJk1XlLRZSc3VKbXrz8
         W0lQ4+9HpgLFQkWsMok/8IXuRT4lwhz4gXoOHxb2TkcO9f65yK7EO7ZQx2ppd2oxJJ3g
         1h3XI30mG8sAC+CPmf2mi+oC8br4bEZDw6gyt/ZjrFUDb6wo54ItonQKa/JcLOVrgdZL
         foGg7I5MGK6D5yoLJkbSlR4JUKrAFOh3nZ8dF/Aot142xzyZpCcil8992ASke3yujdBZ
         eZgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=CVAlFAbBgJJMr44XAJUlPw1rHKxmlPDn1w16cjSmsx8=;
        b=UrieGTG079ATpIeJov3h/+OhrIS80VVBJDj7wnAeRAssSTAY5M8yl/PeOWe2InWpGe
         d7cW6w8TF6f7nIuXsb0fTwuVpxVLYJORvhNwV+5aR1mfhd102L0HdDe+NvIVnw5Qc/QE
         LXHi922YXO4rJOnEINe4Sl+Ueufd28MGVOXQYywL6CHKkksi8G5TgrToygdjf7ApZ7y9
         DasK6vOdSorDwbveBvH+M47/21NMmCUrAT+0giqbIPNEFT7YQkd3BZEblkfLxNSo2srj
         E2euuxRpzTUpVs2bI1mgdDNAOIUvOjNYn+D9Smk8/f4MpFi7t8RqJPeDEI+KTtJ9/yus
         IcVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CVAlFAbBgJJMr44XAJUlPw1rHKxmlPDn1w16cjSmsx8=;
        b=iAYSHQsJSks9Cio+ltAjKR3wjpUCM19vjQjpULQ/96I5PH3E6dp4zkMFaAStejChDA
         qnExZL6wcB5sW5hPNzJJ4IqYUcismRwstntJNMYWVIusTLhKEn1Lzyx5Izzibrp0xR4g
         wIngN3scp/P5N+nuUd/JH1v4OMmKbrZQpwwvLJBJc8MAGzxD+ruAfDf5sm2jRRQOwN7Y
         0XYYdgJJPGXLM5mtAXn6AH/OZ7Ukha+Fm+lPwp9TcVg2BR6Rwu7UBsQh7/+ugMHNqu0Z
         7T6M13z4fWzlWIfZ7908Yp3A5d1LroSci+MtcgwMdw7b+CNYH1Di+1Et4Mi4WELNeia5
         jb5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CVAlFAbBgJJMr44XAJUlPw1rHKxmlPDn1w16cjSmsx8=;
        b=h/ZBe0Y5T63bbnSigBjxzzTure+ci1QkBS2XJqqRO5R7gaY+M+zasOPzIVWGfUBbHT
         Vthv7hNwvA49lPc4Mo9OLmLBQBNH43oUtjnU7BRUVZnE3CgEZ5x6jRQPUVO6/128/B3S
         Y+pT5S8OmmNt5D5ljB7b5tp6yeO4R3hiet6+NUHBDgenzg7Q5noFXKQRS63QgQTGsO2/
         IMVv0oJ2Y2CkxRn4vbia6tWkww2vFpRAQ2x0v/ZUpKYmEvVdFe3xaTQqzRsU18AT1V55
         CwqMj5g4sUUdWtbrh4XoE0ewGKaSguxKCLRGvCgI91bSvoPLsbgMkFDlPFdVENL32EWW
         OCYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533isR6I+WBV/ku++CURwc7If0U31zVCl5Zyd5AvQ5PkWuJ29f2u
	DrL8tUlUjE/sueiJID1AOvY=
X-Google-Smtp-Source: ABdhPJxGPF7OBbClggxcriVkDHwGh7R6hBr0hfu/3UQZenGS+0/FxA7LRNWyev1tzaPJfWVLPCptmw==
X-Received: by 2002:ac8:7244:: with SMTP id l4mr30422084qtp.203.1608823942516;
        Thu, 24 Dec 2020 07:32:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5a53:: with SMTP id o19ls14061664qta.5.gmail; Thu, 24
 Dec 2020 07:32:22 -0800 (PST)
X-Received: by 2002:ac8:6c2d:: with SMTP id k13mr30387117qtu.197.1608823942030;
        Thu, 24 Dec 2020 07:32:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608823942; cv=none;
        d=google.com; s=arc-20160816;
        b=0p4/etkiTpgfeY18htqgqI9u/sp6DQEGdY6Qu8GkrEgfovg1enFp5AJLHGmoza5tNe
         rQmFtXhddlHknnecHnbfXT8xG+4osB26vUD29wc7aqLrIFnK5HRwB3p63vS8cdNuDnoW
         43GE1KxuuCNJ10MDs3KTCDYvnphWp/ByTjeKolOFFqYG3IQ2ypifmnO4aawTZmXSeET8
         0XjhbfytLCHRkjZWAgQV4ZyXxKCSrSeM/vKRk168BHOx5cQModaTjdEHX5xLW7atR3G9
         CfKFHhR1rks2PoYoltbj6kzqbTz3MR7K6W3v3FVwhoiwciFLmObUJQQv0FL21MfBQnxa
         Dfmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=NnX5uqYKBaX6iZjHIpWlGVjJ5KCo9xEfARvBdIYtNps=;
        b=QG6LtNgR2hHrin3PhrZPKNizmnEkbuF48AmLO6gSNbafUov9psE4hjeK2ckbrfDJHv
         Zxtq0SCWox81ALM0dd0D58ZUAS3s8REKYRfXDtPGUCUyfr73Lcfjzy6PrDdQnu7s0qUZ
         OgWEo0RUMsBBqaDdo360Iv+2ZvW0w49SvodppvD0j48YzmFkItIVruGHTi/zQ4HWWwDX
         h7pCKb2TdQ6LZpJMF8yMn+mTe8PQdzFCPfJEVIxq33y6TkQ6ZGurKMmV+oWASOm03GBk
         qVZ0R4MaEAUcMAK9RgEN5FCifSgjgPh57PV/Wsf5Q5WsDIZhKj3H0gcP38Cxge+4CxKu
         JXZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id z94si2821465qtc.0.2020.12.24.07.32.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Dec 2020 07:32:21 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: fwsVM9k4yZTnFmtLpzVNgLgEf6Kc1hxyL5Psx49M2PB2V5YKM3NzQJUa/XclrCX02DHNRGzdXt
 Hfvl/4d+SzVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9845"; a="163875640"
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; 
   d="gz'50?scan'50,208,50";a="163875640"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Dec 2020 07:32:16 -0800
IronPort-SDR: LOvv1ObhL4ipftVPB5dwjMMwv18IfSoCOInt/1O7oyA65qGnyMxEMzvcofTc6RsCmM4LSh+CP9
 pIWsavty7qBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; 
   d="gz'50?scan'50,208,50";a="391172762"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 24 Dec 2020 07:32:12 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ksSb7-00012v-Ae; Thu, 24 Dec 2020 15:32:13 +0000
Date: Thu, 24 Dec 2020 23:32:08 +0800
From: kernel test robot <lkp@intel.com>
To: Ilya Dryomov <idryomov@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: net/ceph/messenger_v1.c:1204:5: warning: stack frame size of 3040
 bytes in function 'ceph_con_v1_try_read'
Message-ID: <202012242359.vtiijIWL-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6c2NcOVqGQ03X4Wi"
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


--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   58cf05f597b03a8212d9ecf2c79ee046d3ee8ad9
commit: 2f713615ddd9d805b6c5e79c52e0e11af99d2bf1 libceph: move msgr1 protocol implementation to its own file
date:   10 days ago
config: powerpc64-randconfig-r025-20201223 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
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
   <scratch space>:228:1: note: expanded from here
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
   <scratch space>:232:1: note: expanded from here
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
   <scratch space>:236:1: note: expanded from here
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
   <scratch space>:240:1: note: expanded from here
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
   <scratch space>:244:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> net/ceph/messenger_v1.c:1204:5: warning: stack frame size of 3040 bytes in function 'ceph_con_v1_try_read' [-Wframe-larger-than=]
   int ceph_con_v1_try_read(struct ceph_connection *con)
       ^
   13 warnings generated.


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012242359.vtiijIWL-lkp%40intel.com.

--6c2NcOVqGQ03X4Wi
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--6c2NcOVqGQ03X4Wi--
