Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYP672AAMGQEFQEGF4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B4E312370
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Feb 2021 11:22:26 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id d8sf9566460ion.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Feb 2021 02:22:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612693345; cv=pass;
        d=google.com; s=arc-20160816;
        b=EYNXa4XNAubn/HBR2G/fzMB0XVGaHYo/Pu9AAoM6jdscYe+FWzpDp9bZ9estWxP07e
         psqfAzfPf0M0veAfpfq0H6ibldLnAyi2z1LbXhGZdd42NkWY2OcSCDM2ieZwlN7dUsfU
         hDnA6bRn1Ol8G2ImIxWghasqv9fLEMRnNB9oDP/i8mDKdiPZeqbzs8UdpyChWBVEexXd
         r1CAZmOhHltEJCe8QAa9rtMCr16R+lpbU1DP3yVRzB75kyJAPk+2MWTaLxzfiyNHxwsG
         2yewYWOLAfXefBG+Cc7Y9CF2IL/Q6NhAgdXUT+9MJM/H8SNza789zyyWayVyeLVGNA3N
         +grQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=d9GSKvjtZwiJRVEP9Ce93QooTJdiYoZJvyHnHeiozBw=;
        b=kYAwlkihMJrUQ2AN7xyOdqDl3f1QcuN5qcfGr8+T8THYwsqSNiOq7vzIcRbSZo9MGn
         GX9z63iWTBMePIKTTMbwW5asXq4uQubUVem/bDiipTOFF7qHZBzl6wUnfS7hN1UmHioF
         FgJaqxGTt45e7wI91989tafnbP86kD0fJ90vu8EouUnoX61aVyro2q4E3kaKCDuQg95V
         XFKq9s/nhY96h9ASnXZo9zruBVG+6u69nMFN+ki4/SS1OYUSZQ6rDHrgK2c5EKVQxRtu
         ztkYGHaQmw5G+kHBFzimpoIvROWVQHcPvX+thSopS//8LAmidV5RYgNgsFmF0e1Gkh95
         76rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d9GSKvjtZwiJRVEP9Ce93QooTJdiYoZJvyHnHeiozBw=;
        b=RCbuUxh9fxharW7nw0hFX8tdNrGUkf7DySoJX7Vowy7jeVWKTk88pppJdaCQkbUBV2
         uBuwF3vYueQF/oRZRso1twFeXteywzsZ4vt0SQIaL9mWEayKk+DrE2OG9SLRJq+YVkfH
         GIcaprlwXHVsMvHuxa1RcqHjnb7hrpJyg24jceS74YmtTMwS8ZecMMr5Fh6fm7R+Jt/M
         0V7EFxesAK5j93X0Qq6fCaDAKjv9mwLg5UV2X5djnLFh6T9dVjW2nKF35GcltKdsd5pl
         P4RzOmp3C4FMrL22kvc9XdWVWKlzoUlNokIr7kggZrGqW5PeYdG134aH1PVSHwpoMfvc
         2c1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d9GSKvjtZwiJRVEP9Ce93QooTJdiYoZJvyHnHeiozBw=;
        b=KwnnsMeG13mDqXRvGml4xLo97djg/f4hi0RRPrBNxWv8RwOkNWXN/H8wvCYBXojXOR
         GM4DNIX/8FGgJ8iE9XL9qGVN4blHCwe/VHK6azffUraDB5bVHarV6hp6pbzhLK8sAJNh
         +QeJ/cuViJtc8jWES2AC1+gL9ygesj4egb6Njv5SRlWpmiywLXcEgUejDhBFItFBoys/
         olQnnflJ5ZWcLquU2mp0gDfiv/1q8CSUK5qIFDnHZuCWiUBzfAztgS2WhuPCmfGrcEyk
         d62JLEDsHXJLKiKVDnYa5jXiL5LctcyiqFXFW7bnZnk9PTyHFkfsgs+lZZqhFPq13vH4
         azDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zrZOut4RrUSdKuOa41sClkO+owdo0/6Q6r+JC26NS95rcdFJm
	n15eNKBvckyouKXgjsDAX1c=
