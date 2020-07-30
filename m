Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVE6RP4QKGQELORLAKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FF223334F
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 15:47:02 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id f7sf12890188ioj.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 06:47:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596116821; cv=pass;
        d=google.com; s=arc-20160816;
        b=f1rBVwa9Kow/gegzeK3yGbj66XzI0NQSxC4GGIrijvUaA9qqRaSSPzMVaIJuHG5wGU
         hBrBYSuIfpBxoir8yapbwa0AyrB2bRkfErMlOobbAR0/kXJk9uygAbUBsej+nHJRdpy6
         QHcQzEqnchOTdEDtLUgkhE/FpgqvbYjTBHKruv/JckXYpJz9EoqivCnHZdfagwCDKR7M
         ww7ABWDj4LHSJYg43D3rVqclpAs5pv+BSphnPT6PeKvCfy56vOy4V6wEKvThZnrZMY7b
         Fi/MHwZmaPxLTxTWuT/e5UAuRbJbRQYhfb8Jr5NFWOVUYeBe9oWL+8hOTIGHYFtKy4Um
         fXQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=YVk+XHJxkWZtDHMUPlJvrl+Xuv763jIYJBabGe7KrT4=;
        b=b8V521N6gM0+Cn02ZCuyLZq7x26ysfl0r01iuke7feLUiS+9fqQMy6v8av+8ASUuw0
         Ypaa+GaESS1Y1rvo87CveYNFB8CVIT7Or0O5KshNUwwjjezKqe5U3+hEUX5AIOK6ACyk
         1w+1iNtP1VfNb6ZH2AtlzZOqkyEIY86k76hdRqqy/iCsSlJDyptnQi8rDHAxWxskL5Ed
         OsCNte2vEzKYvp49IbDcpuC3F7QdWUiePM1ecSV062mlsvp1+/MdSs+txAj09Q+j2Uzt
         iwCkj+m883h3lYmCV80V+Kj0IICiFNcVLWfh1W+4tkjU0MVPUzl3laUYe6P+GaAxRvvo
         bacQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YVk+XHJxkWZtDHMUPlJvrl+Xuv763jIYJBabGe7KrT4=;
        b=kpHR+1WgFkFpWy5dW2BWfwyW9/KFu6dgDPl6CRF+O+KZljzsUK8nyR8PM67nBnKcih
         qWC7BHLgx2suCLhv2/1GOGCyVLf/zKdKNomxFN0L2VRiH8O20L+qTp7teHxX6Zo+2FDw
         VSIIc/iy061um4kRNrLfwYmf7ZSxIuPIuAq4Icpa0eQS3Fv0npwI7sEiiERMey60jZrV
         H/ocKZwwiSxpnAiG1VQs2cNSbP40JjvtV/pSFs/qBgWO9LD40VzD+gyfhS3N6C1HBOvW
         KKfEtA4npL4LIhfZHK/mJNyrkpQT7F/W+OexDZOYTNuuG7Kr6T/0S1tHjIr6GUSikxxs
         fPDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YVk+XHJxkWZtDHMUPlJvrl+Xuv763jIYJBabGe7KrT4=;
        b=BhaUp0YYC8Cb5zXI31z5JnRwHgOrYQ32bS1Uco3tsqKyaxzOtJpi8GCLi0ydNnLoso
         Pmo42Jty8hKLztuOmdxrra6VQsYHQP2pzmwvtNecX0TKmNsqnFoOR25yFVi3IEDJZlCw
         HcmiRZ8wlGQ5Xzvql0jrsEBzV0LcMt9EbBE7ONmHHxbLuYkGUoDqP+FYRBoaHIe2JkYw
         PCj/NwcCAj+wsfuaWTHB/cOIxcZB1ckYIvuUqmxLFe9MxXFbzRcb4lu1BwMjcTjWPykg
         t+fgh9Gf8EAVM/tapikwhN5KDs42KiFHAY+Dt5sxD8H5QMsUYHF7/NG1PGwZPUQekow+
         KT7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+SaTSdjRQFn2rnnJpadOl9PpBE4r4Kd3Uacl1T7jkLA8CmEyQ
	UQ6wf4ca4/bbiZunXjYUzts=
