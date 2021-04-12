Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3XE2KBQMGQEIEHTL3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9DF35D238
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 22:49:51 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id n191sf9292533qka.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 13:49:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618260590; cv=pass;
        d=google.com; s=arc-20160816;
        b=mX2Q3BgW9OevdPspb3p20Ga8WEvOZiIa99S+UqXeKFlkBuC0llqFoZ2XXURUEBdpDu
         HVGJFagdDX3UF37G31cELogRHeTfqeLdsQag4lns2Aa3wMYIT1KBIfYu2BchlLnplRYe
         vymgmPcr3MsuuMfxw1oFq4AIzjPv8ys36IDLlkTBcdDjIvbo/daFJBY5M++STv1Yp7Yr
         clUv7+snetB/hORS8e8dxR4WGBeJTBaO9xVjcXGMZpl2daSAJ7q27u7r3gEMkfmgA/+p
         XWSUMSOB57rgriEUf/OopMrPQF5lY7ZZKKDjI1PJYl+Jd2wAZvlQ87zBMOeid48D7hYk
         PKOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=E1ZC8iR3Rozcp8NQ1f1+nH9qa1iWr38w+rWis3xYmIw=;
        b=pU2ADlOhQ/mQFzSqkxhXzQ05GfrpnNNizvzIrHYlc5xBk3HiASYCFLMz9se6Ylgucc
         XoaLlvqzESbD86H/NTJEOMB/6EPZBdjqsACUkWgBV99C8eZBcAsgIaky1GgPIap2Cc7V
         jzwlSUdE2VCq3QoCYe69cLMQnawsAbfvgn8cl0JYMKQKpGPLOyVz8z+uy33PdWOlLcTP
         UoxAkPWMsvxEIqY02RsYr8w6GPfUIpjxMVyBCSInRy/UMXFe5OAr/UVaPsJxOpKNy39n
         hgbRYq/J5cXg8YtfNnHbjQs2jJn4V/UJW3RyEqMZSfvNHdfAC2wlMhuQIckIaIAyKTLy
         wJ5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E1ZC8iR3Rozcp8NQ1f1+nH9qa1iWr38w+rWis3xYmIw=;
        b=tYw+XKbeJjPFs1uqZ59V3KyT/fjld/LH5zYFvuNwyAqVB0sshOEgR0UT76bRvwiIE/
         Wx8DdqPs0jZMfDE3AIO2K7qWY4ow/S5JA0gCIGdcOlmpZxNxf4c4DE5Kx0mtRXwzxIbS
         7hsM3QdCIZ0HR4EGDMU0+jLf2PDAIf+S9evxyTeH/nQ2NYrBaG12owta+I0EdCpIxMVR
         yDC8ne2Q0tB8kmPgQMIbZ9t2+OvS7fBbhUOqmF9PQ0dN71b+8hs2MfXck+2mVJ60SzS0
         pc4eFUeRhrF20N/VSqKIfvPHSfMgyn3Djzzf6uLKPMYRAcGJVuMEfGUCcxVh8npU/h1d
         xE5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E1ZC8iR3Rozcp8NQ1f1+nH9qa1iWr38w+rWis3xYmIw=;
        b=l/soEv564BMn0VaiNYvX6D/9lTImx+GP6eh5FzYYDEdJp+VWnc3hOKKpljgXElagQY
         NI4F1HNdm/glAXfkcoLug4Xwn8FJgaumYHULTRcM1BCWS15Q4+jSZivsDkLLOZiFaIHe
         pE9nG9EMeFI9IYVeHZjXcJ/lyN91w1U1/PM9GUcCHS9+wtup1OuMpELd0sc8HAVcthhJ
         B3tkECDrM+/KEP1KJDGbMBeC/GNtgsDwSIWTTgqjta5Kpfgx1g9ClB4b0v8HSC6EA0Je
         mZCt2wAm6qp/F5eiaporiAJeCy+j+1/2MAXJpomh17Z2Oeg2ohYL3u52T9Z0VDKTSz2m
         6cKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KrC4SzTs6x17YiKHaT/drILG7m1H25lOD9DSADAY5Pvp6dFiN
	ZHdOHVdVr2rRtg1LPTW5ELA=
X-Google-Smtp-Source: ABdhPJy8jAx3sNysrbbG3BJkBIcQpHVDDIN6vwfSYuTem5NwuhDxpHwKZ9183Wyv5Iq82yW+vbkwWw==
X-Received: by 2002:ac8:108b:: with SMTP id a11mr26933808qtj.16.1618260590635;
        Mon, 12 Apr 2021 13:49:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5a88:: with SMTP id c8ls7473043qtc.1.gmail; Mon, 12 Apr
 2021 13:49:50 -0700 (PDT)
