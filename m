Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZWD26BQMGQEPTRDKCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C6235E641
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 20:24:40 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id a25-20020a0568080999b029013da9293a98sf5193212oic.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 11:24:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618338279; cv=pass;
        d=google.com; s=arc-20160816;
        b=VlggwRd6sk9Z0xDNvzI/isCvVbu0nqmfyrea3yxgT+uTzmL7bTc1DTIHt4M1ZtTEqM
         6XO+fHn/ZMYaT/JG9SNt5nyKtYW73ZV0rT5JujNygUSOwqwNaSGf0zgWP38/+ixUN/mb
         lc/KuHLC8lNdoqBhY91SLVkIpBxchnk7dhN9ipmKMUXvPWKIHwFyTvVMqodu4LWztcVV
         O7n6p+sSjeI1BR/Lgda7OeggKGVw922MKEOZzFgzW1YXgCg3ObilQZnHsSB76+aZkR//
         O/1eYgNxCZk4aVnzjnwWwth9QPJm+kanllFf47vcv5jaJkHf7XoZLNeavWQg/U8rDSkA
         gC1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=zd6wR1kVxRBOymv4AT9S00go1mGElkRPu60dMkiZMAw=;
        b=rH+ZBgI3b/oHq3nkU3ud+eyJnkcOcnWepDcEHiLfwQxHeDtLj6pAveUyRX0+kh5z4F
         W421EXeR8KewFL+FUtFaXcNpSkMViY3ilOJEdElx22KZ4w1yVNCUDULhRp+OILhtoSzh
         KLxlu0V0YWHVxVnjB6wVGQTAkWcI3pwNuF94S4EiKs45OqzNibFm+SJq4HuNIwvMTXwp
         IqBxY4MxNoRmYIbexfe+OiRAKVcNhCiQzTLN2nqaMQ9V0yhrQa7GwHo25acS8siXfLhU
         Wk7mSxCRpfqCtq+Pbk7dmK2CZUEBXYT0a7Abqpeu3vCQtK9EEuCIbZMAJBGTi5sxQuNC
         cD6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zd6wR1kVxRBOymv4AT9S00go1mGElkRPu60dMkiZMAw=;
        b=aTCM5nKP9sosZhPRXqAmuzKYLNV6lCWEl1gI8ifMrcZJf4d4TlRFOwYoLu9o4z3fco
         UADA/qBipMTsNsO/Z+iFPpCRJmdh7vQgQXIPgmLeqBSuKc18dvgaZGSmi5lZHNbsIMfi
         M2Ahh+BFOr3/kSAI7nAFolTIbGY2dYBZjRLIymoGWiDxFIkWFncocZwVXegkWaY76LHC
         d/jfj5q5AZSdySAbOVO/1sg/Hv18tMNCpNcwXfYHU1LBWqr8y8QZRp1zQ7uLIw733yVP
         P+d4akDASfkfO6t5uWzrjDMs3FATmJZhNxC2svfaZsp4gui07s+tFXDut9Rv+j85c7f1
         hXcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zd6wR1kVxRBOymv4AT9S00go1mGElkRPu60dMkiZMAw=;
        b=Wg366kwv1FSLWDX22tyN4WnvhCR0J6uAJXhDmqTjdR7IKCQegsfL+EMT01fXcSyLCb
         bmzvuZUzYoyQmWfhxZBbfB8mqkfv1Ij19ejhNro24/plfAy1k/kkWv8JUDDZ2UkkfSGR
         zmc8VLwIwBV/oJD5b2rVIZVvUmCNdJwD8zQEt23aCFUiWPCVEZA/xgv7GS/B2PZl8ZK4
         ZbxPc9ZjkDx6SQaKaMwLGgcL8ARU5ln5kcLwtrV3MbCuJTwoCTrIHjjXuyNbt7Z5UuzQ
         SUTTyY1CM7ccnZKRBYa0jSMo/vsd/IO3PfQ/M0DtCNL8pWiCwzhfqIP52sMJYo+o5gMj
         aAag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53183l8iMNeIHDzG76puacFh7TAUv5pbxl6xJrjShVI8rnSa1mrv
	/zR9uGbdbRbd3rSL8s3B/lU=
X-Google-Smtp-Source: ABdhPJwNhvbTu5tOcnrtfHlNQjkTZ3uPeCz/QDt8BNibESRw/o5oS/YPK01FlDkw17oNCHFOoJoABA==
X-Received: by 2002:a4a:e615:: with SMTP id f21mr5786939oot.41.1618338278918;
        Tue, 13 Apr 2021 11:24:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1146:: with SMTP id u6ls4561697oiu.9.gmail; Tue, 13
 Apr 2021 11:24:38 -0700 (PDT)
X-Received: by 2002:a54:468b:: with SMTP id k11mr931028oic.85.1618338278322;
        Tue, 13 Apr 2021 11:24:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618338278; cv=none;
        d=google.com; s=arc-20160816;
        b=hGAopzZQ9sg0fko45v7a9JyqvIINDWyUa9I1qGOB9WhWC2FgQcViqIZ6D8+Lvs4mhq
         XspuIPetQ7ML8koMSC9VOM2hptuyjAvjsPDuJ5/b3D0SDaThZnC+wk9nIignER7fWzNO
         Q37sZWwKrkim+eF9s9kuttXzjU92hXErPIxt7uhct13tsNEN2xJc2J2yUWZQUBrmC3q7
         U0eimpZuiXQ2JaXnMoHzjjai0efISPR4s16vNa1waOoWtEEx+s4zv7qFCPvwvJxIZRUl
         mtuIZxUgetkmeigmr0hZHrOD6XCB10efEyK78nIAtwfctzJpXy7VuuHq6WCwW1zdRaq8
         NW7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=P1EC50+dxZYlJ48sXVcOn6Cxdk/GQrOs49JwsnD6U8A=;
        b=Gpjjha6GHk18fOFIRl4aSPGtMQp/CAkPvSiQEue16QEbmNf8605FFBFmyDCyxDmT2S
         JS+N5EZba59gqNEH1rRlb9bMVzMtFoKR7Z14GcNrwZdIx/+UC+JlQJ3wicTyKK2tSXNE
         6/vFqoos6Iu2/AQ70omfsjOWhxCpIBIyVWGXz3rcXhPJu4QzrHbsWDqYn0xtw0V8X5ih
         AkyYVCuK97pjaw+0gv+b8CErmDgSFCxiPFb4Gihs7Cpj4DV5QNWz27mUfwkhYx/Ul7tq
         t6KzQGZlGtJETPcyLFoEWX1CViqu05rAJeGT/6dJsZwrQ6uKqqo2W7zy+tk3Yct4yir7
         t29w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id b11si242358ots.2.2021.04.13.11.24.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 11:24:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: aJ1VU+K4YWGdlMlG9yA5K1j0EKSCYYwzJRT14Vf7YwGY+vI8c+EKKAcLhMaiNIcGobrHvw0Wvc
 fptKuLEOpNzw==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="279784266"
X-IronPort-AV: E=Sophos;i="5.82,220,1613462400"; 
   d="gz'50?scan'50,208,50";a="279784266"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 11:24:31 -0700
IronPort-SDR: 4G0/6IquR/3/19rlqZNSX1JYZpZC26zsG/7rK/ErV5oVqVEi+/xTqpP+q2bDZZ7Qnrt1sduEOg
 bQXkzh8wD20A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,220,1613462400"; 
   d="gz'50?scan'50,208,50";a="382054727"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 13 Apr 2021 11:24:22 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lWNi1-0001CQ-Rq; Tue, 13 Apr 2021 18:24:21 +0000
Date: Wed, 14 Apr 2021 02:23:32 +0800
From: kernel test robot <lkp@intel.com>
To: Kees Cook <keescook@chromium.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: net/wireless/reg.c:2425:13: warning: stack frame size of 1152 bytes
 in function 'wiphy_update_regulatory'
Message-ID: <202104140219.XrX4scFn-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YiEDa0DAkWCtVeE4"
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