X-Google-Smtp-Source: ABdhPJyBsHBTgRyLClHXXXIztU5cl2jzSR+bUh+5+j5seLhj6PhtbygUgLAS3+OIXuT/YxFrt7e2+g==
X-Received: by 2002:a92:c7c7:: with SMTP id g7mr5561993ilk.304.1596116820504;
        Thu, 30 Jul 2020 06:47:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1549:: with SMTP id h9ls1003316iow.4.gmail; Thu, 30
 Jul 2020 06:47:00 -0700 (PDT)
X-Received: by 2002:a5e:c703:: with SMTP id f3mr19580027iop.185.1596116820059;
        Thu, 30 Jul 2020 06:47:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596116820; cv=none;
        d=google.com; s=arc-20160816;
        b=UwjMryQOscs1Oijg5sEnHoxkxgHdYl9XXWMkI5L2PnD5FpgbFILZ/am/U8ZTFHkB8e
         xBhBsrtH/3+YC9i9W6HxKEKs0n/3NNGgfcXbe1xU+wtZuzJ0E32IxkUWK3cHKPU+cl6V
         OD8Breh2HBYC4NxpAZKB1ydd/4ylKCGX455ci9QjTHsp4tAfyX7sFZOmRtN29rB7K5yf
         0o7oSqNba86nGl0Mps90pEsK+gqB/20qywmA2ZysMy24Ufih7kS1xTEB6yfQ94odDlsT
         SGYXmMFqKF4Ei1BwTZqvAS4lgP0o5Iomro8IkQZsTOGDUMGm4hEmjnSMzC+zIxcU11IU
         nnag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=B83lUBGmYGsX7ycfwGPxGWkONNINjkGUyK+OGi+LhOw=;
        b=D/NReHvy1a7rnJ5TjZG7qkW6kWJrYFpqYaFuIVwn8D5hgc54GIA/ZkiTeXuZM3z5Yk
         xpMAh0K8sq74zqGWC6Zhb5aL5QbSHXXm9uDYJjSnhIjaM/r4GdSRyUWis5CH0QQjtb8y
         etLtDg6gWYCHfhEKwwJEu6mYWtnktG57BWU+RgKgXhUIv/tnAS3z7gYIOjujoa0uzYGN
         LIkNz/6ZD5ems2h+M3Oof5xLvjyAWQCM3XiTGMfOa8ZZ6M3ubQaV4Q2j8XVxANZT/6vQ
         NCYPm8gcMdxtQ+yh29kwoYcRNx2DvSlEOJgcKeaVd0U6ySBtGQn/j/DJVppxr30ueKBx
         5CkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id k88si172389ilg.0.2020.07.30.06.46.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jul 2020 06:47:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: fO3Y/yb3OVevkBx82p71HEuhn2iZaVTA1uS/W8A3ssD/ul/+952HYMnfW9yKqzx4oFCMqzet2C
 oy8vuZdMieRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="236461447"
X-IronPort-AV: E=Sophos;i="5.75,414,1589266800"; 
   d="gz'50?scan'50,208,50";a="236461447"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jul 2020 06:46:58 -0700
IronPort-SDR: Wueunut9ygjVF0iyHfJMXYore9PJnInrafmhl2xM+fztk7hvvQYsdlUz8QTzprgfKcJ3m8fjzz
 09GyXSIgopgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,414,1589266800"; 
   d="gz'50?scan'50,208,50";a="365175752"
Received: from lkp-server02.sh.intel.com (HELO d4d86dd808e0) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 30 Jul 2020 06:46:56 -0700
Received: from kbuild by d4d86dd808e0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k18tb-00006k-IO; Thu, 30 Jul 2020 13:46:55 +0000
Date: Thu, 30 Jul 2020 21:46:25 +0800
From: kernel test robot <lkp@intel.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [rppt:memblock/iterators-cleanup/v1 14/16]
 arch/arm64/mm/kasan_init.c:249:25: error: use of undeclared identifier
 'start'; did you mean
