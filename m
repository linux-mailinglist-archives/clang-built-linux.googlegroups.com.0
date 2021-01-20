Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB7EEUGAAMGQEVSHNMJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A4C2FD2F6
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 15:47:26 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id d6sf16724075plr.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 06:47:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611154045; cv=pass;
        d=google.com; s=arc-20160816;
        b=zUw/5FI5ox/b5okyKqmTuuq2ZF/JZrtPr0fe94nLVEOMGWYsVCt1mNGwOXTqHyvfhJ
         +VkpC3Qz0Fte8X6H2BbdODamtPMsKrKvN5OBOBxhuMAzmrwrz6vVlbN1MDIksJsGhlRp
         +20J1x6flGO0ohIG2koGYDU+wqgg7Wavs4hV3D6niUxCys72I4Qa/ILVaHQfXv0wQLAn
         MppjP6UkEu8hpa3ACbaydeeKu9Opo6GG+jGo/VTiexH7QoGl49K6hEMeAKJyPlhUjf1v
         weRYwdK1EF+ZQq7g0yhK2W0Bj+l3PG2+hFSytJTTwFJfhaKaXS+WB7gyg8wuKU+Ve0Cx
         8p5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=S74hWLpTIt+/Mo9K+hug+ICj7zA/LFGRY2ji+qRM3yE=;
        b=AfSigbqoGKxsVi9W0v7maVgjkstbeh2Z0SMH/zk3iFb5AIIak3rBu7D2xU12jZbCTO
         HS6KDMqxYPyJUtq92DS13wU3p0HG3baQaah/mXIJsyPl/k78bJgETKAuHWFDoMmKIOo6
         2wO9k2kt2Zge7CqLAsGBUFLgKVsdBPJDKG0eZSVjkk+6KuZ4sVDFNDvsaWc2GCOLlJQI
         UGybufxz9QDw7ROfrvoDCh+Fmmv3Bl8eVXLDU5s29ByIDK5nEX7J0M0mlTv/IYU6p25r
         yYu5WmFeClGyIElRPd72HZDhbJTqy/XjomuPmiz954hRGcFuTu03f8XNyeQKdWwiJv6Y
         9jkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S74hWLpTIt+/Mo9K+hug+ICj7zA/LFGRY2ji+qRM3yE=;
        b=Pe02LK+JdSkElxoq3Bpi4T+5/1+IeaGrnq8j31/rPNdyUa8bqpb6OJbktR2KcQqplV
         Z6Fcgs4WGcQZGI4E3dxcrdEX0f3Vs9swd9z+L+//JQ2n+P2nuieFnqdTokrBQ5Vl36FQ
         tFA/JAN1ajexIi6OcGEe1u4jJgzNQVrCXMIytL92k5W/+o7/MaiAqI4pEolzmUaZ5Lhi
         UC+3veIL81cv0ct9wuDXEK2oDsjeAg/96vuRU4wOub0ehu76c2Ovz51vW7YdaKsvB8LC
         S1m+oz25BoGCNwOr4TkP/+uyYMh20xr8FUk+GMrZ1A+/5WXap5VRpnIjABkD0knMz4JN
         Aj6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S74hWLpTIt+/Mo9K+hug+ICj7zA/LFGRY2ji+qRM3yE=;
        b=i1I+RkyuSfdEcjXO+SH3La5McAjatpDpd1NmfLExPhMxgd921EW6KoMTHk6dESAzl8
         hqdwF4cZy/0GDNVmTqzCOFH0jftrqL6TZmFnPyqRWQUb6sqRvy2ejCnmsMiZnJk3ppKP
         macCfiQDTKYT7Z5z644LiSI5WBMJbhmtX/0QkqvZXF1JiGvTNFIMZznsvNai5UZTdOWq
         gq+v9fPxozBr2QhmgdzSZTToXbHQzcp1+Vt7Zi9wissFh6chf0CsMED4IhLkgHV/70AX
         IFSCu0g7HR5EdTyrsMBnMFmDs4i6mWlN0S8n9XSUdBnxfI09Q9iOnVHvzbiKHehNYiqj
         WgWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yZfDgsTBBas24e0EUi6grMn2UswflFFW7m4d250xWsi8i2OPT
	xMomedG3/pgj6S5NOJJDxC0=
