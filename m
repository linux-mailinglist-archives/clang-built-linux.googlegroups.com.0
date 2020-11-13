Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBXWEXH6QKGQEFYCOSZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7582B192E
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 11:39:27 +0100 (CET)
Received: by mail-vs1-xe3f.google.com with SMTP id n16sf2648139vsr.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 02:39:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605263967; cv=pass;
        d=google.com; s=arc-20160816;
        b=C+mLJkasX7XQDiXM2RQUaVFhjxSvl3qd3TumE0Dnhi5MDaommuRGCrH5WZKhvbv6OQ
         UkVNLL56qLEL7qLS+Xh/Rmnd2eTior5cQP5a/2m0abp/422Fc/8MWJPhxBsNgarZh7UU
         0tHYNGrBnGgQEvOwetyBxvHzbSfSyTYX6oDrHuE4EOMxym5ZYemJuXs7OVNMrBaFN7dy
         w6d3wZOWM/e1r6q0WsZUfWqclMyW3NdI4Xy1IVQlqKnFpZ7fws+ZBRxonDbxRV6Xusyj
         MdJExP8yJ1wpmHWOvT9r2cKngoIHnsaquCvjHdLzyEBWwh/IHfsjMa46bmvIDjTNGfFW
         q4ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=LimVVdGiy1XHGl/p7kQDQi0iY6sij1TVhrt9nMoWWlU=;
        b=zm8t48tQxY9W1W97IvjBo3vm4NNShHGITG1dx5S4cYteD4EL4A03brCxe3IcK4g5NB
         QTkTlKwcQyqPn7aTFd9QlKpmcXfV79US4PShc7qsT9wG+CLK60jH4D4fq4lL6/1OjpJ9
         Lhk1nWmkLGcP806zkomQV+WhMMR+aEztELycghGhvTop99m0kBound7xQ7c6gzUHMMbI
         yTIeUQblCr0rexUGv8WkVnVgwEXpI+chuZkkwYPN3M+Tvj+0cDnVRvn28EsBBUMnyHZe
         FgqRBVFIiYin9SJ9gol3DxRkr5lPavGBK0y4Mp28MzBc1N+mlg1WmizRos1QSsnVHE25
         /huQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LimVVdGiy1XHGl/p7kQDQi0iY6sij1TVhrt9nMoWWlU=;
        b=GfwX/su/dZ3in38PUuDDbKsmM/bKfnFGlFt9Hp5t5w8yQeoeqDN5PA8PN4domBpDiX
         rTvqp1htiuBRwfs5q6LyKgtjQztXigYlb1sh4aT7avJoSGRVGxpnbfim4bQF2kBB591G
         t4T9pSi3V6XmpmaD2fMegHYCJ3p4JwNpVvsCWS8jOrWEkGkUBQMQc0D+ZUsWY7JPHve8
         FOizdh0VbV1T97AvF7jslnsDEfk4YpfqL2VhVXvFLIXkJ1XH/WcgdopnbjS2IHWgU4yv
         aGpcvem7L9lW/6voh4dz9AbMTZlpQXSh7GH5C1qfao79KnoRy+f1iRQn9myagL9NsHIy
         Un1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LimVVdGiy1XHGl/p7kQDQi0iY6sij1TVhrt9nMoWWlU=;
        b=ZPdPIEvE7q81ogh7fuJy7HbA409awaaEXYAbAnc6h41J6aHFcVQZyYj/hOuFYQ3o5S
         UnC+ChxN8dZ2V+fQfV1RPm+SMFTFWvqMgqlR9fp4zRwIP5KnVYxXEoLCYPVtHW8s+R5V
         sFri+fVuPerG1FH62/7frCycdHua052C5tD52OCBSX4b7nJm5peWZS+brsCcEToooAwp
         FBBGSdlYUmOQ1a/iRi/I7lGOw2U9oJk2Dsihw5LWV09RGiQ0SLHWWwffFSFg6q/xD8fG
         bwV8kl2xjTc63OyUbdaDlSspnGWy91wgL+l6y5wfC6S3ctGQfsr4T+AZV1O3Bcr41WkF
         V4pA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cM3iW++FATAly2WBLWMqJWKi00cd6wzbywr18sBfO6SYacSoP
	pHknGOW6P+PNFqwab+yD7t0=
X-Google-Smtp-Source: ABdhPJy6Bv+1VylPIQmYdJEpJD0p7ZE9ZkPEFnWku4CSNRTeENhnNPE+SZUUlctE1DIGqGJN99o3hQ==
X-Received: by 2002:ab0:2606:: with SMTP id c6mr359595uao.62.1605263966830;
        Fri, 13 Nov 2020 02:39:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e985:: with SMTP id b5ls813431vso.11.gmail; Fri, 13 Nov
 2020 02:39:26 -0800 (PST)