Message-ID: <202007302121.cY9nUKmp%lkp@intel.com>
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rppt/linux.git memblock/iterators-cleanup/v1
head:   ed81b9564b7ba7e732e412530a4c330e281bb3a5
commit: 846f1f1ba3c1483bc769b583f708fbfca8aa50d2 [14/16] arch, drivers: replace for_each_membock() with for_each_mem_range()
config: arm64-randconfig-r022-20200730 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 6700f4b9fe6321ef704efa4890af5bc351a124f0)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        git checkout 846f1f1ba3c1483bc769b583f708fbfca8aa50d2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> arch/arm64/mm/kasan_init.c:219:56: warning: incompatible integer to pointer conversion passing 'phys_addr_t' (aka 'unsigned long long') to parameter of type 'const void *' [-Wint-conversion]
           kimg_shadow_end = PAGE_ALIGN((u64)kasan_mem_to_shadow(_end));
                                                                 ^~~~
   include/linux/mm.h:213:32: note: expanded from macro 'PAGE_ALIGN'
   #define PAGE_ALIGN(addr) ALIGN(addr, PAGE_SIZE)
                                  ^~~~
   include/linux/kernel.h:33:38: note: expanded from macro 'ALIGN'
   #define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))
                                                   ^
   include/uapi/linux/kernel.h:10:51: note: expanded from macro '__ALIGN_KERNEL'
   #define __ALIGN_KERNEL(x, a)            __ALIGN_KERNEL_MASK(x, (typeof(x))(a) - 1)
                                                               ^
   include/uapi/linux/kernel.h:11:41: note: expanded from macro '__ALIGN_KERNEL_MASK'
   #define __ALIGN_KERNEL_MASK(x, mask)    (((x) + (mask)) & ~(mask))
                                              ^
   include/linux/kasan.h:26:53: note: passing argument to parameter 'addr' here
   static inline void *kasan_mem_to_shadow(const void *addr)
                                                       ^
>> arch/arm64/mm/kasan_init.c:219:56: warning: incompatible integer to pointer conversion passing 'phys_addr_t' (aka 'unsigned long long') to parameter of type 'const void *' [-Wint-conversion]
           kimg_shadow_end = PAGE_ALIGN((u64)kasan_mem_to_shadow(_end));
                                                                 ^~~~
   include/linux/mm.h:213:32: note: expanded from macro 'PAGE_ALIGN'
   #define PAGE_ALIGN(addr) ALIGN(addr, PAGE_SIZE)
                                  ^~~~
   include/linux/kernel.h:33:38: note: expanded from macro 'ALIGN'
   #define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))
                                                   ^
   include/uapi/linux/kernel.h:10:62: note: expanded from macro '__ALIGN_KERNEL'
   #define __ALIGN_KERNEL(x, a)            __ALIGN_KERNEL_MASK(x, (typeof(x))(a) - 1)
                                                                          ^
   include/uapi/linux/kernel.h:11:47: note: expanded from macro '__ALIGN_KERNEL_MASK'
   #define __ALIGN_KERNEL_MASK(x, mask)    (((x) + (mask)) & ~(mask))
                                                    ^~~~
   include/linux/kasan.h:26:53: note: passing argument to parameter 'addr' here
   static inline void *kasan_mem_to_shadow(const void *addr)
                                                       ^
>> arch/arm64/mm/kasan_init.c:219:56: warning: incompatible integer to pointer conversion passing 'phys_addr_t' (aka 'unsigned long long') to parameter of type 'const void *' [-Wint-conversion]
           kimg_shadow_end = PAGE_ALIGN((u64)kasan_mem_to_shadow(_end));
                                                                 ^~~~
   include/linux/mm.h:213:32: note: expanded from macro 'PAGE_ALIGN'
   #define PAGE_ALIGN(addr) ALIGN(addr, PAGE_SIZE)
                                  ^~~~
   include/linux/kernel.h:33:38: note: expanded from macro 'ALIGN'
   #define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))
                                                   ^
   include/uapi/linux/kernel.h:10:62: note: expanded from macro '__ALIGN_KERNEL'
   #define __ALIGN_KERNEL(x, a)            __ALIGN_KERNEL_MASK(x, (typeof(x))(a) - 1)
                                                                          ^
   include/uapi/linux/kernel.h:11:58: note: expanded from macro '__ALIGN_KERNEL_MASK'
   #define __ALIGN_KERNEL_MASK(x, mask)    (((x) + (mask)) & ~(mask))
                                                               ^~~~
   include/linux/kasan.h:26:53: note: passing argument to parameter 'addr' here
   static inline void *kasan_mem_to_shadow(const void *addr)
                                                       ^