X-Received: by 2002:a05:622a:589:: with SMTP id c9mr2055270qtb.363.1618260590013;
        Mon, 12 Apr 2021 13:49:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618260590; cv=none;
        d=google.com; s=arc-20160816;
        b=Tsli5Xd3ScnoUAQMUWty9qH55Q6nYbgLW4SewjuKTuN7IFaaFxbeA1y/0Q6jdCqct/
         BWPmluyz7KBxi00Yg0fTBt4/Wct3rgt3bwTWi6HBrYIqptjLTijMffPQfd7HYYbpbzPK
         vkBxCwX/weE9pBHq6FW8esTeMYs/X4J5ne1YCq9XPXTl3urEeu/ven6YtycQaqqWkrHj
         KucZdaXlkARda7ne8aVg6vjay/o9xtVqGqkjMPAmlJTnT9UoqmxtomCpmdNELj2J5Xv1
         ZzUGAUl0mBEOhhAU8z98dHK9VBY1f96EKUGfbWnAosT9dweu7R2iDMN36oyJGt6Keeip
         zFQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=kfDWDvUStaHUMUtCjVlCo2Z6yz+4Nf2TUNo/xS3NEUM=;
        b=oiMvWQs7Yuwycadw2brI0lMFUHErjk+TZ4gjZ2VbuUbMBURLb82wjSODk51yYu/MyC
         oGgVR+6GaUf9sgsA6IJJvLT7Vvt/2Mcwf3bMXkjN8nK8MtbHMiqM1LpAuKqasP5tMA7H
         Mj+XBFIII6Qu7BE1+n1sq9NL+4cWmwlKaJCWbZ9Zw2XJHq+iIeOCHk+s262EMMC7X6ff
         awOpI0ha8EY18SjPjWewFiIu3cSFvIWZfJZHO1yoyYAgngsKzApTK5wCFI1jfeT9QUjR
         jxLZfyWlHkkeNbToBQunfd27AqV7gAdptBW0GG0edL/yReyeSu/J+K9dLercFfN+b+B+
         ZyOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id l15si231301qke.1.2021.04.12.13.49.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 13:49:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: IIL3cwgZgk+RWfgDOpbUPwdq2W8BUWJZU8Z5NPSsXRLEZsstpcsxn0QjBsDZLHq/h1jW9ORubX
 SVgNwzV9njOQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="214747643"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="gz'50?scan'50,208,50";a="214747643"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 13:49:47 -0700
IronPort-SDR: tsHxG/+TgK+oEO1FD4q2sDw4/sCUY7+0QqJkIgMrNJkrKfZjSyV52eNCEFNoOuMIFk9acNqscJ
 NrRKSVVNhV9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="gz'50?scan'50,208,50";a="398512372"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 12 Apr 2021 13:49:45 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lW3VA-0000e6-KZ; Mon, 12 Apr 2021 20:49:44 +0000
Date: Tue, 13 Apr 2021 04:49:21 +0800
From: kernel test robot <lkp@intel.com>
To: Heiko Carstens <hca@linux.ibm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-s390@vger.kernel.org
Subject: [s390:features 40/44] drivers/gpu/drm/drm_lock.c:75:10: error:
 passing 'typeof (lock)' (aka 'volatile unsigned int *') to parameter of type
 'void *' discards qualifiers
