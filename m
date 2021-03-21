Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPFX3KBAMGQEI26E5BY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id BAED3343074
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Mar 2021 02:05:11 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id 131sf56559333ybp.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 20 Mar 2021 18:05:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616288700; cv=pass;
        d=google.com; s=arc-20160816;
        b=kzkRs6aGD5gfySEkLRwUDTrhXN4FGPY6RVnTLxz9jeW/gztTkHP3lKrL15GYgEBNt5
         uTzmds+Ojo9HNSSVueAPiO/jX/jEqDjLLvYncwdYNecfWeyqx/JQqndKBQ54IP0jy3WE
         nUGmy636ejB8GXqPPvpcatIQYl8TZBaDopmYZimMpFW5ZZQ9MHWphDD/kUhCRC9D4cH/
         OvrTZ0S1zeUykLnPLQqjJ0FwNh3bQe6mHdF2GjNhhKEsqihVw1SmF0xoJHLBgMmWBqgU
         Eq6SNhyQjpJ3PrP/XDp4OyTu1JlEytyj9guRdYYV7IXXSr6TC4RDGz27il5mkoEAzXyE
         jcmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=aiNZ7fSRR+mmvHO8H0cXm4PZv3iy/QXfCKP9dQHkAZU=;
        b=zsKVouVktT9FzzYS6zsysD7lceXiGRs6vG8dFTNJOsSEIxcuYYnJ7ST/0YYiziMyhT
         sJKUsEqoTk2/78RrUqS4WtmTCn3izGO0t6VX9qMWdFUzqqtwkmQJkHEhLIXvLg8uv9Z2
         /MPi6pGa91bfqA7/L4cNeKnAD39Tso32l1zr1R+BeX8ZWAfJGjUg4/nlEYhdqNWFHVMW
         ybzFvi7gHPIeBrD8fFuA+cDDQhDWO5LoPi1f98OhWwBtFUAGG0FwKL3W5xzC3Lu+YJ1P
         ITWpN2+6uhfQoUy7kay0ssvQT+X9maoL/wFZXd4NzYm1rhPhGE48sxSzZBGxEDGqDQSl
         /dXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aiNZ7fSRR+mmvHO8H0cXm4PZv3iy/QXfCKP9dQHkAZU=;
        b=ZxyAuLg6o6X9P2JanPqxkOytXnzQtp84GTkrfYyNySLj1FzV3deNY1bi7OlRI71Hei
         Q5WSWY5fb/7LaXklG4cMaEHMzxeOiwB8VhrM0dEw8bCPnF4IFmYeJLF7/hsdXb7DmHLD
         QER018kqqeb07kHWZdV2fVOmZEai+Iw5Y40C9ssjI7DFIfIhunu59mHm5BJNjtpQS/Dk
         1XfI2TlrbL49sLUeonjYyjbGUMDu55K5UzzU3X5bWYBUQ92SOU5dp+Jac+y3xJqEgxDf
         /Oau6E37ZiF49b3jEzwPYAfTc5eTiYyADiSlTdeCoY5uBNmISX+FjgWH6PBHAczEjdAz
         +Gtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aiNZ7fSRR+mmvHO8H0cXm4PZv3iy/QXfCKP9dQHkAZU=;
        b=dz4dqWBa7eB3fKNg1fwHSYL86mexn9Eod4FzSaf/pXvVRKgZot3gpqYO9a/Yczd02r
         eMOh14GBru3fftwQNYEU3pZwgACdYhDIZCqRbb4lRtqNWlo6zzGMZ7WbIq+L0Fc9yGcA
         M54PQ3SgjebU6DNDERADIj3NFXh17ztjY2kEr72GtlpBxFdzrmjzw2jfaOdIxCipQwyn
         2DUdttmKNGWfNl7BGbBo+HlqnUJjtsGPRTJEVaG5d9DZI6N3kDMxXUXRJBiUtslIbGPh
         HVEFvGua6NgkRsTwEBN/TCvJ0TVvRLNDoXskO60LPrJGquhhbg9fmGYXXFUoa75npJXS
         ykPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yq0z1+joNp1/q493QiCBB4baNea/bCY3ZhZqh5+TIbnqMtqNx
	gPiQx8EVpE51Tq80ILHW3NU=
X-Google-Smtp-Source: ABdhPJyMdzCExpWTKbgZPPnxC9MD41qqMT3P0L1hgs0L/HXy0T7pSkkzTrnXJh5/kshQ+QUrTMCDMg==
X-Received: by 2002:a25:c7c6:: with SMTP id w189mr15363689ybe.323.1616288700490;
        Sat, 20 Mar 2021 18:05:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1ed7:: with SMTP id e206ls2706327ybe.7.gmail; Sat, 20
 Mar 2021 18:05:00 -0700 (PDT)