>> arch/arm64/mm/kasan_init.c:249:25: error: use of undeclared identifier 'start'; did you mean '_start'?
           for_each_mem_range(i, &start, &end) {
                                  ^~~~~
                                  _start
   include/linux/memblock.h:193:24: note: expanded from macro 'for_each_mem_range'
                                MEMBLOCK_NONE, p_start, p_end, NULL)
                                               ^
   include/linux/memblock.h:159:10: note: expanded from macro '__for_each_mem_range'
                                        p_start, p_end, p_nid);            \
                                        ^
   arch/arm64/mm/kasan_init.c:215:14: note: '_start' declared here
           phys_addr_t _start, _end;
                       ^
>> arch/arm64/mm/kasan_init.c:249:33: error: use of undeclared identifier 'end'; did you mean '_end'?
           for_each_mem_range(i, &start, &end) {
                                          ^~~
                                          _end
   include/linux/memblock.h:193:33: note: expanded from macro 'for_each_mem_range'
                                MEMBLOCK_NONE, p_start, p_end, NULL)
                                                        ^
   include/linux/memblock.h:159:19: note: expanded from macro '__for_each_mem_range'
                                        p_start, p_end, p_nid);            \
                                                 ^
   arch/arm64/mm/kasan_init.c:215:22: note: '_end' declared here
           phys_addr_t _start, _end;
                               ^
>> arch/arm64/mm/kasan_init.c:249:25: error: use of undeclared identifier 'start'; did you mean '_start'?
           for_each_mem_range(i, &start, &end) {
                                  ^~~~~
                                  _start
   include/linux/memblock.h:193:24: note: expanded from macro 'for_each_mem_range'
                                MEMBLOCK_NONE, p_start, p_end, NULL)
                                               ^
   include/linux/memblock.h:162:10: note: expanded from macro '__for_each_mem_range'
                                 p_start, p_end, p_nid))
                                 ^
   arch/arm64/mm/kasan_init.c:215:14: note: '_start' declared here
           phys_addr_t _start, _end;
                       ^