X-Google-Smtp-Source: ABdhPJx14JCHjssabSjlmXQz8ZOaBXnAfvRmTcGiIJpyatsBk4n91zpHiBEQxHi0IujJ8RisRhQcuA==
X-Received: by 2002:a05:6602:106:: with SMTP id s6mr10844835iot.17.1612693345548;
        Sun, 07 Feb 2021 02:22:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:170a:: with SMTP id u10ls3342396ill.9.gmail; Sun,
 07 Feb 2021 02:22:25 -0800 (PST)
X-Received: by 2002:a05:6e02:cb:: with SMTP id r11mr11986469ilq.116.1612693345072;
        Sun, 07 Feb 2021 02:22:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612693345; cv=none;
        d=google.com; s=arc-20160816;
        b=mynL4lFuncAfzNzU0AP77eF4qKWjFZ3/tAxYABZNK4Xx6VigiUYhDFqsItELWguJQb
         DwU9/WOFj/ZQ/RAmd5/mAXaqwcHWxnauIHDmJKIi0FtP8z3O88ky9vCLnthwUVk7vpbH
         3i/7fKyS0OaJnOanmhT2C3nPLIgDc/RF6xDpYhNJUTfMhkc6lmS5GfCYof0Zj36Gn/vT
         JvoApsVCJetVjSDCX+1ZQcocvlkiWLeyqFVlx6U4oZatE9ARv0L8+UCI7OA/sH38Gx30
         df6rAOySDfNHNK2nK5e726DFMxAnbsfYiV7l64CNz2xfcy8OZeYU8oooM/jQr7OVASqm
         5QjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=omDF5mk5gr2AodUWC85cZChyjd2dpHQIunLYnii7/xI=;
        b=GnoK8WRgpccAWi7LuK+GypcQRo9KoWvKd7dXYqbHzKvQEl3ImlA6rsYianKv0QHD9p
         nLCR9jC0T7eh+jyU5HbZB4ZTLA0j3NXy0FqqwtGiDEoVnC/MvRsu20O085Lmu+V5pvtL
         AcVaEsBpGPi4Y5X4afJHq5CNjw/vmzz71oHwga3teNh7oTlzwy1D8DzCgCXHt4z9d2ue
         e2NYzUFOnTE8quX68UOQVzBDYS1X9/v6M9NbkcNY5GxtZB1xhScS1mT0RZefV3oCwphZ
         FDBt6zeCxqC0EEG7d7IV+Xyxc0+5S4hDrDZ/mRijmR/4VkInma+LlrgXczPziZagwrrn
         sVSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id m132si601798ioa.3.2021.02.07.02.22.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Feb 2021 02:22:24 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: CxvOLOJavzxne1zFh1AOdxOCjnrzag7ykyrX/WSeQSXVU+AzbcJZqwvD4ZTF5VtiC9watLywlF
 TnZR5L6VdSSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9887"; a="266430038"
X-IronPort-AV: E=Sophos;i="5.81,159,1610438400"; 
   d="gz'50?scan'50,208,50";a="266430038"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2021 02:22:23 -0800
IronPort-SDR: 81sExhE54+W1etm63Il/dAL0Sm533VZychHzuo5+gICrGYhhictNWktl8Q4+PDCvXpXSFaYc6I
 SWxchen1hyqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,159,1610438400"; 
   d="gz'50?scan'50,208,50";a="577277391"
Received: from lkp-server02.sh.intel.com (HELO 8b832f01bb9c) ([10.239.97.151])
  by orsmga005.jf.intel.com with ESMTP; 07 Feb 2021 02:22:20 -0800
Received: from kbuild by 8b832f01bb9c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l8hCt-0002q2-Mh; Sun, 07 Feb 2021 10:22:19 +0000
Date: Sun, 7 Feb 2021 18:21:34 +0800
From: kernel test robot <lkp@intel.com>
To: Pavel Machek <pavel@ucw.cz>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	0day robot <lkp@intel.com>
Subject: drivers/gnss/motmdm.c:72:5: warning: no previous prototype for
 function 'motmdm_gnss_send_command'
Message-ID: <202102071832.t9fNM8lp-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5vNYLRcllDrimb99"
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


