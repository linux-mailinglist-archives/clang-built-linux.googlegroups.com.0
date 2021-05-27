Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHWHX6CQMGQEI4HNSOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F54B393564
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 20:23:27 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id g21-20020ac870d50000b0290230013e97e6sf638214qtp.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 11:23:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622139806; cv=pass;
        d=google.com; s=arc-20160816;
        b=J8erg3VqqZGtgxY0h1iIh6glu+q+pEmavfVrA/DfoBipzqgT7u1nOpUIQ5XFu/CC0x
         pZ5nioiFJzDxUpBrtgWfUdz8HTR1ecbs3ItKhbD/3r/Wkq6Q2Oqf54nPSZK+C+nsgioi
         KKMwXjqAZgN42DvJlUhYhNwanNSyvOuW9Zys40toW0yZpLPW+ooUAG6I0LE8fyFbceVT
         aX/s4nOkv8+N/aKqfnqbaoAH6MFzS/RVg5eO3+DI0n7C1V2PL4kNI2OTfXxygx+Gas8t
         NAZA82cNvxVqu1gX86rN7tJ2HIHxKXSiRS9otc/OT8aLVXpKtUXFdsK6i8gITKK9sErS
         12+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=GSPrOppZ26nkpqhhcmFnCOLUXS7Z+MjN9cT3468qKKE=;
        b=G3oH+r1P53AH3e2wC/nurh+ONr7Y4TVxrqTSiIrTSqihz5XcxpOMmVwTSnVs3Mrsvj
         KKXzfIwZApQiJxqLnZyKYxyHcDVhuJHvlfsKSiFLPbqqXnbDimsy3ZIRk9E58gv9qRHG
         B/eun6+IyWUyHfqw1k8PKX0y1HTI6iVfDaIy21rukDtKZjmJavkSd9U5IFvwuXP3rIwt
         e73kEOKcOkmst2JTSxmOxzqSox8smUc6OzRJ/I9pLIF0+VCPCyzl9y/EzMEvp0jS51pU
         SOd/a7HCKHQB6UtNIBt4ynB3wDsWOeTMgIgagDWD+10hWAGj6Ac5412L1aSK5lIhC5TD
         KBag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GSPrOppZ26nkpqhhcmFnCOLUXS7Z+MjN9cT3468qKKE=;
        b=PKwpgCgHkM4Pt8K8FIdYXeYXzTUF6Fdqs0zG2lIkpI5KCN7hfgtlpRT5prkXB5bfB3
         4CRoSq5FzChajzZdw89IgBoIo5Mx01T4zCgYNW3cF8KxxOCuBljA35wnyqTlwJUWU+Cv
         7ehFhdbcpW8NnE9bpqA4tVND9J+LWnG8d9nHp9FOCdj+q8Dh29U7GEond5YRESmauHKz
         X9ryboJqeAZfgo9TqUS/qvAq1DE1qWMm7LI9nHY/PA0lv+Lteam3MOnfV3OR1wpmIgkT
         lEu3kpsY8mVTWO71q8qsrVGFRNCmsR6um+hhK7BQzUDO14I34G/3NU+QeQUGXHlrV96C
         cr8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GSPrOppZ26nkpqhhcmFnCOLUXS7Z+MjN9cT3468qKKE=;
        b=UClSswPorlPbL8iMC+phdFG2mL1R6snxZTi8oXmGILAG6kx/eruWIzyGRUbCw9JxrT
         ZBrER0OjJlEaFBr1KY6X64GIS6WA/e9YSdgD74qJA7PN+88jhBpYI57WQGhvrQc/zNCd
         e0QgmgivrRzvhBD2fz2AXWQvdFq5J3mD/NQ1myJPJOAuS0OCJjJ253gDA/9OmGgfncBW
         YjchlZVEbxTIoS/ST+xq7LH6M+bQi8vtOMDRqkVWW1i/fhEC5/Kqa4X50jM7iFEYOgDN
         d9HezLoEKHezhlqCFWt/RDw455/jBHXsXvikWtUoxqT4FbMIB9vzIM44iZnbKT+cbs+1
         PBOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302+KuVOWEw69+hn/XExGPbmdwj7Qy5fbDEvjZURNxRwlRDOlsJ
	c8o5oeWZWu1EIHLHxR25gPU=
X-Google-Smtp-Source: ABdhPJzDr3JGP3J8ZHhxf2kDkc8SrCARgemmU9PE6N/nueM/o7K8SNxFt6+wDnlaK2b9NrwBC8S2gw==
X-Received: by 2002:a05:620a:7f5:: with SMTP id k21mr4781510qkk.129.1622139806128;
        Thu, 27 May 2021 11:23:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:8d02:: with SMTP id r2ls1366370qvb.1.gmail; Thu, 27 May
 2021 11:23:25 -0700 (PDT)
X-Received: by 2002:ad4:436a:: with SMTP id u10mr544103qvt.26.1622139805466;
        Thu, 27 May 2021 11:23:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622139805; cv=none;
        d=google.com; s=arc-20160816;
        b=Tct06srclbdeSuzii9z9D5TKibf82LMJDDPTYdPBvacO0aU54zXyZR+3f/APRXrBPl
         t13kcceqmBIGsEYZUC7J+GmzUmcoNUWRJoaDHY3Que/KWBGrWmGL3qG5xmpS13zmeI6L
         NBM8igIEKnZkxs63lltWUEsruhq2J1QwFwPDvXhDh9gNaxeKwTbHmfzMMjGlZR59Wuqe
         UMpXMNYrVeC648t/gw2tREwynsYNommo2icXBbBeVSrcm/R101phEr59OJ8mn/i7eyvL
         a6npyu/azYzXGdA1aTZ8ZoHm0SjKmqXy6xC3RnLPrqDAAkmDf2hK/nbbAZF0hVcZtXTz
         fu3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=iwUJBzUD06mFsErkYwktaRVakwQd3F9FnKCkt+tdUls=;
        b=04jVxdnkHPrBG196Nz0257EW3kniOFN8YX8Rq+hV7kAzORSQ7XtYX3bE20zMBgDEvp
         TZ241S6R11cmPc9JR1lAfa3wPweNuwqoNZYTCDsbpf4shqedSU3+06gtdPR3MSnpM4jv
         trxPAwJ/UvrYN8V5sES3tW0OkH5kZvawPSkTJ6/XBe4QWcXWtCtqtMqt2jiEszXBBmQb
         8KXmUqGC4SdSSL+ukFxFPkW85t6Z1vs+7Zv6oiCdAOPiMeTnipfZjQyvVryWAWZxd3I8
         I2b9KL7sw0VyILChZAa3bFf+Q5Lke0NASsE0a11Vv00NWKagtJhABzk07lrqJ/OURKHM
         003w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id v64si321393qkc.1.2021.05.27.11.23.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 May 2021 11:23:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: WSGJpcW5jGle0gfweBmZK/MJ0FLOgpQAFj9aEPA8s5qguCuT6eum+djQo2M+zvHgw4a5jbuq3f
 Lo301fzRLVsg==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="202570331"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; 
   d="gz'50?scan'50,208,50";a="202570331"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2021 11:23:21 -0700
IronPort-SDR: RY3l51S5gI7jDgQ7KXUPbiXaUxWKxJ9dAJYGu9ZzKF26nH4MvDbkqOpPwefOEUf6UceH3Cbgxn
 A1R3hGE4DgaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; 
   d="gz'50?scan'50,208,50";a="415010915"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 27 May 2021 11:23:19 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lmKf9-0002xn-4n; Thu, 27 May 2021 18:23:19 +0000
Date: Fri, 28 May 2021 02:23:03 +0800
From: kernel test robot <lkp@intel.com>
To: Rob Herring <robh@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [robh:for-kernelci 3/7] drivers/of/of_reserved_mem.c:51:13: warning:
 no previous prototype for function 'fdt_reserved_mem_save_node'