>> arch/arm64/mm/kasan_init.c:249:33: error: use of undeclared identifier 'end'; did you mean '_end'?
           for_each_mem_range(i, &start, &end) {
                                          ^~~
                                          _end
   include/linux/memblock.h:193:33: note: expanded from macro 'for_each_mem_range'
                                MEMBLOCK_NONE, p_start, p_end, NULL)
                                                        ^
   include/linux/memblock.h:162:19: note: expanded from macro '__for_each_mem_range'
                                 p_start, p_end, p_nid))
                                          ^
   arch/arm64/mm/kasan_init.c:215:22: note: '_end' declared here
           phys_addr_t _start, _end;
                               ^
   arch/arm64/mm/kasan_init.c:253:7: error: use of undeclared identifier 'start'; did you mean '_start'?
                   if (start >= end)
                       ^~~~~
                       _start
   arch/arm64/mm/kasan_init.c:250:9: note: '_start' declared here
                   void *_start = (void *)__phys_to_virt(_start);
                         ^
   arch/arm64/mm/kasan_init.c:256:57: error: use of undeclared identifier 'start'; did you mean '_start'?
                   kasan_map_populate((unsigned long)kasan_mem_to_shadow(start),
                                                                         ^~~~~
                                                                         _start
   arch/arm64/mm/kasan_init.c:250:9: note: '_start' declared here
                   void *_start = (void *)__phys_to_virt(_start);
                         ^
   arch/arm64/mm/kasan_init.c:258:37: error: use of undeclared identifier 'start'; did you mean '_start'?
                                      early_pfn_to_nid(virt_to_pfn(start)));
                                                                   ^~~~~
                                                                   _start
   arch/arm64/include/asm/memory.h:294:70: note: expanded from macro 'virt_to_pfn'
   #define virt_to_pfn(x)          __phys_to_pfn(__virt_to_phys((unsigned long)(x)))
                                                                                ^
   arch/arm64/include/asm/memory.h:256:50: note: expanded from macro '__virt_to_phys'
   #define __virt_to_phys(x)       __virt_to_phys_nodebug(x)
                                                          ^
   arch/arm64/include/asm/memory.h:246:46: note: expanded from macro '__virt_to_phys_nodebug'
           phys_addr_t __x = (phys_addr_t)(__tag_reset(x));                \
                                                       ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   arch/arm64/include/asm/memory.h:204:23: note: expanded from macro '__untagged_addr'
           ((__force __typeof__(addr))sign_extend64((__force u64)(addr), 55))
                                ^
   include/asm-generic/memory_model.h:78:39: note: expanded from macro '__phys_to_pfn'
   #define __phys_to_pfn(paddr)    PHYS_PFN(paddr)
                                            ^
   include/linux/pfn.h:22:39: note: expanded from macro 'PHYS_PFN'
   #define PHYS_PFN(x)     ((unsigned long)((x) >> PAGE_SHIFT))
                                             ^
   arch/arm64/mm/kasan_init.c:250:9: note: '_start' declared here
                   void *_start = (void *)__phys_to_virt(_start);
                         ^
   arch/arm64/mm/kasan_init.c:258:37: error: use of undeclared identifier 'start'; did you mean '_start'?
                                      early_pfn_to_nid(virt_to_pfn(start)));
                                                                   ^~~~~
                                                                   _start
   arch/arm64/include/asm/memory.h:294:70: note: expanded from macro 'virt_to_pfn'
   #define virt_to_pfn(x)          __phys_to_pfn(__virt_to_phys((unsigned long)(x)))
                                                                                ^
   arch/arm64/include/asm/memory.h:256:50: note: expanded from macro '__virt_to_phys'
   #define __virt_to_phys(x)       __virt_to_phys_nodebug(x)
                                                          ^
   arch/arm64/include/asm/memory.h:246:46: note: expanded from macro '__virt_to_phys_nodebug'
           phys_addr_t __x = (phys_addr_t)(__tag_reset(x));                \
                                                       ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   arch/arm64/include/asm/memory.h:204:57: note: expanded from macro '__untagged_addr'
           ((__force __typeof__(addr))sign_extend64((__force u64)(addr), 55))
                                                                  ^
   include/asm-generic/memory_model.h:78:39: note: expanded from macro '__phys_to_pfn'
   #define __phys_to_pfn(paddr)    PHYS_PFN(paddr)
                                            ^
   include/linux/pfn.h:22:39: note: expanded from macro 'PHYS_PFN'
   #define PHYS_PFN(x)     ((unsigned long)((x) >> PAGE_SHIFT))
                                             ^
   arch/arm64/mm/kasan_init.c:250:9: note: '_start' declared here
                   void *_start = (void *)__phys_to_virt(_start);
                         ^
   3 warnings and 8 errors generated.