--YiEDa0DAkWCtVeE4
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   89698becf06d341a700913c3d89ce2a914af69a2
commit: c637693b20da8706b7f48d96882c9c80ae935151 ubsan: remove UBSAN_MISC in favor of individual options
date:   4 months ago
config: powerpc64-randconfig-r014-20210413 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c637693b20da8706b7f48d96882c9c80ae935151
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout c637693b20da8706b7f48d96882c9c80ae935151
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:16:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/wireless/reg.c:60:
   In file included from include/net/cfg80211.h:13:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:18:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/wireless/reg.c:60:
   In file included from include/net/cfg80211.h:13:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:20:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/wireless/reg.c:60:
   In file included from include/net/cfg80211.h:13:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:22:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/wireless/reg.c:60:
   In file included from include/net/cfg80211.h:13:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:24:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> net/wireless/reg.c:2425:13: warning: stack frame size of 1152 bytes in function 'wiphy_update_regulatory' [-Wframe-larger-than=]
   static void wiphy_update_regulatory(struct wiphy *wiphy,
               ^
   7 warnings generated.
--
   In file included from net/bluetooth/rfcomm/core.c:33:
   In file included from include/net/bluetooth/bluetooth.h:29:
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
   <scratch space>:216:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/bluetooth/rfcomm/core.c:33:
   In file included from include/net/bluetooth/bluetooth.h:29:
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
   <scratch space>:218:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/bluetooth/rfcomm/core.c:33:
   In file included from include/net/bluetooth/bluetooth.h:29:
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
   <scratch space>:220:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/bluetooth/rfcomm/core.c:33:
   In file included from include/net/bluetooth/bluetooth.h:29:
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
   <scratch space>:222:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/bluetooth/rfcomm/core.c:33:
   In file included from include/net/bluetooth/bluetooth.h:29:
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
   <scratch space>:224:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> net/bluetooth/rfcomm/core.c:1975:13: warning: stack frame size of 1504 bytes in function 'rfcomm_process_sessions' [-Wframe-larger-than=]
   static void rfcomm_process_sessions(void)
               ^
   7 warnings generated.


vim +/wiphy_update_regulatory +2425 net/wireless/reg.c

ad932f046fbe98 Arik Nemtsov      2014-11-27  2424  
eac03e381957a0 Sven Neumann      2011-08-30 @2425  static void wiphy_update_regulatory(struct wiphy *wiphy,
7db90f4a25bd41 Luis R. Rodriguez 2009-03-09  2426  				    enum nl80211_reg_initiator initiator)
b2e1b30290539b Luis R. Rodriguez 2008-09-09  2427  {
57fbcce37be7c1 Johannes Berg     2016-04-12  2428  	enum nl80211_band band;
c492db370c17c4 Johannes Berg     2012-12-06  2429  	struct regulatory_request *lr = get_last_request();
eac03e381957a0 Sven Neumann      2011-08-30  2430  
0e3802dbfe53bc Luis R. Rodriguez 2013-11-05  2431  	if (ignore_reg_update(wiphy, initiator)) {
0e3802dbfe53bc Luis R. Rodriguez 2013-11-05  2432  		/*
0e3802dbfe53bc Luis R. Rodriguez 2013-11-05  2433  		 * Regulatory updates set by CORE are ignored for custom
0e3802dbfe53bc Luis R. Rodriguez 2013-11-05  2434  		 * regulatory cards. Let us notify the changes to the driver,
0e3802dbfe53bc Luis R. Rodriguez 2013-11-05  2435  		 * as some drivers used this to restore its orig_* reg domain.
0e3802dbfe53bc Luis R. Rodriguez 2013-11-05  2436  		 */
0e3802dbfe53bc Luis R. Rodriguez 2013-11-05  2437  		if (initiator == NL80211_REGDOM_SET_BY_CORE &&
e31f6456c01c76 Amar Singhal      2018-07-20  2438  		    wiphy->regulatory_flags & REGULATORY_CUSTOM_REG &&
e31f6456c01c76 Amar Singhal      2018-07-20  2439  		    !(wiphy->regulatory_flags &
e31f6456c01c76 Amar Singhal      2018-07-20  2440  		      REGULATORY_WIPHY_SELF_MANAGED))
0e3802dbfe53bc Luis R. Rodriguez 2013-11-05  2441  			reg_call_notifier(wiphy, lr);
a203c2aa4cefcc Sven Neumann      2011-07-12  2442  		return;
0e3802dbfe53bc Luis R. Rodriguez 2013-11-05  2443  	}
a203c2aa4cefcc Sven Neumann      2011-07-12  2444  
c492db370c17c4 Johannes Berg     2012-12-06  2445  	lr->dfs_region = get_cfg80211_regdom()->dfs_region;
b68e6b3b33b208 Luis R. Rodriguez 2011-10-11  2446  
57fbcce37be7c1 Johannes Berg     2016-04-12  2447  	for (band = 0; band < NUM_NL80211_BANDS; band++)
fdc9d7b2863ce6 Johannes Berg     2012-12-03  2448  		handle_band(wiphy, initiator, wiphy->bands[band]);
a203c2aa4cefcc Sven Neumann      2011-07-12  2449  
e38f8a7a8bebba Luis R. Rodriguez 2009-02-21  2450  	reg_process_beacons(wiphy);
038659e7c6b385 Luis R. Rodriguez 2009-05-02  2451  	reg_process_ht_flags(wiphy);
0e3802dbfe53bc Luis R. Rodriguez 2013-11-05  2452  	reg_call_notifier(wiphy, lr);
b2e1b30290539b Luis R. Rodriguez 2008-09-09  2453  }
b2e1b30290539b Luis R. Rodriguez 2008-09-09  2454  

:::::: The code at line 2425 was first introduced by commit
:::::: eac03e381957a05f3842ceb8de987a1025966ecf cfg80211: hold reg_mutex when updating regulatory

:::::: TO: Sven Neumann <s.neumann@raumfeld.com>
:::::: CC: John W. Linville <linville@tuxdriver.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104140219.XrX4scFn-lkp%40intel.com.

--YiEDa0DAkWCtVeE4
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICB3UdWAAAy5jb25maWcAjFxbcxs3sn7Pr2A5L8nDJqJusc4pPWAwmCGWM4MRgCEpvaBk
mXZ0IoteinKcf3+6MTcAxMi7VZsSu3FpAI3urxs9/vmnn2fk9bD7cn94fLh/evpn9nn7vN3f
H7YfZ58en7b/O0vFrBJ6xlKuf4PGxePz6/ffv+7+3u6/Pswufpuf/HYyW273z9unGd09f3r8
/Aq9H3fPP/38ExVVxnNDqVkxqbiojGYbff3u4en++fPs23b/Au1m87PfcIxfPj8e/uf33+G/
Xx73+93+96enb1/M1/3u/7YPh9nV+9OrTxfbyw/zDw/3Vx8u59tPD5enV3/8cfLx9P2HD1cn
8/OP24fzi1/f9bPm47TXJz2xSI9p0I4rQwtS5df/OA2BWBTpSLIthu7zsxP439DcGdjnwOgL
ogxRpcmFFs5wPsOIRteNjvJ5VfCKjSwub8xayOVISRpepJqXzGiSFMwoIZ2h9EIyAguqMgH/
gSYKu8IB/TzL7Wk/zV62h9ev45ElUixZZeDEVFk7E1dcG1atDJGwZl5yfX12CqP0Iouy5jC7
ZkrPHl9mz7sDDjxskqCk6Hfp3buxn8swpNEi0tmu0ChSaOzaERdkxcySyYoVJr/jjqQup7gr
yRQHD2SQwxkpIoE/WtgJhor0SVlGmkLbjXPk7skLoXRFSnb97pfn3fP2V2dP1JrEhFC3asVr
Oi6nFopvTHnTsMbRkDXRdGECIpVCKVOyUshbQ7QmdOEupFGs4ElkTtLA3Q82kEgY3zJAIji9
YuQHVKtmoLGzl9cPL/+8HLZfRjXLWcUkp1ah1UKsx0FCjinYihX+FUhFSXjl0zIhKUs7jefu
jVY1kYphI3fR7jwpS5o8U+4O/DzbPn+c7T4FCwiltDdvdbQTPZuCgi9B/kqrCLMUyjR1SjTr
d0s/fgHbGNswzekSbiWDLXFOpBJmcYe3rxSVuzgg1jCHSDmNHGvbi6cFC0byhuD5wkim7BJl
fG+OxB2715KxstYwbsUiIvTslSiaShN5607dMd1udndo3fyu71/+mh1g3tk9yPByuD+8zO4f
Hnavz4fH58/BfkEHQygVMEWrEcMUKy51wDYV0XwVExZVxB60N1ZvnlQKAgvK4IYBX09zzOrM
scxgipUmVi8GqZAIyliQW9vB33O3zSZk9zunuGMgFB/sTcoVuofUztad3n+xnXbbJW1mKqaR
1a0BnrsA+GnYBlQvJpxqG7vdAxLuiR2juyIR1hGpSVmMriWhbBCvW7G/klFsvmz/iG44Xy7A
ogRXYPBf6J8yMFQ809fzP0b15pVegtPKWNjmrN1U9fDn9uPr03Y/+7S9P7zuty+W3Aka4Q62
PJeiqT21AcNO47InxbLrEBG+ZRhFF8wBOxnh0kQ5NFMmIVW65qlejGS4SPHmLbXmqSdsR5Zp
SaZlysAC3DEZ6ZeyFacsutiuBaj15OXpZWIye4tv/UFMgwVdDm2IdrAF+nLwM3DXPceqlali
egOOHBhjd/DA0iPArnm/K6a937DVdFkL0DK00VpIx5Tbc7BoykrqCgSOCg4xZWBhKbidNCKa
RPPjGLECLdLK4hjpnK79TUoYTYkGPK+DcWQaQDIgJEA49SxFavFU9BSAt7mb4gRwy2edT7Hu
lI4tNhEC3ID929M1akQNFp/fMcQVVl+ELElFY+4hbK3gjwA0AYBNEYhTAdYKNccwBNHocXzH
/WbDmAFKjZD1glQA/KSDiBCR6AJsMWW1tvEX2kPnWOts/NFa7PF3CR6Do0o64+VMl+h5jqBO
q1IjeVhKBlIBxIh5KYtcW1zhqLy1meFvU5WOS4Nr6YhdZLBPruYnBHBe1rjiZQ1EnsFPuF2u
oKwWRRG77TyvSJE5Sm9FdgkW2rkEtQBj7CBi7sR9XJhGetiBpCsOEneb5+wFDJIQKbl7BEts
cluqY4rxDmSg2t3A64ywxl0wHH4/Z2TZePClVT8J/RwBkGHRhLtgGw5guDqKbHDghNCleruZ
uq1of4DjXVXsJiIU9GJp6roXe6/wYpoBX48Aks5Pzo/gY5erqLf7T7v9l/vnh+2Mfds+A+Ih
4HUpYh5AsyPACQfvfPN/OUw/yqpsxzAWOrYaP9rjokmOvY0XVhMNMfkyylYFiUVtOKg/iUgm
+8OByJz1ODE6GjRCf1xwBc4G7rQo/dFd/oLIFLBbzNaqRZNlBZwZgflAQyD0B7/l3neR8cK7
H9ZoWS/nnYCfuhj61/TMczFAuDzWgnq/e9i+vOz2ELZ8/brbH9rQYuiCPmF5pszl9+8x0wUN
3l98/x7MY977rQfe+ckE/TxOZ6cnJ1HGEDTWTex6XFycnCDPs2uXHTHSAUIusOg2AoL1OtaD
QZ9wcUgrY4Fkpgq8mfamtBFohNGq/1u8ftLRKS+Z3z4goVA9+cwzH/XiFo7uPOFRVa4Z+h7F
k8LrBPSJoy7LBiJYsFsLf/KRbqzOherDsIVDh+bWT3qzljFQjkOkQsiEdd600/ljtR0MTKqE
K4Q9UzzJKuXEOZOz08RN5ngCWvNclgRweQVgjQNuLcnGCWhiDXh1PZ/HG/SG60cDee288SqJ
Ybe6vpifDsenwae0cZ1q6tpPdFoy9MgKkqtjPuZhAPYeM/p7tVgzni+0d5bBwXZuqxKgLw6P
EVncHqMXUnXpIdFA1Pd+SAu36FyUXIPVhKjBWPvm+lmcrEmT3Mwv4VoH6TW7gcfie8CoD/ob
XoKtDZ0wT5hs8aR7GdwmqoEVwulMsu0eYu5KioQpX3LANK1HA+iRT/I4oer6NM5L3+KtgDfs
ZZ23SW+bInT6gIPJ6pz0WbX66f6Avjpm8RWoYCz/5xgfiPoGAzRiKEWv5mdziC1iLpieXp0B
CuEuNrUdTs1N6uK8mr6/OD+BBYbEy544RvlI/v7d0FRFPUTPL9PYQiz37NIcTQQ9YjRYl2dX
5yfzk4nFAu/01Bukpch06ZPOwlH1WlpG3BfCvksIUmOrWSqOWzQOv2GqF90B43pj8vrMm/Gm
xA2PeUTLmR83fj/V+OLCsT9IcAVSCZ7se1f/iU8AJeVlfeY9KZSrkp1eTEAAvAk3DFwJm2qB
YBozBZ1VmBLc3aMl4NO8YcqxfKwmNZwLkQSzpP4NBqcF4eEGLBivuas1brIOf7Wxku/FRzpE
q0vW1EGXUuWBGeTvTy+uXJ8FMVS1ArPZX21EN9l++5/X7fPDP7OXh/unNgs8bgl4Q0CnN/5+
jRnQSO9+YP7xaTv7uH/8tt0DaZgOyc4TJ4zfZdK9OZFmcrEyBYG4RcZshNuqZFUzOYRmsRcm
r8mCFBrD2MHkiTWTNR0EnqV2HV6ScbqNuz/tch2Kuy2jLKWHQEpXzSsjNfWwTGiP3fBs9xXf
kF/cM8SnCIgboyq/uDPzidsALLhLkZ0DxpmPcttR4m2vz8Y33ZLoBYDXpjhK3Pgcm4SIWWG/
1WJtmgqMQMHg/DULw2pWWe/WvdsthK4L183H20j4a+X4nSXbuGhFMht4kQACt3EdZrAwaxDT
NolgN23cR2ErAAAuDbN3gjjZjqJgOSl6eGNWpGiY47rhdp8vbTAYgAQbH3bJ8sGjdw/ZQw69
RzqYIQvb2pdAhJ3mTlRMQEAqHWBJy9S+qY/5SrYB9NhFRMqhdzDIsekdLhqz0wFDLXlt0xou
9IcImTEvCws0zM5aesyfltY8ImRV3kADtXuBB5X1Bh35ecz2u7ey7kBPKFa6wiRn+kZOAlrh
K3+/5rj8dmnHM6xvjDU6hmUZB3QEoV8k8RBmWnqLYE1C8vrimAgfpfnepi4DQpEEBMmFa5bc
oYcwRFT4SgfOqX3t7+0r+fgNMz8fw/KJYQOFTbt6AK4Qa7woyt4yCLqj70lDk+uT77acxK01
abmUlKZqyiBw95nX4xW5rUiJzpWVsBLPn+NFE1mmADH4YzkcEOOhFyOsfLDjTS3FbRMdBEN1
TskPhvFbwUAnwaYMDUjB8wobnPsN7IPpsOkOZOvpvnSdMgQH7BqogidGLhg5KjrpU31ufhSJ
CFt8yipzKUNvfGhObmuiVIS5ss/VNmnKBdXOShCmNbD8u94rjTP507INBJD4UuEm2SwDEOXK
S55ZuWsfQ3p1Q/f7hz8fD9sHfJ3818ftV9i37fPh+G62jsPP01ufdJT6FW0GMOZ97Cb0/HGc
f4M7AoCVuPUhw3W9VUaxItMetj0KWe3IozlqKqtG+H5G8eE+cHaNYrYeSfMKArr1kQpwWBLm
NmCWsG5mGZ15KZmOM1oqFmJlwduN5WdNRS2GYFIKaXj1b0b907fNvNeTsX7HjriAmPY4k4AI
38LK1uWG2QOi0L9qnt32D39+A5tlQtthjgqHFGiUSLtqr3C9mCwwBH0oZnm63TekDsXH94GA
ZBOJfrJhpNuX1XZMH7yMmxHTIkzw5QDWoHObYkCfH2VjucIPmrSIxnsVtBOvCWgcZrnsfhE4
vxXEu9DzaNPbk2zrCWhZb+gixIFrRpYI7hg++hB603AZn84iLKyH6uvxIjuiGMXM3BssAxdR
+w/0HWfq9kYqbsLL81aZjW0B6tNJUTPKMy/mFGlTwH3BG4oPg/juFRnfWkC4Nba6DLUiot+2
e4+HY3vg5UGDAXzeCDvH3jZ+BWPmvuYXAFQNPpmtiXQTKQIrH3l+hEQ7OqFhGNIlVNtbiJsZ
q+pDKVp8Am6z89NyvYlshdJgErTfZjzwkDk1F45kE/NamNSvoUS46r6PxZI9o/JOvXb7ack2
U4iXzr4y9ZAtp2L1rw/3L+DT/2qB5df97tNjmDDAZt2a3lqPbdY5JEP8XP2bM4WPWD/wo0Pc
pk2Jb9euo7APvKrE2R1c1d2EWPTZ3RGIEbEsSSzdDEyCR+H+BHBEFYeLdOOnh/qKkETlUSLA
o2M6xoC55DpaWdKxjJ6fHLMxhkt9chfCtXZM+rx1oo8IpvQqP9uRUUeiKV+7covgSRF2a+ux
Idal8rYOSzLaxMv9/vCIRzfT/3zdemkMEFdz67P7KCF2RioVamzqZOUy7pHHbEowo7uO8sba
XRdsIrke8mdcjLVmDmiDfly0LxVYjuIXoTvM5W3iHkBPTrIbV0J/kgFKDxWigCa4VwpCVDV3
MFvVbbuqAXY1la+o/t0nWmCwI8t1xJpBMGcEuL2C1DUWfJI0lYgybOGWExoO4b3dIvZ9+/B6
uP/wtLXfRczsq//B2ayEV1mp0W04p1VkPuTFXxaBDK8z6Ga6ykJPzdrRFJW8jj1idvySK+qP
3sGbYden5LaLKrdfdvt/ZuX98/3n7ZcocO8SO86+AAH2MLXZJlMegd+MKG3yJkwQLTEVgGUf
/rmpugAXVWvrAQAXqOvzcTXgxAI0azGUZHjKHi4oeS6DsMciDXA1SeO+a9gX21bTnEBEOevr
D8a6cIiRrH5cn59cXQ7ZAAbKXWOFC+CYpdOVAu6qKAHl95xxtMTxrvbC0LukSd1Od2cZePdo
6uXO2noRy+306L19jOzCEOdipn3hBSL/ZVAMDSvCBdly5HjxQVNPfdoxOnjNWlhGPF84rWjj
pjoWWy0TzMexqo8RrLZW28Pfu/1f4D+P1RQ0Zcm8rAb+NiknuWdCNv4vuGBeGYulYafYo4lb
mgU/uiJUtztStYihrU0mHUXBXwAXchGQ/Go7S1JNYmpRcHobMFqVZwEVgL0ovTQjvgRBGBwr
P233fCxxrtuaP0pUvG4WGgyZLSkAh8ipZnUViwBQFF67NaEtJUejyMpmEzKMbqrKDciG9h4C
va3AWIglZ3G9bTutNJ8QqUnjE2WiOSKMQnnmGrfSkEV8O5DHVGxDeCuaH2VZoj3MUCjLiRJ9
PW/b0TpGxsV2ZF9CSdZTmj9MAacEcF84qoizwJ9jyjPCSrwS/p5Kmzh9DVOshfCs4cBcwF+x
qznwFfwZGXRxm7iB4EBfsZyo6EzVKv7dRc/HukmM99+SpqijQ0OcE3vJG/i3jCwisvIC4I/g
KsJKabvs47loGs/fj4eTxC9x7waT6ANyz+0P8aib3fA3B7Zb/2aLXhPebGSX/mYLGd/unt3v
xPW7h9cPjw/v/D0q0ws19UVIvbqcKMGYEgnuEX63iUmSkkyUc/ZtIFS2oTv44xJx6lTjNgUT
g4j1cXYGrFdKo1cIn6yodu4O/hrP2ZpXsygJxS3xrO9UO7Ug83hFx1SPia/EbPsfSfDWzK4Z
aycPDKCMFsvo9kPLUR8wa1Yy6IxWdKKDsTGhOOo3YVoBXDtAWZeAIbl3k3safprHaRnXK2xU
kOjmISuRp5fvz/15Whoc+6AkHbM41Z4A+PuN0ijLXp0d9Yh+Qms5zP1sSLkqlxPpTZ1InuaT
DwHWKSkvj9SRIj1WsD3m/cnp3EkbjzSTr/yZHVYJrAn7QmG+2CoLx6/Bj1N350nhRD+Y2YAo
tGA+mddpWgc/MdtAPBk3pxexyUntJF7qhfCANWeM4bIuzmM0UxXdH/ZbEI7lCKSItsRvoHz0
CBev5U1iMJsViFli6kicVgq/ZRKF99FBAipLbMYkRuv/nGAWno44nJTEca7TpKI/alGGcDky
T/gC7vAwEguse9dI1KxaqTXXbqWnQzS5m1nwGBAG+t96rNrzil1gOBnAFcsAK5a1G+3g6SHF
5Er41Ep535AvVMwT2cO3ooHC+/2LM1AchZUhHutGaun/QtwbXvWKqhim7z7Nwxa1dJNeDoMW
RCme+sLIDWYLbk1XQtUf1s3w3t9FoLPD9uUQJIyt6ZECEIOouBYBqOrC4KP+AcMNbZ1NJaUk
KY9/8EZJ7IMwL/2Jn46wVHoUmeHn4hGS0dr7Cht7VyxuAYG34FFPiBwVDFPEv9e0nKj/xZSt
yuw/GeLK2fkij+Y88boDZ4zoxgaXQR1LW0Ty9Lo97HaHP2cft98eH/pyNjenp21euvA3kwb7
pn3+gvJENyqJEtuSn/Ahx20QDj8wSrew3GVEBGi8Eo+RZhbnwRb1jIRGI1SnBdGLs+VEb7tL
P+ieX242Rwug5enJ2TG5JvOTY2oW2dUV/N+jlXJVBFJayaMXclIFBoedgVWQPg7sad1zuymE
igcyQ8OpL4nlZknSYOglLSMtIexmpDx661hzfOx1CxRolqMbdhLnrVOf29QdftHn5Sa71mh9
WSFqW5MrK3BIsQs5tKYM3/45besXRdWo6KD4aAQC2k8oMWXE8jT+CZrTA36womgKIsG2VBOZ
SK89vvFuLDyO1teOK2wDjjqyWY5NOZ6DypT0TwtvS7MGUxUt96T9kYRoCVZAMcmMxxuvFB2b
dQvA0sT23w7YfdnO/n7cb5+2Ly+94s6wjhlos/sZ/iNOs4fd82G/e5rdP33e7R8Pfzr/csMw
NsSYDsIYyGiVoyJH/52UyKCqzzRPRa/+iLb6+a09gEjY2I+tsKizLdkaLlK25K7Pbn/3S/CJ
vPL+naWOmtc8gDZXR2nUq7p7R5uEuFfT/2oAJTzz9At+v9kYB/RAkSV6JpCyemHal9Zx3I6G
L2vgy9/4rLRviMUSLuyOIbjMCWngB6DFnGv/ZRTJFY0mWYHjmWkkqEVaDK/y1fZ+P8set0/4
6eyXL6/Pjw/2HxGb/QJNf+2Ms+OY7QC89EfECzr3K7otubo4h0D3/yl7ku62caT/io4z701P
RGr1YQ4QSUmISZEhKInKhc9teyZ+4yR+tjPd/e+/KoALCizY/g6dtqqKIIitFtQSsjlwDH42
c1pCEB3qAQwtUXAmozKnXlIEPH5CVWEA/xc8tKW3hMMPDU6v8ymBvuR0McstOffTszEjc9qY
Aum4vcNqQSA261PZ2ks6B8ZJpBLzFjV1ZscUanEf8ZntG6AF5OSEusYA3AqZ5kTTS6p9ledp
p5YMCK3zRxi0/lm/TK+b2HDt2BXcjOdXRAL8C7o2LXgkSk4vNZ5mopCxfTT4AJhcZwj1m1mu
GB1B66QPWkZV68XK8di+tUzAAzty5d7jEhLoN7SP7sBC2Wb1DhftMzsKtANn2I0mMseMSfNz
8/Rwh1f1fzy83n4bi8Tdk5WSi1XNvKhQTU0chOwnllwYlf0oqK7huNGy1piZvSs8HR28Ux9u
23Uxyd3bwqPxNdonaUFSG9hgkLWqPcnZdqqywtY7OgiofEc7tBn41CEW6MxlGWJK0/ZWlhlI
WMZ/NO4Gffvw/P2PG+Dajz9v7nScUbc/ziBdonOAtWU6kL7JjTGpkLV7dBBD9xKr98NT2hXS
/XIWDbvTZHCwZ3OgxFsrdJxgNxWQ6UOElbrdz+2lWaFDAU62I0MnGKdpfvbgHKhloNOxojp/
hceCpwmSU8k6Shm0DnMwjTRuVI0Vjq8VO+2ty6NPxxR+iI1MZSVt9y0QYcklvflNeUYLU4Xt
x9sCz8EIRD3NuwbLL2PYzHoJnjhqD8tGr6mtvTwQtU0OUdInkKEObOOt1kdpjFi30pFOGB6y
oWpDtpcI4vU0q6Ve+MmBg0Vu8oioGSXaOyj6HjYHUFxZQ5ETSS3fol9A5XF9ACy6xFTE7ReA
xgeDRV3nm88E0EZnEFjrlkRgZA7zLXWayNHdFXbvCSaQeOwYBIp2BGZ8oC60IzDRw83MPilJ
zgbj2ooB8h2DRYWURtIPANvjTbOZgreldmhRr9erqyUzxB1FENq3GK1rINH1W2/BwxEkevjB
SdZxmWejRtAPsuCh2gdIe6X+a+3izV1P+6wRSMpNPLl7eEGHq7vJ7/e3N79e7id6XYLG9PN5
gpdQbZ8e729f7+8sa1PX+0087oqJdh0D264FSw6nlSTtujRI/fj9TXFdRfGJv1nFYDpcGyiK
cTcpWgPC1zD92fQs7XDKkonqI+07IRCgo4gPDdSeJ8hyed0KSfbnjM1+pZFbsYGj1rZZa2jk
AEx8HwtsMOKm2pfHUd9aPM6z7/UtyTbyPbyNPvB4d4vfCf72GBqHvYeX2/GRKuJFuKibuLDD
TSwgZSbAJrMLPUpg4K5moZpPiY0CDvw0V2g/xVNFRh73GlHE6go0dJHyeKnS8Go6nXE3shoV
2gHzyUHlpQJhMQ1J2osOsdkHqxXR8TqM7sfVlPM/32fRcrawBMtYBcu19VuR7VVjAqK6UfE2
IfNZnArM58G9QCoJ/1wnl1ZrHPZb6NqNjDtpAmdCxqWiMBjYheGceVGLxaDaiNjpW0Qm6uV6
xV0MtgRXs6heMg/KuGrWV/siUdwAtkRJAvr13F6izneY9LX3f968TOSPl9fnX991SqyXbyDt
3U1en29+vCDd5PHhxz0ek7cPT/innU60aa34XXLZ/39j46WRSjXzWAAE3n4LlNkLO/9RtCdX
+Ohn24DCVuP0shIK2ZlEg5SxHQ8d91l+i8f7G+ANL/egv/681R+n1fpPD3f3+N8/n19e0V13
8u3+8enTw49//5yAzg8NGF3H2v8Aw1Ob5rPrHesBqQDLbT9A7WLSOfjdmJSWw/7toQVn3LHe
E8WeDkQ6O/omx6gcDFTzOdy35PCmxO2BjtPUEY+jvYRDcvvt4QkA3UL89Puv//z74U97kLr2
C5DIMI1jNw0Y3tBZ/19cfqVjHzLqjFYKiaNRsV+BD1jHCj4e29nHNWSwbQw9aF89ef3r6X7y
N1jN//3H5PXm6f4fkyj+DbbY38dfouw0q/vSwJgQDVUydDTTZQeNOI6v+xzpEGgnw57GpPlu
x99ga7SK8Ka7DYcfvrfqti8JjjBPFPLN8QVeavDOsEr9L4dRmEjfA0/lRonxV5lHeBe2ngDz
t7sZvByqshh/y5Dg1xmJ0ciedU4j3zjEe3ep7ZsyFtEYugfl8TwGJ1k0+nAAi/Qo/P119kp/
kNqJcPHA0aNjN48wcgx4xU+du4H7akQWWS9tR+Z2AwNKJn88vH4D+h+/qe128gNO0v/dTx4w
CeO/b24tBqObEPtI2gdB92oER8mJHH8a+CUvJZeQUre2Van7mdgH9saDUz27LHyOWFxFwJV1
uATrLJph8GViK/oIK+gBhDInWnAGudcSy3C2DZy/dZGHKsdsH9r2YW2dszzEW2EPnLmpkJFt
18ikJARuktb8EDsBCFowZYcNrzl3R8dKO0gwX3TYO39xgVJ1ImhfNaTR2U03ZS5i9ODxEZSg
XoHKtLELDTgUXTJMFqvjeROcg2Pho0GD2kak6D9tjZ+I0AuNSCEAqtiyELJoaYffFfUWO9Up
6ynS+wp18yLK5Gh7n+2oOyD0QSXsVUpSIY/InZuHFjY2cQCO+tlofx2AIKupSviDuq6WMufd
7YxjUL+XbPfv46E56aWnK1/QXDenxKNrtgou/7JD6tRYQF/Kdod4/HPwmm9MYKwFDyDWPvz+
C6vttHZsYQWCWtb3/gj+6CO9JIux506gBw7JKYFVW8JRL6JSVgnL+FvZuFKJ7+lMfKUqOUsF
+/NQSU4CtalKujh6+BE4BT2RNaQ5bNZrNlmT9bDZ3jRV7WbOKVabKMOtYJvxL6pKMmrdspqO
RJwcIt/IROIkj3yuKptKx7FxAxP7pyz5Gu2l17+8o8LwRYxR4J2uLMJdnu/YMAaLZn8U50Sy
w4C52eqaR1HXKQuTifKU2Hs/Oy3ns7qmvsHZKSMXbXjbgAuSbxLaE4fc6kmW1urscJ0BZqxJ
LoYYSgwokweZ2V6wAN6ePXODd75UXvNR5R+ZRE2okswXudSSHUSFRJ4+wZ9lfsjZJAA2mT2/
sql3mDzrIHY6KVmT+NfjenbF7UKYypzf0QVo5cgzWSTycuqa+AVzcyaZLdaWGdmp1uOY+dAR
520sesHyYqdFpUSmjqxCYxMlyRfPW4DfiXIL/70z4iqPkKfV/JeoSs8+kc+rDMMbeLus/ejl
kBdwfFn2rnPU1OnODCLX55PkVR2L5Cy/enjiQGMsZ/Y7Wlsazl8KfIZ5vKUQtXRmuUWARFBR
RLG/UN8ADbCcNdQZIJYUjBWhSrnb4aWpjdhKzGFJQGrbaxcgwU4AN/YOHThRpp/mWCcIt7Th
jgs6UHPpsaHQjm210IF1RdliHsynnpcCelXDKUrbirL1fL0OxtAVQ2qkMGc4IwnMzul4y7oo
MAauN3S7k0WjIj0qCkvryiFCXtHUZ3FxCEFHSapgGgSROxgtE/GMRYcNpjvaojmixzB9IPvA
VcBg8MylYJNQWaRuVw81NPFZBIEZcW69VOvpzJmOL+MXlAnKZNcuUJ957kvxsOu+iTdQZCry
I6skmNY8h0ImDOtERsr7eFysZ+swfBNfResgeLuF+dozXhq7XDnLTwOvKPAEp45SCQW2R8sO
tnhY7oiqmhkPmza02waSTAL5tqHSSfdcSYv/mCdltREsRzFo2HeYAdQ+4zRCXytskzGCyina
k+dE3NUMTEXohiazUYdk8WU+Da58HQL0erqc9wchBh9kvx5fH54e7/+kKULagWlI9LYNdTwr
Ccpc+qVJbTsbUIoMsxjsup4UkXrjOAZsUyMJZ7tiHu3ZR2rHpBcF/YEV3GiENgLjBK/2Ewp0
Y+kQlhWFQ6W/umVgQ9+LIgddkrv9BgytblBU/L5ESgyx4xvpjbAWSOcRdCI+VMrG7ql0T4QH
jDwwQS9+5ffM2xzO1KyBjqCcTWOINhuZoIzBSdGVrUP0W4dCz01k7FFWT2Tgza3Cj6dfr96L
AceJWP903I0NbLtFZ4zWR3/oicaZkpTXGW/S0SSZAMGlvjYeQrpfx5f750cs09cbN8keaB/L
jyqBEfK2+zm/EN9iA01OjkNFB+bCZ8wA+TwwzZPXyWWTC7tiWAcBCSliocVisV7bfXBw3KE1
kFTXG+5lX0CEsG+TCWLFI8JgySHiNlquXK4XDDq95ntAT0EC1lavhHuoisRyHix5zHoerBmM
WTFcz7L1LJx5ELMZO+SZqFezxZtDntlOFwO0KIMwYBCH5FyR7KQdAgMYUTFXbEdUlZ8FSIdv
9QSUNjP23OMZW92lJ5Bf1DKs2Wdz2Hx8UKs1GzNYmPU7RFnYVPkx2vPZWHq6uvJ9RSQKFCH9
hwXueouR4s+mUCSjaw9sRFrw6eE6gs0l5p9M852E/xc8FxrogLuIAsXEj9KBSDryABxRRxe/
2+lApTMc6azj7xAmwKM89k+rh5iYPaWZJvs36TklRXV63BYrW2Pr44FUSSkFbyoyBCYwHBv3
dg31wavVfNx4dBEFZ1Y0WPxkR4Qk8D4AgceOJomQnRSooEK4bTtSoBmCft6ZzgxIItj27Eth
bd8B3kEaAfpXTu6VBtSMv0AaCGJOELHQknlhlG9sm2QP323Da7Ybu5IVsAi+seXNAXPEfPqZ
7ebV43R+fRFxKCXjBC/tbNG0R1aZzYiH5vQdLNt/gxp7wnjowln4Nt0ZSyrl3O1dT4IVjFLn
Nmz4PEzcl5dcURpKsyEVEgcc5pKjl03D6JxlDD/eavrrPjnsj9wKiDdX3CSKLIly/lOqY7nJ
d6XYcof8sA7VYmpHePYIlOqO7MqpCxpoShANva1mSdxowB5b1OWbm2arpFgSlzizhXW2ZM6c
2KLx4FNRmST27d4ARF9vrFcqqcBgU4h4tV5xsgslivj2RRmA8uEehYSiypK0ydiYT0J3BBFP
1pEsfS1tjmEwDWbsNhnRhVfv0qHZB3MJy+iwngXr9+kv66jKREBLIr1BugsCtnoSIawqVYy9
GsYkvGPemHDuXOZwFISR2ASxuJrO5n6c7R1KcMiGypxH7kVWqL30dSpJKunB7EQq6rdwrXzg
IakjrArBI7fHz7JSR9+g7/I8ltzxQj4MOEZS8O3LVIYmOp9tXy3VZbXk8i+RXhwPX73rIrmu
tmEQrt5pIyEuDxTjmbCzQPP0eT2lns5jkvfXJKhGQbD2twN60YIvJkSoMhUEnmUJp8sWa+XK
wkegf3hmKauXx7SplGc/yENSS88oZderwLMdQEnrot34qYurZlst6imfGs0m1X+XGE3yMVKQ
YN4ZzEo2IpvNFrX/s/tzmJv5uNJ3It4zBE1eaAnMlay8ixeJzBZ+97OQtBCHz2yZUpdwlvk7
Javsze5oseID7+h2pQcdZxGObDB962WyHOksftrY3Gd8iFhH04m0+Xjzu7xiQy5cus+YgcjL
5vUIph8ZviSUbzXy9YIX8ZKPghrPGYaDzBeOlO2h7jazvzmhLj5dcrTTZBUGM19rsAA0b3pv
QIAunE7rN3i2ofCcbQa5ehPZSN8JhslTFY9SMiWh+hSn/LtfVUE48xyLqsq23hei7cnLLev1
csH5I5HPLdRyMV15We7XpFqGIRdgQ6hGGh0RoPJUbkrZnLZssTwyuPk+a0XRmYe5fFHEKYh0
Qx5kZRsoW9sVyWRuYOt1ka1hCeWH6+TiIkG6D+ajZgyUTmKL0dJ6JAqHaRrsBqRf20DcGr5n
9RS+tKqoutaZ5uvVCubFdO8NCz6SXc1AWERzBtNOJtZzdtANXpuINyCOOak8B2QM+mTsu/MY
yE4wwbyXRzdCUkc4V0no7QwWVAKW1dKN+3NdV585lctgddm3THAPXoATyAPn6mzwURZMr9z5
Qa/gFOvHewe3BN7XFOfSTKK3dVEXISy0IrkeN1Gd0+V0Ph0PH6E6djdCztOFSDO8m3+3C0UE
O285m2GZcPc7AbderOYj8DnzLgzEvd3j8no9XWDHmM2l10uZV6K8YBhgTkxHhiQWq3A9bQd+
dO1lVKp+5zqd09jFeOMwZMvZO/tLxHU6m9fjl7QIjyhvaGQGUxONxhvOr3B5JVxwlAmqdhEw
d+iggIPWE5XCXxvBzFNcnsIlLL392FI+plsuvOOt0asxusykqzdrEM0vgBCVbRzIdjobQwzz
d+Bh3MbaufS2maqFhC5kRuTJFsbxxBYl3AZ0CWZ9J7m/eb7TmSXkp3zSRRe1tE6/mWB2h0L/
bOR6Og9dIPxLHYMNuBAluf0zUGCsziWMgZfizLveaGzrolIXCm8S3iBsvbTfJgJsNiqwSZsp
I7cNii/aryBQc39pw4/OKKK5080I0MGag1osuJQwPUFKok256e3Ly3D39eZm/NvN883t6/3z
OHK6sksRnaz5jNqwhaoUB2Xq9CqbsiPgYH2p1xazP7PUAxirucSkngnWobhaN0V1obVDddiv
BjODluoMRJiHBANKui2h7p8fbh7HiXyMfcmkqYjsG9kWsQ5p+HUPBHGjKJMIuDhb39SmDJaL
xVQ0JwEgXy4/m36Llxi8NmiTtcP2Ll3MVl6xKTJtqNnw33koG8xcaZWksbEl1qbLkrdIdAmT
OIn55jNxuJg0UL7hE6rAUjMnfMU7H6ITt7RB/fxYJBXmqgSKd4etVJ6wR7u58zsdKqtwva5H
X55vRwG4h58/fsNHoCW9UnUYLBMY37aAg+HxJG4pKLezgONt2CHtosgDzEuv5FaefGD/U1F0
qAtmggziI8taRcFSqlXN25ZaopYhfK7E7u2V0xLSZLFjHKowZp26q9wm2ohjrAvSBMEitCv8
MrQf+NKW/QH3e+cbyogZUWRmzEvGRLDHzacFozZ0sejCfTtLJQ/bNKnf7miErv46wZXcSdC2
bVnJS2KtJffFeHR9DWYL2rkuUJce+s57sqgq+4yXbrum1vUh9kVbYu3jpBAF6FynZnNB5wbW
ye/Q7OyyWjolj+NpqJNJMZWECFrRLICnqPUGtBtC6DHe8Hku2+/SdQlZvwXoFSYKP9j5lQdY
o0Ow/2Wl0NFwtsdFQZzq2khCZg5lkUkQOw9xyrYD6E3rg2zu9be09O95FHTag3QGQhDATAao
YYR6/EbMZ9ztzEDh1gocMBEsHFKOtcfUstiT0CzovdMFgFwDiFsqJ5N+ZdABsBaRP29bFcF/
BdcSnBrphfhpd5Aup1e7QcYyYa9StMNYHpUuR171CfiM1yNok2NvUKL5hVGj/bXgVMgp2NRl
JQsBocC7Pb6agDWO1cYPe3DB1v2Ivj08sZ2Bo21jRHNoO02Twy6hHbH8sklXDBz+5bXyliKt
ovlsymXq6iiKSFwt5sH4pQbxJ4OQBzyVxgjj/W0BdaUwi37UvSyto8ItntelaXlrCO23tCkQ
UZqmr9feTxSEldw2Q1JSbLfXVDBz3TBFwxL66+X1/vvk919D5ua/ff/58vr41+T+++/3d3f3
d5NPLdVvICBhfpO/Ez9fXDi4rnEavbMVsbvEjCJm5dapKKm85CBB+Tn5seMcCkhAfb06SGPS
ypmk6Xk5mrmCNdMAJh+5hSIUVlL/eu/3K5lVCX/hgmgjZIw8m5M/4WD4AfwTaD7BfMMk3dzd
POnTYhx1oIdE5ugdd+RNTUiQ2nlNdf/dzHkILPNNXm2PX782uZJbiqtErho4Vd2BqOTh4jpj
WeiTLDDnhnHC1v3OX7+Z1d9+m7UI3e/aKsluI+8SJztlvHQ0qM0mxWEwxyLmWnQXHCbi5JYp
wts6inQ+NMaXTdI+w/v27FSYEabDBkhbm4RwsbOF4OUNNk0Szd25V/QHYRjGkgUjfzukN+nO
Dg1+fMBEWFa2Y8zPsxck8ITsF/jpqYEBmK69MSfBx6JUYvzvtRYryAs6lDY7sJhxcsgB154R
fSf+owthv/58Hh2XGO1y+/jz9r+cUgjIJlis11g8nSZKMTv5h658awIaJxg14S2v9vpzgqm4
YG/AZr/TpZThBNAvfvmnnYFh3J/+81we1iWAbRGNrj9jMQ+Ak7gpix4Z2fZ4iBzLE7YEf/Gv
IIi2/rnbpa4rQs1WYcjA8SbkiiyeFqOt8Zx9sCPIoiKcqemaikMudowBCX9HxeMeUwcLNqFf
T1Bl23rcorl0GcP1lccYnEdJmvfsu4SV+HLzMnl6+HH7+vzIJeHwkbgNw5rcH8SO7MxuOFCo
FGN4pOar9MqaGNwoJBq3BehCy5gwE9RPTL++CMKOIt86LLh7RJZf0DWQSuW4TLxChGbc6qI8
5R6MjMkLrxrXLk/aFRNWMh3kWlMd+PvN0xOIPbovI3Olfm41r2snu7GGG9uCA2QSdJjb0vP/
MXYlTXbjOPqv5GluHaF9mYg+6Gl5T5XaLOptviiy7Kwqx7idDts10fPvByClJy6gsg+ZduID
V5EgSIJANtCWy0uN52o4UgeHQomZ8B9HjlEvN5TQiAQ86uo2J5+aK+URimP4yiK/5Eaa9pBE
LKZmhYDL7qPrxXqPD3lyU/2yi0+btVlYeDD8+sN5ZwTUvbVAGB25ej/OyaZupeL4dr7SDXnU
cNHUgHho0Jz6+u/vINQ1xUVkLx6S2SqdFd2gf6IrfLyCHKn6x+ZU70ZT9VNYcUWC+x7f2occ
Vt2aLnS8+N3pxWmocy9xHaueo3WTmG9V8W73jfXHnvRMI8wRitgJvUTrAKC6iZcYrTgU0Di3
vdIhdcWk5PfF7+CUW1OBCu1aTdIMfhrQNtULnsT+TtciHkahnUGIcOs8XMxDzG/KFyd7tmMe
TmFCWfOI6baYEymjQLw/M4oShkMJbYu5caSkMbeMe3qBH9pbEulEYSghH7MQI008YoXtijEC
5byUXcsjOyKZPm6Px7E8ZkYAPuXL9OiMjWix7Er/6s5CqvH6uv/AQEt8p9O+wJ5cri9wriEM
mRekjpKHhMj+hmXEvbYUoK7gG50da7lLiJrJNWZfXxRXsZDPstM6laNarqAz7dTuAWATHGoG
qhwJkacA0HlFsYSToDhUk0M1MT2CFR6PnuoyT/J+/X3HUjvftQG+FZhz2aeZCia2xmoKL8kT
J9SEVTks9U1K2eJSRdyYGFnLCJKUczTi4qEGqNsOgWK4tEY565fp1rBXCpPmoGtADzSIm3uf
rMgxpCrMDvV6ASN38CREUbhfRn9AqCc4kWLFv2SFrhuTNAgpCb+y5FfPcaUdxUrHLxA5VKbW
r6cwkPXhCLUBWxnYQY5ttzRQIQqPXivRKOHwwUMHQnu1w2c0DtHg9QmNWessdUnrxscX4LZ3
5AfgCJF0NddThwNSkwR2zSXstLOzfOa95oiPNuJ1jaKxvQ7mLJ57M3t5td4zkZoNmK0JQGZJ
6hApUPGQFfiVrq4IWzb8k8otemQ0+VFI3fVIVXCDMCbKEuYC/cIShRFZf0PBUbGUUmJWFhhr
gRsSXcmBlMwWIS+MSfko88Q+JegljtBWMqhRDg2kCQGw9uAHRPcJxSslJgofmHiD4qXy/cia
cJxA4oRU2885cx2HVpEf9RRq+V7bizRN5ejfmpTlf4L2pTwWFcTlFFZzWyhMOIS7ZcLGaAnN
UMSB/MpJoScUvcXHlzYgtAGRDVAOtBRIvQsledyYeokmcaSeKlE2aIL2UbJP5XCticnzNoUj
dqg2I0D1EvNJfpbHEdndt3qusm71yEulRAslgj7dBiK/HH5l9Tjng+bYUMMHRgUCXbn4zTC6
ZjULKFjkkZ8CA354lCh8MAiDZfEc2ExubD8NlioO/Ti02bgtPBOo8Ocpm8h4YyvXsQndhLVm
6wDwHBIAZSMjyR5BFXdxnYmc6lPk+mT/1XhYpcffMbh+y8nlc4VhvR5dj/5ATd2VsI7tpCYO
Ux8QF6fEgBdAbAXUo2oFTImJIgCiT/FG3A2JEY+A59I1CzzPkpUXhGQfIRTtyRPBQdQDl3GP
6AekR05EVJAjbmoBooSqIELpnrAEBt+NfaJrMXANKYM44NP1iKKA6EEOhOQo41BKKxBqHUmf
tg+WfPDJ9WnKozAgCy67ynMPbf4fzKJ2jGGeU7rT4zO3kU+MnDamqdTwa2NqVrQxsRo3bULN
hTYhS0voodsme+Oiacnp1qYenRmpWUpw6PmEusGBgJqlHCAr3k25OCup2UT6KHkw5hNs7Ijh
iEDqENXpBu6v1QT4qW8q1XNotViJD06rvyRZgfEiylZH4YjJxh/QUWq1J5TrQzvnVTWQtas7
NpxhBzQw0tPUg230Q88jlSCA0BHlbuKBhSJwmY6wJkpcP6ZHkAfbtb1e4aI+JqXcAm2vz3Y/
AHD7iUvtRzQZTIwQIWodsmsA8xwQpe/JMmAK93VcIfCSd6roB0FAy+0kSgip0Q7QSeSoGtoo
joJpv9uGWwnLz37rPoQB+811ksz28mURygMLYF+/p5kAS+hHMbHKnPMidRxyMUHIc/areCuG
0vX26/exgYbuLTf4lq9SnR+tEDtMuomOznGa3H3NFTh2VWPA/X+bPQPknByZZZu7we76BRye
6xDLBwARHqkRpbUsD+LWpbQvNk0sprQv1rYRpduAlu96SZHQe08WJx4FQN0Si5jqMs+h3fLI
LFaz/QeL7+1+iSmPCSkxndqcCpU4tYNLLUicTnQ+p5MSDxAQsXsVAwZSH2qHUD3XX5Fr4sex
b7PY3ngSl7oglzlSl9iAcsCzAUTjOZ0YKoKO00+1o5HwBmSn/PhfhSI1yBHXJTIqpNc1m/JT
0UvWritFM317kLv+mt172Q/tAxK25dx+eYk7XxBc6HPzEbJeerLxYDAsP/hxz/Xl16e/Pr/9
+TT8eP315V+vb3//ejq+/e/rj29v6lXyI59hLJdi5mN/sWdo8ybL+mqSO2g7vBUnXg+MHE/L
3p7ikTlC4hMIoycC4Lvod8jijSn6O8gVz3PbZoBqEhpwOFG6V93lcYxZ/Me6HvE6h8p3sYd5
p6uue+Xi9gnDtJgF83f2VKnHskLHOtShet8/l4hJh6Qr6RGEeh2cfiJ13px57pJwvU3+x+8v
P18/bwMpf/nxWRmKwDPkO01j6IunZ6w+KC+31GCuyLSEgtctptYW5G0m57MN1Fx9jLgZ9P/x
97dPaG1oOjZfW1wVehgboKy3U8rQQTrzY5eS1SvoKXuqoeUXaEMIW05bomzyktih6sB9auDb
Jy3G0gaempx0qokc3H2pI++AOHW1FtHKWq+JDJrmPbQqDOO6jWa4NsW+RZM7i470wPWHVjqe
vIOT5wkbKlti4hfh92w3gij7qcPki2wzukBINJMWeXrzhZcFS+3E7Z2WjWZtg7RjNpVoV8vm
I6Pt7fk3yF3/djNcMqg8gxdZXBwifKoj0DR4fxBVBpUUw3jXuaJzIBWK1N6ESJma3p+R+ly2
9iTCN43WM4IY6hlxckTeZIqR+biFU3uCX6JZp6V0/2ZQZducjSrrPQ9qEpjUJHWo2iSpZx/l
HLccrW04dTfF0Sny1QvzlUqeJ3JwXUXV6iuWQxIdVyiVIt3ZbuJw9cKiuQI2Gawms7ywKXR8
25xaDLy06j0nqu7NiV04Ra6tz1iZG+41Ob0O4kg43rJWkDVeYj6Skhna0KGPDTj6fE9gzNL7
2uxwCx3HKF9OvtiwCQcFU/vl04+316+vn379ePv25dPPJ+GuvV4DHEj64LYUI4spSNb3r/95
nkq9VlNWiaY4FVS8xSIqjAz1L4A3+AntdnXJsmmpGy4+KjXbdbxKdh35ulpcLssWyJKDMLmY
xfqPoqbGXON0z7XNNqwzN5g0emexk7Tkt9MLyJBENqm4WiYStVfsEWWquQwCAlLaV710XpvA
8a0DdPX3RE2ta+N6sb83tJvWD31tbm/mmTJRM6Hkic0rLq7mCGNckmg2mSsUXmBUvQ1di/nA
CpNX1QJE0W7mqAt0HQ4sp2ML7Lv7qgCyhM57LGlKnQ9z8ckd1aFRsq5jrohqxKym8QxxzCZU
O2y69foWRa1fXqR+cCOF1K72v22slkNmea+1ej3jJhkUIALbXfpmymQzqI0B33ifhcsBdlZe
dm086MmH+03f5QLl5giz2AKpOtIG4e4lUYWGCloM7ySmIvTThMxb7FdISHv1JCGGFdqGrfuU
3foYo0mB9OGkge/mbWyJpEFgmN5pGHWwr7JEZJeg7i8f6imI55IdzBEyTZV1oR/KWxINSxIy
R9XqbaPXrEl9h8wOb3682M3oPnkI2d1uwYU9di05IEaLUpkpiT36wFdlIl+FqCyhZaIQTxRM
HrH6UP2EUBRHdN7rrmQ3c2QKE3sOfIPyXg5JFJDV45C6KVBB2KW807+cK6RufvRq7jeCvG/W
mJTLXx2TTdMkLB9c6CA63RCK0E9UpYYkCek9sspEalcyy4c49chph1sveiI/tmoGoquuEpJn
INDpRIblrIRVyc2xDIChOn8s6XsziekCUsU2hDhI2mJrPKktgyvlXWHDeeRi9eG3BqJr5ot2
t7+xjBkbDuU43odaCzyBb/7f+fz2Z0QSz7LpNAHQgkj6FCQOOSrGqb3QI4l57ZDRiRBi9Chj
YZvEUUxCzRFUWVqvYLAvdSKL5Acw8YL9KcF54o7OAK+J3cgSz0Zh41u23YKQyfNtY1Ps0kif
zjpTTOpe5uZPx2yjmqOuvy80pd2ZLQtQHt7vJ7452y3port50aZQkx3qA/2ed8xtO7V8OzqR
KF0/1VWt2tK3ZVFnHMVnKb3FGZjgIjj4kcXxx8v3v/AMwvCwUMhvsOAPDPZQzwVT/MgjvRjm
7HzbcRXEmbiFdtsaiTmdlU2FT2IsiZ9btji9UWskEkP5LcOoPEPf9Mc7fISK6cVUB/SxVbZn
4S+Tvl8CPnSoNEOHFbBNGVv0I2Nrz4Adr1bnWLbocJesKjbBhmE6dmrhN4Wy/FQ+/KPgfvP1
26e3z68/nt5+PP31+vU7/A898PxUvtzivCl2nEjNTXieaVzZpGel81DQoCWnsnNEAwyVV5R7
FeI1zsZW8m36SCeT5aIux1IbdhfoOpVyLhqVMObZiNeDp0Jezx5IcymMAbH4PzsO1FkXMgxZ
VzZrtxdffn7/+vJ/T8PLt9evWk9zxjnDPGFPCsNLvVyTWNiZzR8dB4ZqGw7h3E2w50jp54Nb
qkNfzqcalUUvTqkTf5V1uriOez23c9doX17wUH0hEFa3g8Xv4cZUNnWRzc+FH04ueYi8sVZl
fau7+RnqM9etd8gcjy4YGO9Zd5yruxM7XlDUXpT5zn5Ta3Sz+Yz/pEni5nTGddf1DfrjcuL0
Y047Dt24fytq2HVAFdrSsUTH2Zif6+5Y1Gxosjv0hpPGhROQ3V1mBVa0mZ4h05PvBtH1HT4o
+1TAnjyl+Lr+kiEfHzvqEkcyRVHsUWcVG3ObdVONjsmyygnjaynbKm1cfVO35W1u8gL/253h
y/Yk31gzfJ51mvsJz1fSjK5izwr8gbExeWESz6E/UWaYWwL4nTGMUDJfLjfXqRw/6BxL+y26
6Tvff8zuRQ0TZ2yj2E3p+wWSO/HeGSxj3x36eTzA2Cpk+3Jp7mUtO8MUYFHhRoWlWRtT6Z8y
SgcieSP/N+cm21RZuNp3asZZlvV/jy1JMmeGP4PQKyuHHE0yd5btl9tXkAvNUtbP/Rz410vl
HkkG0EiGufkAo2x02c1SF8HEHD++xMX1HabAn9ymVK1eZRHKo+jcZjbFseWKysa9L0xh6OOj
31vgBdnzQFVxKvp5amCIXdmJHmTTeG7uy6oTz9cPt6Nlcl5qBjpSf8PBnXopFTNjYwZJMJTw
oW7D4IRh7sWerB5oC6ec/DDWhXwALK1jK6Ksvdv12OHHl89/vmrLMPeLRmin+Qk6ecLwKqAN
WZesVZYDqVtdACpqIQhJmO3NlEauu4edb8ZihEvujHEqKKsArlij6/RTPaC1aDHc0ArhWM6H
JHQu/lxp6wXqYcPU+UFEiIkxKzC4bxKRFsUaT6CNElAL4adOtGdqAqpTx6M2jSsqHjVoiVCh
WL6mJel0qjt0+JBHPnST63hGLlPPTvUhExdVMfnokGDTFmMNjXfRZA+VH6xwFJaYagjMpRgA
1kUhjEiLj5M19VC4HnNIK3xkETGDQUpk3S3y1YcgOh7Th/UKWzHs5hB5topwb6LFJQ5dQ/pJ
EO6KLBnwGdqeiiEJA003JXX3hbjsswyRYsoDOXE5ddmlvug1Xcg7pq68R8Z8OJ7V2hxb1zv7
5tQQcQ92RSQoRWU38Y3n/OFcj89slW3Vj5d/vT79/vcff8CmqdAjQFQH2DIW+PpwqwrQ+FHA
XSbJdVr3rXwXS1QLM4Wfqm6asZRDMi9A3g93SJ4ZQI2Bjg9NrSZhd0bnhQCZFwJ0XlU/lvWx
m8uuqNUnBQAe+um0IOR0Qhb4x+TYcChvAoH0yF5rRS+7P6zQyXUFSmRZzPIlD9DbLG9BmqvM
SFm27yqA+0Fs6SSCaJif/a/VV6lhXAmpF8/QG+FyzFzqbRBA50vJ1K5GG+rVQa3UWLfgpm5q
37MGFsGzytiy/FypfGLvLdcIn1kdb1MQklowVlnc56rdVaLu07ellhk6kPNIIYb14QuKloLB
LsLXL1sWUUFOL/4FDi+f/ufrlz//+vX0X0+wqdFjs0jGPLjlyZuMscXpOWVYm+XPDY/WIzPK
9dw4nqfCCyktZGN5mGkQyelj/Q1/2GYSaU0/ZgYLP7W8CoN8IoeswHsb2kOMwiPfcEuVJ4za
pITiavy9rol8+Tm5BqV01g0sOSF937kx2aymt1wuoefEzUCVfigiV44IKTVrzG9515FVLhUP
Yu+MyTX9pS7KnhY3yxoqhu/bt59vX0GqLMulkC7UCAeRshOQoji37d2MG6KQMULjue3YPxOH
xsf+yv7phY+5PGZteThXIF+pCAQEvMaIGUZYOkb6folKhnHi9APf3VIWkT9lz2W/RnJY/fLv
9+iaL+hS0nqBf838xASWiI4GuEyXO0DC8uY8eV5Aijfj7H7Nm/XnTpnCrFNUAeGuGdQD49D/
pHlXqYvNg9M0wj5vosPbAqMWMmwBziJHKb/N7aowsfz++gnjgWB1CE/fmCIL8ESJMqlGMB/P
N73OnDhXla2uczbYzjo5egalpbHCh7J5rmktBOH8hGdPO3ANf1EaI0d77mZE7bK8PyuGd0gD
LSRrmrvGyC97NNp9AA2AqUT4Wse+w8M6WctdadBzeo+WLdP6UwabMlcifiDtoxK7UXz59lCP
+nCoRi3lsQGFuVcvnpEOenvWFPSLUsShPFsYYQ7fS7Wca9ZM/WCWUl6ZNRQyr999tMkUhGt8
zKSWJEJyS4TfssOY6SVP17o7WbRb0b4O3VFPlusrZGlyw6ecipe0VbXAuv5Cm41zGLaI+jRU
GEClr0ExPjNqFREMDSp9erPb7F6B2mTPGOQxH5n2kut87PEZnq1gPAAa9dGIMQfrNeCukl83
UV7yEenHSQ3DikTY5OF2EkYttd/iHOWUNffuplZgwDhKeUEStU2djDz0B1thCx98a23SD03W
iTDfOoCrqiFEQQ5pEe8UkJ/PGmnQ55IeLFflmMqMDoqxoGWDUZFK2nUE5zl3Q0NGS+KjRYll
gNMVz/4zJovFB0kIOjlv0C6m3/o7FrAhMtVIMtWX3pjKsJcsd+YaHnsd7b0wnTDCz04cB2TC
kGbXeWDUZoKLt7pe4iBLxFvdtb1K+liO/dLcR/4rzS7yP94LWGQV92z1Gmh1Pp0PJD2HVqHZ
Ef9L5ciaxU/H+kqCUAse7nlV1eVRa7RYOpGHHmJePG7R1zwOb8A2/Hj79fbpjQhDifkpMVOR
wCWcXNN3MtPZlPCfPFYJ3Rge6KemIwUZyR5BSOUCpEr3p7y2HX8gvliHqERY0ltVXCO1Qe14
rKl3qgifm6GelShEIquu06xlkczfIJ8yNp9ytZf1QrOuA5U2L+euvC7ba/Ppd/vl56fXr19f
vr2+/f2T9/fbdzRf177o+nwXt04109pcQf74KBqfZKEQUtHi3mX42LGtu37UsH46GgQQrH1x
zqdGlKM0CeGiZvj8nQfjHLuswYlj6Vdkr2T/asu3YPxjcCeM7GB+Q4wRxc4glTvQ+comu//T
Uwdzp8yJt5+/cJuzRHYx37rzbxnFN8cxPtl8wzFGU4vDMc8GAhhyDOvelSxjFGrEK0Co3MpR
OpTTR3QqAL04T9Ty+GCbJhxJq2XNIxsMaMyFSF7sxQh4ZFMxepMgV5MHJewpMapybW1Vh8nt
7LnOaUAma1nox9WNbjqPPK5h/EA+5vfpLb3Zq9WHPY9tYGqM8iEBgVvLYWSUKDUHSx+dXd/b
aTtrEtel2vgAoAOpox/kGZMsivC+1Oi5pdImkft2xgMaeWot3iPyry8/f9IrTZYbDSOiOSr4
taB1CMSmNjckZAf6wH8/8aZP/YguDT+/foel4+fT27cnlrP66fe/fz0d/p+zZ9luHNdxP1/h
c1fdi5q2JT/PnFnIkmyroleJsuNko+NOVCmfTuxcxzm3a75+AFIPgoJcd2ZTFQMgxScIgCAQ
3smMlMIbvB1+1qmODq8f58Gf5eBUls/l838NMCGRXtOmfH0ffD9fBm/nSzk4nr6fafcqus4c
KHBv2G2dBpVyJX9XyAoguVxqsImmYid3Vk7nRKnRKxAF4aD7xZcD4Vm6E4KOg7+dDnevkcLz
siF3gW4S0WcUOvbrNkrFJuGdO3VCJ3S2HufsoxMlsd/ReXT8nZOxmal1msqiUMDIukt+UICn
F9vllOTpllvVEfquCN4OL8fTC3EQ1I8nz52ztwoSiVofWQ4ADVLDd1bBdtzZ1MKrPLtzBhmD
NOtiCl6C2iSG4ACw+sEb6QHeeXICuuyAZBieHoe/BasPqCRjr4crbKy3wfr1sxyEh5/lpd6U
kWQtMGFv5+dSHz1ZCcZ7SeKQMzVJaeaehiKoYVKGu1HmRuOUwDAQplmxKmrRniKEVLY+PL+U
1z+8z8PrlwuaWrFbg0v5z8/jpVQinSKphVzMjAY8qZSp1J7N5SPrv8VYJAGm8r2D1SQESLYi
ob7Dcg43AegOft+ukEHUp8Y6r4DdU6NBQLdBWgnJISG7xBhB5c4RYmbxT1blxpOZhDscH2ul
cjF79vhRMDUmB0D6wyB5QnnbnNpa1Zd3wu8b4dBfJzkNhS/B5rDULMV9mLnTzqp0H+R9fd8E
eLVOpgs8uRcUIPAaio60+1bOPi1GQotoFcjEZSoeeaebAcjRyx2bfUt2yegRLCtQWHbBMqMv
ZGWLk3snywITjIKDKesKP1cCxSrY51uDs8FqQkOQ7iKE0Aeg2xsVPcpB2RuTjJIy/G9NRntT
kBGg58Af9kR3HdQx46nu8iqHIIjvChhYDDLvdzUeGNdE3Pl97MjJO/KPtCZ1bLq00j3a+vuU
Ud9Zh76qWFcu5JEd6Tsv/fHz4/h0eFXsld8k6UZbMnGSqrpcn3qZIFClCerJ6O1sdkml45og
xRWWD7WOataLzMM2/Qo1+0JPL4zGOd6aTY+SP6Q+cV6TgCLnE/Uq5MazhbAt/XVVVUo+s9Ef
Eii4yKENo2mbYA/bnf98L7+4egLkP7xST4cs/nW8Pv3oXlepOlXOZRtX63BiE//D/0/tZrOc
V5ly91oOIjyOGP6smoHvYMIcBf/eCbpdI9E78DpS3Ac5FdWiiA1Y5UciD/TsRTWkkUq0ZIbi
enz6iwnlVRfZxsJZobSN7+rJx0WaJcXSzGbaYBWK+9gvDQto16EGa2nbkP4UHKyQVwYsRtr1
3STUuatELzNkljEeM5t75Ebxun1YgzcjnSGRxRwnH1l6CGgFje2hNaHu7Qoh7CkfH0ChMYSo
bbbMjaa2/j6/hU7mnS9I/xBOKm6xFl+IT0NV46dsgPwGu9CTCjbQ4ciEqnSC3RZU8D4/C0lD
TYTqIxjFZtztD4BZZ5YKOyGx22rgZL9vzZomTo8n0ALNuUKgLitVwPlk2C2OzjLc6Ez2/OhM
9v2hmxqqKfsoX6K73j8NuH+sUj3Hm4QwcT3UgvSs+ZBZWrk9YR+hK/Ok6+BDUKOqPHQni1Fn
iri8PRqi/yu4vCd/m7VpUbhodeiFBQu6r7ZA2KNVaI8WZvsqhLXfd/mGNH78+Xo8/fXb6HfJ
7bP1clDduH5iRkDuUmPwW3sf9DvxO5MjjiIVd/pKrBkSSnU63MP8dXqMAVP615WK+lRtjd6Z
bKM90dJiHdmj8bCjfGDf88vx5aXLVCujtcnba1u2kdGb4BLg4Jsk77SixoN0zx1PhGbjO1m+
9J285xvNHWsP3k23PRjHzYNdkD/0Nu8W+2u6UF1RtNb54/sVVdyPwVWNZ7um4vL6/YjyBKZk
/358GfyGw349XEBN/p0fdambCPRJ7uueE/lZ92ir0aljuEdwRLGfe/7uRh3oVdS/1urh3Hr6
ieC4ro/xS/H5n66/jUYPcLw7QRj6mkNZ7V90+OvzHUdHem99vJfl0w8tfG/qO3dbPV+PAsDu
ivMNfDHOda9aA5smYZj0Yrdemmd92GVMExMQpOe7echfoncI/T1vG6SEoVEfS4ROFP2NEuld
sv13vpXv04zTMIymo4ugLqz3TJV2Jwr/xsHSiTlTv+85LiiRCV7QCdAJNQVLojp3nFnuFiR7
OQIwPvx0Ppp3MbUs2rQGgRs3T4ANM81BLGDyZOPSeipg7SX8j8v1afgPncCMnAWgeKdSn6ok
8DlsvvrxA9FDkDSI81U3NrZJYGxNHV5sA1++lO8p72W7Wr1v7rCxSR3puSZWobb2tEeIcJbL
yaMvbLMlCucnjz1hZBqS/bwnIWlDImNq3eiIJ9B5vNs0BS9c4JFbmrlTp5iNb34dE3vNbn19
8xDNJ3q6nBqBwawXRnSZFtUfXKilkWGDbny6E9OzQYiJa99sdSDCkcUXVqienBIG0a3W7YFg
wn1App/pSadLaPiwwYTE5kZeYnoRc26uxqOchAcjcBpEvMZ1A7LViG+2dcd2vJOZ29ySnZiU
GqaOM2nOtRnttUYIUBYXQ4dryApkPVb7bCqFXck1A+CTOdcIoLfYyfYj0LHZIF910R0QMKOI
cNvi4PP5kOvuJOK+LzzgAfOOWCvSoJ/hyadwMTrCNZ74SH+AE+6XjNITtsU1W8HNdJjawrRI
/jQyOgvXYne5xHUTftE7nZutdaNEsIzTIpF9WrjxcFDHsC9idDY6xzQXURD2seJpT4xzQnL7
OAGSmfXramZjNhuRTjGfs8tZFr7NGmVCcS5kaENghFkncP6rfSHUm1We341mucNso2g8z7m5
RLjNfgwxfcHfahIRTS3W0tTywLFhZmhWbTpx2VwvNQGuavbUrJ8e3Wza40P8LepmkD2fvoC+
d3sztI8azF2iMluwnDSHv4Y9eaSaLs8Mg3/zdkOUICVf+GZ5mFFAesnpH26h3VtR9dQ+crqv
UAFY+PGavEJFWBOmdePEsR8Kik00L1l00sgcmPk1YDSye5nEFWDEQCNfIrI+CIjxSRUIAbVP
u3oL5Fv/AKj0N+BVUhI1wYWXkkrko7cNFimidZRzCNJobLDhZVBBNVVvVVQfaQbWfT2Wp6s2
sA6oQS7oSgX9QOTQe8B2/Ouu1lUut6uui6OsdBWQTCH3EqoP8rYq3h1khSiiZOe3L431JYTY
Ol4XG7NFkWx8JzVXXwOXSpBvOC/V77tpx5rR2u4797Z4U0s96L3xeDYfdmy8FVxbJhGOvxsE
1VV061mdj6Z3bJgIILS0RZ46GaqTTZyoBqyi1Ujkfw8NcJbImZm031MIdRlRRL4QRqLZhrDq
a7EMYW9xE6cTEK9dDdF5aKG3gqwP1kgVZN+K5UMqb1m6qd2RIRQqBQ23LlTErXakqghckR9v
zVoAvHTCMGFtkRVBEKd6dqm6toj7BADrl/QFwxd3Xsqxm528je20T0Jjn7eDKKx0petH42sV
UflhM/EDKmfmp8v54/z9Otj8fC8vX3aDl8/y40o8xetY3b8grfuzzvwH4pldAQpf0FSmuQPc
hs/BtE5CbxWwa0hssxUG5K69NMkQqw1ZuD02rc09CMmxebGoTBuv56e/BuL8eXli716lGxi6
6BRpkE/HS5ansJVodThBuEy4a5UA2r3VTEfKTak8lZfj00AiB+nhpZTGWc3tqX2i+QtS+h15
Kq8aD7msfDtfy/fL+YnreObj8w5gKXyaCaawqvT97eOFrS+FA7raMnyNpGQz7fjW9D7IWoPr
+fP0fH+8lJoooRDQ0t/Ez49r+TZITgP3x/H9d7TxPR2/wwi1V8IqbODb6/kFwOLsksbW4QMZ
tCqHRsPn3mJdrAoHcDkfnp/Ob33lWLxyqd2nf6wuZfnxdIBp/Xa+BN86ldTixDZw3eooZwf4
V3Wpm4D/jPZ9zezgJPLb5+EV2t7bORavsYMEhJSgsy/3x9fj6e++vlYC187dsj3lCjdW4H9r
mTQnF0YB3a0y/1sjGKmfJOtfLYIoFOb5q6MTJbHnw1mmyRA6UepnyMocJcFzBOjbJpxdD7pJ
U9BTGk7SYOebLWdSyrTdLPydH3PGdX+fu+2Fkf/39el86iYtbGpU5JhLqPjquDxbrmhWwlmM
2WDUFQG9tq+AXOqoFmXbbOz/lqDOCcWUlYmh+gubob5rcB5PRvRqucJk+XwxszkRoCIQ0YRE
Qq/AtasXh4A9g/5IumNUBAw70+P2iFCqESBLFK6mLgV6jQHKQjJIAQcrdP9rDaw0ivbehGC6
HKhLhg4yncQaiL9bBStJRcHVfZ3vsY1Vf64EW6ZDKr8qcO81JBbti7jvD8ZS4dnK21bKTVTv
FefpqXwtL+e38kq0aMfbh/ZMm/cKYCbqW0bOmHVTX0YurDh5a6mpCDqUpsjxHGtOA0w59qgn
jGDkZN6wJ7KYxLFh+xBDY5VpzzNVi2z+nZEc17ymAcWdk/Hv9sLT4pbKn7SLd3v3K4aE1dMQ
ubalRyyMImc2JvkBFcBIJwRAIwMDgOZj1tEFMIvJZGSmiVRQE6A3be/CzE4IYGrpbRP53dzW
cz4hYOnQIMnGAlOL7nQAEQYd2J+PL8fr4RWvPYFJm0twNlyMsom+BmfWYkR+T/Ugz+p3EShZ
3MlAj6KqHRAsFvy1meMF0iTjsGkxq4yWJM8YwubzCqYtW8zMCLyxL1MdpmnsTWPnxzs/TNI6
5kvCJUPZ7Gd6HEaVwZo2LcxdazwbGYD5xAAsNMs5HlnkVggAVcDHdpG5qc0nbJexN/A5kspC
QVuDqWEfR92hip0tZudgdXI8xtQgGjapHZ7a3ee5TU6HIuBnsCXYdSuVcADri9uT8kGUeKY/
mEpxRyrJZemhisaswwRs9wmFqaR1pPhuNR0ZY9amS6TwSrjc10NZ77JbO0rfc6vL+XQd+Cea
hRcZXOYL1zEDw9DqtcKVovL+CpIp2bWbyB1XV1qNvtJQqW/+KN+kp7ay4uo7Pg9h1tNN55W8
QviPSYvRTiB/ygporivmZKM43ygPFK5nm+lzFcw45PCjQYYhDMU6tXmjtUgFezW4e1Qp5lp9
3Oy+smofn2urNkzGwAWd5HwisYnqk0pJCoaNj6JbAaB9Hc/WrwsIkWgz3lttiCKR1uWaNrXq
SgdJJJHcqJDHVeOvtIBq8cI6Pqglxx8Mk6Fu4caUY1R2AMh4zAsIgJosbN4fEHDTxdRMbFfz
7TTBOHK6yCLGYyOh39Sy2QwdwEwnI8ptJ3Pd6RZY63hmUVYBH5tMaLIrxSkAwZuPbw2fcliB
uX/+fHurI3jps9nB/YeK11j+87M8Pf0ciJ+n64/y4/g/6LrpeeKPNAxrk4UyMkmLz+F6vvzh
HT+ul+Ofn2jH1r9xk05dwP44fJRfQiArnwfh+fw++A2+8/vge9OOD60det3/15JtpMSbPSQL
8+Xn5fzxdH4vYeBr5qVxovVoynOH1d4R1mg4ZFeWtnvXD1kCUihZU+nWHnbTLdLNpMqhZNrZ
ZxKFV/MmOl/b1pDIav29VDyqPLxef2hsu4ZeroNMveg4Ha/GoDgrf8zf66ImPBxRT58KZrHL
m/2ShtQbp5r2+XZ8Pl5/apNVtyqy7BGNJ7zJ2fTsG8+FNtIAQZ5rDdmknCQOTBR4hjPsJheW
xX4k31pkn4tgBrI3f9AAynwMWY+B2V+152GzXdH1+q08fHxeyrcSDvFPGD9j8QaweHtW2Wqf
iPlMfwVeQ8yj8i7aT7keBvGuCNxobE31WnSocUgABlb+VK58YhTQEcyxEopo6ol9H/xWmSKw
iVB1Y+CUj7cMWNldW95XWAU2FZ0db7sfDdmk4U5oE6ch+A0bkxgxnNQTC5vVsyVqQZVBR8xs
i13Ny81opr9Lx9/06HQjKDrnyiJGd9GB37ZlG2WnQ860hYiprm2uU8tJh7pdSUGg38MhCZQh
c8CPYFA4nbuRL0RoLYYjzY+DYnRHKQkZUa8r3RDAfkgjSLNEW11fhTOydB04S7MheU5Tt8TM
QBzmGX03s4NVMNbDkwEzBNZJktkrCAn1GifOyO7hFUmaw6rhJjOFZltDRFK2Mxr1OIogaszN
LSj9tq2vX9hQ210grAkDotsvd4U9Ho0NwIzeyFXDl8O0TaZ82yRu3o+b9WQFBdx4wuY524rJ
aG5plvGdG4fVXLTCmITZ3KDs/CicDnXLjoLowYF34XRE994jzBfMCv/IlXIbdVF6eDmVV2Va
YfjQ3XwxI+KphPArxbkbLhY99rbKaBc567jnfAAU8Ls+2xoW9PMk8nM/M0xsdfnItSeWnpSh
4szym7xcUzenQXeWDKiik/nY7k1UXdNlEaxfJp91fcfMjbIa//YhrTbuUpnaEp2PEFaH8tPr
8dSZOm74gtgFnf/W8GnEyjbcxP6lxxnzSfnN+qHS4Mvg43o4PYPqcCpphzaZfJfE25ZlpJ5s
m+Y9pmd8TRQmScqjpcM+p7PyzaqO3hMIg9K19HB6+XyFv9/PH0eZsZsZTXmIjIs0ET1b69e1
ETXg/XwFWeDIWM0nFmVfnoA9zl3YoAY41o9T1ADVEabb20z+1PKuNOwVlHuayXYBRlZ3zAqj
dDEa8moBLaK0tUv5gaIRw32W6XA6jLTHHMsotXQ/JPXbuAUIN8Al9RvJVJDDhRzEPn2UskmH
/BkQuOloyOekjdJwpFvo1G9TqgUo8DeO0UdiQrLiqN+d8gC1+XcLFTeTneEnejJmF9AmtYZT
begeUwfEs2kH0LSlVpPNKWtl2RPGI9K3j370EGQ1+ee/j2+ob+DOeT7iJn1iloKUuCZU0sBc
ehmGZfSLHWswWY6IsJmqFBK1kLXyZrMxdZQV2YpVM8V+QcWTPbRlaJacs2OPJ7zNS+27cGKH
w313dG+OSeXb8nF+xVezfRcgmiPLTUrFvMu3d7SmsLtQMr6hg3FUopTdRRWiXarhfjGcjliF
XaLo8/Y8AjGee84iEZrFKwc2r4u78rdFkgBwPWnmX3+pDT/UqUFBnShUCMSb5lXOx4pDfDVC
vXj5Bp/bf4iUb9L1axXZMrwfqC2aQfZNZgTtxu8ADLpuEfkMmhrw8pWHXsRQhBzoZt1N1SmG
dSL+bipGEmASN9fzkQDbwSv4BIMjh6F+NCvMMnMjkS+r2wETqzyO1/cmHBNA1Q+0FavYPAzE
558f0rWlHYPKdZyGl9GAVd5dhW4dNDHezjpCAk7FdaPiLokdGdyH1ow1Vk7pRZ5kGXkFrCO9
3mIiAEmH6OYE64Q7znkUaXAhBtF+Hn2jEXBUN/eYjlLrrIZM905hzeNIRh/qQWFfjQbD2kyr
L5G2Rk6abpLYLyIvmk7ZQxHJEtcPE7TSZx71GEVkkyR9w59ZBk3Ay99IVec6xA70Esm4OZb5
WqDmuGRpaQXRPQnGgNtOuusI/IBN3lx4pOUF3/9Irv2mrIyc4+ktsrYNmdMN1eucni/nIwnY
5sRelvTEO67JNZHS4bw162eyrV0AAd3XsCYebz6FR8OSK+Pp/eB6OTzJU9/kXUIPKwU/0CiS
o+MyWaEtAnNM5RRRv4DWQCLZZq7PZUXRsE34AtYU0ZCtMLSddq+nOFW+6UKKdU7CDDVw0ZPv
oyGAlctaOit0mgfM19pDqjbadsdZuzdI2aBrK5rrEX7W0aGLuBODSSNSYdX7A61oNHw4Zo3A
kRHKNIswoIRKhUHqE0sf/aa4bYjRitLQ38tjx9SoWYfnLd6cr2cLiz+wEd/bOUSiOzyv5DMf
bthhVCSpHiUhSMh9AP7G07YvvoUIg4gexgBQ/NHNs9BcfJmrEnGynXCTrRkWt+5eQsPO4W/F
fz0uiopEu/Vb+FrToy6T6gLwiOEIJHfVBMudgxI8SO+guqdOJnTJAUBBEjlEtPH3uVX0cCLA
2QX7Zh8w42JF/RnH6FmK+fJkncY3xrI9icCMji73ir+mEb67zYzrGYnri5n5delpJyz+MoMV
QK3R0nXcjcZ2Mj+AoQGM3okGCKQuffHckhd7J8+5ef5a19aU+vqLPn/t6S/Ce7uLZdCGhHHR
yNf28vvsRK5XoneSE7eLrCW23ByhGtJ2S29Bg5XjJ/fMGvt2o+oi28Yga8RAJQM4iG59fSOh
sI6AicmZFmb+qtiBvKpnpYyDUHVWWxyW0UUJwBE2JrMi7E4/pVBdZ4dT1SCD6ATxV2Akge4q
UtcP3EfaHFhk+JhwbQof+aAPNf5R5LwDpVZvxmZaewSBtLOucVJYWcdYGM32xYcqlFsoiArO
V9Akl0HoFwgmhgV0h0dvrwcTrzcKRP3sITXTIOkUuCDY9bgSzLtCBeqRNSSuE8Kqrs4xE6J+
2yY5UU8kAN9syQil8nxB90hO6seI6xX9/f9WdmzLbeO69/MVmT6dM9Nu49yaPvSBkmhba10c
SrKTvmjcxEk8bS4TJ7Pt+foDkKLEC6j2zOxu1gDEO0EABAEmCmtgFNjheBfTvG5Xll1HgSiL
jiwhro0Jw9Dl08pm8Apm7xTJ7+0nVU6mpcFgo169kfsCc9phnmu7qAGKyZZSzOXawp/R7wdK
lq2ZzJ+aZeU6UGxaJJz2OTWIcg6DUy79x3Dx5vrejnQzreQhQ4oxHbUiTz6IMv+YrBJ5hntH
eFqVn0EBdA+TMkvJEKlfUy9AdDL1uL1uB123skCX1ccpqz/yS/xvUdOtm2rOqHdmBd9ZkJVL
gr91+DDMOb7EmPsnx58ofFri09CK11/e7fZP5+ennz9M3hljbJA29fSclCTc+hWEqOHt9fbc
KLyoiSNUS2Bjg6MU1P327ebp4NYatEHrFWVML3+JiedplghusPwFF4XZCceuVudLe9IlgBY3
HJqQAANq5zRpYwE6nCEpqT/DGaD1bL+3hoibVuq9t3pSHdBzeb0uxSJEp6nMR/zwow9DTC4P
JNArrD05puK0WCSfjj/ZpQ+YT5YjgoU7P6WdyRwiitk6JKeB2s9PP4VrJ5PdOiSTUMFnRyMF
U+ZUh+Rk5HPqHsYhOQu263MA8/n4LFjl59PfDsVn87LCxpyEqjz/dGJjgMPiUmvPAx9MrJwS
LsqZC/nEny5/QoOPaPAxDQ60/ZQGn9Fgb/lpBPWCx+pCoFWTQLMm3jZblOl5S0vYPZqy7yAS
o2DA+WYnateImGMQ5pEvMbIab0Rpt1RiRAkqV6DYK5FmWcCUqolmjP+WRHBOP3nUFGmMyQMo
R4OeomjSmmqkHJRQmnpNVDdikQaSXiJN4MBNMsPoCD+IrCNFGjvmLy3rlO3aujuxrBrK0317
/faCF3deWJEFv7KOQPwNIuBFg7kJPFlMH7cqxRpMNdKDaD2zyuh0CC5Tt9IHFyDaZI6J7FXO
VfLRGdBIFSCNFY1ll+p0/jbJeSWvZmqRBuxKmpYyX3UoUyyYsxWH/4iEF9AF1E5QeG0xcEVs
v5bxiEZQIHZlGcafHaNBdlct7T0yBTUP1SRl/CUtwzA8sSwEg9Sr7OGm9ZlAY5zW+Zd3H/ff
do8f3/bbF8zI8uF+++N5+9IHrdTS3jDW5guBrMq/vEOX95unfx7f/9o8bN7/eNrcPO8e3+83
t1to4O7mPcazvMOV9/7b8+07tRgX25fH7Y+D+83LzVZevA+L8l9DgPmD3eMOHVR3/910jvZa
mIplakFUptoVEyqtXxd21hC5KCpMf2lbJAEI4wP6c1G6j/d9GpjAkfi2DiFZFz7MxmVkRAIO
V4ovtIGfBWm1dZceLo0Oj3b/0sVlDrpHl6VQ1gVjc8idXWqTdvzy6/n16eAaU4M9vRyo9WNM
lSSGLs/YMnXL6MBHPpyzhAT6pNUiTpdzc7U7CP+TuZVfwAD6pMI0EgwwktBI7eE0PNgSFmr8
Yrn0qRemlV6XgIYun3SI4UPC/Q+aKkzdJ7PUpkWbajadHJ3nTeYhiiajgX718g8x5U0950Xs
we0wWh2wj2Sm9Mi3bz921x++b38dXMsleveyeb7/ZSqTeuoq+ralQydURBxdZey3jceJv7p4
LBIz1rReo7mlR+jBaMSKH52eTiwpUd2uvr3eo5Pa9eZ1e3PAH2XX0I/vn93r/QHb75+udxKV
bF433i6M49yfPQIGmj38c3S4LLMrdL4mtuIsxWiQfof4hcyZ4/Z+zoCfrfTcRPKZFJ43e7+N
kT+k8TTyYbWgho6MW9Y3wy8mE2sPVhLVLal2XRK7AUSWtWD+Ri3m4dHEaFF1488D2q/7QZtv
9vehMbMC1GmG5gTf022GjoSHaKU+0q6U2/2rX5mIj4+IOUKwP0KXJLONMrbgRxHRPIUZmUSo
p54cJunUX8lkVcFRz5MTAkbRnWKCUx+ewqqWbi3UMIs8gf0R7gbi7VctA+LolH7bOVAckz57
eg/O2cTfmAAkuwEIqI8Cn06I03bOjn1gTsBqkFuickb0sJ6JyWfaG6ajWC+hbt9UvHu+t9yR
e2bk70KAtbUvb4Aos8YYZ0GE9/RYrzqWc9BOfQ4eM1SSQh9Vtb+eEOqPd0J0Yir/EiNYsaxi
Y0tAM3CCP4ul5RbWT6G/Gep1SY5VBx96rWbn6eEZXW9tQV13bprZ1tCO+dr3cB30PBBJt/+I
ct4ckHN/jePFnW6n2DzePD0cFG8P37Yv+qmufsbrLKKiStt4KQrq3lR3TUQzHUiQwASYsMKx
gJHAJIpJG7NB4dX7d4rqCUePR1MbNeS8lhLFNYKWjnusIW677e1pRgesp+pk/GApvJAyZxmh
t1RNab09q2F1H1ivU0d+7L69bEAlenl6e909EkdmlkYk45BwEfu7ARHd4eSHBPZpSJzalqOf
KxJiXCSSFAx9OoqZIFyfhSDypl/5kPmWIhlrpHGmks10xMfxxgYOoPma2jd8pWJrMUY5/RhU
NcvSuvSHwcD5pxsiWZ33sZuo6hUeBP/x+hUZ9u3wxD81kMINmmqgMEnfZWzH9jHQcQxn62+q
z7Nylsbt7NLXwBy8b2c06Bac5xFDd9lKnqlwTpAsi1VXec7R/iZtdpg10T+/8bnxrVRd9jKj
1n5396jc4a/vt9ffd493JhNWl1m4nzBhU9XbGekL2T8oWw9DlBZMXCl/gKnmG1mQYWBk5rN2
eTGMo4a0EeimwOGFYdDDQLRMAEkxMzcheqxbDgdRCgIShtM1TkXtGQ6yUxGjuVBIF2NTMTdJ
Ml4EsBh2rqlT884vLkViuVeLNOegjOeRlaoLpGtYXnCCWKDJmU3hC+Bxm9ZNa39lqwPws48t
bS82icnSmEdXtMBsEJwQnzKxZnUgsrKkgLEOYc9oWSJ266GuQIF5+bpQbOjErvIDiyIpc3sc
OtRX5IRp4YhJXxUzd6AgNfXuTTY04RQcJCKS/oSkR1mJIJdgiv7yK4Ld3+2lmV2gg0mX9aVP
mzL7PrQDM0E/axnQ9RzWLzEzHUW1ZMKvLYr/JirD6aAuZfoet7OvqaHVG4gIEEf+JiQuC4Bt
Yx7yrLSzfRhQvDgxd5uFgzpNnHR2WrGsRVVrALOqKuOU1emKwxgJZt1ISNdVnrsgGe48N60W
CLeC1xeyJSpmPXCemelrLnEyyD5bSnHMyScADc+YQNf3ObdfpVTrtKwzyxCAH6D8F3JYrGaZ
GlujjgvjlJtlZWT/IvZbkaH3BjFpMsmYGX0pzr6CwGDG4hQXKAAZNebL1EoplqS59Rt+TM1U
QWWaYCJOONOsmKFlURvhqI3Ln4I0akn685/nTgnnP801UuFDkdJ0ShPxXE7uEp9HWIpAjwKM
4DiVuMQZeoGls4Kga1TOvnaaNdXc8QyWtyAJX5bmZAMjthYZXtgVM/tY6N9kOuexfW+kpQUJ
fX7ZPb5+Vy8SH7Z78zbJcByC7bKQ2SdDvoELECvtN2KxeqrRgqyUwWGd9Rb+T0GKiybl9ZeT
fmmosP9+CSfGgr8qGGa28xY8TSEjitGXnFd5VMI52XIh4AOqo6oE+HeF4fcqbg55cBh7/X73
Y/vhdffQyVR7SXqt4C/UoKva4Fijng10+l3eoAGl8xTXC1lA66WT5pfJ4dGJuVyWwN/w2U9u
OZyzRJYFKHPnzDm+K0QPRViNGeU6rhpYKSdi9LfKmcrKrWt0MLJNbVlkxr5VZUxL+SynKdQH
csu0x7aJ06Rcc7aQcXAx/wwp0f7peP/LjFvfbZBk++3t7g6v+tLH/evL24OdniRnKPuDgC0M
qdYA9veNao6+HP6cUFTq0SVdQvcgs0I3Agyx/e6dM14VMTKVZOzrdmyy0Gs6rRRdjq9FRspx
b3T7s00ejTCdi1li8Onu1+ChAL91R7qNTvkoIJXndD9A8RI3KktaBJVki4QSYgY2G1Ws8+4H
rR27NjRZ4sx6FXEtyIeB3Y24ookwur8p+ptIKTgMJE7xCk5U0DV1nk5rp40waSvvQlxhmgI2
cDzHlRYuErYTyBjoUTx1XJF1IQ4JOdyKtozw2UCLNpBghZE6NZ0vOShMwU/kns8t8WZs6hYx
4hZxuWojUS64Fczkj/azvTHQ09U2GSg4epF6unjnMdCXO/AG6W7HL2uMCWpKqaowxLrCl43Q
fH24DB/OYCy6XBeBdNUSvSzTqixS0oI41ITPUtwWqFkl2EqH6MUM+oi1SKeOgSVAJmPGkImS
LDL0zw03S8SNPKl+WwycFnBY6Cdyge67w98z7iprot5UajLCbvWA0JfBmeQW+zs4CotSxGyV
SfHs8PAwQNk7sUy9uetppLNOFTNv4SmvmgaFKeN4Brkh6VC8SFwxQn25yv2xX+XyptN/Z+BS
CYoz99jlDFTzmfm8Q/PsjkTlUfNaRINVEgHp+ENOkewnxQEJ9PipxypzgB0Ejoy9w7uTQWF9
u7DC4iJHYb4oB3aXJG4MG1nGmA/TwJG8/s0xIITLyCT9Qfn0vH9/gLFR356VmDTfPN7tTa5W
gGgCJ3FpvZKywPjoszGs4uj21Cz7UOXGsiuntY/sm4uHPUZnz03CZSCxepi4a46xm7Cqdo7h
BGpWWetcbaweJRlT2cDuPzr0KxrIZD2GTTJE0o9M38f1BYjCIBAnJW2PHZ8W5ZAKQu3NG0qy
5ik0uKQRaHu/YCcXnHehc5QVF/1KhsPy3/vn3SP6mkArHt5etz+38D/b1+u//vrrP0ZMKHw8
J4ucSW3UV8GXAlPmda/lSIYhy0DuGmQXaGBpan5pWoW7hd3lx/L4AU2+XisMcPRyLX04HQKx
rnjufSZb6GxshIGO7vOSDjHCG3U29oxzStIcisEhlReHOq+gWZtsFGyfuhHcM8ENi63vMXGC
90fB1CrIsiX8H6vCsl/oIAtDS1D9Q9dOEDc5T+DwUTbdkYFaqIM5wLi+K/nuZvO6OUDB7hqv
LKy0RnIcUytrpBKDKGA1cyHKe9qy8UtpAQRyVjO0JWBgOyeU3mjb7PJjAcNQ1KAiDbnN4oYS
LJ3Z0bo7SD8yMH/rXgwg5rdLA4nwifJQRJBMTiaxchDHLyo/coXdD2cTXnR6vJAavDvq6kEu
SNF4iWaaHWWQQGiHcI7f3nAwjp2BXjenabSNyI0MogqQwDaXsiMMGN4GOSQY0AhXtqQEKbzw
BMW4+1CVMiBVczDiX+vUrWqNbeYmTX5uKiGZtEfSW7dk8KfGUazWKVpf3I579NqMGyA0eHuH
cEcLj0A8V4yiB0OsPUe0CU7KoiMEIMPAQT8lSCyZ1pvidcZqD9pNazd1lTclVcGW1by0tpWD
0jYoGGLSZKBqiIDNwfirJKfOsFg4HrK5aDQrCozdidmk5HdO8CVNBQtR48lh7CodGegoW8gb
bJkvgt75DVQXcbX2zPOy20kunKaurop6PkAH4yNeWXdRPwORD+XQqpWvIhmEyeSGHO6bKTY2
bCvrXtqrjmXymgbHmbpV6JaUd2OiETUDlrx0uPiwff+EAjHmoh3YtNEHs5iAtbsfeNz3I4QM
0wFSarqhrsloUWlnODTj/qhHRR2FcQtUehh1F/H0z/bl+dqRafUKWsa9L/2aC0HmP0IihTSX
Hk6/Yi4gl4HMd3Zi0vMcs/goXdjySS4TzBQFvNO7Z+ko/m7yZZuxiGftlDN52EotmrxxqgUs
m0uYFH955FXaqusdAolNxGszVHEwvtLCjbRwaV2IXqrLTucxhYLC6FUg3kamBd6kb0WJSY2s
rIwo2ZtsM0rS7kSxm8iZyK7cpjkI4JWWPcFFw1KI6bdsREFSQ/5y+PP28PBwcnt7bpIu66Tp
Qlfq+xlvaZl3YvV2/4rSLWpZMebH3NxtzbW3aIqAG4QWEVu56IagKiSxE3hlbFOhadMzE4D6
jxZPxQhMX4COemgvknXGLHkPKdAwSD4SREq84xENWl9dKysiYe0xwZmyUR3+xEjnvWIsQJiR
Jz4sWdwlblbobJHUlNFXcjHpmFQ56qLE5GkhE6KHvqwsOSTS2obcPb4sHOEdf8hJwXISsHee
5SPg4PRdN8kXZBvn/BIXYbAL6vpWPSc0pY8OWcWmA6qELgBc2+HFJFw5Y4Uqcu+NJbBp0sQB
XTr+DhJoWMxMsEDfnFpeb9kI22dHgtLEcISYpkWCLaK8vyT1NBU5KIpuuU3CVYZ7u+eWSZAW
AORyAr4CEuDIXEgPs5RYiDxPQ1tftReXhnx2ShQOX7vq9CjD8d4cqpv6/wGK1lJN8bUBAA==

--YiEDa0DAkWCtVeE4--