Message-ID: <202105280200.9bIPo9wq-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-kernelci
head:   3fea28f97b265227ad52b5949512f005981b801c
commit: 212db1c162ef8b68c0bdb9e7bb861abd762c6d48 [3/7] of: Move reserved memory private function declarations
config: s390-randconfig-r033-20210527 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 6505c630407c5feec818f0bb1c284f9eeebf2071)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?id=212db1c162ef8b68c0bdb9e7bb861abd762c6d48
        git remote add robh https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git
        git fetch --no-tags robh for-kernelci
        git checkout 212db1c162ef8b68c0bdb9e7bb861abd762c6d48
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/of/of_reserved_mem.c:23:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:75:
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
   In file included from drivers/of/of_reserved_mem.c:23:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from drivers/of/of_reserved_mem.c:23:
   In file included from include/linux/memblock.h:14:
   In file included from arch/s390/include/asm/dma.h:5:
   In file included from arch/s390/include/asm/io.h:75:
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
>> drivers/of/of_reserved_mem.c:51:13: warning: no previous prototype for function 'fdt_reserved_mem_save_node' [-Wmissing-prototypes]
   void __init fdt_reserved_mem_save_node(unsigned long node, const char *uname,
               ^
   drivers/of/of_reserved_mem.c:51:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __init fdt_reserved_mem_save_node(unsigned long node, const char *uname,
   ^
   static 
>> drivers/of/of_reserved_mem.c:246:13: warning: no previous prototype for function 'fdt_init_reserved_mem' [-Wmissing-prototypes]
   void __init fdt_init_reserved_mem(void)
               ^
   drivers/of/of_reserved_mem.c:246:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __init fdt_init_reserved_mem(void)
   ^
   static 
   14 warnings generated.


vim +/fdt_reserved_mem_save_node +51 drivers/of/of_reserved_mem.c

3f0c8206644836 Marek Szyprowski   2014-02-28   47  
ad1ce1ab061e7d Lee Jones          2021-03-18   48  /*
c8813f7ec01c67 chenqiwu           2020-05-11   49   * fdt_reserved_mem_save_node() - save fdt node for second pass initialization
3f0c8206644836 Marek Szyprowski   2014-02-28   50   */
3f0c8206644836 Marek Szyprowski   2014-02-28  @51  void __init fdt_reserved_mem_save_node(unsigned long node, const char *uname,
3f0c8206644836 Marek Szyprowski   2014-02-28   52  				      phys_addr_t base, phys_addr_t size)
3f0c8206644836 Marek Szyprowski   2014-02-28   53  {
3f0c8206644836 Marek Szyprowski   2014-02-28   54  	struct reserved_mem *rmem = &reserved_mem[reserved_mem_count];
3f0c8206644836 Marek Szyprowski   2014-02-28   55  
3f0c8206644836 Marek Szyprowski   2014-02-28   56  	if (reserved_mem_count == ARRAY_SIZE(reserved_mem)) {
418370ff2231b7 Danny Lin          2020-06-03   57  		pr_err("not enough space for all defined regions.\n");
3f0c8206644836 Marek Szyprowski   2014-02-28   58  		return;
3f0c8206644836 Marek Szyprowski   2014-02-28   59  	}
3f0c8206644836 Marek Szyprowski   2014-02-28   60  
3f0c8206644836 Marek Szyprowski   2014-02-28   61  	rmem->fdt_node = node;
3f0c8206644836 Marek Szyprowski   2014-02-28   62  	rmem->name = uname;
3f0c8206644836 Marek Szyprowski   2014-02-28   63  	rmem->base = base;
3f0c8206644836 Marek Szyprowski   2014-02-28   64  	rmem->size = size;
3f0c8206644836 Marek Szyprowski   2014-02-28   65  
3f0c8206644836 Marek Szyprowski   2014-02-28   66  	reserved_mem_count++;
3f0c8206644836 Marek Szyprowski   2014-02-28   67  	return;
3f0c8206644836 Marek Szyprowski   2014-02-28   68  }
3f0c8206644836 Marek Szyprowski   2014-02-28   69  
ad1ce1ab061e7d Lee Jones          2021-03-18   70  /*
c8813f7ec01c67 chenqiwu           2020-05-11   71   * __reserved_mem_alloc_size() - allocate reserved memory described by
6f1188b4ac7577 Yue Hu             2020-07-30   72   *	'size', 'alignment'  and 'alloc-ranges' properties.
3f0c8206644836 Marek Szyprowski   2014-02-28   73   */
3f0c8206644836 Marek Szyprowski   2014-02-28   74  static int __init __reserved_mem_alloc_size(unsigned long node,
3f0c8206644836 Marek Szyprowski   2014-02-28   75  	const char *uname, phys_addr_t *res_base, phys_addr_t *res_size)
3f0c8206644836 Marek Szyprowski   2014-02-28   76  {
3f0c8206644836 Marek Szyprowski   2014-02-28   77  	int t_len = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
3f0c8206644836 Marek Szyprowski   2014-02-28   78  	phys_addr_t start = 0, end = 0;
3f0c8206644836 Marek Szyprowski   2014-02-28   79  	phys_addr_t base = 0, align = 0, size;
9d0c4dfedd96ee Rob Herring        2014-04-01   80  	int len;
9d0c4dfedd96ee Rob Herring        2014-04-01   81  	const __be32 *prop;
6f1188b4ac7577 Yue Hu             2020-07-30   82  	bool nomap;
3f0c8206644836 Marek Szyprowski   2014-02-28   83  	int ret;
3f0c8206644836 Marek Szyprowski   2014-02-28   84  
3f0c8206644836 Marek Szyprowski   2014-02-28   85  	prop = of_get_flat_dt_prop(node, "size", &len);
3f0c8206644836 Marek Szyprowski   2014-02-28   86  	if (!prop)
3f0c8206644836 Marek Szyprowski   2014-02-28   87  		return -EINVAL;
3f0c8206644836 Marek Szyprowski   2014-02-28   88  
3f0c8206644836 Marek Szyprowski   2014-02-28   89  	if (len != dt_root_size_cells * sizeof(__be32)) {
606ad42aa3b1fe Rob Herring        2016-06-15   90  		pr_err("invalid size property in '%s' node.\n", uname);
3f0c8206644836 Marek Szyprowski   2014-02-28   91  		return -EINVAL;
3f0c8206644836 Marek Szyprowski   2014-02-28   92  	}
3f0c8206644836 Marek Szyprowski   2014-02-28   93  	size = dt_mem_next_cell(dt_root_size_cells, &prop);
3f0c8206644836 Marek Szyprowski   2014-02-28   94  
3f0c8206644836 Marek Szyprowski   2014-02-28   95  	prop = of_get_flat_dt_prop(node, "alignment", &len);
3f0c8206644836 Marek Szyprowski   2014-02-28   96  	if (prop) {
3f0c8206644836 Marek Szyprowski   2014-02-28   97  		if (len != dt_root_addr_cells * sizeof(__be32)) {
606ad42aa3b1fe Rob Herring        2016-06-15   98  			pr_err("invalid alignment property in '%s' node.\n",
3f0c8206644836 Marek Szyprowski   2014-02-28   99  				uname);
3f0c8206644836 Marek Szyprowski   2014-02-28  100  			return -EINVAL;
3f0c8206644836 Marek Szyprowski   2014-02-28  101  		}
3f0c8206644836 Marek Szyprowski   2014-02-28  102  		align = dt_mem_next_cell(dt_root_addr_cells, &prop);
3f0c8206644836 Marek Szyprowski   2014-02-28  103  	}
3f0c8206644836 Marek Szyprowski   2014-02-28  104  
6f1188b4ac7577 Yue Hu             2020-07-30  105  	nomap = of_get_flat_dt_prop(node, "no-map", NULL) != NULL;
6f1188b4ac7577 Yue Hu             2020-07-30  106  
1cc8e3458b5110 Jason Liu          2015-11-10  107  	/* Need adjust the alignment to satisfy the CMA requirement */
7d482813bb3518 Jaewon             2016-05-25  108  	if (IS_ENABLED(CONFIG_CMA)
7d482813bb3518 Jaewon             2016-05-25  109  	    && of_flat_dt_is_compatible(node, "shared-dma-pool")
7d482813bb3518 Jaewon             2016-05-25  110  	    && of_get_flat_dt_prop(node, "reusable", NULL)
6f1188b4ac7577 Yue Hu             2020-07-30  111  	    && !nomap) {
aaaab56dba9af4 Stephen Rothwell   2016-05-31  112  		unsigned long order =
aaaab56dba9af4 Stephen Rothwell   2016-05-31  113  			max_t(unsigned long, MAX_ORDER - 1, pageblock_order);
aaaab56dba9af4 Stephen Rothwell   2016-05-31  114  
aaaab56dba9af4 Stephen Rothwell   2016-05-31  115  		align = max(align, (phys_addr_t)PAGE_SIZE << order);
aaaab56dba9af4 Stephen Rothwell   2016-05-31  116  	}
1cc8e3458b5110 Jason Liu          2015-11-10  117  
3f0c8206644836 Marek Szyprowski   2014-02-28  118  	prop = of_get_flat_dt_prop(node, "alloc-ranges", &len);
3f0c8206644836 Marek Szyprowski   2014-02-28  119  	if (prop) {
3f0c8206644836 Marek Szyprowski   2014-02-28  120  
3f0c8206644836 Marek Szyprowski   2014-02-28  121  		if (len % t_len != 0) {
606ad42aa3b1fe Rob Herring        2016-06-15  122  			pr_err("invalid alloc-ranges property in '%s', skipping node.\n",
3f0c8206644836 Marek Szyprowski   2014-02-28  123  			       uname);
3f0c8206644836 Marek Szyprowski   2014-02-28  124  			return -EINVAL;
3f0c8206644836 Marek Szyprowski   2014-02-28  125  		}
3f0c8206644836 Marek Szyprowski   2014-02-28  126  
3f0c8206644836 Marek Szyprowski   2014-02-28  127  		base = 0;
3f0c8206644836 Marek Szyprowski   2014-02-28  128  
3f0c8206644836 Marek Szyprowski   2014-02-28  129  		while (len > 0) {
3f0c8206644836 Marek Szyprowski   2014-02-28  130  			start = dt_mem_next_cell(dt_root_addr_cells, &prop);
3f0c8206644836 Marek Szyprowski   2014-02-28  131  			end = start + dt_mem_next_cell(dt_root_size_cells,
3f0c8206644836 Marek Szyprowski   2014-02-28  132  						       &prop);
3f0c8206644836 Marek Szyprowski   2014-02-28  133  
3f0c8206644836 Marek Szyprowski   2014-02-28  134  			ret = early_init_dt_alloc_reserved_memory_arch(size,
3f0c8206644836 Marek Szyprowski   2014-02-28  135  					align, start, end, nomap, &base);
3f0c8206644836 Marek Szyprowski   2014-02-28  136  			if (ret == 0) {
606ad42aa3b1fe Rob Herring        2016-06-15  137  				pr_debug("allocated memory for '%s' node: base %pa, size %ld MiB\n",
3f0c8206644836 Marek Szyprowski   2014-02-28  138  					uname, &base,
3f0c8206644836 Marek Szyprowski   2014-02-28  139  					(unsigned long)size / SZ_1M);
3f0c8206644836 Marek Szyprowski   2014-02-28  140  				break;
3f0c8206644836 Marek Szyprowski   2014-02-28  141  			}
3f0c8206644836 Marek Szyprowski   2014-02-28  142  			len -= t_len;
3f0c8206644836 Marek Szyprowski   2014-02-28  143  		}
3f0c8206644836 Marek Szyprowski   2014-02-28  144  
3f0c8206644836 Marek Szyprowski   2014-02-28  145  	} else {
3f0c8206644836 Marek Szyprowski   2014-02-28  146  		ret = early_init_dt_alloc_reserved_memory_arch(size, align,
3f0c8206644836 Marek Szyprowski   2014-02-28  147  							0, 0, nomap, &base);
3f0c8206644836 Marek Szyprowski   2014-02-28  148  		if (ret == 0)
606ad42aa3b1fe Rob Herring        2016-06-15  149  			pr_debug("allocated memory for '%s' node: base %pa, size %ld MiB\n",
3f0c8206644836 Marek Szyprowski   2014-02-28  150  				uname, &base, (unsigned long)size / SZ_1M);
3f0c8206644836 Marek Szyprowski   2014-02-28  151  	}
3f0c8206644836 Marek Szyprowski   2014-02-28  152  
3f0c8206644836 Marek Szyprowski   2014-02-28  153  	if (base == 0) {
606ad42aa3b1fe Rob Herring        2016-06-15  154  		pr_info("failed to allocate memory for node '%s'\n", uname);
3f0c8206644836 Marek Szyprowski   2014-02-28  155  		return -ENOMEM;
3f0c8206644836 Marek Szyprowski   2014-02-28  156  	}
3f0c8206644836 Marek Szyprowski   2014-02-28  157  
3f0c8206644836 Marek Szyprowski   2014-02-28  158  	*res_base = base;
3f0c8206644836 Marek Szyprowski   2014-02-28  159  	*res_size = size;
3f0c8206644836 Marek Szyprowski   2014-02-28  160  
3f0c8206644836 Marek Szyprowski   2014-02-28  161  	return 0;
3f0c8206644836 Marek Szyprowski   2014-02-28  162  }
3f0c8206644836 Marek Szyprowski   2014-02-28  163  
f618c4703a1467 Marek Szyprowski   2014-02-28  164  static const struct of_device_id __rmem_of_table_sentinel
33def8498fdde1 Joe Perches        2020-10-21  165  	__used __section("__reservedmem_of_table_end");
f618c4703a1467 Marek Szyprowski   2014-02-28  166  
ad1ce1ab061e7d Lee Jones          2021-03-18  167  /*
c8813f7ec01c67 chenqiwu           2020-05-11  168   * __reserved_mem_init_node() - call region specific reserved memory init code
f618c4703a1467 Marek Szyprowski   2014-02-28  169   */
f618c4703a1467 Marek Szyprowski   2014-02-28  170  static int __init __reserved_mem_init_node(struct reserved_mem *rmem)
f618c4703a1467 Marek Szyprowski   2014-02-28  171  {
f618c4703a1467 Marek Szyprowski   2014-02-28  172  	extern const struct of_device_id __reservedmem_of_table[];
f618c4703a1467 Marek Szyprowski   2014-02-28  173  	const struct of_device_id *i;
d0b8ed47e83a22 pierre Kuo         2019-02-19  174  	int ret = -ENOENT;
f618c4703a1467 Marek Szyprowski   2014-02-28  175  
f618c4703a1467 Marek Szyprowski   2014-02-28  176  	for (i = __reservedmem_of_table; i < &__rmem_of_table_sentinel; i++) {
df3ed932394488 Rob Herring        2017-05-11  177  		reservedmem_of_init_fn initfn = i->data;
f618c4703a1467 Marek Szyprowski   2014-02-28  178  		const char *compat = i->compatible;
f618c4703a1467 Marek Szyprowski   2014-02-28  179  
f618c4703a1467 Marek Szyprowski   2014-02-28  180  		if (!of_flat_dt_is_compatible(rmem->fdt_node, compat))
f618c4703a1467 Marek Szyprowski   2014-02-28  181  			continue;
f618c4703a1467 Marek Szyprowski   2014-02-28  182  
d0b8ed47e83a22 pierre Kuo         2019-02-19  183  		ret = initfn(rmem);
d0b8ed47e83a22 pierre Kuo         2019-02-19  184  		if (ret == 0) {
606ad42aa3b1fe Rob Herring        2016-06-15  185  			pr_info("initialized node %s, compatible id %s\n",
f618c4703a1467 Marek Szyprowski   2014-02-28  186  				rmem->name, compat);
d0b8ed47e83a22 pierre Kuo         2019-02-19  187  			break;
f618c4703a1467 Marek Szyprowski   2014-02-28  188  		}
f618c4703a1467 Marek Szyprowski   2014-02-28  189  	}
d0b8ed47e83a22 pierre Kuo         2019-02-19  190  	return ret;
f618c4703a1467 Marek Szyprowski   2014-02-28  191  }
f618c4703a1467 Marek Szyprowski   2014-02-28  192  
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  193  static int __init __rmem_cmp(const void *a, const void *b)
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  194  {
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  195  	const struct reserved_mem *ra = a, *rb = b;
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  196  
9eb8cd2b0780bc Michael Ellerman   2015-11-18  197  	if (ra->base < rb->base)
9eb8cd2b0780bc Michael Ellerman   2015-11-18  198  		return -1;
9eb8cd2b0780bc Michael Ellerman   2015-11-18  199  
9eb8cd2b0780bc Michael Ellerman   2015-11-18  200  	if (ra->base > rb->base)
9eb8cd2b0780bc Michael Ellerman   2015-11-18  201  		return 1;
9eb8cd2b0780bc Michael Ellerman   2015-11-18  202  
ca05f33316559a Vincent Whitchurch 2020-10-21  203  	/*
ca05f33316559a Vincent Whitchurch 2020-10-21  204  	 * Put the dynamic allocations (address == 0, size == 0) before static
ca05f33316559a Vincent Whitchurch 2020-10-21  205  	 * allocations at address 0x0 so that overlap detection works
ca05f33316559a Vincent Whitchurch 2020-10-21  206  	 * correctly.
ca05f33316559a Vincent Whitchurch 2020-10-21  207  	 */
ca05f33316559a Vincent Whitchurch 2020-10-21  208  	if (ra->size < rb->size)
ca05f33316559a Vincent Whitchurch 2020-10-21  209  		return -1;
ca05f33316559a Vincent Whitchurch 2020-10-21  210  	if (ra->size > rb->size)
ca05f33316559a Vincent Whitchurch 2020-10-21  211  		return 1;
ca05f33316559a Vincent Whitchurch 2020-10-21  212  
9eb8cd2b0780bc Michael Ellerman   2015-11-18  213  	return 0;
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  214  }
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  215  
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  216  static void __init __rmem_check_for_overlap(void)
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  217  {
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  218  	int i;
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  219  
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  220  	if (reserved_mem_count < 2)
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  221  		return;
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  222  
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  223  	sort(reserved_mem, reserved_mem_count, sizeof(reserved_mem[0]),
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  224  	     __rmem_cmp, NULL);
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  225  	for (i = 0; i < reserved_mem_count - 1; i++) {
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  226  		struct reserved_mem *this, *next;
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  227  
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  228  		this = &reserved_mem[i];
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  229  		next = &reserved_mem[i + 1];
ca05f33316559a Vincent Whitchurch 2020-10-21  230  
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  231  		if (this->base + this->size > next->base) {
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  232  			phys_addr_t this_end, next_end;
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  233  
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  234  			this_end = this->base + this->size;
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  235  			next_end = next->base + next->size;
606ad42aa3b1fe Rob Herring        2016-06-15  236  			pr_err("OVERLAP DETECTED!\n%s (%pa--%pa) overlaps with %s (%pa--%pa)\n",
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  237  			       this->name, &this->base, &this_end,
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  238  			       next->name, &next->base, &next_end);
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  239  		}
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  240  	}
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  241  }
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  242  
3f0c8206644836 Marek Szyprowski   2014-02-28  243  /**
c8813f7ec01c67 chenqiwu           2020-05-11  244   * fdt_init_reserved_mem() - allocate and init all saved reserved memory regions
3f0c8206644836 Marek Szyprowski   2014-02-28  245   */
3f0c8206644836 Marek Szyprowski   2014-02-28 @246  void __init fdt_init_reserved_mem(void)
3f0c8206644836 Marek Szyprowski   2014-02-28  247  {
3f0c8206644836 Marek Szyprowski   2014-02-28  248  	int i;
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  249  
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  250  	/* check for overlapping reserved regions */
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  251  	__rmem_check_for_overlap();
ae1add247bf8c2 Mitchel Humpherys  2015-09-15  252  
3f0c8206644836 Marek Szyprowski   2014-02-28  253  	for (i = 0; i < reserved_mem_count; i++) {
3f0c8206644836 Marek Szyprowski   2014-02-28  254  		struct reserved_mem *rmem = &reserved_mem[i];
3f0c8206644836 Marek Szyprowski   2014-02-28  255  		unsigned long node = rmem->fdt_node;
9dcfee01930e6c Marek Szyprowski   2014-07-14  256  		int len;
9dcfee01930e6c Marek Szyprowski   2014-07-14  257  		const __be32 *prop;
3f0c8206644836 Marek Szyprowski   2014-02-28  258  		int err = 0;
6f1188b4ac7577 Yue Hu             2020-07-30  259  		bool nomap;
3f0c8206644836 Marek Szyprowski   2014-02-28  260  
d0b8ed47e83a22 pierre Kuo         2019-02-19  261  		nomap = of_get_flat_dt_prop(node, "no-map", NULL) != NULL;
9dcfee01930e6c Marek Szyprowski   2014-07-14  262  		prop = of_get_flat_dt_prop(node, "phandle", &len);
9dcfee01930e6c Marek Szyprowski   2014-07-14  263  		if (!prop)
9dcfee01930e6c Marek Szyprowski   2014-07-14  264  			prop = of_get_flat_dt_prop(node, "linux,phandle", &len);
9dcfee01930e6c Marek Szyprowski   2014-07-14  265  		if (prop)
9dcfee01930e6c Marek Szyprowski   2014-07-14  266  			rmem->phandle = of_read_number(prop, len/4);
9dcfee01930e6c Marek Szyprowski   2014-07-14  267  
3f0c8206644836 Marek Szyprowski   2014-02-28  268  		if (rmem->size == 0)
3f0c8206644836 Marek Szyprowski   2014-02-28  269  			err = __reserved_mem_alloc_size(node, rmem->name,
3f0c8206644836 Marek Szyprowski   2014-02-28  270  						 &rmem->base, &rmem->size);
d0b8ed47e83a22 pierre Kuo         2019-02-19  271  		if (err == 0) {
d0b8ed47e83a22 pierre Kuo         2019-02-19  272  			err = __reserved_mem_init_node(rmem);
d0b8ed47e83a22 pierre Kuo         2019-02-19  273  			if (err != 0 && err != -ENOENT) {
d0b8ed47e83a22 pierre Kuo         2019-02-19  274  				pr_info("node %s compatible matching fail\n",
d0b8ed47e83a22 pierre Kuo         2019-02-19  275  					rmem->name);
d0b8ed47e83a22 pierre Kuo         2019-02-19  276  				memblock_free(rmem->base, rmem->size);
d0b8ed47e83a22 pierre Kuo         2019-02-19  277  				if (nomap)
d0b8ed47e83a22 pierre Kuo         2019-02-19  278  					memblock_add(rmem->base, rmem->size);
d0b8ed47e83a22 pierre Kuo         2019-02-19  279  			}
d0b8ed47e83a22 pierre Kuo         2019-02-19  280  		}
3f0c8206644836 Marek Szyprowski   2014-02-28  281  	}
3f0c8206644836 Marek Szyprowski   2014-02-28  282  }
9dcfee01930e6c Marek Szyprowski   2014-07-14  283  

:::::: The code at line 51 was first introduced by commit
:::::: 3f0c8206644836e4f10a6b9fc47cda6a9a372f9b drivers: of: add initialization code for dynamic reserved memory

:::::: TO: Marek Szyprowski <m.szyprowski@samsung.com>
:::::: CC: Grant Likely <grant.likely@linaro.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105280200.9bIPo9wq-lkp%40intel.com.

--rwEMma7ioTxnRzrJ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICBner2AAAy5jb25maWcAnDzbcuO2ku/nK1TJS/KQjC6+yLvlB4gERYxIgkOAuvgFpZHl
ifZ4JJckz0n267cB8AKQID21qYnLQjeARqPvaPnXf/06QO/X0/ft9bDbvr7+M/i2P+7P2+v+
efByeN3/98Cng4TyAfYJ/xOQo8Px/e9Pl8nDcHD752jy5/CP8248WOzPx/3rwDsdXw7f3mH6
4XT816//8mgSkLnwPLHEGSM0ERyv+eMvu9ft8dvgx/58AbyBXOXP4eC3b4frf336BD+/H87n
0/nT6+uP7+LtfPqf/e46uLsd3u7uJsOb4f3u9mW/301H05fh16+j3Xh68/Kw3++/voyH96Pf
fyl3ndfbPg4NUggTXoSS+eM/1aD8WOGOJkP4r4QhJifMk7xGh6ESdzy5HY7L8ciXqLPAr1Fh
yI1qAEzaQlgbsVjMKacGfTZA0JynOXfCSRKRBNcgkn0RK5ot6pFZTiKfkxgLjmYRFoxmxlI8
zDCCcyQBhR+AwuRUuMpfB3MlGK+Dy/76/lZfLkkIFzhZCpTBuUhM+ONkDOglbTROCWzDMeOD
w2VwPF3lChUjqIeikhO//FLPMwEC5Zw6JqujCIYiLqcWgyFaYrHAWYIjMX8iaX02EzIDyNgN
ip5i5Iasn7pm0C7AjRuQJ5IvGWYMS2mpTm3QbZ63CVfU9yHIM/TB10/9s2k/+MZxGe6TFUAf
ByiPuBIW467K4ZAynqAYP/7y2/F03P9uyAHbsCVJPSc9K8S9UHzJcY6dcC+jjIkYxzTbCMQ5
8kInXs5wRGaOM6krQxlsgnKwf0ALCGVUKgTo1uDy/vXyz+W6/14rxBwnOCOeUj0vNAVQjvg0
RiSxxxiJXUgiJDiTu29qaLl4zIjE7AS09mEpyhgu5vw62B+fB6eXxhGaaykrsaxP3QB7oKML
vMQJZyVL+OE7GHUXV8InkcIs6hPPFPiESgjxI/cNKrATEpJ5KEDMFJEZs3GK07WoKYkB+cRx
ymF5ZSurRcvxJY3yhKNs49y6wHLISznfozC95ImX5p/49vLvwRXIGWyBtMt1e70Mtrvd6f14
PRy/1Vxakgxmp7lAnlqDmG7KARQJ4mRpnWHGfKCDeqCBEtFJJiP1qvCh0kOfMOkTfFNEfoJ8
Q+OAOsJoBFTRxNxZcSLz8gFriwYHrgmAmaeAjwKvQWJc9DONbE5vDIHbYmqNQlYdoNZQ7mPX
OM+Q1wDIhRkHnZDeLaaJDUkwBqeE594sIoybrLTPb3uxGUnGlmaQhf7FKYJkEYKbbsi94jHb
/bV/fn/dnwcv++31/by/qOGCAge0imqkmWN5mkI8wESSx0jMEARGniWDRahBEj4aT43heUbz
lJn0g9n13MRrZMG8EPt9CCnxmeP2C2jmKzfdnBSANDzhzDUvBTuvTFWlrdSTmxQQx2I+XhKv
w7doDJjaVLLWMXAW9MFjwtzurSJilrsZKV0m2HVQdddxQ+wtUgo3Jc0kp5llJRTzVVylNnEu
D4Y/YLA9WDUP8Y67ynCENo7tZ9FCsk95/MyIBNRnFMPCjOaZh41oIPPLgK1e3e+JdQDYGecA
zI5xzDm0sUUjoDFBT4z7rtNRKq28/N0SG0/QFBwSecIioJm6eprFoETYdUMNbAa/GA4b3C43
vK6KRXLij+6aOGAoPZxylV5JY1XDtQU1KVQLOGiJwfwT0ILMWHyOeQwmUNQBQEM0CoBjuSBE
Cfh0y7dSRtZOb12pI8jqwhnmW0yeIYhjgtzet4IGOaSYTghOacccRuYJigLXRSt6zYxOxTuB
FbSzEGydYy4ilqARKnI44tyF6S8JHKrgp2GiYOEZyjJi3stComxi1h4RVphWjSqGST1thQpp
0HOHyiGsENiPMjyQ+J+JLU8gMgro5N7Ci211ZviLAw0OiX3fzBeUsEvtEVV8WUqJHIRdxTIG
sqnh2VNvNLwpg66iIJHuzy+n8/ftcbcf4B/7I8QtCDyhJyMXCA3rGMS5l7K8rh0rf/qT29Qc
WMZ6Fx0iNlShlKcon+m9LdsCaRWCO8gWbhmOkCuDkWtZshpRNxqagbBlc1xetmEHJEy6VRnO
iAwUm8b2kiY8RJkPMZdLGliYB0EE94pgG8VKBG7JXgpOLmNISFY4QS6pBKcdkMiKSZTRU56O
mXdj1ysqjYqNQO4J4n/hm+m+3HwmRTLxCTICO5nqgCcsAySDO5BVLnSM2IKViVK4wpCtOAD6
ituDlbYKdSwQE6P6JDNRpZz1GKRJhMq9RYwshUs9AvkxyRYuObMjvhw4O8PGRmzyMDQ+qYCB
xrB3AP67oszQv7kuKEUg4GDDbi1djuAwqUzXSwVNz6fd/nI5nQfXf950XmEErObUWNH59DAc
igAjnmcmkRbGw4cYYjR8+ABn9NEio4c7E6MOeMv5LvdaTXXMwN7IHeCUsya9UHfsUkJve6i5
FTy3E2D5ubQAzmUVgryLPuhDL1TeQQ981DcZGNgD7WRkMdnNxwLoqmkVoNtaEO5uZsSsvCqj
bGhJbJR7kkxlFo93N5UYUZ5GubIy7WCcgwZHdO6uOYRPwDaXZAFgfDs0V4ORScf96FXcyzzC
MnUtb40Nz6o+CjC7RmipREimghqY5tlcWvNNA6NyF9VSqkqY0JllpyBQpbJw3ZViSFchjYuz
zNNnSpStifffT+d/moVrbf5UWQzCLLD4coMG+TW45RZjtBZpuGESCDLBHm/uKksILkE7hhp9
hbJE+BtI2cDEl7DqCBaFurj4ibrKaF98YtSapXkHKQvyxJPhPxjd0bg2WZCmU6DOkNaQeVLY
bNkD8nN3/cymQZHlv39/g7G3t9P5qqtbxdIZYqHw8zh1rmRNq/OfVekNlofz9X37evjf8uXI
yAooxx5kn6r8laOIPKnikpjn7heFtHFPXmxwAKVp5IMoqZjYMUwtiy49oAg3KaQ6gcuB6or+
0ljfptGq7C9dKYLaQZ3ElIYGN3RdZ//6ct1froZ3VJPzZEUSWW+KAt5Ypp5ivd9sz7u/Dtf9
TirIH8/7N8CGiHVwepObGcvrK/V04cCyBPZYGbdAVGuq/2eQBQGhIbYTRw6c8WCdDato7uIs
DgLiERks55CeQY4mKxaeLGw2tFQG57KKxkkiZmyFWm8+zdBGj2aYuwF6VICQBY2EWsFLdRM4
yyBtJ8ln7BXXbaIlMWmMKGLViiGliwYQwlBZUeBkntOctdkLrkXVyYsnOoclDiCOI8GmLKy0
ERjmxWtIAyizPFZZJ66Sfp7lHm/gTcZg6YDdcIkigNw4oX6TOfIRMqZ+8XLXZG2G55ClSnmV
FrC4TVC/JqdkoujKBuV817hMQ4s1pQ1y8d2Sxx6omSnXOYMA7xbCHjrEldmOEyzrvx+gQKyu
f2tdkJYZwVCAwWqlay+cN0kttEBfjkqkGhjFPP182gHzad72dCrRJ6kn9DtR+STrQCoS0Z/C
pZFv4LsYz7AnEXpAMvCwEo3WlIjT8inHXKT3MaULQ+mYS3eAn1iVimVJ6CfWAb3tUP9ERhXS
rIX5HDvuUB+eBvI9JuObBhSUq4xNsEcC820DQHkEhkvaQ7CtSpIbs+XTIF6DEoP5Uk+PdpSi
cOTWEgYodJU0USqOqB1UeGfVLQs9j4juLqjSY8MjRzLtngEAgiKfGc/wUlwYmbMczpb4kxYA
NexsIVpNaLNmos2WvLfeN94lJM/N07rG6hnV8cVCGx8aBI2XhA4UV5LVEjkOdp+XIXO2WptV
h05Qc7oWig4cHfh62SZtmnoJXfqMChkXNaPismZQFMhAhMvKmI40PLr84+v2sn8e/FsXyN7O
p5fDq/XUWe0isYuyDhZlnbms4fSsZF2HbPaRqRVJnDWgD2KecilZQJH1YzMkUNVTJkt/jyMj
vdaq5kquCyVUz5IR+PncynRmspLkCltRg9EsGTXYrnt7QO9lY062kQt9jCFmYQ/SB2v83AJ2
I0InCkPLpmE10fLkA2I0Qj85BU4/QTVS/TDmwFWNUL18Vhg/Ae6kucbopNhC6WahQutjoYHQ
T85HLGwg9bJwlRGO+3moUX4G3km2gdJJtY3TzUeN18dIE+MDkj5iZROrxcs8+VBDKluMOJXB
exavjIBAGjM9WTtzM4zKVgysfwdQkdQBqz2MfjuCc0ACrTCU+cd/73fv1+3X171qIR2opxEz
cZ2RJIi5DCBartwFUvvVAJVDmo+cUeA1XrcLZOZlxNmnU8Dly7sdLmS4s4TRdSqzwhRvj9tv
++/OdLoqJRlevC4+rcFdmGFlDVrCDxmENOtTLYxmnIhj5WtUkUq04QFiXMxzY7holKv6dxo3
oAkosYpSpsk+G9IV2bSWgYPTpXWwCKK1lCviVQH1xrVAgRb7BWrrHDMZk9jxYDGkhc1r9iiZ
ktgINNWTVYalpllZREzmGWrGpDKHF83HSXkJyPchg2zWkBfMEInyqVVdeQzqJ+c83gwfquJi
fwLhggItK7SxKltOtFg/Q7tYEmGUeMgLzSi+0X4To3anigFTHQPWbLhNjNjjvXFtdtZTrf2U
Uup+uX+a5e62lCemH2sd1ACLcZbZWbRuTK2oU3UWNS5Tl4W+8rokiTOZ60kz1O6/Ao3Svc7H
/f75MrieBn9tf+wHOlIOGFgTaUKeHXFwyrHO6ZAVAnebFqMRCHcX0epHe13A3f847ICe8+GH
9QCuayme2RjY+FC0lDJrUKnEzKxXlW8ccoZEsNERth58i6GihuZuCwEUgb3M3SOlFmBp3D3V
72geVsCUu6qykvSYNU7f1VhbwtQ9BiB0MrFljUP2NHFJKOO561VegrCH4uZihC47l0oz0g1D
jLjVRTEDrlG/eEGK6qZG49RPIe35snjVv0NHT5QLEWdj+cMl2rWQuSXP05D65cuAsTB12QUL
Rb9965dqjwx2p+P1fHqVjZPPTc2R+AGHn6Ph0BYL2dbeahGtAHVrqn32tWxvcLcwKThEeRmV
jeVqmZYB8veXw7fjanveK8q9E/zCqgcbSzNWtm7CgFqyPZpGqGO0nGDJWYyZ7Vnrd6Ae4nQg
dfoK7D28SvC+SXxtE7ux9NvRFtL73V6D67u7GC9X5lk85OPEa1iqctTFkhLk4IsJcjLn8/14
hFtXV7dbf0h69ezplstKZvHx+e10OFrPdMqiJL7q3XC/pZoTq6Uu/zlcd399qAVsBf8I90KO
rS6p/iWqkGAdCe1J6qAChty9dannocy3eRuD63Q30gJq442zONofu+35efD1fHj+ZvadbCAu
Mmox6qOg4+YIaC8Nm4PcsjvFGGUhmSHHOSBzIr7dJ1gMCc4IiEr3HNmtr7+jQXP+OBk2wUWc
nK0FXwuVIxq5X7kEhGE4mVtfGatg2GpPqpfNY1kUMwvPJcwLY7NpqhyOVWuS5+NlaVOz7dvh
mdAB01LRkiaDB7f3a8dGKRPrdQfXbu+mPVyTU8H0jl2Ts7WCTZyq0UFz/bZ62BVh1YBWyV/d
KKnb/kIcpbZHqzCAPTxOA3dzLASbiY9k4dz9tRO1eEAg+4eoWn+loOR1cDh//4+0uK8nsC3n
msnBCtJ8+S2Cmr/VkIp+fVjIyMNlkoqqTYzG7XqWeofTZ3QtaoCrUMm8hxqz/BKZ8yaaJyo3
KppVl1Uib2SwkAysOmCNUeNCZMzuZ2TpjEEKMF42+sD0uMwBirlCZ7iui4vFF8rEIpffoSye
78tV9NQUO6HVV7Dkm1POqXqxdoOXeQQf0AyiCk7MwnaG51ZVQH8WZOy1xlhEYivIL8fNh9ti
LI7NDpVyUbMEJo0OC1Gm5SswRUWCAuU/yzcju5TfVjEl4rP3y+BZJTaWzsV0zbE7q4hD0tn2
Yq5WcTRhdrOf82sBPjd4RwPzd1nL4/YlwmAAUQK3XophEKMs2rhBCzr7bA0Ub/bWmCwZWE0S
MGZdAJVPg6CKS7gBqyClATRa2ruC8GYRMh4iU5TZna7FgEDr6fT+4a4NGI2nN+3RhEL6XT0b
JcsYu6I9a1xHiYfLznXhyL8d364h5aOufBj0O97YnEhDMBlmfxonQdzob1FD9+u18RxDPPYw
GbOboTEGUhtRloP1lZwlntVWAhoQGVqBUp89TIdjZPb6ExaNH4bDSXNkbHX3MZwwmkGiBrDb
W1crX4kxC0f39865avuHoTvHCGPvbnI7dvGPje6mRhAkBRTOCSlqOqm/DFPulSGzrLUSa9Vg
VVQEnAFp6zviFZZOiQTzA+zK3GQdV0B8YwUE3liKWCvmwxhsZexqYdMQgfjY1QpaQ2/NXYrh
CM+R5/oaVAGP0fpueu+a+TDx1u6e1gphvb7pxSA+F9OHMMVs3U0BxpCe3pgGtcGJKgyf3Y+G
ollR16OdBb4aKhBj4Ed50fyjvxW8/3t7GZDj5Xp+/66+HXH5C9z38+B63h4vcvfB6+G4HzyD
Wh/e5K+m+v8/ZrdFPiJsIt2VO7gykcD/uUrXsgUFyTAstfrZwNOuvrhcO/ZCQ+FnXiyWi+Zn
we06p5JjFHnym2Me6RN00SxvoBlKkECuSfILirbOLVOUEM/p+yzLqhsPPUaKkXb6LIHyxduU
K9eEKhTM7U4h/Vn10rI5fgQv0YBEdD7X5VfdFYsxHowmDzeD3yAI3K/g/9/bVEGIilfEtOHl
iKChWTGqhhPKNuYZevfRlBzf3q+dfCGJ9Qc61EcwEj5rjgWB9MARtqMLDdMvPAuInxy3qlFi
xDOyXug4TtGVX/bnV9kCfZBfPXrZ7sy8tphEIQ7XyVhjxxIiUoZylzFpoDEPApRErB9Hw/FN
P87m8f5uaqN8phtNhTWKl85BnYsarG8VshtnWeDNjELi79R4g8YeOBDIwMO52jU0gmr1syo8
ekSGAARFkJBAHuPyJsV0msuWbMkfI9yoB8V0msbTu+HaDUU+u5/e3HUB76f39z2whz6YnQU4
4Fbkb8EzkIVRz3we40jEa/4BWPBJF/U5FSlZeyRzw2f5eDQcTXqA446zy6KqbE0jXjKdjKYd
SJupx2M0urFCqzbGfOT8JpCNyDlLm+FmG4HYfxnAgdHwbJ2INy3H7sJxu0AXZqcY+OhhOLnp
ht2Ou4iQGQ0EJh8QEKI4ZSHpPgvG/COWQMwWoQ7d0rBCjztQ1p78S1FdBAT5Z8JZ/gENc0p9
0kFDSHyI0brWDzcwCD9v7tYuS22iQvQMUt+xi6wL4IUbxu7Y5v5u1EXCPE+eXLGPxaUFD8aj
cYcu4wh1mD5s5ksmQNlUsZoOzeSrjdCjMxBtjEbT4chp+S1Ej926vy5lYcVsNLrp3AxHgWy0
JKn7e3oWLpuP7yau4qWFpT50XGa8vssjSA47rC9J8Jp0MDZe3I/GblCKk7j4kzZuZYMMJOC3
66HrTwuYiOr3zP4ybAu+IknXRpwIFE8mkOPzjj+aYZGtvMQHJK18PoXsvttjrWJwBh3KE3uj
yf100kmu/J3wsf3NQxei/GKW/PNInSsxbwz524dH1ni3P4l3/zELPWf0aaJkseCsi25GIozc
MZiNxn7C6zA++j/Grq27bRxJ/xWfMw+7+9DbvJN66AeKpCQmhIQQlEznRceTeCY+646zsXu2
598vCgBJXApUP3Taqq8AFHEtAFWFKPZ0UTaQnX7DYWHUu1Cwc78rq8bZHWKsY5Gl3pE+UJal
QY6fquiMn5shiyKPM6rOtzv1nktyo/5PB6L0mtt5tp9YOv4FEcEepsX5lO5sRa1RYE/axFJo
BMk8VQaKVB2WKxhBI5gZhIB2+sHYRJnHjE6ParWht/nD0KFENiUOHKF2MabBK6h02VM/e5pO
e5jD48+v4goDfCxh76hbCtoTgSDAv/aJlsXB94sft2jkBQlXLWWRm3HXbjndm6wv79006jxk
LR3HiGUmotL21WrCkm6p7hUiqXsq81zoZ6v19yVprAAMinI9sjQtEHqXIMSGnMPgY4ggO1IE
oX5OgDXjfIaAnRDIfeq3x5+PX97hDnw+w54Goe7vczE8zXmX7hppuSftM5nOOTFoh873Gm1u
As65AGAIW+Mhac7HdtwUVzqYhoPyoFOQ0Y7YiUtpuJKCizzn9JU9/Xx+fHHve9V+Wdx8VOKA
SN4IvH7/pYjSgGcg0onDPvcQSibmal1smOAY9NGhn8t+AN3X7qAaNNWTp6vqnMde/M1+Cy0O
czLUiG6LKfCDbhCqaKzdGS6JBtmbE6uq40g95JVUYday3LxftzF7ufYz+k9dBaOaST4M5R4q
0F/VihGYHJE1DNpbWjskK0zb8lz3YEYehilXhHxSCd6bnUBdT1A2CWfnZjLczpDPkO4n9pW3
xQDjHVB+tt0Bexo5CTht6bFxZKE71l076vmWBbz9HfxXM4pL+XbfVnxK6JGRYLNgs5ZihpFm
dxLN3d2YW6xyjjxTYUOhB6Mjp7GEWIZN1+kLiSAzAjGINCp7OFa8GT9e91r/4zvwurMimn4+
EUyTPJ67zpzfD5dK3fMj3wpnp9YN9bJGqGBpmro702T8nd+WYBT9FKdnmaTpStNRapy/gmsr
WM24bdJS0l5lnDfURPMeiRU1E2VgNRGfAr+FnBm3ZRJjVlALhxQRLwYMOVcTV9XQm+bdCza2
9MBnAew6iNKO91bj23i14bZqHFBqiXZfc9yLAI2yHrBGrvh/1Fd5FCtHJIHo5uZ5oqQauxbF
6NnxKJRP8NeqN2PL6Jg4qr2RvuWUY2M6Yej48Xw5DagXBnBd+HeCZ+j44HwO39PF8WcaJX7E
2tHbqNx/SK3kV+glXyytTNNSFtmPcZR7AhRxKMQ33qziI46PUD94GaIosFmmZicwSxi3NSLN
aYdGcoOgIEMp9rvax70//ni6+zZpq64KNaW6xom17i9Iig6lC6k0DQN+SX8PcApPdFuco3B3
w23fRCkXcsZGAl88uwfLMHSiCXsCn8mA5Djt0NXC1cHnrZoaY/2ZDXakJgODIKDSXM3Rc0E5
ci8F9f4IvV/cT0GofWNahWEnnOGweyMARYi9i5kVOY9Tg5M/Xt6ff7w8/cm/DeSovj2jIXvE
GO63cmPFM+265rj3XIfJEgSrRyoJSzGcdN1QJXGAGzFMPLQqN2mCzfQmx5/Oh19pe+SzeOcC
fbM3iXVj8jtSkG6saFejXWa1Ys2slI2j590C4GDKoG7uLuXLP19/Pr9/+/3N6DFcE92fDH+x
iUirHUYs9f2plfFc2LxvBVu3pW8oq+g7Lhynf3t9e8dtvs0+1LVhGuMz34xn2AnojI6x3RYl
qfMUO01WYBHqpzliqSkCm8L0Y3Kg0LYdE5N0FIdskUW8tHVb8v58tuViLUvTDRZUT6FZHJh5
cdomG03apS3tjDnJuvVaJhIRf+vu72CWKJvg7j9/523z8u+7p9///vT169PXu18V1y98x/yF
98v/MjtRBTMhjF57OEDoW2EybN8LWjDrStSC1WIDrwfw7vEWY9mtALoyqXxsCO1qM7MTSMrs
THi/nwv3Ng4ZGmsGlhuz32bHZb4efOd7CA79KsfA49fHH++Yv4ModDaDNGQZyhO7Nma8L5H/
6f2bnDpU5lqL6gZP3gFqdUW7Say2A2MsqKsbLDBreBsWGKalV5MOESjGToON62H+w/YpABIp
mRndB2jCKFWqL1xHJY9v0AbVMhU57ouQSu7ZzZzUPt46hAFgbMX/be8HoPHpdms8ECSI54Fn
teseTLLjOyQ/c+rwFv3ejDaraIYXm6KZZtRAhCObXdeMTqWqcb0oU5zWkTy4dh12dwOw2MS3
WzMfIFqn8kA+gZPJ0aO8cpyOZeS5UgC4P1UfwbDCIwmrwoLPmkFkFyuPtjypyGg6zgFtBE87
D/88zo0Unx+Onwi97j/hGyHRTUht9ERNBXCVaBBs0cOAn/58fX/98vqiurCxdoqPpC1X5Txl
D12TRWNgNpIY9U5dAdEX4GhhYA98qBHhod6fOqvLzYbkWs7oOcZB94zlPww1Vl5uMN0z7W1S
LAT55RlMODW/Y54BaLRLltR8R4L/9NqdHgeq2KXmQtlUAOLpR+HdLxFO8KPYdBslTpA4v0YR
1+Z9wdQInIVQb6i9/nSVq4FyEV+//I8NNMIv/I4eHuApIjDgOzYDvNwFoQNE07KhJBQO699f
eR083fHFhC9PX5/BD4KvWSLXt//WFxK3sFl2W2OePEYUcJ3f81gSyK7t8oPavEQg1VPAX3gR
EtCOTkQcKVk2dialpCpZnEfGTDEjI43MsMIWAxgdZZEpHtD5fjWKWVCYuzMHNSZdG8UEYryl
8PO1iWEMU/1WYqYPZDdiOfYfiwBTPCf8VDXdacBSLh7DzFa2pDce765vj293P56/f3n/+YLp
JD6WuXF5vsaCoggizAjfyx7U03BagNrTztJIpyRt/8l8N0t2D5fZDiohd7LG3ngmXS+hRXWe
BhJUUo55HCybaRl94ffHHz+4li1qz1EFRbo8Gcdp0V6sw+l8VYo0nJTN1h8Etb4vqVWZ190A
/wvCwClhHlmIAmxx9h5tW6CH7r62Cu1O+7a6OJW0LTKm+2XK1ihJmdYR73an7dkR0l3PbfyE
2bFN7VzpZuOCeF/VmzixhZhXeqMJSH3dqbjHZlgNrGHnjZegPv35g8/GboOXNU3TorBLklTr
bTaJHKndA8GHvnZqSnZB7KxtgaMRTxaNULS/lsUZSuytaAHngSUnrXZF6jT3QNsqKlR31DYH
Vq3JYbSrb9Rm334+HUvno7Z1HqQRZhI3wWGhx2dfqJHdNLPZqUNMnWI/lMfP12HAg84IDrk1
9cnV0SJPM1suaKE8S90BLAyUfHlJu6Iic1IJoMhw1Xvh2HiC4kuO+y4JYm9f43AWJHZ/mC3i
ltHktu8cPGC13bdDMdodS4Q4AXds/amjCWkkpB/8C6ivqzgyhUIKnxVzRyizWvhsHma4td3U
knG4Cb3jSA5he8UhVRwXhdv8tGUnhh19yxmtB2PzWP8y5Av0MOr2OmWtR/t934hg/V7p+ZZN
Ra00I5Jb86RKcx9Oq2X4y/89qzOLZcMzc6mtvnBaOWmNviA1i5LC0O90LLzHtncLh70PXhC2
t0wQ1Gch8urfwV4e/2U6mPIs1V7r0KAHTTMDMxxrZzJ8YZD6gMISX4dE4EVwmEd7pcGMmpua
2WUeEaIYBwqv0KbFnAlhp/kmR+xPHF+toE8oV4GLZajWOpAXXnnz4pa8RRMkvtRFE+ZrnUx1
pllrP92LyAAyXLBLxPY6GupR42wW8fSfYTCjc3RDFW30JVEH+Rxx7tQDTSg8ZYzKJzW2GxJK
Jkk67bStYt+IB/aIDC+/HEhIfg3FzgTgFt7KwSgbImZ2D67gkr4WqUtnO9wT9Pvk2iiiW+ux
FRVZZLFQRZAIi7Yt4ZzxAfH9gmOSPdwqcR0zyEI3SVkNxSZJSxep7qNAV5MmOvT6LMDp5kAx
EGycGAwRlpRt8Xcq5VdxVE9EymOpyCuFbT9F+agrEBZg7upt8FB/8oP1cD3TuuRNBF0KrQrw
ccJUJ51BH14aPUzR2gXXlJwrXGj/s5hwrc5gilANZapxrYfNySeMJy/4162kBhVXd+uZ6OY2
fclPNKcLdEOcpSFGr5IwizqPcGGS5vmKdHUDr8acFG+WZphIszaOIpvYWzGbtaJ5B0rCFBm3
Atgg5QEQpUhdApDHKQqkvjLSYhNgkgO0KbD+qnNkI5IrI9s4ybFMxQ4jCrH6mHrivjzvG7nW
JCHW6fenrt617LCSRz+kQYy2Rz/wGQ+/fJ5YzhULgwCzN58/XO4y0VqrN5tN6nkf9pgOWVjI
GRy1MjMi/4mf10tr7PglUd3WWdck0gb68Z2r25jJtArmUedxqO2GNHpiuqUZCLalXhgIOPFi
eQKQ+oAMLw0g7GjW4Ig9xYW6E7MGbKIEj21SD7w+8AlU50lQ71yTAxWJA1nkKznJb+aaY9V3
GMIAIXMVEP9IVuVZhDswzjxje92Vx+m2Z52X0QZ/snNiGEaK1EbF/ylbeOauP/lRys4uWLMs
Qj4ZYsxgPU8upbwGK6w+5CnOivxt+vFaki2WdpeHfHODBTzVOYpot8dTp3GeemK2KZ496ik1
ocqFUH2anbRLw8J0B5iBKEABrs+VmKQcwF1uFCyOmMsjlvTQHrIwXh9T7VBgi8AEf6iSyBWW
T5x9GOEBjiDufbnHjcsVh1hSkOEkAWTeUIDtHGzDnutgnWuDyyygtWoWak2KdHAAojD15JpE
Ea7uGTzJ2hAQHBky5CSAiCT8pMMQEwmgaK29gSELMvR7BBaurQiCIytwkTa5J9OYK7xrdS9Z
YqQKIDyTnHawfLMsviFsliXokiCgdH3gCB5UoTTl3mByVzQOcLmHKkMdEWecsigu0GZvjrso
3JLK1l9mhj7nk0/sAnwK07XHuYORLEb7NVldLTmMlMGp2IgnmJrAqQVeMKoGazBacIEWXKAF
Y63FqWgv4XRso6XBaRQjGp4AEmwuEQAiLa2KPMbmAACSCPmS41DJs86W2W91TxzVwIfq2gcA
R461GgfyIkDWhSOtSI51JXETtdE+mZpxKWc+YhmM6ypllGGGpQYHJi28DUh3DZbrlpbXnmXo
nd2sKTB6jR/cbNstuVa7HUW+oj0yeu6vLWUo2sdphOlKHMhQ9Z0DRZAhPantKUuTAJ1IWtZl
BVdRVntolAZZhnREWA9zZB5XAHbIqLHExtWevgakxuWKteigmx65pATYyZXGEgW+9YEj2LIt
52ZsZgAkSRI8tyIr0JmJUF4ta6s4JVmeJQNSX3Rs+KqKFPcpTdiHMChKZKCxgdZ1leERJilL
gmR1ReUsaZyJUFJO8nNVbwLPO9Q6T3SDZ6xpE65K8bnLwgD9BHpPQKddzZ9tB7YeFpDx3dla
m3AcX4M5EP95K+tqrUsqc3NkP0QarsogE3bD9xMJtjhzIAo9QAbHw0jvIKxKcrKCbLA+JbBt
vEGkY8PA0HHECMlwbZErFWFU1MWNEwuWGzf+BpBjG3n+1QXebO2xxG3JdAZsdeL0GJ2RhypH
Zt3hQKoUGbADoWGAagoCWVtqBQNSDZzumd4BuXGSwFnSEA8tMrFc2jIrMszIaeYYwgjfS1yG
IkJvCieG+yLO83jvfhUARVhjmQK0CdeONARHVOO5bpBxIujIUJR0mGdspyKNo+NrxLB+TCC5
MjQag8aTRflhh0rBkeawQwUQt09IvkK1MwKcSYJ8pxuCHzIXa0jT75sjhIFQN3fXuunKhyth
vwU2s7WHmMh6cOyJBv6B4smCoW9NG+CJY3oda3+6cAkber3H36vC+HdwFCXCjt/KWT4mTctq
LWsnSwSfRcRh8DG4KkcDRyC/IMsRNT1P7CuCNuTcOa/RTyAYLKJ5S3NZLPvl8rscqkN9Qrsr
2/K+wVhrvljHtsYP/mm9HntbpKpa8TgOmnpCTeIUKb9qRVQNLeUyDhw2fCQubJ779S24tmIl
AOAc3QtvgX/88f0LmGi7XsUqKdnVln8KULS73OVOFOgszkNstpxAy2YA3oQURokRrmaJZOUQ
FXngeAvpLCIuJ7ifWF7vC3joqhqNzs05ePWkm8D0LBb0epPmIbnHXCBEzmDWPVo1I2j2GR4g
BHxxsUVI1IK4rtUNrieifkUL2aizZssVRkPwSGUzQ+pmlyFFZLFDC3V1AGj7cmjACUAcIpsQ
nBsbV98aEZN9gnxxWwQPjTL0qgbAQ5txTUFU21Io11/Fs2JVbNJ4KZZpa0c5tcIu+QBhyjpX
K0/E5eDFeR5wAI5PLIuwZQ1AYcJZkVNtRPbggO1UCDRxFR4EGDFFiJndJ6cbabdHwk1yhJ0L
LLBpCrDQC+yYYoHN++mZXiS4qqYYio0n6t+MR9heZ0Z1rX4hFo4oQxZn/hkHYPTMU4DTAeRS
UvNZuH9Ts+zKJR2HsXHmhb4Zzl5RaLVL+VjEtGqRdrYr1YnOdbSgVumQoidhAv1Y6Jq5IMn7
Y5PImspxxhX0Nsmz0e/RKXhI6glrKtCPDwXvpdhWWsAqSqK0kR3I85efr08vT1/ef75+f/7y
dieNlNsprDgWeVuw+CNDCdQJBzXZtP71Eg2pLdcAoBlRQq0rQ8A7Gm8SXzuBXUtROBl25Gxn
Q8uOlGiAHsqyMEiN1U5aceMhoVXgSKtMxOx7oaOhOGY4Cp2ZCD6Bfxlq+q/hqbkJ13LEtt8z
XGTO0q5sz1fl3ISRJ9naIjuzIKscx/g8jm4nlak7OrgmrDzXqN6n7OARPe2+C6M8RjPtSJzG
/sl4qOK02ODW+wL/REbvEnAZi9Rpqe5UHY7lvsRsUYTmNDtZuETTUk4HDNc3Me2yJO90A3xR
DyS1Di0mqrcL8F2ps5wImrOacGqCHq4rcPJGcKgrvUgxIH0IkDRYVZSEmNj1mpjWRUBW8EGx
1bMJUcZGaBoPwvXkkeivsckpG7Sx0CZKB0Jd3NlVytLbqygL1lVCqYWRMLjyBRmduFd3OZMU
+kH/Yj81Eb0OvgvHrh0b3u1P3WC8d70wQBSwswwox86Ge+/CAxtqsZ9e5eIq3r7QQ3YYkKkn
WlAW5BgGm7nCnFlNEHZ6q59f1mm8KdC8pz2fi1ibpwXBtmMa6vW5MniU4xWeAfTj2xn4JVDd
fTWLSf3D+pPYqK2mtrdqJpKhNWpv2wwk1E9+DSQyfTYtDFfYtJ5fHtM49dg4WmwFerG9MNku
Mgsid3eriSXLJY09X9OybhOjLsoGTxblYYnnwFfMLMZXRI2Ja2/5uqSCJfKUAXbLmBZksqSe
vq2UpJsyghJ5i0lqAOuicJ4sz3BZMDtoD1ta4NG3DC6xF10VR1xdJhuvOEXm2fSZXJsbY1Pw
5OhAWzahvrw36xOPtnnGsSLKUEydn1jBzQ08L/BsOVRs0BmFVDTklY5jNE1CXBZaFOnGh+BL
F6Gf8k2ELl2wGw/RyQv8gZPUM949bwNoDLtixBdLujt/bqxLWw298HnsZkcSXDfmO8GzwUW4
Jxi5LxndNn3/AAFYjIeJIAgOmsLc2GuAvb3XIK7U4d/eD0mBWinoLOr0AUHIBW9iFhFaBmgb
A8Tw5mcpKfIMVWlYt+cKP966i1qKfCB7KMIAvSo0eIooQbuxgPIjnjfYI4RZvD65aLtzFIsM
CykT4yMVrXhtC4+LJbbyNzq0YAv/gvT2/t5Gk/XlDduxW6jlM+4yyf0yqoebgWUWwH5Hpa/s
ubS6Gg8Sd60eBruHeGTVqeYa/EJs++uxmQGD3lepRp8/VCDZhCAfyRk+XPAs2en4gAPl8eGE
I4eypyhC+C7k47ZGsZHgaVrpK4J9LCEuIKpseopWr4FDO6aHGmtiENl41Lm6dqcTVQ91L0wy
dknbu8RhNGhggmOR7Ee1ZpJ83IDAO8lWLbZGG5IGojNWvOHBGfOEBo2XPArXdsM6mW8qOys0
9oRv6/4iwneypmsq9xlZ8vT1+XHa7L7/+4f18LQUsCTizdAbMpbHsjvtr8NFk9bKCWKjD1A/
Fyw3i7kvIUDCbT5W9zdlmyLK+CpSOLDqYs/RVZzqmRJe2rqBsXKx8+I/wFGlEw2iwhl8fXpN
uufvf/x596re+/6bmc8l6TTdaaGZx1kaHZq24U2rd3IJl/XFjk8oAXn0QNqjUA+Oe/1lZ5En
aUgETsfWm5oC23UlO8DTn9eK/4WdFku2++Pk7DyHXHA/Xut6WlxWp2rs+uST8KcztFS5xLym
L0+Pb08gi2iib4/vIqDYkwhD9tUtpH/63z+e3t7vSnl834yUD1nSHHm31ONEeYXTR818cSCI
6lT/7h/PL+9P8K7v4xuvHrgGgL/f7/5jJ4C7/2fsyp4Tx7n9v0L1w70zVT13wAYCD/0gbAMa
vMWWE5gXF53QaWoSSJFkZvr766+O5EXLEf29dJrzO1qs9Ug6y4ua+H/t6QZuQ9zjWXTlolp6
xqbT05GhJOi8ZzNV/7ZHIFo9tDI1h4zMLyFxnOGjkOUrY6T0U01qIDhGSj/WJJeZez8Uhdf/
mKiupSC9mLGOxHc00d5KOqqHubpoUdh0AmTyq96UJGl/ejg+P+8vP2wlCJkZbHFeFw+efDwe
z3wReTiDh5PPg9fL+eHw9gZe9cA/3svxX+P5SWbC7qxbfJMjJDdjVM7q8PlMNy9sgIhMx6MJ
dqWsMHhIyqTMffwKW+JB6fvqKaKlTnxVj7+nxr5HkPrFd743JDTw/MWV769CMvLH7u/nkpqm
r99T/TkyPnLvpkxy/NpGsgjBacGWtcXWDJn/rquls7qw7BjN8VMSMp00mtWt4zqVvd9V1CyM
yvJ9AEwCr3yO5MAeEHt8PNsiG8zNVHcgogEg0fyk1JnD6l9yLNgMNavq0MnULpyTUXsIiW7K
oRa8sxnN8WzKqzy9sbPjXXCDP/mouNU24iqMT0pkTDeI2TrGnM8no7GdK5BVnZqOfDPUH6sa
4N6bOYIstgxzwysCxuBuToBHVn3u8q3veRY5Idu5Jx6AlXEL02GvzRZkEtyM9KNos25svcnM
9C2hShvoRDmcrhRjDw1Bnk3wQT5yxM5QObD74x73xz42rfw5Sp7oGscacHU8kXDuz+YLK8/N
bIaM3XU584aaHzyj6ZTmPL7wte3vw8vh9D4AR+1Wu1Z5OOVn6xGyvEto5l/pQTv7fiv9XbI8
nDkPX1zhtQ6tAayiNxNvrbn9vp6D1BkJi8H7x4mLam22vXKHAUmh4Pj2cODywOlwhmgDh+dX
JanZwjf+0OriZOJpZpGNEGFL/iXEq8xp2Mz5Vk5xl9/5ibtWq1U5mk61HK0UivADGJHe5N9s
iVlDjTNWlfZHouDj7f38cvzPYcDuZItacr/gB2/3uao+q2JcvhlBWD37oNnhMw/XMDG5NK0V
qwjV8MJA5zPVcFIDIzK5mbpSCtCRMimpFhVaw5g33DoqC9jU2RoCRbWFdCZPtYAzsJHvqNYt
GxkeXVV0G3hD9B1VZ5po97A6NnZiyTbmCSflNfTGPvFLNBiPy5k6IzWUbL2R6v3SHhma1puC
LgPeg462Eph3BXNUpynRkTIaG0Hc9Wz5lulQY1Q/eDYT5p/Da/ctTWUqMh+6lPS0+euNJqiG
pMJE2XzkOwZ1wfck5Cqp611/OCqw93VtdCajcMRbduxoO4Ev+HeP1VUQW6PE4sXO5+c3cF/+
ePj78Hx+HZwO/wy+Xc6nd54SWRTt86LgWV32r99BPxAJahQWdtgNwml9oNV+R1PIgr687F8O
g68f375BhAklQZP3coFuvGgykW6xf/jr+fj0/X3wP4M4CM1YsN26zTF5O9Rc1ypX4ByJx0su
rI49NtSkYwElpTfzV0v00V0wsDt/Mry903OkMZ173tYm+vrRFcgszLwx7lEa4LvVyuNHaYIL
zcBxJSoLwCQp/el8uVI9UjafNhmONlrYZ6CvtzNfdZUFtIwlXH7W/d4FmxjCzJvt2lWt59iw
0Jtg63vPor0V9mTTokBHdM9vLXIbZEl9H0chXhmnpVbPQkJ44x1imQtIdxnUg63mOtpTPZvQ
wRhi73MGzxyrQZzPJhO0SUy9WqV1IahaQfBaX3Uw1jLpPueUMu8m3vAmzjFsEU5Hwxu8UFIE
2yDF3DsqeTdd2KwCP5nrbfp1mHRXsMH59HZ+Pgwej2+vz/t2kbOXh7BKkp0d+1Uj879xlaTl
l9kQx4vsvvziTZRV+ielt3zWats3WJlVqR3jeU1D+xvWhtczGvZuIVkRpSuGWYZwNiP6eAW5
o4yKP38pvb8eHiAeLCSwrhuBn4xZpAYIE7SgUKNcdKRa9U4qqLkmXQtSVUTqs5b4xije0NT8
8mANCgaOzwjWlP/aWWmyClfsBTAhAYnVyEQihdipDdouL6Ky1Im8jVdZWkg7RWUnban84x3l
RkkpW0arKryYZY6wrgD/uYlcH7+KkgVVI/QK4rJIzDJWcVbQrMItaoHhjt6ROETj11CwAdoJ
5Q4z280OM4AD5J7ELMv1it3R6L7MUs0eCuq2K1qDS4VKIdKDQWIG4Q+yKIweY/c0XRNrCG2i
FCKM4LFTgSEODL+yghiFJiHN7jKDlq2oPTNaKvzI1Uf6lq6PAyAXVbKIo5yEHj6CgGc1Hw+R
pPfrKIpLI5nWAAlZ0SDhIwC3hpEsMSucDZSQnXibM1u2iOTIdyWDWCpltmRmuiSDBxfnyE6q
mNF2zCn0lFGdkBUs2ugkvkGCIS4f8kr3KURkDuYRI/EuxSQJAUOo7cAYDA2x3+NwWKbTS2uh
KHTPyJYpoK5ljIuK8GSZSqtzPXFMdsImPcO9eQiegvKTpxMuCR+oG0fRJZdDKzXkmyCCV0QI
+W3WpmQRwQTaBuNDl+9EkfURvIQ8RkN6i4GXUGuVA9UzUlJMGhMZQozyP7Id5KqmVenXJhGj
d5i1i4CyvIzM5YKt+ZqT6LQKtug6L32dfE9pkpnr25amibHa/BkVmVn9lubeeP7chXxfNpdY
6e6gXlcLlB5UJYOQ4OKX2dQkzo2h297pIXJEH0dVk3V6FRsIAQtzGat/D9arLAupFrPCzNRM
1NkZNfwYb1Uu6mwd0DqmjHHRL0q5HKDtIMBxVUEkQa1m+HbPaKDNhpZmW3Ao4ZPK9+PDX1g8
ii51lZZkGYFb+EqPYWflsoagtNciQXZ5MrpMwCXFDwv5Qyziae3Ptui3FJM5/szWc0QQ1WkD
OgdIQ6XRvVgKlV2S/5JHUYxWtxuRjYhtg6+bqocsAS8KWKFTLsxBXPgAAspHXahCzoE1t0iI
HQNVnBA28nT3lpKe+kNvMseWIonzc7zhr0DSwbcQ/mQmPyRIpr6H68r3DJMrDIFDEVmCxXA4
Go90T8gCieIRuDF0+agSPMKED7sI71HP6Bg4G48x4ly7cWmpw5FJlSGazBwaqnHUFRBCEhau
9icDGVW9b9CJdkXeEidC6z1JdBciHYpajfSoj2Q4tdonn03Um/uWqN0YtMTZ1B6donkmzkEN
8NQ3v601AeRyhb4BCVTe7rhyNG94GmIw8sblUH//lDVAg9cICLWNk0M/9Gao43LZFMyfzM3m
7c0Q9KxYQEBD2ZUXi4PJfKTbY8n8ELMQjAN1YdnipsVGN3sm/zpTKU4A9HRwXzdFnewKmJb+
aBn7o7n9LQ1kRKs1VszBt/Nl8PX5ePrrl9GvA75TDorVQuA8zQcEW8JEgsEvvXz0q7XmLkCI
dFyiAu6MliKbIt5qgewFEUwZrQ8UcYp3DDvDyl4WduzOyQyLFG5M1OHejeOmV2TfaNZf+dBV
4o90FQR59f68f/sudBvY+fLw/eoGVrDxBL/wluhsIuwSu25ll+PTkyYiyMryDXSlKcGp5NoI
EathGd921xlzoOuIC9+LiLhw5Hil4UFeORAScIGdsp09uRsGh9cijaf1dCUGgGik4+s7KH2+
Dd5lS/UDPT28S61M0Oj8dnwa/AIN+r6/PB3ef8XbU+pwQ1Rc1+cJrWgHyA+16m2KgcF9Yepq
myq0dsGuSnqTkSCIwIMT5fIxdlwPwY9QqzZv0UwdYQW5ayGp15oQ5RWp57ZCjgOts17mglzK
z486mmnn+yameVKuwgQTx8J74fyfg0pTQnDvSAYf748pwrabcuoUs2XP421tpJDRNdvA2WFu
VKDjE68ca8i5TlYODz49D/4NUH9DWbehateUDSMuiXPU/OiGJGIJIinKZZ3LFF0nBmbMalLu
0qBmVuvwn6Bea61unL6olraetshmSWN9LHDWOsnuojrN+BFmZ2H2+ANqGcVLKLy0EL4e6d70
VHoTExztII0vMHu6OYAa39Y1UbUNaQm3Nn19IKSKfukUjsc3syGyHzUIdnpOoP0DSs17KP7T
w65WmrjdsLREyu28+NkF9R4a5CIT3TLRyfKUxUWTstScEEhUBhxrsE+f+po1382lAD6R8csY
lQWTAxTcOCsan1Wpi2AlbHSWOiEHy5ZVlGoRagEIQW+8A/q7AggZ6VBMBYzLIUFWYtJf1cTy
tAItA5BGqlWQYC0q9XgMpGQ5Vf2M3C05jfLBUtVsl0cjHTH40kxwqp8i6MZCoYMJX8pRpcAC
VZovmFas+C0+WQuF3dC5RFthzFoNlSyiFQmw7anhWYB1gT5rGoSmeYWbQMh6GEGqFTKf5XDf
GbVmY3hDCQeN8DX2RQ14cHo7f3sfrH+8Hi6/3Q2ehNGIekXWKd9dZ+3LWxXRboHemvJ1Iwq1
9pMUpzuRDpYikFg36Z9gh/fFG45nV9j4IUblHBqsCS0De4A04CJLQ4sIa7VFbJcjk05L4sw9
D+IbVWNKIXtjpG0EgJuiKhyOaC89xwy1EFXxKVanmar41ZET/0ad5w2dJHnMW5Vm3nAITYB8
jGTJA8+fAse1OnesU99k1Rn5bJjpGmEqcOWr+elfVyrv6OVomuAqXz3LcPazLxD5XCu+1FzT
KKnw7+HIdDzEbzpbFubNHMpqCgfqj1TF7b4V5AlOvkHJesTzFkgS3yPYYtcwLOOJqvjXjgXY
02g28mp7NAJGaaFHn27nIQxW6g03gQUF0y1YaWYWkOTBFBvc4e3IW1jklCOsJp5mtaBjdhEC
SJCyW2A0DZHG42hMFuCW89p04LOT2MsXp4ZkhI12jricCvccFXpObVsM7rxvfSTvcvKzlYte
MZ9rmGbexO4OTrRHIxDrklj0jfyrbfLImoV1B8N7qcgqRtXnR2WXsJd8Qa2jLdFVvDW0yVR/
hCwZ4UdPPLotFoVRbV8wPQ9i9P30vsxpGmfiZUhe1zyfH/4alOePC+bwWFyt6B7ABYVL3Qv1
c+JNCS4BtIEtXm4gTmKdUzYdy4hurUYTVmqXkNB4kWlrSGdxmawr5LPaY/ZCjVXeZGNs31Im
1WyKJak3jZaaq4fT4XJ8GAhwkO+fDuLmZVDa8tHPWJVTvCipFVZyUpZszbt+hSlUZcu6lYrb
IeHPhygtCO47ujS8O7yc3w9gmWd3aRHBYy/vQNVhQ0erg9YyujXKs7OSRby+vD0huedJqcwN
8bNOS5MiLhRWzXu9AwGCiXZyfF8/rR7K/AGFt3ta2E+UZRYMfil/vL0fXgbZaRB8P77+OniD
e+JvvBND3eKZvDyfnzi5PAfaLWermIzAUp/4ct4/PpxfXAlRXAYR3ea/Ly+Hw9vDno+h2/OF
3roy+RmrvDL8v2TrysDCBBgJw/JBfHw/SHTxcXyGO8aukaxujymL1Ccb+Mm7INA9BehotSii
lRDqv4z7Kv33hYu63n7sn3kzOtsZxdVREvAVzRoi2+Pz8fSvK08M7VQQ/qvBpSxswhXBsohu
kSUg2rKgv/uN/n1/OJ+ae0r7MV0y18uSzMczZUNr6PrLY0NUfGFbgO+r22xPt9xZ95AZbdlk
yVkKNp7OL4UXgfmNT6xiy2Qy0eX1BgDtCMdNes/Bu5j/63uacU2SFdpNM0UzSZkiN/AfYLek
E2jIdEJ5T1mwZlGgk/m2u8ozPYAE0FmWYSEhRJKoWFqlt9uZnglc5Lu8KSRRLSOsSdPGJOKL
z/HxCfUKDcyspKMx/oYP8JJs7DVV5HreXx7tcXmXUEh2I92zd9yuYazp74NHmnJXLjXJCIiu
WwPAZIgDFiz0fML7QCfANfuSGaW1TskVkniQVsOGiVo1HrgVEruPLUKjximVkIpbYWpoa1xz
BOSkPjXhNaOaowYrsTJycxJs6oVDwbaIyogpy7DVdfl6xyWVr29izerr1NwE1hzu66UQhZVm
HWrwIkjqDfgh5tPN01NCCtCqTYPISKQiJYlVFVeAoJdosp0lt5CrNg5EJbbg8ratCjYiOFe+
JbU3S5N6XdLAzKIDodJoEwJXFkRxxuAGNTTv2poe0ttRSQ26vYbWS6+lFCzsDjlcvp0vL/sT
nx4v59Px/XzBbuWusXVCE1FvacuFdskEv+VEWpYioA+univYNlVKWY2+mJDT4+V8fFSeXNKw
yKhyDm0I9YKmIVjC5YELW5bOVO0z36evR3jv/Pz9n+Y/f58e5f8+ucvrnlzUKdVWvE0WEkWC
AcdDGiHli1Zi/OzWJo1YSEZpYHE/eL/sH46nJ3vWl0xTlec/4VjF4LqYD1O0L3oeXnKNrfbA
IaxJlCMCJ3FpuGhcKWdGvJ0e7V7DnWU3jEu+36ARl+QrJVPePFpKc3tuUldMU+ru6CVqY9LB
iRqmvC+CUbV/kbbvS1rmK/wCb1lij5PinoOf4Le9ebfwpf36fPiXy6aYvmS1rUm4upl7eDkN
Xo7GQ3yvBQaHaANQ9zSguvY2qtONAKqei+EXbBeGSFjG1AjQygnyOKa7CRTeivj/0yjQrr+r
VPcFBz+LKuebj6pgwHfc+rYiYahus/1VAd+2+W6Qs0pz3p/pIg/8FgdV/JlTlyyk0sqRnynk
0qzLOySmIWF8SJdwo1+ibgajLYhW6kRvKfUCrlJqzecUvEaCe/8N1YW9hC9LoDm20ziQ4ni2
fDMsdrkZCYwDd3z7RRUhlmX3BN0/CksSOpEE0momtXkQO4/bKmPYjSP421uW41pbsQWt1qW1
ZQVWSdgdX3YHTq92WhY9DYw7+Ok9YHWoexTEWEh8T/iCuOQSTnaPziYlFewKuN6TwrTlTSQ+
6GrF+TmCkSDLd91t2v7hu6pDkkYwShBngQ3ACMOaZlkGJFhHeucLkp3E4lhD/OdVQXBNgZbL
kqAtjmzxB7RtTEuGzrPmW6XM8nb4eDyDX7hDP8taAQiuldROFoSNri4iaKBbx2KDmBN4x8+4
/KEqVsu7qjWNwyJS9Iw2UZGqRVmHh3W1ili8QAckKcBmivCFka5IyqgsW13i4E8/wltBzP52
ZdbDayNMeKm8gRWbqipE/Ed7P/jl0/HtDM6jfxt9UmFw4iYaZexrmpoadoNGgdZZVL9hGjJT
XzQMxHMiE2dlZqh3BJ1FVxQ2MPxZy2DChXeDCdduN5gwDSuDxdl00+mV78A8fmksc3/qyHju
7JO57+qT+XjuqqYa5BYQWmYw1OqZs/Yjz6FZbHJhL4zAI1SB8FJHZqktgD3hqrjvSujqwhaf
4BWZ4uQbnDx3le4wotBYflbDkVHFTUZndYHQKrMWoGNXZIkjmHbLwQ+0jGK2Qz0Dl+CqIsOy
5+IaYfRnJewKGsdXy1iRKNaP5B1SRKgFYIvzw2BMVGWNDkgrymyyaBBpW2UgXNbcUFVPC4CK
LZX3Zn76DTLVJLgh1GkGMVfpn8LaET1lapKnfH84PHxcju8/bCXDTbRTtgL41bmDbeWBdvuL
ipLvy7yHgK3ggqQa/LeoOBS22fV3plKqbBCkbTm5DtdcnI2kVbS6kUZBBaInqJ6V4laJFTTQ
RJqWBT89NiC68a7JHRdbSBFGKa9cJdTU8l0tfLISbdu3mLS93cphybMAHW60TJMZ1q8yV0fI
kgttICbLY696oiYgHUDKhI+CdRTnqhyNwqATvf7y6fe3r8fT7x9vh8vL+fHwm/RApigg0oTI
torgGqMG/+1Nb4LOIqY22zwm9h2kqhLHZfLl0/P+9AjvrZ/hn8fzP6fPP/Yve/5r//h6PH1+
23878AyPj5+Pp/fDEwzNz19fv32So3VzuJwOz4Pv+8vj4QRn6X7UKgZ/g+Pp+H7cPx//swe0
H9JBICQqkKT5Yavgs5MyWz0c5QLTUvU4yUm8ZflxK81STTRWIN7fbe7oMDRYoQg3H5/RYggq
evjoWUqyLvmCpWvsKy6S0DZqYXcTd69K5pLRNRxM6Kw7fVx+vL6Dz7/LYXC+NO7tlL4QzPyb
Vtrzt0b2bHqk6ZT0RJu13AQ0X6tTwQDsJGtNQ1Yh2qyFpnTR0VDGToa2Ku6sCXFVfpPnNvdG
dazQ5hBkCcLK9x2+stj5NnRnAn7wLWWMdUOzRHKtliNvllSxBaRVjBPtknLxV51LDSD+YN5b
2k+t2JpvJ1aGhqqkJHZGFPKo+PH1+fjw21+HH4MHMV6fwGvND/VWpu1HXNdJgv9f2ZEst7Hj
fsXHOcykLG8vb6p8YHdTUse9uRdJ9qXLcTSOKrGdsuQ3mfn6AcBeQBKtZA5JWQCaOwGQWBj5
y0aHfoN0GC2F/gH4WOE6LCPLmahbxqk/hMB1V/rs8nL25/WQC/vwdfty2D0+YFZ0/UK9xPyb
/94dvp6o/f71cUeo6OHw4O3OMEyF9i5CKSSx/2QJyoE6Oy3y5G52fnopfK/0Iq5mE6G7fe/0
bSx5VA9jslTA61Z9NwNy4UEptvc7EYTSorKzsjnI2t8hobDsNbfrdbCkXAvV5ceqK0wTbeCm
roRyQCtalxP2m354MWq/bo7MEUYxDUO3xAi6fuS8UQKddLqcpRNT07ccujP90cp8ZAJcdk/b
/cGfsTI8P/NHhMBSfRvk0dM1Bom60Wf+TBm4P6tQTz07jXgARL/yRQnBlrrDO6MLASbQxbCc
yXQoDWeZRrMryU+h3ypLNfO5A+zByysJbPu1DuBzgcEIsBoUiyD3Zd+6MOWaNbT78dWyow8b
3x9sgLV1LHQ7SPK161fozJNKNRzpfNYYKjykeMFBDCuFgTL0lfCZY2q1kfNedsnM0B9HXRZW
qOMw5hdC1fU6d0eiSwQ35FMW9i5oHYmasKP2vOpedKc1yI8X/kJJ7v0VDbCltG7vq9pP8laC
+v/6fJK9P3/evhlnxV5J9/hYVsVtWJSiXaLvYxksnAAZjllaoYwWRtrIhJF4PyI84Cd6b0ij
L0Nx52GxAlDH564+/H33+Q0zk769vh92L4K4SuJA3CgI7ziWHxnl04g4sx6Pfm5IZNSgXbAS
vCVlEU7PHNJFE93sGSooXeiQNztGcqwvR3SQsaujqnK8sRMcdWlJ+3uCHufV5CY7wbB7nKcO
Ed8m7NHCz9vjhZy3UjECq/tFVaqjYPcM6PtbSMciEppTbSKZ/ovK6N0l8qOKBa1gxEoq94jF
AT69UEIbkAbOzWW+acMsw7Qlx9vixu8xFGYj2oTaP/IgMsQXIeUWppi8LmwXG/alqu7SVOPN
Ft2FYeSiiCyaIOloqiaYJKuLVKbZXJ7+2YYab5fiEM3PxvbM7vduwuojZklbIRbLcCn6sqUv
/+hjW0es4YfbtwP6ocLpY0+5M/a7p5eHw/vb9uTx6/bx2+7liUc8o8GKXyaWVtiDj6+sUNoO
rzd1qXhfJacVDX9Eqrz7ZW3AaTEjQ1X/BgXtAfwLm2UTlXqFN4t4Z0sEbiEMP/arN3v+xiD2
xQVxhr2CeczqeT8LyaQ4wnhO5T9chv59VlcD2DkaI2fYkupd8+ZxFsF/JQxAENtH+7yMxMt4
TMan26xJAyto0dwB8zSpZCBFe36YFptwuSAnhlJbSnsIew6ktAWywrOAwlf1wzaum9b+6vzM
+cnv1204bEYd3H20GQ3DyIlQOhJVrqd1NqSAcRS5U3jlaI6hZNMBMM+BHQfDUYt/Kb0cYA5Z
nLDE9MspGwnhK9AhURF3ksciFB+ddOH3KGdBZ0K11YFG86Tm7B00V7EIUEaFCklFleFiKZv7
tn+bzIK0m4nHWDs0uVcW0rLuCGJlT1MHVmKa8xFZL2E/uM1rK2CooQcNwk8ezF6nY4/bxT33
9GUIGF9/Ows2EJBoUVvlSZ7ypIocipYe+zVqhoMaOY7ctFb0oCeXlBtVlurO+L1x2VblYQx8
YaVbIhhReH9vcmz0PcNkKNwxKqNWGERCaaQdHKUgUQXZT7hARa6DOBVFZVu3VxcBN/AhBvqU
qBL9G5d0PHA+xrbNc/RcROImGwxhjPGv47xOArvY0MsZgoY3YJTKzbFhrla2/3p4/36gJxV3
T+/4Us2zufl/eNs+gJz47/af7OyBlh6MU4ci0dSKriazU8YUenyF1xSYKko8DHMqVtJ/pgqK
ZcOITaREdQynIIkXGT4lef3RHhdVTIfyV4ukdd5XNIFwruEsLGBoqxtMvUE2GrYdkjywf0nC
ILlva2X5iMflLR5JpAiLtLCjQuHHnMdy5JRgeAHqQWktc1j6/eZcRZWwZRe6xiDJfB4pwXUe
v6EgSisqbp5ntf9wK0E//uTblUDjY7fOQqdRW6uEjRzaabOFaJr2FJFxm2cz5CHdE8W2HbBX
Ewn64233cvhG2cC+PG/3T75NO+yS2oO2nYDOkgyWmT8mKW6bWNfXF8NEdbqsV8JAARp3kKNC
rssyUynP0YNLsoV/oC0FeWXlY51s+3DRs/u+/cdh99wpduZ9w0cD50+5jhuBasMbCMmnr4SW
tWtVZiaBBXOsLuMCxhzdyUUHsVKriAxBQMMX9xLgoLFBhTDv4ho3DQL1mlTZNK5SVfOs1i6G
mtfmWWL7kVIphoHOm8x8QpygPT+T7thXKWiy6KOsCncqTClrrW6QW3UJ1NhDB7856FaIbrc0
o+3n96cntJ/GL/vD2/uznQmKspCjgs+T6TDgYLvVGQ729enPGXfeHenMA9giF+36eNS5sAkq
leEz5HGN/FZxYx3h+NAb4roUk6Z2VnNDE2C8K7/b4UgjzAcSp3gDFyromrqM7RTqBhzFq2n7
uSFpMli64RKHc7L0zsuUbp3scUCPB3dsYHKa1IWNQslBOIPsBWwfXTj2ukXHUp34uwL9Oz1F
oLP3D+VyHkFecnAoxkcBRH8CUy6S9TLTqXJAdSu1X7hy7BJWl68z0bGdkEUe48MI/Hw51tOa
053TgjKPVK28cCB3pRvi9cYtmEOGiLI6alLGLcxvN6ccfW5WTDUBFvQCGz83eq7TpR5L6Q2k
vWCTrfPyZqqCMmyINU/hUUsrGj9gwqay5/aa8aIqaYKeWFpAhCc3cUdt6VZyqtME+K8/Bj1m
WpCQ40xTOQpmFS5RsyekzujNFNHlylkYq7QtFjXxWmcMVqkPISOm7QQ3oMrA7wyVDsfaxfRk
Wg1w9zUFCJNzz/QeNQIMxZw71NTVG1VxbzIH4T863rFsg/Uv2Q0WVx4qdFk+cjc4F5mz9NAJ
KkP02vd4k9tzYPflrXC2AfqT/PXH/u8nyevjt/cfRjIvH16e9jZ/y2A7g4KQ54Wc44/hMf6m
0VZKP7w2Re25YZn+Il2jjFg20O8aDgh8CRiZPaCGj2dnw+foOQfndpUyssLOXjpJ0rVwsIes
b0FHAk0pyhdcohwfHuP2CfrMl3fKg8/kgrWFnHSRBtgZtDis39yjf5hQtjuvODA3WhdO0JG5
kkRXjlEM/m3/Y/eC7h3Qm+f3w/bnFv7YHh4/fPjAU8nm/VsCCzphuKeXosTMmEIklEHgUxRU
RAbMeirTDRFgdyc3YVm3aVPrjfYEAst0Y29tmXy9Nhjgn/manDUdgnJd6dT7jFrobGSERbrw
AHiTWF3PLl0wedZUHfbKxRrGSiGXHcmfx0jo2tvQXXgVxSCcElXCEUs3fWln7krpqCeHXNV5
itpworWn33fTTfcBPM+pPaM1LBR0cXU1iIFqnIzpi84qnFsFMVZZRaaetYrrYVeN597/Y7X3
RZqxBc5IIsXttQ+nGaGPRhgdrtDttMnwvRbY2+Y+V5DERguY4MLfjNr65eHwcIL66iMaH3ji
YjMTsa8DFRKwWvgNoEDAWNaEjOLRkgoI+hmGeMa2v+vRZtqVhyUMRFbDgWrIUAFLVGKRHdcI
md+BM/vjNTloYFWoEn+BMQJ56SAGdF72uY1DeU+n7UHQnM3sir3YaAurbysp9K5PZmR13Z0U
kD3m+FyS3iGdCKF1S5BkiVHWat0nfmCsCKBZeGc9kJblhWm25Wm/Yqf949gFnE+XMk10lylk
FnNnLwjIdh3XS7xyc5WpDp2SxgwEofW4FpFg5CBNClLCiSbzlN85eo24F3nYcVMsW1RUWWhL
DrpDC5r5nHdQrzD+AumdfHCg12/qLhGMNywFnD9S2DLlrdxar7wOIEWR+oH4o1JOGeeO3kRE
mvIVxBXJr7X9zqmJ7+hoPEa0R+8BYZPabNLXCbQqk84e6snlfoKG3eBUwq8h6+3+gLwbdazw
9a/t28PTlsXRYLaKsXiTvKLLdOGC7S1uYF26PhFHq8wVaj27xAvIHMMXPpmLNekakPTVgYLd
7Ko4qRIV2BBzCnf0C6cMHgzjzvFNmLMXhbszBJwNANxNVmFdMSC9xDBhi+CddW10Ncf/C6Ek
b9rKmm2Cp3FGeckdsEAZxSvbVBf0MpTUgElmHqDpyuXV3OTlZADkFi9Pdhjl5upC1DwGKmrv
Um/wkkJokumhuXk3Ro7K7X5dViGfMYLeALjmuRoIOrgPcCDobqk3qE1jv91KQGPKm+4GhrPP
p+LmiaJEnbJ2r/GcwZD9gQkXR8wuSA4K0Po2ADm0TBW/SCHqeVymoCppd8Sc4HAoArZcErm7
HY7CJkuJtL9NISLKeJWICOaV4WqaXRJu6TvUrh2QmaRIm1z79gACmw0VTPb0ciI3kNjbXzoV
oBSNRBFtnKMe5Z5eOJKx9PwPkv0vHXdIAQA=

--rwEMma7ioTxnRzrJ--
