Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPWE4GAQMGQET47VCBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 05505325BBF
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 03:51:44 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id o20sf5574694qtx.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 18:51:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614307903; cv=pass;
        d=google.com; s=arc-20160816;
        b=XKU+sdgSdwh8ecMlttRK8huaRVpe83KKV/pIDE6AKed2gM6joWzvhRzq5imUQmHvh4
         E8J3VDMS/xRJIj2dD/u+A4p3R4LR4dagkfTMkBNT64FDGykEsBW8CDu5utpYVphqglKu
         m/6YnfUBJRwr6bNbf1jZH8cPrMVGSG9lA4fY5MaoBRWdOA0f12iG4+Ug44Lj84E8eRJs
         w+l2zUena3D2jhOn7KGgSlQSl++6G17u12dK3iqwIiQODfNB6GSikGB3Lf/7JVVOcXfn
         BwIEdA4oSKNdLILmXZhj5XR6794Vi8VkRjH1RYh7BCbOwC/AdJW/qdumz0rrECzpB4uX
         dUBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=yO4RFInwcUTM1JwGUQNu5eHuZdMELfR3tHImjDHtLXU=;
        b=lVSyCy5ELSg3biCR/7xlRyYT6k+Qy+uyLFPoDydhyOAEmGQlZeL+W3uyVHCfHNK+IZ
         c+OqfCrN4ZOw4LG2ZifVNbUWnfaVIE28VFf3Fj4ea2F2eSNez8Pmz2lzLtWq3wSO6W8t
         mxlT3Wu5pd2LGrjra7P5mL3PMb4IPZPTuAWDC9RYb1I+9TvZ7ElPUkXXJChFPqQXNulZ
         tksQNWEZbPgDqX1Zvr7Z50yEXLnjt3fJ6TM2NBpZOgENQI1cJ/g7EbFIrFvFGOdI2Ix8
         R24ihmZLDK0nYntUrnyGCxsA/hiNwPUu78efmDqqTTeY+15U51X8pd4BdzqTK9x4xQIf
         6jdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yO4RFInwcUTM1JwGUQNu5eHuZdMELfR3tHImjDHtLXU=;
        b=bP9jBfhpQKmHJT0DVDtH3669uXXKsB/Ky7m/M0sbbnbvrrDaQVzFFAlWYaWvSYYFoF
         6vD0+SSE78eQ2YNVYZ5X0/mZxZBg1r78T2Hg6JuAlbZNZh0lrliJzimCXVfU0GZPdj7I
         PQXS73ZUtsFUrusZhETp6LjYYwW61OfutcdKqzSMhH0R37Uz+1E05t6l/Tqyg7lB55lS
         beEbjEi/OXT/zCAK37TwrjijFsU+uBIOC8uXqrM1Wnn5LBKA9dGJQ5xV2A/aU00hm+Fv
         9hIgy5COIDfcRNGpacL9Fkdg9C9yqFJ6r/Ym0oSznpmJ89s40Ww/G1Sxux9c3yo5j9u7
         T2kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yO4RFInwcUTM1JwGUQNu5eHuZdMELfR3tHImjDHtLXU=;
        b=N24w5rs1vGxpROqR8wBG4rKlZ+MTSLne9+/LL88R4ceNyd5uWBfkvP1gFVTN2qMjzP
         zvFpP1eAoaTMv288j8h883cLC5mLp6vhQbOeRaSUlOKO34teH0jMOh3pi16fURgKJ5WS
         T4c6xKY/X+G8NtcbWxspirTNdqd6+la3NMtGTPXOknZ9BflCYhpjDJgGSnQ+lYMxcMFg
         ribCj6I1ouXj1/U3eayLuuyLHN72g68dkEJTKI0WBMw1prBA3rMfpmF/Yb/blr4LMy6f
         lsOz68wyCS9n7LRSCo5zxzignBBf/5HViDjm1Isscub/gQXS7NtdoYEiIsVEtRdQXtdB
         eDkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533brZmGYP4gZzWLtVHWwkVaReNGv504fnAGgt/nibdMKzwvXrF3
	z8x/aN31edM1iN6yrF5NKMM=
