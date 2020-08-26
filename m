Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2OMTL5AKGQEZ7DPPEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA68253653
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 20:14:02 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id g7sf1813178pja.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 11:14:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598465641; cv=pass;
        d=google.com; s=arc-20160816;
        b=rBFcIAvotvZEAuMgtr19POxFe/8WoScnZcbwzrXlDX+edMiq//4qMVEvuJ3cuMGID2
         N9O9keMKkLzKODiLa3d10Oypxn23/oSYUs+CIUDmeKoYsvlytqIAVIf+viToYiIeQGXw
         vFblfxC508H8H0dKIFe7n54QoBb7qDosvzkrPBZTmPj6uE8hUvR0lMbH/zf5zUfFE2yx
         kHCfUIq345M5xvlDRsXZrMHitQP7ZYOZ5u5fW23bdlp9/P4TpDL8kLgcCHKRQ/M0V2ms
         NHHyXX1R3hud7Z7oZtG0crzAU3m4p5iItbXGIGeq+eZy7o4aX0ShNu6rzCudMH9eAN1X
         N+SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=5aVcXMSYvAIxYp91Ffi8HUEiw9GVJ4dythSlOw4+d7s=;
        b=bYwQt+NdKAaPyiN+XATZ5liKvzBwH2uvdCvtLyAKc2hITAzWqyUwR90VU4gUSQtPGL
         KsxWwq2C8gb4919vajdk3pHdgdmMDv91NZIOMhJTl9Q1Scl0Qyo7YBW6C5eyB16tb+Q4
         saZ6oCg9pxikf+LYSlD2UKxqeEP+Yovd3xVEyLSKB+K+luRxktGT92S2vlG0wK4lFe4Y
         yKve7bKAGxhRzSTDwoLLkJJMkW3AUMAGUOyjaBitEo/j5vyBBUC/t7I/D37AooUAPiWd
         emygmEJRNEcuv4mjEv6lkmZXH1nYmix8dHKL3hngtVotE1zUhKhQgO4fsmXhiA2SUexk
         15MQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5aVcXMSYvAIxYp91Ffi8HUEiw9GVJ4dythSlOw4+d7s=;
        b=NokMOWBP44LXUk0CfxvvYa0iGmL8E/hpaBSwLFZN5IawV1U/SBciW9yB8NU2U+GlGj
         VXvyieeE+/hYU2YbOdA2XL/a2EBmmNOXBe2NOrLP5IBY1L7AZ0lz9bYB9wmMeg+UE2GA
         rFfxAfxFgVZpBgdM7cYkCXIwARDzB4jAYvYWAvWASoTgec8LINXAaW6Z7GR/12PFjMRI
         DMyb4/+zWXUDHfYpQR+rmhwzQdZsVx/1EF5Mga2Kry/U2moKS8k2s+Plx6hqZS55x+ZT
         V6CeN4oo7BJiELSPgZV8cFJPi1kcjdcoYgepXRoC0GiOhaqd8PsXexDe1A3+sZKIp3UY
         Nb+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5aVcXMSYvAIxYp91Ffi8HUEiw9GVJ4dythSlOw4+d7s=;
        b=PpKboC8HWLB0fRzUx6XfOgl686LIeLzD3LfFMkAsuQHj6zwI9lcdUitU/VoPB5MKt3
         3GjYTuN7eybSYCvXT9ZrfHIJkdKMQyBQkM4xgmBVGKaesojSxUE3lJbZVTWTKGOXVkaU
         BuP2R8xlqPuSauP2hc0IlJPM/3g6VL+v6Kxzp0ffESulxDy1fKxwioSg7GFwDe6moodL
         Es8Ze/44EsrM3rtperkpOJdAylEpZiiQPgCUZkDbyklGlMttUoWgE4dZnxpnrprijoT6
         j3fbsnUH4rwC6VmtBw/1Nyvv69ay9Gc1pm7TFJ+MInNvpfdfZjavTMjAGLnu0LR7xhP0
         2uCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531r8fpzrfNp6o3pHi87KLsRpRBYL4um1ZV1gX3zOZzZXLxki/V+
	jsk2TP6nHprzJEm5GE5nSyU=
X-Google-Smtp-Source: ABdhPJzbJhwNM/g+Lr6WQ5uGllCkGImtZaxmikBrD8PfaeCfkSzVweWFBON1bqbnSeaZWmO1CJ8QNw==
X-Received: by 2002:a63:d907:: with SMTP id r7mr11403809pgg.160.1598465641319;
        Wed, 26 Aug 2020 11:14:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8682:: with SMTP id g2ls1578476plo.10.gmail; Wed, 26
 Aug 2020 11:14:00 -0700 (PDT)
