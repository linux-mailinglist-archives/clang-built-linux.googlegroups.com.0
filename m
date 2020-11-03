Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6MWQ76QKGQERCNI25I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1562A5635
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 22:28:26 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id q18sf8497783qke.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 13:28:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604438905; cv=pass;
        d=google.com; s=arc-20160816;
        b=iT3gKThvKBeS0gQsFkIbgFHXsEUYSfNLdVcy/W8LN6IvupMxwC8gfHttU5dbuiBk+o
         jZxpagYJBhmzQyeBBPoF5yVQmeHD+fg+TrVj7yGuxWi0g1cmV4l3MIQp6jvp6Mva2NIY
         sDWzvsPJOdmTozhmp6Dq4DrsTcyjrW/Y+Mq/yPksYLM5ERpeqPvQeiD8gdfuhcjY4EPb
         LXT2HQt680CX/bu6puv94vY2uYX4DUN6Owa/nWUo9HCh6KelEIjWZklpDIQ2xtIWqipx
         uyy1ZpDqTT1ykm4BxptO4nrqiiqC3XbB0b7j6GKKcpUrbIQOgpnRoqnRcO8iSOPADRNs
         vwRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=QVfqf7ji9htNPwQqXKev27U+jLgKOUlL0d65P0RZv1A=;
        b=tJjEVn39yU2CRf8O+mVPFs2qEMfvL62XCsL9V/p8xEJToVHN+jGoBQmmVOCXj0xJnF
         I1FhYZ7Km6v/0oCGoPGa8lAXszqhrz3BgQCYz1t5qILSD4Xdf7bXgJKEsMwfMhBtaExc
         X5AURgRm5apMVkley0gCl9ngY875VqVzLfQr+vXDwTZRaKFUrrMbqLFbZMTb2iQoCsSa
         tfCjYjUSZ0TMBJo9ojAAn5mWJ+Oe6v3P9/l+KYHBcKHGL4eAohpsjWcMo4tggmZ8TGVv
         P49p6tiUSrCN+5AErTuhlPejBmBko2hdsbDNmSavqwyiIBxULZeRgdEHrJH/qKlijJcc
         0vSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QVfqf7ji9htNPwQqXKev27U+jLgKOUlL0d65P0RZv1A=;
        b=Ksnzsz4BEcZL5EgcR6MheoNpAbbgPjDUiJqhmAb15z+FyDF7F6v+nbOWVCB5fc0z0l
         3Bdu3uMu+EMiegrej/F53BjeUawV+12KF21LB+f4OdMUKDoi305rElf6dJkzPJCU8CAG
         iyjXc/fANJCtgPxAjCOYM7ARCKuTMHHhTotm/gc+f2CX7sZHFW7gx94rxLoynEJmbHJM
         Wi//yMjdOD+ZN9hkvogvodlivXk3VOI1El6PC4tVtknsv4a4PS0ZGYczyYwOmn73EZEv
         Jgo2cO0wJsYo/iwoZy0hUkCZHdmbTHWFp7IqhjfpasDWWuv2pBHA/NehVb4A8lw9R9rJ
         nnsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QVfqf7ji9htNPwQqXKev27U+jLgKOUlL0d65P0RZv1A=;
        b=Ldt6MrUJwsunjQ/G/lAGlexsmAnTKKJdAwn8Cptw0pgGQ9Tip8+B4R5FYw72Q+Rpde
         TLaaUg13cs2i57V7yk3yqS9TF52EEoGpyO/ng3BxIR9w9/peS3MOsYc1l6XiwwECAHQh
         kh8JRYt+9GVOplhO0UsoO+pJZbVuXjyWMHu8bZbAwc5BkbPjdV6oaXsktuJsrcy4UMZ1
         EpLuLNyqEXY0/vEl2vBhLJFj6VbHpiHRFj9gJrtUCx2425WHFCX4xj8c5ItTc5pkX8ap
         bJfCf94viWCkkYeDklgTF7zZHc8Fkq25w3ss1bqXDLxoVlusn0xq1+FN5zkn7AKmcOcN
         dTOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kQItQuZLsumCdr8XK0EoRcZqSjlRL2Bu4EwxhXjlemVNT9xJm
	Yc3SXQAkxM+NB3kXSRnjkr8=