X-Received: by 2002:a67:2084:: with SMTP id g126mr649609vsg.42.1605263966227;
        Fri, 13 Nov 2020 02:39:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605263966; cv=none;
        d=google.com; s=arc-20160816;
        b=j4nKSVCUty0gkCyqkbeMl8l9QNMRNFquKxCvyhYFsfoT71FxVU+Kwxo2ktdSLpxsYD
         toC8FmJgPckVlU0uUsEcyFzuloFUJ7FHTZvDS5pCj1mr8O8hiZXJr8HeqXG4x/rDvW+D
         xgqqY4RbsdVTshKHAeOHT8YNefF7j27uNFQ8dS67dnbZ5EBertb8Hnc1x5iSK2pfrWjO
         5vXG44KHBY4eb/0bqdBbiIJIcnNAOo2VtSe4X+NDmcKYhH0NZ1sVjCLWgu87QYHk6Las
         Egcu/YGyBT/6WXoxDNRSDqMuSzx/pr2mjYOrsEBKYBSn4Hu3VqJdNYCSRFcKcBh+bS7u
         6UtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=X45Jo7YgU3/FZ+jB4A0PsQpRPdmwX6r2LlG1PyNVTps=;
        b=TZ/tjSFGhrShJm/h4JGL2Mpnqs4RYwvy4JuUcveF2Q2ROqMar2X37u8NOyeofia1Cr
         Sh2ZYnWucn9cDirYeQ5FC6122mmfs0Hg87vPeADjrHsi3Y10DkXYqCvNKpG54sXjbfS9
         aN6cxcW1F9g+lT450PY72Smbq4vEYmTKxARPs6c3CnoxcePNKOZ7vZPEoEdmfY4bttfT
         6voNLAIgc6yvnILpkapuYtpYd+mMl92Cv6x/iA3jMi/xDSNinOWl4rvs+3nJoXhRhAjI
         n0x8Wop8/AXvSr1GVqHtotWGN60UTuLtpg+eA6+eCDET9rsH52/vTHk6pqKWDj6vjuwW
         V+Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id c124si580542vkb.4.2020.11.13.02.39.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 02:39:26 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: ukSsMyO9wb1g/udTGfmcvadW0SwvpGtc6P1nKKkaRVqDK3J13Hws2yXjczswFpwJv7lPqoBU5B
 9LRQgXG7ZlxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="149724671"
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; 
   d="gz'50?scan'50,208,50";a="149724671"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2020 02:39:23 -0800
IronPort-SDR: 66/mVE5tG4vK9rQHefQzxUhYYHiKjE7+lxp4vIckDE+p8Tq8qdDuu173ujkxEYweQOQioo4gen
 dTYb5djTSiCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; 
   d="gz'50?scan'50,208,50";a="328837529"
Received: from lkp-server02.sh.intel.com (HELO 697932c29306) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 13 Nov 2020 02:39:20 -0800
Received: from kbuild by 697932c29306 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kdWUB-0000EF-QY; Fri, 13 Nov 2020 10:39:19 +0000
Date: Fri, 13 Nov 2020 18:39:07 +0800
From: kernel test robot <lkp@intel.com>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Jakub Kicinski <kuba@kernel.org>
Subject: [netdev-net-next:master 181/184] include/linux/skbuff.h:4622:26:
 error: implicit declaration of function 'skb_ext_add'