X-Received: by 2002:a17:90a:d24c:: with SMTP id o12mr7266237pjw.60.1598465640763;
        Wed, 26 Aug 2020 11:14:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598465640; cv=none;
        d=google.com; s=arc-20160816;
        b=SNjR4EmESLWBpdszZ+W2IPS6zxSi+E+qLS/hbFJghevZBOwrTuXWaJV5ksMEtripXy
         0tX0VrvQSoPaBZiGqy75ideIvCRsCtNrfCJd8Qi3NwKGZDgcA+Z+MAcc7bhzMZOPJFp4
         1aAR4eg5aePnRFt/Kn9YqhrBU7rr5YEuxzP5DOsw21oL0GeOqdMQayC4A/Kdu5K4JI3v
         N6HKZwJe0PnZqLH7qCk+HZxshfGbmQzcJujvue3gxu+OVgAyrwexx58t2fBiBc655QWe
         25K3370H7vwUZzmPb6QMCWxCEClD9lyUT05ZMpzFhiqsrXxWy50gM9KjZvkkgWDFm6a4
         L/WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=fUSFV7lFFXf9buLMPA9IxAeFkKW0gh9G1P72RcBc1zw=;
        b=dSXdiyMZdOePiX5Wv2L/rZdtOtpR/Xyz3leLjlFv1jFLqvXoNUIWQTt2QISdIktYik
         eLSZC/Vd9HN5kweYo7ytWH6kPmKcCE2ROcunA9+uyBQ15lKjSinQVfUXNE4zTKPTqftz
         BjeLjebK2Nw5FFCBsvjump37aehx337T5MEAofT4pEB5q3o73fjt7dCxXT+3INYfVy47
         qY5LXn1Kh9TT4jk/8Cpq6T+cck1/tgrefut47Dn8XrukAsoKV/Aqug1mX3ftfu7EZJX9
         Y9IJxD4Az0qGk+CBHTlulFJdzQXBZjQU9q4nKWxuJukwPz6IdP198ATjFiwxm7Gj33lR
         WIhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id j4si213637pjd.0.2020.08.26.11.14.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Aug 2020 11:14:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: FT2bylym5ZIjB3PaV6uEJp9obbK2PH+0X1fbCD7vBnUuqKdzKF6TOgjI9QKjcWkGuI+35cGUWK
 AT7TEEdhq8ag==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="153931140"
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; 
   d="gz'50?scan'50,208,50";a="153931140"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Aug 2020 11:13:59 -0700
IronPort-SDR: waXaqxpSyTc0NdSDF9E/6X6OD+14uQTceecx3YDI9nOw12UNZwaWOGh9pO2H8Qa1A7xlFRN898
 dabx5lCHtjlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; 
   d="gz'50?scan'50,208,50";a="331874256"