vim +249 arch/arm64/mm/kasan_init.c

   210	
   211	void __init kasan_init(void)
   212	{
   213		u64 kimg_shadow_start, kimg_shadow_end;
   214		u64 mod_shadow_start, mod_shadow_end;
   215		phys_addr_t _start, _end;
   216		int i;
   217	
   218		kimg_shadow_start = (u64)kasan_mem_to_shadow(_text) & PAGE_MASK;
 > 219		kimg_shadow_end = PAGE_ALIGN((u64)kasan_mem_to_shadow(_end));
   220	
   221		mod_shadow_start = (u64)kasan_mem_to_shadow((void *)MODULES_VADDR);
   222		mod_shadow_end = (u64)kasan_mem_to_shadow((void *)MODULES_END);
   223	
   224		/*
   225		 * We are going to perform proper setup of shadow memory.
   226		 * At first we should unmap early shadow (clear_pgds() call below).
   227		 * However, instrumented code couldn't execute without shadow memory.
   228		 * tmp_pg_dir used to keep early shadow mapped until full shadow
   229		 * setup will be finished.
   230		 */
   231		memcpy(tmp_pg_dir, swapper_pg_dir, sizeof(tmp_pg_dir));
   232		dsb(ishst);
   233		cpu_replace_ttbr1(lm_alias(tmp_pg_dir));
   234	
   235		clear_pgds(KASAN_SHADOW_START, KASAN_SHADOW_END);
   236	
   237		kasan_map_populate(kimg_shadow_start, kimg_shadow_end,
   238				   early_pfn_to_nid(virt_to_pfn(lm_alias(_text))));
   239	
   240		kasan_populate_early_shadow(kasan_mem_to_shadow((void *)PAGE_END),
   241					   (void *)mod_shadow_start);
   242		kasan_populate_early_shadow((void *)kimg_shadow_end,
   243					   (void *)KASAN_SHADOW_END);
   244	
   245		if (kimg_shadow_start > mod_shadow_end)
   246			kasan_populate_early_shadow((void *)mod_shadow_end,
   247						    (void *)kimg_shadow_start);
   248	
 > 249		for_each_mem_range(i, &start, &end) {

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007302121.cY9nUKmp%25lkp%40intel.com.

--cNdxnHkX5QqsyA0e
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
5cy6ucsC4iYbx0TEJxOf6kw+8wMzfLo4tKZmpiMDtbCjg/Un2mROJjcTh4TozXQ694aHhEDQ
ppjXJlkF/hI75PHj+fmHlo2MyF+wemkOLvnSM5RsYlCBjrt9/N+P48vDjxH/8XL5fnw//R/Y
nEcR/73Msla9plT46+PL8e3+cn77PTq9X95Of36A4SjefFfplPvu9/v342+ZIDs+jrLz+XX0
i2jn19FfXT/eUT9w3f9tyT5E+NURGnv824+38/vD+fUopq4967qzau3NDJ4Tfps7MTkw7os7
nIYNslCVu2Cs0iNdYxTXX6vCySem9TpoDUisrTQcizqVjvdPl+/oLG+hb5dRpXznXk4X+5hP
4smEjE0AEurYSi2hYT65DcmWEBJ3TnXt4/n0eLr8GC4Jy/3AQyxKtKnxpbGJgJ9CLNqm5r7v
2b/tZdnUO/KJjKdzg4+F374x84Oeqg9XfAwX8Ol4Pt6/f7wdn4/iev4QIzf1rHmqtxOlUDwU
fDHHEk8LsTt/kx9mVOfT7R7220zuN0PoxQjiRsh4Pov4wQXv2m8PGfdglXeIDJw+XMnoS9Rw
Q+Ji0e7gjbFfEctgVxm/xd7Hr+hlxJeBuRclbEkHs99486kZwV5AHHqcMA98b0FNLWDMG0VA
rDQwPWKGtxD8nmHpaV36rBybeW8UTAx0PKasyLvrnGf+cuwZLoUmjsyQJlEeNoP8wpnnY3Gs
Kqux5VDXVqx8D4lqs7qamg/R2V4s3sQRzFacGOJ8cWVRVUjKEmpbMM9IeVWUtdgARsOlGI4/
Bij9MJF6niPFJqAm1A0vBNQg8Ewms252+5TbLHXLEoQ8mHi0kbzEOZJntfNci1WaksmBJQb7
2QFgjjUqAjCZBsaU7PjUW/h0UNJ9uM3spTBQ2GJzH+fZbByMbQi21N1nM0N584dYI7EgHj42
zGNBvWzcf3s5XpS8TxwYN4vl3LAmlhB69tnNeLl0pP3RCqGcrbfOi1ggxdHk2Jx5GEx9RwB8
fVbKygc3+GCRhUg2XUwCZzdauiqXSVAHZO2zCzVx/+oSkCt/fUuazHcHvBwGob7EHp5OL4PV
QOc+gZcErS/g6LfR++X+5VEwty9Hm3mV0SSqXVlTCkY8mWDGjxSbXft0K/rKeREsh2CrH8W/
bx9P4u/X8/tJZmwkRvIz5AbP+Hq+iEvu1Ks+e1FFRZRBQon4EMhsvULOmGDHbhAuxkaeXgFQ
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
1AEA

--cNdxnHkX5QqsyA0e--