X-Google-Smtp-Source: ABdhPJwB3JYRXARgRli/yvaHZ1yAR0dw9r/8Ql0G1nKF4OcWh3oHOJYGkMGPHd9GiDtSbzgkS9XZMw==
X-Received: by 2002:a63:e14a:: with SMTP id h10mr9750799pgk.297.1611154044887;
        Wed, 20 Jan 2021 06:47:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5312:: with SMTP id h18ls4089695pgb.9.gmail; Wed, 20 Jan
 2021 06:47:24 -0800 (PST)
X-Received: by 2002:a62:1516:0:b029:1b6:8e43:dad7 with SMTP id 22-20020a6215160000b02901b68e43dad7mr9692370pfv.64.1611154044133;
        Wed, 20 Jan 2021 06:47:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611154044; cv=none;
        d=google.com; s=arc-20160816;
        b=XAIRVenuIqoQJsiHKbyCmaG1mIZTalnbB/5p6Dyc7v56ulXlc3LbXyYU17Ug3XGCKP
         6h2+7uLVuFmyOBO1+8i1wT7ZQCAh0hemNti6pWkwbThGrSKrNsMCIRYVkzdPtDv7117h
         jt37oT/NB1zqul+DnuGC4TnCvPPqTwroGborLd5m+79CUYPHxfIIdYjKaTf5QqxVtoDF
         Xx/8o2LVoW90Ku8K74nFV+2rkmlLxJdu0E9UC5EY3FpNJ4h95InzOFEFJ90e5dt8toDO
         jM+EnNuN+4Zo40e+O0DQktGy8u0FrBpWBOnRQp1bPhp+aVQqhd1TiEXVKTy4wJPQVWJl
         x8lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=co/9P/vuxeEgN10Q4T2oVHbViyizwSjxD362GASfsrM=;
        b=JKpNyG3hBHmFsMHqJwhId/O8IbU/Xb3fR5Qp8ZjxP6dpfcd6xRiZRi9rW3xFevLvIW
         Xcv5281EJVQvBKR8WLm6flFsx087cW6tERevJ6tny2wxozFDQSsL/+zGgbM1aMixjLyU
         bF6xp/KgzVcWIpYYKyLGaWO/R+AK4m/E0JzMgEP/7gXhSPyNS4Ds7qwXlE628Tya9kD4
         qZ/pAI1AvVvtpEqiIL2wLSv2L76XeMQq3JSBq1cLWynHv/qNHuLljbGd2HDoQTgCBACB
         TiqMo9Tonci+F2ObfU9tfSZlzzm72I6K38ZF9K+7ApvOilSz+970JI4D0bwVdXDn5NZD
         jZNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id z2si201613pjq.0.2021.01.20.06.47.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 06:47:24 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: uqD6l/9xcTlvtBlPhv0QC7KMfAwbaPSPdzIU7+fWaZfZkcMzsqSAG/esMXcrQnDYmiBFGMpx+u
 PH3EHYqDWZ6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="243185202"
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; 
   d="gz'50?scan'50,208,50";a="243185202"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2021 06:47:20 -0800
IronPort-SDR: BGVET9/rXi+aGEQ8HX1WAMpRnMX9QacgCzozb698yVUS0Oq3hbi+x/yIGf0o0gjObf/TJMY97A
 ni6Py7NtNQlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; 
   d="gz'50?scan'50,208,50";a="426919285"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 20 Jan 2021 06:47:19 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l2ElS-0005qf-Cp; Wed, 20 Jan 2021 14:47:18 +0000
Date: Wed, 20 Jan 2021 22:46:48 +0800
From: kernel test robot <lkp@intel.com>
To: Tian Tao <tiantao6@hisilicon.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH mm/zswap 1/2] mm/zswap: add the flag can_sleep_mapped
Message-ID: <202101202247.eTZ4UdGZ-lkp@intel.com>
References: <1611035683-12732-2-git-send-email-tiantao6@hisilicon.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qMm9M+Fa2AknHoGS"
Content-Disposition: inline
In-Reply-To: <1611035683-12732-2-git-send-email-tiantao6@hisilicon.com>
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