X-Google-Smtp-Source: ABdhPJzZO0GbdXlSHp0rKp5e1CaU5VqUyTvq36qNqOU4kU5SOIpx4hXDJ4jyi6HicwJhhXZxDfHOeg==
X-Received: by 2002:a0c:ef02:: with SMTP id t2mr28647302qvr.7.1604438905353;
        Tue, 03 Nov 2020 13:28:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:80af:: with SMTP id 44ls793910qvb.2.gmail; Tue, 03 Nov
 2020 13:28:24 -0800 (PST)
X-Received: by 2002:ad4:44b3:: with SMTP id n19mr29200829qvt.39.1604438904719;
        Tue, 03 Nov 2020 13:28:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604438904; cv=none;
        d=google.com; s=arc-20160816;
        b=scVHBI4qgXxNEleYc475UEUx1QBwV/MiaFEfzGlvPOCcPQ94YVFF0X7zK8DcXx/9cv
         SgUGS1CNh68RqB13n7h9Ur/FWd01wJeuJSZEU+JtdOrNfe2TZn4/tPzT+mhF/fXC+v0A
         jVSBnsZX7DLNjM0c5tR2l7TNYwf4q6YStUfzCGEta1I5LWR/7rpA36uco5fpf7oAP3kO
         4c/m5JMqfVbmD7Yb9UKpPpL77ePaFZr9qYvOi/xEXUZqzEJ4CyeFMvxJINOUBWzit8ek
         63LnVQoulZfHJjnP719k1fYuk7tda1ST/LTyhrcfg637saozk/YCQrGFjiQP5mwowtKn
         cvXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=GV+crMZ9Fdzy2SHGe7F0kZnuN1xRxlfIPavhjEJfAFE=;
        b=XborPtP81yndXOtSxImjM/VKmTZHNSTG/8JO9T9eDoe5p8lwiyq5BEnLcXBP+7y9EQ
         CkStaUHhmLqwYHLnpea7xESJ/7ztfSjhjzJHx61cFzVn+MzxgRbgkO/mU+tbqZK+kF64
         jupr7DPr4aH4FwIF5sauTSz32VEEiHxwH36Z3BTJ1ZLPB9bjAkryAoiJlMN8h1gEdzS8
         mlIr9QJAqnK3+6IrGQLsTDSaTkxV5VhbJPU/4SkUw/z7pZfkXiK2ybMNfwdxfS7kH2SC
         uiI8XIr8cznE9D1X2HrEk5+dAqI1E8r0tIAko/IbG3/Y1XO3P+SWemaMNuPgUwee89aI
         009w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id h1si11462qkg.5.2020.11.03.13.28.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2020 13:28:24 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: 3DXRvoX8BsbZ5WR1MJ4hxmbyeBj8MCvdXatw2wBrjWT+GNRqvYbVkXf4Tz5FveqylthkH+5xWG
 376W6nxjq1Wg==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="253839816"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; 
   d="gz'50?scan'50,208,50";a="253839816"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2020 13:28:22 -0800
IronPort-SDR: k7dre9JNIcSlG7WVz21aaglyks+lziIY3feq/NwmR7LZ4c7zIAWNcTDzlBQJXEbCQWwZMphYvk
 9bpy3HFRlesg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; 
   d="gz'50?scan'50,208,50";a="306165042"
Received: from lkp-server02.sh.intel.com (HELO e61783667810) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 03 Nov 2020 13:28:21 -0800
Received: from kbuild by e61783667810 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ka3qm-0000Wi-IC; Tue, 03 Nov 2020 21:28:20 +0000
Date: Wed, 4 Nov 2020 05:27:42 +0800
From: kernel test robot <lkp@intel.com>
To: Lee Jones <lee.jones@linaro.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RESEND 19/19] scsi: hpsa: Strip out a bunch of set but unused
 variables
Message-ID: <202011040526.DkrzVIF8-lkp@intel.com>
References: <20201102142359.561122-20-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="J/dobhs11T7y2rNN"
Content-Disposition: inline
In-Reply-To: <20201102142359.561122-20-lee.jones@linaro.org>
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


--J/dobhs11T7y2rNN
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Lee,

I love your patch! Perhaps something to improve:

[auto build test WARNING on mkp-scsi/for-next]
[also build test WARNING on scsi/for-next linus/master v5.10-rc2 next-20201103]
[cannot apply to linux/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Lee-Jones/Rid-W-1-warnings-in-SCSI/20201102-222943
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-next
config: s390-randconfig-r015-20201103 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1fcd5d5655e29f85e12b402e32974f207cfedf32)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/072f10ed00f6c539280c1143a76e724bd7618c22
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Lee-Jones/Rid-W-1-warnings-in-SCSI/20201102-222943
        git checkout 072f10ed00f6c539280c1143a76e724bd7618c22
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/scsi/hpsa.c:24:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/scsi/hpsa.c:24:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/scsi/hpsa.c:24:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/scsi/hpsa.c:24:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/scsi/hpsa.c:24:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
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
>> drivers/scsi/hpsa.c:8710:3: warning: misleading indentation; statement is not part of the previous 'if' [-Wmisleading-indentation]
                   if (rc != 0) {
                   ^
   drivers/scsi/hpsa.c:8708:2: note: previous statement is here
           if (rc != 0)
           ^
   drivers/scsi/hpsa.c:8635:16: warning: unused variable 'flags' [-Wunused-variable]
           unsigned long flags;
                         ^
   drivers/scsi/hpsa.c:8712:9: error: use of undeclared label 'clean3'
                           goto clean3;    /* shost, pci, lu, aer/h */
                                ^
   drivers/scsi/hpsa.c:8688:8: error: use of undeclared label 'clean1'
                   goto clean1;    /* aer/h */
                        ^
   drivers/scsi/hpsa.c:8700:8: error: use of undeclared label 'clean2_5'
                   goto clean2_5;  /* pci, lu, aer/h */
                        ^
   drivers/scsi/hpsa.c:8694:8: error: use of undeclared label 'clean2'
                   goto clean2;    /* lu, aer/h */
                        ^
   drivers/scsi/hpsa.c:8707:32: warning: shift count >= width of type [-Wshift-count-overflow]
           rc = dma_set_mask(&pdev->dev, DMA_BIT_MASK(64));
                                         ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   drivers/scsi/hpsa.c:8717:2: error: unknown type name 'h'
           h->access.set_intr_mask(h, HPSA_INTR_OFF);
           ^
   drivers/scsi/hpsa.c:8717:3: error: expected identifier or '('
           h->access.set_intr_mask(h, HPSA_INTR_OFF);
            ^
>> drivers/scsi/hpsa.c:8719:2: warning: declaration specifier missing, defaulting to 'int'
           rc = hpsa_request_irqs(h, do_hpsa_intr_msi, do_hpsa_intr_intx);
           ^
           int
   drivers/scsi/hpsa.c:8719:25: error: use of undeclared identifier 'h'
           rc = hpsa_request_irqs(h, do_hpsa_intr_msi, do_hpsa_intr_intx);
                                  ^
   drivers/scsi/hpsa.c:8720:2: error: expected identifier or '('
           if (rc)
           ^
   drivers/scsi/hpsa.c:8722:2: warning: declaration specifier missing, defaulting to 'int'
           rc = hpsa_alloc_cmd_pool(h);
           ^
           int
   drivers/scsi/hpsa.c:8722:27: error: use of undeclared identifier 'h'
           rc = hpsa_alloc_cmd_pool(h);
                                    ^
   drivers/scsi/hpsa.c:8723:2: error: expected identifier or '('
           if (rc)
           ^
   drivers/scsi/hpsa.c:8725:2: warning: declaration specifier missing, defaulting to 'int'
           rc = hpsa_alloc_sg_chain_blocks(h);
           ^
           int
   drivers/scsi/hpsa.c:8725:34: error: use of undeclared identifier 'h'
           rc = hpsa_alloc_sg_chain_blocks(h);
                                           ^
   drivers/scsi/hpsa.c:8726:2: error: expected identifier or '('
           if (rc)
           ^
   drivers/scsi/hpsa.c:8728:2: error: expected identifier or '('
           init_waitqueue_head(&h->scan_wait_queue);
           ^
   include/linux/wait.h:66:2: note: expanded from macro 'init_waitqueue_head'
           do {                                                                    \
           ^
   drivers/scsi/hpsa.c:8728:2: error: expected identifier or '('
   include/linux/wait.h:70:4: note: expanded from macro 'init_waitqueue_head'
           } while (0)
             ^
   drivers/scsi/hpsa.c:8729:2: error: expected identifier or '('
           init_waitqueue_head(&h->event_sync_wait_queue);
           ^
   include/linux/wait.h:66:2: note: expanded from macro 'init_waitqueue_head'
           do {                                                                    \
           ^
   drivers/scsi/hpsa.c:8729:2: error: expected identifier or '('
   include/linux/wait.h:70:4: note: expanded from macro 'init_waitqueue_head'
           } while (0)
             ^
   drivers/scsi/hpsa.c:8730:2: error: expected identifier or '('
           mutex_init(&h->reset_mutex);
           ^
   include/linux/mutex.h:115:32: note: expanded from macro 'mutex_init'
   #define mutex_init(mutex)                                               \
                                                                           ^
   drivers/scsi/hpsa.c:8730:2: error: expected identifier or '('
   include/linux/mutex.h:120:3: note: expanded from macro 'mutex_init'
   } while (0)
     ^
   drivers/scsi/hpsa.c:8731:2: error: unknown type name 'h'
           h->scan_finished = 1; /* no scan currently in progress */
           ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   26 warnings and 20 errors generated.