X-Google-Smtp-Source: ABdhPJyI49f55E8NSeyYWNFzoEgD2XZX9FQPjTz2sDRzqw4iqMDWF6YndTspAfRcA4rZ6TjqFiJstA==
X-Received: by 2002:ac8:1c92:: with SMTP id f18mr1090403qtl.234.1614307903046;
        Thu, 25 Feb 2021 18:51:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:d2:: with SMTP id p18ls2945738qtw.3.gmail; Thu, 25
 Feb 2021 18:51:42 -0800 (PST)
X-Received: by 2002:ac8:664c:: with SMTP id j12mr1036938qtp.327.1614307902476;
        Thu, 25 Feb 2021 18:51:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614307902; cv=none;
        d=google.com; s=arc-20160816;
        b=KJ7yR38yCNoxLv1FzUDUr7II3zM0eiQJ8+fPaLm+uCAWhdE0WSS4bcKihi/qyCcd35
         SV12O2XpA2pLMuewa6jPQQtpJAiElQPR1GSMjNa2GlYjV6UFUkmR8j/mRZi9Wy0gL/1e
         4RyvuYgP5shkEnwOB01/QVHxFrlBWTFiBcNLSUSJozgJlQXuzrl4Oj3zc2TVX/5XNbRP
         YrLmDAF78MQ/2BRhaNzvzsY4IYYooyaFAHHpRk+cziSzLKAWtxZPDWnaVCWaH/suxZOw
         Q94uy8pxYAEtA7R8Ajf+q2UA6YhE1B7iCapHZWFJ88gaJFRwFt9Vcvx1sSEZdEUEngLW
         vR7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=g2WbV4R/FbjKke3Shmt/KybrEpXzw4oezoWyFiDedyY=;
        b=SuKk+kkwxgulBT2yp8HM+J8AL9+WiFA/UcaV/yZ5hd4ZUn2JjnAE9LObjxmb9QzcyF
         jBLEI050iNG8vVi5uVR46/+oRgRhm+L53ut+x8/EkNEi/TCex7PlXtt9ke4Sw9PhfNIB
         xq2qqUMeMhehVIMtFiWSAHuuJLjkrv6wxvNDXdc2Hck75VUn1HCDcXxV0jTIqsiMMQOs
         EDDjVCVpRvCXwCAmv1WyWHSzFxOFLJARHO37h8SMcdA0hRcrDONgKFYRcKJcvpiN+Nk9
         x0fWSUa4VoJMEkL++Nd7aA5gsTG6Vt1MYVC1u2MovPasR2DtgyF0S+ZaGjzlxYfSJY+K
         jGyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id z14si529192qtv.0.2021.02.25.18.51.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 18:51:42 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: 70fU+KuxReezUx0Ep1wDwINcnmoioFl0AK4DoxkV9KY6eCNfdiX9rJXD/ePL7Nz6/SpZ/muUu9
 9+waclfdA5Rw==
X-IronPort-AV: E=McAfee;i="6000,8403,9906"; a="185876898"
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; 
   d="gz'50?scan'50,208,50";a="185876898"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2021 18:51:40 -0800
IronPort-SDR: rYJUmnaIXnU/n6KhUGOTN3uvRDsuqHKByqrNgvUcj8EmDPBOXofeVEi/F+RZX3m+c/O9lm8i9m
 LFYG4fFZ+A1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; 
   d="gz'50?scan'50,208,50";a="432548642"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 25 Feb 2021 18:51:38 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lFTE9-00031U-QB; Fri, 26 Feb 2021 02:51:37 +0000
Date: Fri, 26 Feb 2021 10:51:17 +0800
From: kernel test robot <lkp@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [jgunthorpe:pr/3 42/42] drivers/s390/cio/vfio_ccw_ops.c:92:53:
 error: use of undeclared identifier 'dev'