--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Tian,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.11-rc4]
[cannot apply to hnaz-linux-mm/master next-20210120]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Tian-Tao/Fix-the-compatibility-of-zsmalloc-and-zswap/20210120-162712
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 45dfb8a5659ad286c28fa59008271dbc4e5e3f2d
config: s390-randconfig-r003-20210120 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 22b68440e1647e16b5ee24b924986207173c02d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/d2ad619ba5016be9cd273292ae5dc40d8402fe4e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Tian-Tao/Fix-the-compatibility-of-zsmalloc-and-zswap/20210120-162712
        git checkout d2ad619ba5016be9cd273292ae5dc40d8402fe4e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from mm/zswap.c:23:
   In file included from include/linux/frontswap.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from mm/zswap.c:23:
   In file included from include/linux/frontswap.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from mm/zswap.c:23:
   In file included from include/linux/frontswap.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from mm/zswap.c:23:
   In file included from include/linux/frontswap.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> mm/zswap.c:947:17: warning: variable 'entry' is uninitialized when used here [-Wuninitialized]
                   tmp = kmalloc(entry->length, GFP_ATOMIC);
                                 ^~~~~
   mm/zswap.c:933:27: note: initialize the variable 'entry' to silence this warning
           struct zswap_entry *entry;
                                    ^
                                     = NULL