--5vNYLRcllDrimb99
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/0day-ci/linux/commits/UPDATE-20210130-064427/Pavel-Machek/gnss-motmdm-Add-support-for-Motorola-Mapphone-MDM6600-modem/20210108-064924
head:   6970dff239df2b589cb07d7734e38b358db90671
commit: 6970dff239df2b589cb07d7734e38b358db90671 gnss: motmdm: Add support for Motorola Mapphone MDM6600 modem
date:   9 days ago
config: s390-randconfig-r023-20210207 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/6970dff239df2b589cb07d7734e38b358db90671
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review UPDATE-20210130-064427/Pavel-Machek/gnss-motmdm-Add-support-for-Motorola-Mapphone-MDM6600-modem/20210108-064924
        git checkout 6970dff239df2b589cb07d7734e38b358db90671
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/gnss/motmdm.c:13:
   In file included from include/linux/gnss.h:13:
   In file included from include/linux/kfifo.h:42:
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
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from drivers/gnss/motmdm.c:13:
   In file included from include/linux/gnss.h:13:
   In file included from include/linux/kfifo.h:42:
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
   In file included from drivers/gnss/motmdm.c:13:
   In file included from include/linux/gnss.h:13:
   In file included from include/linux/kfifo.h:42:
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
   In file included from drivers/gnss/motmdm.c:13:
   In file included from include/linux/gnss.h:13:
   In file included from include/linux/kfifo.h:42:
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
   In file included from drivers/gnss/motmdm.c:13:
   In file included from include/linux/gnss.h:13:
   In file included from include/linux/kfifo.h:42:
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
>> drivers/gnss/motmdm.c:72:5: warning: no previous prototype for function 'motmdm_gnss_send_command' [-Wmissing-prototypes]
   int motmdm_gnss_send_command(struct motmdm_gnss_data *ddata,
       ^
   drivers/gnss/motmdm.c:72:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int motmdm_gnss_send_command(struct motmdm_gnss_data *ddata,
   ^
   static 
   21 warnings generated.


vim +/motmdm_gnss_send_command +72 drivers/gnss/motmdm.c

    63	
    64	/*
    65	 * Note that multiple commands can be sent in series with responses coming
    66	 * out-of-order. For GNSS, we don't need to care about the out-of-order
    67	 * responses, and can assume we have at most one command active at a time.
    68	 * For the commands, can use just a jiffies base packet ID and let the modem
    69	 * sort out the ID conflicts with the modem's unsolicited message ID
    70	 * numbering.
    71	 */
  > 72	int motmdm_gnss_send_command(struct motmdm_gnss_data *ddata,
    73				     const u8 *buf, int len)
    74	{
    75		struct gnss_device *gdev = ddata->gdev;
    76		const int timeout_ms = 1000;
    77		unsigned char cmd[128];
    78		int ret, cmdlen;
    79	
    80		cmdlen = len + MOTMDM_GNSS_HEADER_LEN + 1;
    81		if (cmdlen > 128)
    82			return -EINVAL;
    83	
    84		mutex_lock(&ddata->mutex);
    85		memset(ddata->buf, 0, ddata->len);
    86		ddata->parsed = false;
    87		snprintf(cmd, cmdlen, "U%04li%s", jiffies % 10000, buf);
    88	
    89		ret = serdev_device_write(ddata->serdev, cmd, cmdlen, MAX_SCHEDULE_TIMEOUT);
    90		if (ret < 0)
    91			goto out_unlock;
    92	
    93		serdev_device_wait_until_sent(ddata->serdev, 0);
    94	
    95		ret = wait_event_timeout(ddata->read_queue, ddata->parsed,
    96					 msecs_to_jiffies(timeout_ms));
    97		if (ret == 0) {
    98			ret = -ETIMEDOUT;
    99			goto out_unlock;
   100		} else if (ret < 0) {
   101			goto out_unlock;
   102		}
   103	
   104		if (!strstr(ddata->buf, ":OK")) {
   105			dev_err(&gdev->dev, "command %s error %s\n",
   106				cmd, ddata->buf);
   107			ret = -EPIPE;
   108		}
   109	
   110		ret = len;
   111	
   112	out_unlock:
   113		mutex_unlock(&ddata->mutex);
   114	
   115		return ret;
   116	}
   117	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102071832.t9fNM8lp-lkp%40intel.com.

--5vNYLRcllDrimb99
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--5vNYLRcllDrimb99--