Message-ID: <202102261014.ZOcP84YX-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="OXfL5xGRrasGEqWY"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--OXfL5xGRrasGEqWY
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/jgunthorpe/linux pr/3
head:   ce3825e9a69141c3d991ef41ac5e5a39655a7107
commit: ce3825e9a69141c3d991ef41ac5e5a39655a7107 [42/42] vfio/mdev: Correct the function signatures for the mdev_type_attributes
config: s390-randconfig-r031-20210225 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b889ef4214bc6dc8880fdd4badc0dcd9a3197753)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/jgunthorpe/linux/commit/ce3825e9a69141c3d991ef41ac5e5a39655a7107
        git remote add jgunthorpe https://github.com/jgunthorpe/linux
        git fetch --no-tags jgunthorpe pr/3
        git checkout ce3825e9a69141c3d991ef41ac5e5a39655a7107
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/s390/cio/vfio_ccw_ops.c:13:
   In file included from include/linux/vfio.h:12:
   In file included from include/linux/iommu.h:10:
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
   In file included from drivers/s390/cio/vfio_ccw_ops.c:13:
   In file included from include/linux/vfio.h:12:
   In file included from include/linux/iommu.h:10:
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
   In file included from drivers/s390/cio/vfio_ccw_ops.c:13:
   In file included from include/linux/vfio.h:12:
   In file included from include/linux/iommu.h:10:
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
   In file included from drivers/s390/cio/vfio_ccw_ops.c:13:
   In file included from include/linux/vfio.h:12:
   In file included from include/linux/iommu.h:10:
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
   In file included from drivers/s390/cio/vfio_ccw_ops.c:13:
   In file included from include/linux/vfio.h:12:
   In file included from include/linux/iommu.h:10:
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
>> drivers/s390/cio/vfio_ccw_ops.c:92:53: error: use of undeclared identifier 'dev'
           struct vfio_ccw_private *private = dev_get_drvdata(dev);
                                                              ^
   20 warnings and 1 error generated.


vim +/dev +92 drivers/s390/cio/vfio_ccw_ops.c

84cd8fc48478b5 Dong Jia Shi    2017-03-17  87  
ce3825e9a69141 Jason Gunthorpe 2021-02-25  88  static ssize_t available_instances_show(struct mdev_type *mtype,
ce3825e9a69141 Jason Gunthorpe 2021-02-25  89  					struct mdev_type_attribute *attr,
ce3825e9a69141 Jason Gunthorpe 2021-02-25  90  					char *buf)
84cd8fc48478b5 Dong Jia Shi    2017-03-17  91  {
84cd8fc48478b5 Dong Jia Shi    2017-03-17 @92  	struct vfio_ccw_private *private = dev_get_drvdata(dev);
84cd8fc48478b5 Dong Jia Shi    2017-03-17  93  
84cd8fc48478b5 Dong Jia Shi    2017-03-17  94  	return sprintf(buf, "%d\n", atomic_read(&private->avail));
84cd8fc48478b5 Dong Jia Shi    2017-03-17  95  }
5bf185366bfca4 Sebastian Ott   2017-05-15  96  static MDEV_TYPE_ATTR_RO(available_instances);
84cd8fc48478b5 Dong Jia Shi    2017-03-17  97  

:::::: The code at line 92 was first introduced by commit
:::::: 84cd8fc48478b5e67b3f1600717299e11430a67e vfio: ccw: register vfio_ccw to the mediated device framework

:::::: TO: Dong Jia Shi <bjsdjshi@linux.vnet.ibm.com>
:::::: CC: Cornelia Huck <cornelia.huck@de.ibm.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102261014.ZOcP84YX-lkp%40intel.com.

--OXfL5xGRrasGEqWY
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
hK50TkEixFBQ0G77cYoIfPvFBP4v7X0lQgbEAAA=

--OXfL5xGRrasGEqWY--