X-Received: by 2002:a5b:f50:: with SMTP id y16mr15397797ybr.35.1616288699962;
        Sat, 20 Mar 2021 18:04:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616288699; cv=none;
        d=google.com; s=arc-20160816;
        b=Mnm5Gk8Jez4J7Jnh267bVLLa3Bh+EORoDT3RFihvyXyeECFwSQpWjJ5TS1bl1pM9Hs
         tKAhd0fet5eqKkgTnPapC8oSECg6prmUQE9PFymKInM/l9NOFXCtB+Iq+x5jfn5z3Tco
         PSmRYgyKVYNa9jJENxdXywqZsp62yrhirl4ifq5gWLugWkZP1dLaeYm+gBr4UsvsfYHy
         n4wpnJzZx1YCWKHlJ/eqeDqjZEbS9JWSs3Dw/1UDH829bA1/7dfrr8e/+SAy0o4W7tur
         oxQSNPOLBE1j2aCkToxY/tQIWzBp3JnEQxUpBWF1l4uNsfHlEeMtoaWdRrXrgO1T/0/i
         ewmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=LFlPNaYER7vxA6aVsk5+d9MsUOElnqd5fQ2JdMG9zZM=;
        b=bAByWrt/PI40N/z84/9dHwaSA3PwQTERQyJ10/LezTi7FGD8axeVqdR4E86vq5zImr
         hfUyxo4WetziCm8LhNZjakSyLZdcqGULIp0pEW11wptE0rAc1B+KyC0aiANk5CVQpEtm
         myjnftgEJoX0bW+80MZIHj8kidXN6DFygNYnsa1TDqdaZMq0X1ToXYQJW/39ngHVWCEL
         pP8ZdVWWFEBneIFho7lYq8tQVVLxERws0cSlNciwDOXyuHtio0LVs5T75/ghEL3VZePa
         6y3uov6TyBaXhP1+VxIEhymelkyC0ztILcya4UCqeY1mARbwbJFqO+u4KRm192QhrMTy
         BoqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id t17si635427ybl.2.2021.03.20.18.04.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Mar 2021 18:04:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: cX+TBaXJU8qHETXeG8uWwWtRmXc+49f/oz1M6JJ3Rp/nv5ubK+uXDHA01ByTZZphfXKA79lSTp
 qVh2uxHKrInw==
X-IronPort-AV: E=McAfee;i="6000,8403,9929"; a="275170164"
X-IronPort-AV: E=Sophos;i="5.81,265,1610438400"; 
   d="gz'50?scan'50,208,50";a="275170164"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2021 18:04:58 -0700
IronPort-SDR: aMcEG+Xnqx7TTyHQ88iBBLJ8sA58cACBNiTsYfaroMe9+tUIPY43chzQnIPF/ewm+TNS0rwgDi
 D7cIUC4Nzs9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,265,1610438400"; 
   d="gz'50?scan'50,208,50";a="390066223"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 20 Mar 2021 18:04:56 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lNmWV-0002r3-MQ; Sun, 21 Mar 2021 01:04:55 +0000
Date: Sun, 21 Mar 2021 09:04:49 +0800
From: kernel test robot <lkp@intel.com>
To: Andy Lutomirski <luto@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [luto:x86/kentry 10/10] kernel/entry/common.c:60:6: warning: no
 previous prototype for function 'kentry_assert_may_instrument'
Message-ID: <202103210943.QYr2MSLD-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git x86/kentry
head:   b0d7a5e5a9b11a6ddb50b90e31877e3cb1f93362
commit: b0d7a5e5a9b11a6ddb50b90e31877e3cb1f93362 [10/10] kentry: Verify kentry state in instrumentation_begin/end()
config: s390-randconfig-r022-20210321 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 14696baaf4c43fe53f738bc292bbe169eed93d5d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git/commit/?id=b0d7a5e5a9b11a6ddb50b90e31877e3cb1f93362
        git remote add luto https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git
        git fetch --no-tags luto x86/kentry
        git checkout b0d7a5e5a9b11a6ddb50b90e31877e3cb1f93362
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from kernel/entry/common.c:4:
   In file included from include/linux/entry-common.h:6:
   In file included from include/linux/tracehook.h:50:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from kernel/entry/common.c:4:
   In file included from include/linux/entry-common.h:6:
   In file included from include/linux/tracehook.h:50:
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
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from kernel/entry/common.c:4:
   In file included from include/linux/entry-common.h:6:
   In file included from include/linux/tracehook.h:50:
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
>> kernel/entry/common.c:60:6: warning: no previous prototype for function 'kentry_assert_may_instrument' [-Wmissing-prototypes]
   void kentry_assert_may_instrument(void)
        ^
   kernel/entry/common.c:60:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void kentry_assert_may_instrument(void)
   ^
   static 
   13 warnings generated.


vim +/kentry_assert_may_instrument +60 kernel/entry/common.c

    59	
  > 60	void kentry_assert_may_instrument(void)
    61	{
    62		DEBUG_ENTRY_WARN_ONCE(this_cpu_read(kentry_cpu_depth) == 0, "instrumentable code is running in the wrong kentry state");
    63	}
    64	EXPORT_SYMBOL_GPL(kentry_assert_may_instrument);
    65	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103210943.QYr2MSLD-lkp%40intel.com.

--cNdxnHkX5QqsyA0e
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
icPRAAA=

--cNdxnHkX5QqsyA0e--