vim +/if +8710 drivers/scsi/hpsa.c

  8629	
  8630	static int hpsa_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
  8631	{
  8632		int rc;
  8633		struct ctlr_info *h;
  8634		int try_soft_reset = 0;
  8635		unsigned long flags;
  8636		u32 board_id;
  8637	
  8638		if (number_of_controllers == 0)
  8639			printk(KERN_INFO DRIVER_NAME "\n");
  8640	
  8641		rc = hpsa_lookup_board_id(pdev, &board_id, NULL);
  8642		if (rc < 0) {
  8643			dev_warn(&pdev->dev, "Board ID not found\n");
  8644			return rc;
  8645		}
  8646	
  8647		rc = hpsa_init_reset_devices(pdev, board_id);
  8648		if (rc) {
  8649			if (rc != -ENOTSUPP)
  8650				return rc;
  8651			/* If the reset fails in a particular way (it has no way to do
  8652			 * a proper hard reset, so returns -ENOTSUPP) we can try to do
  8653			 * a soft reset once we get the controller configured up to the
  8654			 * point that it can accept a command.
  8655			 */
  8656			try_soft_reset = 1;
  8657			rc = 0;
  8658		}
  8659	
  8660	reinit_after_soft_reset:
  8661	
  8662		/* Command structures must be aligned on a 32-byte boundary because
  8663		 * the 5 lower bits of the address are used by the hardware. and by
  8664		 * the driver.  See comments in hpsa.h for more info.
  8665		 */
  8666		BUILD_BUG_ON(sizeof(struct CommandList) % COMMANDLIST_ALIGNMENT);
  8667		h = hpda_alloc_ctlr_info();
  8668		if (!h) {
  8669			dev_err(&pdev->dev, "Failed to allocate controller head\n");
  8670			return -ENOMEM;
  8671		}
  8672	
  8673		h->pdev = pdev;
  8674	
  8675		h->intr_mode = hpsa_simple_mode ? SIMPLE_MODE_INT : PERF_MODE_INT;
  8676		INIT_LIST_HEAD(&h->offline_device_list);
  8677		spin_lock_init(&h->lock);
  8678		spin_lock_init(&h->offline_device_lock);
  8679		spin_lock_init(&h->scan_lock);
  8680		spin_lock_init(&h->reset_lock);
  8681		atomic_set(&h->passthru_cmds_avail, HPSA_MAX_CONCURRENT_PASSTHRUS);
  8682	
  8683		/* Allocate and clear per-cpu variable lockup_detected */
  8684		h->lockup_detected = alloc_percpu(u32);
  8685		if (!h->lockup_detected) {
  8686			dev_err(&h->pdev->dev, "Failed to allocate lockup detector\n");
  8687			rc = -ENOMEM;
  8688			goto clean1;	/* aer/h */
  8689		}
  8690		set_lockup_detected_for_all_cpus(h, 0);
  8691	
  8692		rc = hpsa_pci_init(h);
  8693		if (rc)
  8694			goto clean2;	/* lu, aer/h */
  8695	
  8696		/* relies on h-> settings made by hpsa_pci_init, including
  8697		 * interrupt_mode h->intr */
  8698		rc = hpsa_scsi_host_alloc(h);
  8699		if (rc)
  8700			goto clean2_5;	/* pci, lu, aer/h */
  8701	
  8702		sprintf(h->devname, HPSA "%d", h->scsi_host->host_no);
  8703		h->ctlr = number_of_controllers;
  8704		number_of_controllers++;
  8705	
  8706		/* configure PCI DMA stuff */
  8707		rc = dma_set_mask(&pdev->dev, DMA_BIT_MASK(64));
  8708		if (rc != 0)
  8709			rc = dma_set_mask(&pdev->dev, DMA_BIT_MASK(32));
> 8710			if (rc != 0) {
  8711				dev_err(&pdev->dev, "no suitable DMA available\n");
  8712				goto clean3;	/* shost, pci, lu, aer/h */
  8713			}
  8714		}
  8715	
  8716		/* make sure the board interrupts are off */
  8717		h->access.set_intr_mask(h, HPSA_INTR_OFF);
  8718	