Message-ID: <202104130413.aSKxs9hR-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git features
head:   9d42a4d3e27db3cabad82483ed876d4c8b8bed65
commit: 000174233b91340ca52a9eca905d029a9a2aefd9 [40/44] s390/atomic,cmpxchg: switch to use atomic-instrumented.h
config: s390-randconfig-r006-20210412 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git/commit/?id=000174233b91340ca52a9eca905d029a9a2aefd9
        git remote add s390 https://git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git
        git fetch --no-tags s390 features
        git checkout 000174233b91340ca52a9eca905d029a9a2aefd9
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/gpu/drm/drm_lock.c:41:
   In file included from include/drm/drm_file.h:39:
   In file included from include/drm/drm_prime.h:37:
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
   In file included from drivers/gpu/drm/drm_lock.c:41:
   In file included from include/drm/drm_file.h:39:
   In file included from include/drm/drm_prime.h:37:
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
   In file included from drivers/gpu/drm/drm_lock.c:41:
   In file included from include/drm/drm_file.h:39:
   In file included from include/drm/drm_prime.h:37:
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
>> drivers/gpu/drm/drm_lock.c:75:10: error: passing 'typeof (lock)' (aka 'volatile unsigned int *') to parameter of type 'void *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
                   prev = cmpxchg(lock, old, new);
                          ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/atomic-instrumented.h:1685:2: note: expanded from macro 'cmpxchg'
           arch_cmpxchg(__ai_ptr, __VA_ARGS__); \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/s390/include/asm/cmpxchg.h:162:13: note: expanded from macro 'arch_cmpxchg'
                   __cmpxchg((ptr), (unsigned long)(o),                    \
                             ^~~~~
   arch/s390/include/asm/cmpxchg.h:87:45: note: passing argument to parameter 'ptr' here
   static inline unsigned long __cmpxchg(void *ptr, unsigned long old,
                                               ^
   drivers/gpu/drm/drm_lock.c:118:10: error: passing 'typeof (lock)' (aka 'volatile unsigned int *') to parameter of type 'void *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
                   prev = cmpxchg(lock, old, new);
                          ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/atomic-instrumented.h:1685:2: note: expanded from macro 'cmpxchg'
           arch_cmpxchg(__ai_ptr, __VA_ARGS__); \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/s390/include/asm/cmpxchg.h:162:13: note: expanded from macro 'arch_cmpxchg'
                   __cmpxchg((ptr), (unsigned long)(o),                    \
                             ^~~~~
   arch/s390/include/asm/cmpxchg.h:87:45: note: passing argument to parameter 'ptr' here
   static inline unsigned long __cmpxchg(void *ptr, unsigned long old,
                                               ^
   drivers/gpu/drm/drm_lock.c:141:10: error: passing 'typeof (lock)' (aka 'volatile unsigned int *') to parameter of type 'void *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
                   prev = cmpxchg(lock, old, new);
                          ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/atomic-instrumented.h:1685:2: note: expanded from macro 'cmpxchg'
           arch_cmpxchg(__ai_ptr, __VA_ARGS__); \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/s390/include/asm/cmpxchg.h:162:13: note: expanded from macro 'arch_cmpxchg'
                   __cmpxchg((ptr), (unsigned long)(o),                    \
                             ^~~~~
   arch/s390/include/asm/cmpxchg.h:87:45: note: passing argument to parameter 'ptr' here
   static inline unsigned long __cmpxchg(void *ptr, unsigned long old,
                                               ^
   drivers/gpu/drm/drm_lock.c:319:12: error: passing 'typeof (lock)' (aka 'volatile unsigned int *') to parameter of type 'void *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
                                   prev = cmpxchg(lock, old, DRM_KERNEL_CONTEXT);
                                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/atomic-instrumented.h:1685:2: note: expanded from macro 'cmpxchg'
           arch_cmpxchg(__ai_ptr, __VA_ARGS__); \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/s390/include/asm/cmpxchg.h:162:13: note: expanded from macro 'arch_cmpxchg'
                   __cmpxchg((ptr), (unsigned long)(o),                    \
                             ^~~~~
   arch/s390/include/asm/cmpxchg.h:87:45: note: passing argument to parameter 'ptr' here
   static inline unsigned long __cmpxchg(void *ptr, unsigned long old,
                                               ^
   12 warnings and 4 errors generated.


vim +75 drivers/gpu/drm/drm_lock.c

4ac5ec40ec7002 Daniel Vetter     2010-08-23  48  
bd50d4a2168370 Benjamin Gaignard 2020-03-06  49  /*
1a75a222f5ca10 Daniel Vetter     2016-06-14  50   * Take the heavyweight lock.
1a75a222f5ca10 Daniel Vetter     2016-06-14  51   *
1a75a222f5ca10 Daniel Vetter     2016-06-14  52   * \param lock lock pointer.
1a75a222f5ca10 Daniel Vetter     2016-06-14  53   * \param context locking context.
1a75a222f5ca10 Daniel Vetter     2016-06-14  54   * \return one if the lock is held, or zero otherwise.
1a75a222f5ca10 Daniel Vetter     2016-06-14  55   *
1a75a222f5ca10 Daniel Vetter     2016-06-14  56   * Attempt to mark the lock as held by the given context, via the \p cmpxchg instruction.
1a75a222f5ca10 Daniel Vetter     2016-06-14  57   */
1a75a222f5ca10 Daniel Vetter     2016-06-14  58  static
1a75a222f5ca10 Daniel Vetter     2016-06-14  59  int drm_lock_take(struct drm_lock_data *lock_data,
1a75a222f5ca10 Daniel Vetter     2016-06-14  60  		  unsigned int context)
1a75a222f5ca10 Daniel Vetter     2016-06-14  61  {
1a75a222f5ca10 Daniel Vetter     2016-06-14  62  	unsigned int old, new, prev;
1a75a222f5ca10 Daniel Vetter     2016-06-14  63  	volatile unsigned int *lock = &lock_data->hw_lock->lock;
1a75a222f5ca10 Daniel Vetter     2016-06-14  64  
1a75a222f5ca10 Daniel Vetter     2016-06-14  65  	spin_lock_bh(&lock_data->spinlock);
1a75a222f5ca10 Daniel Vetter     2016-06-14  66  	do {
1a75a222f5ca10 Daniel Vetter     2016-06-14  67  		old = *lock;
1a75a222f5ca10 Daniel Vetter     2016-06-14  68  		if (old & _DRM_LOCK_HELD)
1a75a222f5ca10 Daniel Vetter     2016-06-14  69  			new = old | _DRM_LOCK_CONT;
1a75a222f5ca10 Daniel Vetter     2016-06-14  70  		else {
1a75a222f5ca10 Daniel Vetter     2016-06-14  71  			new = context | _DRM_LOCK_HELD |
1a75a222f5ca10 Daniel Vetter     2016-06-14  72  				((lock_data->user_waiters + lock_data->kernel_waiters > 1) ?
1a75a222f5ca10 Daniel Vetter     2016-06-14  73  				 _DRM_LOCK_CONT : 0);
1a75a222f5ca10 Daniel Vetter     2016-06-14  74  		}
1a75a222f5ca10 Daniel Vetter     2016-06-14 @75  		prev = cmpxchg(lock, old, new);
1a75a222f5ca10 Daniel Vetter     2016-06-14  76  	} while (prev != old);
1a75a222f5ca10 Daniel Vetter     2016-06-14  77  	spin_unlock_bh(&lock_data->spinlock);
1a75a222f5ca10 Daniel Vetter     2016-06-14  78  
1a75a222f5ca10 Daniel Vetter     2016-06-14  79  	if (_DRM_LOCKING_CONTEXT(old) == context) {
1a75a222f5ca10 Daniel Vetter     2016-06-14  80  		if (old & _DRM_LOCK_HELD) {
1a75a222f5ca10 Daniel Vetter     2016-06-14  81  			if (context != DRM_KERNEL_CONTEXT) {
1a75a222f5ca10 Daniel Vetter     2016-06-14  82  				DRM_ERROR("%d holds heavyweight lock\n",
1a75a222f5ca10 Daniel Vetter     2016-06-14  83  					  context);
1a75a222f5ca10 Daniel Vetter     2016-06-14  84  			}
1a75a222f5ca10 Daniel Vetter     2016-06-14  85  			return 0;
1a75a222f5ca10 Daniel Vetter     2016-06-14  86  		}
1a75a222f5ca10 Daniel Vetter     2016-06-14  87  	}
1a75a222f5ca10 Daniel Vetter     2016-06-14  88  
1a75a222f5ca10 Daniel Vetter     2016-06-14  89  	if ((_DRM_LOCKING_CONTEXT(new)) == context && (new & _DRM_LOCK_HELD)) {
1a75a222f5ca10 Daniel Vetter     2016-06-14  90  		/* Have lock */
1a75a222f5ca10 Daniel Vetter     2016-06-14  91  		return 1;
1a75a222f5ca10 Daniel Vetter     2016-06-14  92  	}
1a75a222f5ca10 Daniel Vetter     2016-06-14  93  	return 0;
1a75a222f5ca10 Daniel Vetter     2016-06-14  94  }
1a75a222f5ca10 Daniel Vetter     2016-06-14  95  

:::::: The code at line 75 was first introduced by commit
:::::: 1a75a222f5ca1063249b5c92972d32dcc3c8966e drm: Hide hw.lock cleanup in filp->release better

:::::: TO: Daniel Vetter <daniel.vetter@ffwll.ch>
:::::: CC: Daniel Vetter <daniel.vetter@ffwll.ch>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104130413.aSKxs9hR-lkp%40intel.com.

--sdtB3X0nJg68CQEu
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
z6MyES0zJRrp8GWOt8L/AR+qbhwP5wEA

--sdtB3X0nJg68CQEu--