>> mm/zswap.c:1271:6: warning: variable 'ret' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
           if (!entry->length) {
               ^~~~~~~~~~~~~~
   mm/zswap.c:1322:9: note: uninitialized use occurs here
           return ret;
                  ^~~
   mm/zswap.c:1271:2: note: remove the 'if' if its condition is always false
           if (!entry->length) {
           ^~~~~~~~~~~~~~~~~~~~~
   mm/zswap.c:1259:9: note: initialize the variable 'ret' to silence this warning
           int ret;
                  ^
                   = 0
   22 warnings generated.


vim +/entry +947 mm/zswap.c

   914	
   915	/*
   916	 * Attempts to free an entry by adding a page to the swap cache,
   917	 * decompressing the entry data into the page, and issuing a
   918	 * bio write to write the page back to the swap device.
   919	 *
   920	 * This can be thought of as a "resumed writeback" of the page
   921	 * to the swap device.  We are basically resuming the same swap
   922	 * writeback path that was intercepted with the frontswap_store()
   923	 * in the first place.  After the page has been decompressed into
   924	 * the swap cache, the compressed version stored by zswap can be
   925	 * freed.
   926	 */
   927	static int zswap_writeback_entry(struct zpool *pool, unsigned long handle)
   928	{
   929		struct zswap_header *zhdr;
   930		swp_entry_t swpentry;
   931		struct zswap_tree *tree;
   932		pgoff_t offset;
   933		struct zswap_entry *entry;
   934		struct page *page;
   935		struct scatterlist input, output;
   936		struct crypto_acomp_ctx *acomp_ctx;
   937	
   938		u8 *src, *tmp;
   939		unsigned int dlen;
   940		int ret;
   941		struct writeback_control wbc = {
   942			.sync_mode = WB_SYNC_NONE,
   943		};
   944	
   945		if (!zpool_can_sleep_mapped(pool)) {
   946	
 > 947			tmp = kmalloc(entry->length, GFP_ATOMIC);
   948			if (!tmp)
   949				return -ENOMEM;
   950		}
   951	
   952		/* extract swpentry from data */
   953		zhdr = zpool_map_handle(pool, handle, ZPOOL_MM_RO);
   954		swpentry = zhdr->swpentry; /* here */
   955		tree = zswap_trees[swp_type(swpentry)];
   956		offset = swp_offset(swpentry);
   957	
   958		/* find and ref zswap entry */
   959		spin_lock(&tree->lock);
   960		entry = zswap_entry_find_get(&tree->rbroot, offset);
   961		if (!entry) {
   962			/* entry was invalidated */
   963			spin_unlock(&tree->lock);
   964			zpool_unmap_handle(pool, handle);
   965			return 0;
   966		}
   967		spin_unlock(&tree->lock);
   968		BUG_ON(offset != entry->offset);
   969	
   970		/* try to allocate swap cache page */
   971		switch (zswap_get_swap_cache_page(swpentry, &page)) {
   972		case ZSWAP_SWAPCACHE_FAIL: /* no memory or invalidate happened */
   973			ret = -ENOMEM;
   974			goto fail;
   975	
   976		case ZSWAP_SWAPCACHE_EXIST:
   977			/* page is already in the swap cache, ignore for now */
   978			put_page(page);
   979			ret = -EEXIST;
   980			goto fail;
   981	
   982		case ZSWAP_SWAPCACHE_NEW: /* page is locked */
   983			/* decompress */
   984			acomp_ctx = raw_cpu_ptr(entry->pool->acomp_ctx);
   985	
   986			dlen = PAGE_SIZE;
   987			src = (u8 *)zhdr + sizeof(struct zswap_header);
   988	
   989			if (!zpool_can_sleep_mapped(pool)) {
   990	
   991				memcpy(tmp, src, entry->length);
   992				src = tmp;
   993	
   994				zpool_unmap_handle(pool, handle);
   995			}
   996	
   997			mutex_lock(acomp_ctx->mutex);
   998			sg_init_one(&input, src, entry->length);
   999			sg_init_table(&output, 1);
  1000			sg_set_page(&output, page, PAGE_SIZE, 0);
  1001			acomp_request_set_params(acomp_ctx->req, &input, &output, entry->length, dlen);
  1002			ret = crypto_wait_req(crypto_acomp_decompress(acomp_ctx->req), &acomp_ctx->wait);
  1003			dlen = acomp_ctx->req->dlen;
  1004			mutex_unlock(acomp_ctx->mutex);
  1005	
  1006			BUG_ON(ret);
  1007			BUG_ON(dlen != PAGE_SIZE);
  1008	
  1009			/* page is up to date */
  1010			SetPageUptodate(page);
  1011		}
  1012	
  1013		/* move it to the tail of the inactive list after end_writeback */
  1014		SetPageReclaim(page);
  1015	
  1016		/* start writeback */
  1017		__swap_writepage(page, &wbc, end_swap_bio_write);
  1018		put_page(page);
  1019		zswap_written_back_pages++;
  1020	
  1021		spin_lock(&tree->lock);
  1022		/* drop local reference */
  1023		zswap_entry_put(tree, entry);
  1024	
  1025		/*
  1026		* There are two possible situations for entry here:
  1027		* (1) refcount is 1(normal case),  entry is valid and on the tree
  1028		* (2) refcount is 0, entry is freed and not on the tree
  1029		*     because invalidate happened during writeback
  1030		*  search the tree and free the entry if find entry
  1031		*/
  1032		if (entry == zswap_rb_search(&tree->rbroot, offset))
  1033			zswap_entry_put(tree, entry);
  1034		spin_unlock(&tree->lock);
  1035	
  1036		goto end;
  1037	
  1038		/*
  1039		* if we get here due to ZSWAP_SWAPCACHE_EXIST
  1040		* a load may happening concurrently
  1041		* it is safe and okay to not free the entry
  1042		* if we free the entry in the following put
  1043		* it it either okay to return !0
  1044		*/
  1045	fail:
  1046		spin_lock(&tree->lock);
  1047		zswap_entry_put(tree, entry);
  1048		spin_unlock(&tree->lock);
  1049	
  1050	end:
  1051		if (zpool_can_sleep_mapped(pool))
  1052			zpool_unmap_handle(pool, handle);
  1053		else
  1054			kfree(tmp);
  1055	
  1056		return ret;
  1057	}
  1058	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101202247.eTZ4UdGZ-lkp%40intel.com.

--qMm9M+Fa2AknHoGS
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
fwCYmxkiM9cAAA==

--qMm9M+Fa2AknHoGS--