> 8719		rc = hpsa_request_irqs(h, do_hpsa_intr_msi, do_hpsa_intr_intx);
  8720		if (rc)
  8721			goto clean3;	/* shost, pci, lu, aer/h */
  8722		rc = hpsa_alloc_cmd_pool(h);
  8723		if (rc)
  8724			goto clean4;	/* irq, shost, pci, lu, aer/h */
  8725		rc = hpsa_alloc_sg_chain_blocks(h);
  8726		if (rc)
  8727			goto clean5;	/* cmd, irq, shost, pci, lu, aer/h */
  8728		init_waitqueue_head(&h->scan_wait_queue);
  8729		init_waitqueue_head(&h->event_sync_wait_queue);
  8730		mutex_init(&h->reset_mutex);
  8731		h->scan_finished = 1; /* no scan currently in progress */
  8732		h->scan_waiting = 0;
  8733	
  8734		pci_set_drvdata(pdev, h);
  8735		h->ndevices = 0;
  8736	
  8737		spin_lock_init(&h->devlock);
  8738		rc = hpsa_put_ctlr_into_performant_mode(h);
  8739		if (rc)
  8740			goto clean6; /* sg, cmd, irq, shost, pci, lu, aer/h */
  8741	
  8742		/* create the resubmit workqueue */
  8743		h->rescan_ctlr_wq = hpsa_create_controller_wq(h, "rescan");
  8744		if (!h->rescan_ctlr_wq) {
  8745			rc = -ENOMEM;
  8746			goto clean7;
  8747		}
  8748	
  8749		h->resubmit_wq = hpsa_create_controller_wq(h, "resubmit");
  8750		if (!h->resubmit_wq) {
  8751			rc = -ENOMEM;
  8752			goto clean7;	/* aer/h */
  8753		}
  8754	
  8755		h->monitor_ctlr_wq = hpsa_create_controller_wq(h, "monitor");
  8756		if (!h->monitor_ctlr_wq) {
  8757			rc = -ENOMEM;
  8758			goto clean7;
  8759		}
  8760	
  8761		/*
  8762		 * At this point, the controller is ready to take commands.
  8763		 * Now, if reset_devices and the hard reset didn't work, try
  8764		 * the soft reset and see if that works.
  8765		 */
  8766		if (try_soft_reset) {
  8767	
  8768			/* This is kind of gross.  We may or may not get a completion
  8769			 * from the soft reset command, and if we do, then the value
  8770			 * from the fifo may or may not be valid.  So, we wait 10 secs
  8771			 * after the reset throwing away any completions we get during
  8772			 * that time.  Unregister the interrupt handler and register
  8773			 * fake ones to scoop up any residual completions.
  8774			 */
  8775			spin_lock_irqsave(&h->lock, flags);
  8776			h->access.set_intr_mask(h, HPSA_INTR_OFF);
  8777			spin_unlock_irqrestore(&h->lock, flags);
  8778			hpsa_free_irqs(h);
  8779			rc = hpsa_request_irqs(h, hpsa_msix_discard_completions,
  8780						hpsa_intx_discard_completions);
  8781			if (rc) {
  8782				dev_warn(&h->pdev->dev,
  8783					"Failed to request_irq after soft reset.\n");
  8784				/*
  8785				 * cannot goto clean7 or free_irqs will be called
  8786				 * again. Instead, do its work
  8787				 */
  8788				hpsa_free_performant_mode(h);	/* clean7 */
  8789				hpsa_free_sg_chain_blocks(h);	/* clean6 */
  8790				hpsa_free_cmd_pool(h);		/* clean5 */
  8791				/*
  8792				 * skip hpsa_free_irqs(h) clean4 since that
  8793				 * was just called before request_irqs failed
  8794				 */
  8795				goto clean3;
  8796			}
  8797	
  8798			rc = hpsa_kdump_soft_reset(h);
  8799			if (rc)
  8800				/* Neither hard nor soft reset worked, we're hosed. */
  8801				goto clean7;
  8802	
  8803			dev_info(&h->pdev->dev, "Board READY.\n");
  8804			dev_info(&h->pdev->dev,
  8805				"Waiting for stale completions to drain.\n");
  8806			h->access.set_intr_mask(h, HPSA_INTR_ON);
  8807			msleep(10000);
  8808			h->access.set_intr_mask(h, HPSA_INTR_OFF);
  8809	
  8810			rc = controller_reset_failed(h->cfgtable);
  8811			if (rc)
  8812				dev_info(&h->pdev->dev,
  8813					"Soft reset appears to have failed.\n");
  8814	
  8815			/* since the controller's reset, we have to go back and re-init
  8816			 * everything.  Easiest to just forget what we've done and do it
  8817			 * all over again.
  8818			 */
  8819			hpsa_undo_allocations_after_kdump_soft_reset(h);
  8820			try_soft_reset = 0;
  8821			if (rc)
  8822				/* don't goto clean, we already unallocated */
  8823				return -ENODEV;
  8824	
  8825			goto reinit_after_soft_reset;
  8826		}
  8827	
  8828		/* Enable Accelerated IO path at driver layer */
  8829		h->acciopath_status = 1;
  8830		/* Disable discovery polling.*/
  8831		h->discovery_polling = 0;
  8832	
  8833	
  8834		/* Turn the interrupts on so we can service requests */
  8835		h->access.set_intr_mask(h, HPSA_INTR_ON);
  8836	
  8837		hpsa_hba_inquiry(h);
  8838	
  8839		h->lastlogicals = kzalloc(sizeof(*(h->lastlogicals)), GFP_KERNEL);
  8840		if (!h->lastlogicals)
  8841			dev_info(&h->pdev->dev,
  8842				"Can't track change to report lun data\n");
  8843	
  8844		/* hook into SCSI subsystem */
  8845		rc = hpsa_scsi_add_host(h);
  8846		if (rc)
  8847			goto clean7; /* perf, sg, cmd, irq, shost, pci, lu, aer/h */
  8848	
  8849		/* Monitor the controller for firmware lockups */
  8850		h->heartbeat_sample_interval = HEARTBEAT_SAMPLE_INTERVAL;
  8851		INIT_DELAYED_WORK(&h->monitor_ctlr_work, hpsa_monitor_ctlr_worker);
  8852		schedule_delayed_work(&h->monitor_ctlr_work,
  8853					h->heartbeat_sample_interval);
  8854		INIT_DELAYED_WORK(&h->rescan_ctlr_work, hpsa_rescan_ctlr_worker);
  8855		queue_delayed_work(h->rescan_ctlr_wq, &h->rescan_ctlr_work,
  8856					h->heartbeat_sample_interval);
  8857		INIT_DELAYED_WORK(&h->event_monitor_work, hpsa_event_monitor_worker);
  8858		schedule_delayed_work(&h->event_monitor_work,
  8859					HPSA_EVENT_MONITOR_INTERVAL);
  8860		return 0;
  8861	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011040526.DkrzVIF8-lkp%40intel.com.

--J/dobhs11T7y2rNN
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
1QVvK0+uC+/phr68/B8vTGBfGrMBAA==

--J/dobhs11T7y2rNN--