Received: from lkp-server01.sh.intel.com (HELO 4f455964fc6c) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 26 Aug 2020 11:13:58 -0700
Received: from kbuild by 4f455964fc6c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kAzvp-0001a6-N0; Wed, 26 Aug 2020 18:13:57 +0000
Date: Thu, 27 Aug 2020 02:13:41 +0800
From: kernel test robot <lkp@intel.com>
To: Goldwyn Rodrigues <rgoldwyn@suse.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [goldwynr:subpage 3/4] fs/btrfs/disk-io.c:271:8: warning: comparison
 of distinct pointer types ('typeof (len) (aka 'int and 'typeof
 (fs_info->nodesize) (aka 'unsigned int
Message-ID: <202008270237.cOq6n15C%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="GvXjxJ+pjyke8COw"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--GvXjxJ+pjyke8COw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/goldwynr/linux subpage
head:   5866ec7914509301e4e2209097db5d73eefc784a
commit: 8124f8a1d6240b9510aa90ad87730f8a02fc9f31 [3/4] btrfs: perform checksum on extent_buffers
config: s390-randconfig-r035-20200826 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 7cfcecece0e0430937cf529ce74d3a071a4dedc6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git checkout 8124f8a1d6240b9510aa90ad87730f8a02fc9f31
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from fs/btrfs/disk-io.c:7:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
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
   In file included from fs/btrfs/disk-io.c:7:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
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
   In file included from fs/btrfs/disk-io.c:7:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
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
   In file included from fs/btrfs/disk-io.c:7:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from fs/btrfs/disk-io.c:7:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
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
   In file included from fs/btrfs/disk-io.c:22:
   fs/btrfs/ctree.h:2265:8: warning: 'const' type qualifier on return type has no effect [-Wignored-qualifiers]
   size_t __const btrfs_get_num_csums(void);
          ^~~~~~~~
   In file included from fs/btrfs/disk-io.c:37:
   fs/btrfs/sysfs.h:16:14: warning: 'const' type qualifier on return type has no effect [-Wignored-qualifiers]
   const char * const btrfs_feature_set_name(enum btrfs_feature_set set);
                ^~~~~~
>> fs/btrfs/disk-io.c:271:8: warning: comparison of distinct pointer types ('typeof (len) *' (aka 'int *') and 'typeof (fs_info->nodesize) *' (aka 'unsigned int *')) [-Wcompare-distinct-pointer-types]
           len = min(len, fs_info->nodesize);
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:883:19: note: expanded from macro 'min'
   #define min(x, y)       __careful_cmp(x, y, <)
                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:874:24: note: expanded from macro '__careful_cmp'
           __builtin_choose_expr(__safe_cmp(x, y), \
                                 ^~~~~~~~~~~~~~~~
   include/linux/kernel.h:864:4: note: expanded from macro '__safe_cmp'
                   (__typecheck(x, y) && __no_side_effects(x, y))
                    ^~~~~~~~~~~~~~~~~
   include/linux/kernel.h:850:29: note: expanded from macro '__typecheck'
                   (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
                              ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~
>> fs/btrfs/disk-io.c:279:9: warning: comparison of distinct pointer types ('typeof (len) *' (aka 'int *') and 'typeof (fs_info->nodesize - (offset - buf->start)) *' (aka 'unsigned long long *')) [-Wcompare-distinct-pointer-types]
                   len = min(len, fs_info->nodesize - (offset - buf->start));
                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:883:19: note: expanded from macro 'min'
   #define min(x, y)       __careful_cmp(x, y, <)
                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:874:24: note: expanded from macro '__careful_cmp'
           __builtin_choose_expr(__safe_cmp(x, y), \
                                 ^~~~~~~~~~~~~~~~
   include/linux/kernel.h:864:4: note: expanded from macro '__safe_cmp'
                   (__typecheck(x, y) && __no_side_effects(x, y))
                    ^~~~~~~~~~~~~~~~~
   include/linux/kernel.h:850:29: note: expanded from macro '__typecheck'
                   (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
                              ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~
   24 warnings generated.

# https://github.com/goldwynr/linux/commit/8124f8a1d6240b9510aa90ad87730f8a02fc9f31
git remote add goldwynr https://github.com/goldwynr/linux
git fetch --no-tags goldwynr subpage
git checkout 8124f8a1d6240b9510aa90ad87730f8a02fc9f31
vim +271 fs/btrfs/disk-io.c

   253	
   254	/*
   255	 * Compute the csum of a btree block and store the result to provided buffer.
   256	 */
   257	static void csum_tree_block(struct extent_buffer *buf, u8 *result)
   258	{
   259		struct btrfs_fs_info *fs_info = buf->fs_info;
   260		int len = fs_info->nodesize;
   261		u64 offset = buf->start;
   262		int i = 0;
   263		SHASH_DESC_ON_STACK(shash, fs_info->csum_shash);
   264		char *kaddr;
   265	
   266		shash->tfm = fs_info->csum_shash;
   267		crypto_shash_init(shash);
   268		kaddr = page_address(buf->pages[0]) + offset_in_page(offset);
   269	
   270		len = round_up(offset + 1, PAGE_SIZE) - offset;
 > 271		len = min(len, fs_info->nodesize);
   272		crypto_shash_update(shash, kaddr + BTRFS_CSUM_SIZE,
   273				len - BTRFS_CSUM_SIZE);
   274		offset += len;
   275	
   276		i = 1;
   277		while (offset < buf->start + fs_info->nodesize) {
   278			len = round_up(offset + 1, PAGE_SIZE) - offset;
 > 279			len = min(len, fs_info->nodesize - (offset - buf->start));
   280			kaddr = page_address(buf->pages[i++]);
   281			crypto_shash_update(shash, kaddr, len);
   282			offset += len;
   283		}
   284	
   285		memset(result, 0, BTRFS_CSUM_SIZE);
   286		crypto_shash_final(shash, result);
   287	}
   288	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008270237.cOq6n15C%25lkp%40intel.com.

--GvXjxJ+pjyke8COw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
DQEA

--GvXjxJ+pjyke8COw--