Message-ID: <202011131803.1zEaAoa9-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="liOOAslEiF7prFVr"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--liOOAslEiF7prFVr
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git master
head:   e1d9d7b91302593d1951fcb12feddda6fb58a3c0
commit: 85ce50d337d10a6fd328fa70b0a15543bf5c0f64 [181/184] net: kcov: don't select SKB_EXTENSIONS when there is no NET
config: s390-randconfig-r036-20201113 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9e0c35655b6e8186baef8840b26ba4090503b554)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=85ce50d337d10a6fd328fa70b0a15543bf5c0f64
        git remote add netdev-net-next https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git
        git fetch --no-tags netdev-net-next master
        git checkout 85ce50d337d10a6fd328fa70b0a15543bf5c0f64
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

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
   In file included from arch/s390/kernel/asm-offsets.c:11:
   In file included from include/linux/kvm_host.h:32:
   In file included from include/linux/kvm_para.h:5:
   In file included from include/uapi/linux/kvm_para.h:36:
   In file included from arch/s390/include/asm/kvm_para.h:25:
   In file included from arch/s390/include/asm/diag.h:12:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
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
   In file included from arch/s390/kernel/asm-offsets.c:11:
   In file included from include/linux/kvm_host.h:32:
   In file included from include/linux/kvm_para.h:5:
   In file included from include/uapi/linux/kvm_para.h:36:
   In file included from arch/s390/include/asm/kvm_para.h:25:
   In file included from arch/s390/include/asm/diag.h:12:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
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
   In file included from arch/s390/kernel/asm-offsets.c:11:
   In file included from include/linux/kvm_host.h:32:
   In file included from include/linux/kvm_para.h:5:
   In file included from include/uapi/linux/kvm_para.h:36:
   In file included from arch/s390/include/asm/kvm_para.h:25:
   In file included from arch/s390/include/asm/diag.h:12:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
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
   In file included from arch/s390/kernel/asm-offsets.c:11:
   In file included from include/linux/kvm_host.h:32:
   In file included from include/linux/kvm_para.h:5:
   In file included from include/uapi/linux/kvm_para.h:36:
   In file included from arch/s390/include/asm/kvm_para.h:25:
   In file included from arch/s390/include/asm/diag.h:12:
   In file included from include/linux/if_ether.h:19:
>> include/linux/skbuff.h:4622:26: error: implicit declaration of function 'skb_ext_add' [-Werror,-Wimplicit-function-declaration]
                   u64 *kcov_handle_ptr = skb_ext_add(skb, SKB_EXT_KCOV_HANDLE);
                                          ^
>> include/linux/skbuff.h:4622:43: error: use of undeclared identifier 'SKB_EXT_KCOV_HANDLE'
                   u64 *kcov_handle_ptr = skb_ext_add(skb, SKB_EXT_KCOV_HANDLE);
                                                           ^
>> include/linux/skbuff.h:4631:21: error: implicit declaration of function 'skb_ext_find' [-Werror,-Wimplicit-function-declaration]
           u64 *kcov_handle = skb_ext_find(skb, SKB_EXT_KCOV_HANDLE);
                              ^
   include/linux/skbuff.h:4631:39: error: use of undeclared identifier 'SKB_EXT_KCOV_HANDLE'
           u64 *kcov_handle = skb_ext_find(skb, SKB_EXT_KCOV_HANDLE);
                                                ^
   20 warnings and 4 errors generated.
   make[2]: *** [scripts/Makefile.build:117: arch/s390/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1200: prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.

vim +/skb_ext_add +4622 include/linux/skbuff.h

2c64605b590edad Pablo Neira Ayuso 2020-03-25  4610  
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4611  #ifdef CONFIG_KCOV
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4612  static inline void skb_set_kcov_handle(struct sk_buff *skb,
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4613  				       const u64 kcov_handle)
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4614  {
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4615  	/* Do not allocate skb extensions only to set kcov_handle to zero
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4616  	 * (as it is zero by default). However, if the extensions are
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4617  	 * already allocated, update kcov_handle anyway since
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4618  	 * skb_set_kcov_handle can be called to zero a previously set
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4619  	 * value.
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4620  	 */
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4621  	if (skb_has_extensions(skb) || kcov_handle) {
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29 @4622  		u64 *kcov_handle_ptr = skb_ext_add(skb, SKB_EXT_KCOV_HANDLE);
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4623  
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4624  		if (kcov_handle_ptr)
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4625  			*kcov_handle_ptr = kcov_handle;
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4626  	}
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4627  }
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4628  
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4629  static inline u64 skb_get_kcov_handle(struct sk_buff *skb)
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4630  {
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29 @4631  	u64 *kcov_handle = skb_ext_find(skb, SKB_EXT_KCOV_HANDLE);
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4632  
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4633  	return kcov_handle ? *kcov_handle : 0;
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4634  }
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4635  #else
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4636  static inline void skb_set_kcov_handle(struct sk_buff *skb,
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4637  				       const u64 kcov_handle) { }
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4638  static inline u64 skb_get_kcov_handle(struct sk_buff *skb) { return 0; }
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4639  #endif /* CONFIG_KCOV */
6370cc3bbd8a0f9 Aleksandr Nogikh  2020-10-29  4640  

:::::: The code at line 4622 was first introduced by commit
:::::: 6370cc3bbd8a0f9bf975b013781243ab147876c6 net: add kcov handle to skb extensions

:::::: TO: Aleksandr Nogikh <nogikh@google.com>
:::::: CC: Jakub Kicinski <kuba@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011131803.1zEaAoa9-lkp%40intel.com.

--liOOAslEiF7prFVr
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AIl58x93pAEA

--liOOAslEiF7prFVr--
