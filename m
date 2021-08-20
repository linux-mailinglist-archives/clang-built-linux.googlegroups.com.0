Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDPU7SEAMGQERYDXFJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6FE3F265B
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 07:13:51 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id f13-20020a056e02168d00b002244a6aa233sf4716704ila.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 22:13:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629436430; cv=pass;
        d=google.com; s=arc-20160816;
        b=XGQ6SowT+UnuLGvykwx8qUD9F8h8qbYMjwDkN7INnYKwoJd4v1p2lWNer2G221nDcf
         egfbUEQrEPXnheMksKfcwMRnKzA8RMJqYv/L+SauiArx0/SgUVNtoDhsw/YcDwJAwXrj
         SD1t9SK2FGYcKXNSz4WDrvENKjHdxzuDK7LYtMcbj8SpIXMG1364lglsc9aXUFFpnqqY
         rysZjcJD32mgqYrX94nABT8A+etil4JmdKGeVHWbIslZf8/sZ66Ba29g8nSnFQRmmAaC
         SzQN4HGlYvAVx+H4YJgwtx65GA7z+UbQHUWDFmeq90ZGh+8p3IGOSwIuuk1EtbL57FXt
         NJ8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=laU4wrdiHsl6L2f3Of6QPr/GDXJvgJjsjMMc9h+SxsM=;
        b=QGPE0hD5E8xYlKfyCDO+lLMDHKxHGD7mb/AdWTPKy91dR3Ms13R97PS3JghwtS5df7
         xRO4ok+Sxdda6AQZCIHBreD+JVmkE1/pjHWjW303jobWYRAMgugoEZB2R/niGDmB2XDt
         Qymxu1YjsLfFVyh95qYYyOkesvqKboX6veYbpo66f2R7Je3vG9HH5gUC3iJw4GyDVlV8
         qGiFdIk26itmAuBk0U+0yCCzdVu/ya98iOFvaThyInmoxKNCn3OqQHS+b7hvX/pZz7te
         Gt+FlMStFRFTVtJyshEHdox7Ae31JBEAbFXhoqmOvjexMZQ7rWcPYagtNm/RuXFJydBI
         dp+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=laU4wrdiHsl6L2f3Of6QPr/GDXJvgJjsjMMc9h+SxsM=;
        b=bJ3cKBc/EDSJ0Tv2p2xNTnRqxfUIwRYmgDJCmtmZNgEZqPW3LcQuLko+J3eBemxPgs
         VNde8yS/i6b5g0chhGuCM20OV9sPRFsflWzTfZtmfb7ZIF+gWUSMd24+/89sL1Cm/U2K
         qnI0C9762HGsd9mI8LS4Sl7OByXv6/9RfszjJXtFEW9nzgU9LZWvDMzRYmmos17CmNry
         4TBMpN5apNir31YKNDPs80VOc0xJQcQ3hKCEQlsTMlGoPjypfcFO0TeFNbj1TaB42JRs
         cA7nlnAO+Zc2lvqky8MreoyApE3AWVpKgQ2DjPIQGeLzsjypc1JHO3hbL74JsgF05iqi
         x84w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=laU4wrdiHsl6L2f3Of6QPr/GDXJvgJjsjMMc9h+SxsM=;
        b=ODIMSCn09FZiD+3UADstdx0P83wSk7nPFyZMcP2fUhFYHGeXkf8wvR9cSVnPgEDGxy
         JSoBVM+l9qZul8Kx1r9zoUE1ln29x3BUBFumUO7kfqEo2hB6Qy6SRTPwb4ojg1ucWbkt
         m7QnCqzS1vzLpRaFG4lS9upXfJjeBSMgFp4CPWoLT3jiMrWqMKmWeAjnYvhVLY0uoMCU
         kb18rrEZlVzVqvIWZoawUZhfY7fmGzNNYW/kUbNz9HXBkhaZf/q1D7V38i7DykiowyS0
         EwJUjL/yqZ76xfyE9vFJCT+di9vPO6tQV9wf+jKI4yHG28vwkQie3Q7PgRciX9K3rL0N
         vCgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321tAeuYcnRFJW848wdvt4yt3ER6Zpz9IOLdmcRQV4ODtDuTVLA
	T4KI3VVonik2vr3l6nigtqg=
X-Google-Smtp-Source: ABdhPJzaroDdnzm6CI1D9G6QoeWJn4fV7ndi2H70Dsk2Y5Kx7JuJRRF8aO70whjezMHtMvYW7XDjSQ==
X-Received: by 2002:a92:290f:: with SMTP id l15mr12045816ilg.290.1629436430065;
        Thu, 19 Aug 2021 22:13:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:20ef:: with SMTP id q15ls1613412ilv.2.gmail; Thu,
 19 Aug 2021 22:13:49 -0700 (PDT)
X-Received: by 2002:a92:de4b:: with SMTP id e11mr12129690ilr.22.1629436429540;
        Thu, 19 Aug 2021 22:13:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629436429; cv=none;
        d=google.com; s=arc-20160816;
        b=NwoTKjJGYKnRcTyCZ5zpQISu2HY+My69qzdjkfga4vIRZpwM/Hhdzlhsm8JMtQknHi
         k9oDfzfaJZtybE31Twqj6/3WcSuaR35pS4aOWMT/0FHYuCkqvWE4Eon8XURPHCtlo4UF
         mE/C906BJb8doKgVSaNLlkaHccfTlpirAoiZjqfmslf/Tr+qT7wE6aZpmKnEVDYiOIuu
         /YsaXuK1zUVU3snKzNQlFz5OCPSSv8xxalj/yRH3nF30Plgw5AjhGhqbnUZXl8Gu72IP
         MFWPwL7iNdvNjWpErC/YyAaRQpdaqT3U6dfI33PWaQjvhUfhOBjJZbFXYbPLHf9spb9L
         /30g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=Z0qHmvBsrZChLO4h/EfZ8W9Zvvxn0gI8hJfE77ZYN20=;
        b=vdCvTdOqACvIptIuh39A4J1j0xPqar1/zSirR/qPFuqXrDIJ0gPsEI3BtThFQxORfb
         cemQUL/cHI53rtlYSD1yOJ4EqAtSCf6TAcNOGBfy3z9A+LucC5PefAXvCzIQPdtIVL5V
         RR4fqTjmkU3uXNldpzhaFs29wE8EM6e01hYVCvNOdajFLa0/2Tf6RshOCuUvO19NS5lH
         FPjKJJUjwOUwEgnjhFp4K+V6YA5ggabQt5w3nc7Dryf8hAG/XQ/lVn3RXACLNJj+0tEL
         p4CIIy1ygkltD2F9AYpWP7ALJvBh9EIYcdfIUQBxJjAzhYJi66kr0Q385qJmBQ5Y7FEE
         DDaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id e16si275668ilm.3.2021.08.19.22.13.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 22:13:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="203909744"
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; 
   d="gz'50?scan'50,208,50";a="203909744"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Aug 2021 22:13:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; 
   d="gz'50?scan'50,208,50";a="512393441"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 19 Aug 2021 22:13:45 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mGwqf-000UXy-0X; Fri, 20 Aug 2021 05:13:45 +0000
Date: Fri, 20 Aug 2021 13:13:14 +0800
From: kernel test robot <lkp@intel.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: [linux-next:master 7126/9113] fs/ntfs3/fsntfs.c:1874:9: warning:
 variable 'cnt' set but not used
Message-ID: <202108201308.jPb6dCR8-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="/9DWx/yDrRhgMJTb"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--/9DWx/yDrRhgMJTb
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   33e65b1f975cd2814fc0ea9617250fc4c1d7a553
commit: 6e5be40d32fb1907285277c02e74493ed43d77fe [7126/9113] fs/ntfs3: Add NTFS3 in fs/Kconfig and fs/Makefile
config: riscv-buildonly-randconfig-r005-20210820 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d9c5613e856cf2addfbf892fc4c1ce9ef9feceaa)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=6e5be40d32fb1907285277c02e74493ed43d77fe
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 6e5be40d32fb1907285277c02e74493ed43d77fe
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from fs/ntfs3/fsntfs.c:8:
   In file included from include/linux/blkdev.h:18:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:136:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from fs/ntfs3/fsntfs.c:8:
   In file included from include/linux/blkdev.h:18:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:136:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from fs/ntfs3/fsntfs.c:8:
   In file included from include/linux/blkdev.h:18:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:136:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:1024:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> fs/ntfs3/fsntfs.c:1874:9: warning: variable 'cnt' set but not used [-Wunused-but-set-variable]
           size_t cnt, off;
                  ^
   8 warnings generated.


vim +/cnt +1874 fs/ntfs3/fsntfs.c

82cae269cfa953 Konstantin Komarov 2021-08-13  1858  
82cae269cfa953 Konstantin Komarov 2021-08-13  1859  /*
82cae269cfa953 Konstantin Komarov 2021-08-13  1860   * ntfs_security_init
82cae269cfa953 Konstantin Komarov 2021-08-13  1861   *
82cae269cfa953 Konstantin Komarov 2021-08-13  1862   * loads and parse $Secure
82cae269cfa953 Konstantin Komarov 2021-08-13  1863   */
82cae269cfa953 Konstantin Komarov 2021-08-13  1864  int ntfs_security_init(struct ntfs_sb_info *sbi)
82cae269cfa953 Konstantin Komarov 2021-08-13  1865  {
82cae269cfa953 Konstantin Komarov 2021-08-13  1866  	int err;
82cae269cfa953 Konstantin Komarov 2021-08-13  1867  	struct super_block *sb = sbi->sb;
82cae269cfa953 Konstantin Komarov 2021-08-13  1868  	struct inode *inode;
82cae269cfa953 Konstantin Komarov 2021-08-13  1869  	struct ntfs_inode *ni;
82cae269cfa953 Konstantin Komarov 2021-08-13  1870  	struct MFT_REF ref;
82cae269cfa953 Konstantin Komarov 2021-08-13  1871  	struct ATTRIB *attr;
82cae269cfa953 Konstantin Komarov 2021-08-13  1872  	struct ATTR_LIST_ENTRY *le;
82cae269cfa953 Konstantin Komarov 2021-08-13  1873  	u64 sds_size;
82cae269cfa953 Konstantin Komarov 2021-08-13 @1874  	size_t cnt, off;
82cae269cfa953 Konstantin Komarov 2021-08-13  1875  	struct NTFS_DE *ne;
82cae269cfa953 Konstantin Komarov 2021-08-13  1876  	struct NTFS_DE_SII *sii_e;
82cae269cfa953 Konstantin Komarov 2021-08-13  1877  	struct ntfs_fnd *fnd_sii = NULL;
82cae269cfa953 Konstantin Komarov 2021-08-13  1878  	const struct INDEX_ROOT *root_sii;
82cae269cfa953 Konstantin Komarov 2021-08-13  1879  	const struct INDEX_ROOT *root_sdh;
82cae269cfa953 Konstantin Komarov 2021-08-13  1880  	struct ntfs_index *indx_sdh = &sbi->security.index_sdh;
82cae269cfa953 Konstantin Komarov 2021-08-13  1881  	struct ntfs_index *indx_sii = &sbi->security.index_sii;
82cae269cfa953 Konstantin Komarov 2021-08-13  1882  
82cae269cfa953 Konstantin Komarov 2021-08-13  1883  	ref.low = cpu_to_le32(MFT_REC_SECURE);
82cae269cfa953 Konstantin Komarov 2021-08-13  1884  	ref.high = 0;
82cae269cfa953 Konstantin Komarov 2021-08-13  1885  	ref.seq = cpu_to_le16(MFT_REC_SECURE);
82cae269cfa953 Konstantin Komarov 2021-08-13  1886  
82cae269cfa953 Konstantin Komarov 2021-08-13  1887  	inode = ntfs_iget5(sb, &ref, &NAME_SECURE);
82cae269cfa953 Konstantin Komarov 2021-08-13  1888  	if (IS_ERR(inode)) {
82cae269cfa953 Konstantin Komarov 2021-08-13  1889  		err = PTR_ERR(inode);
82cae269cfa953 Konstantin Komarov 2021-08-13  1890  		ntfs_err(sb, "Failed to load $Secure.");
82cae269cfa953 Konstantin Komarov 2021-08-13  1891  		inode = NULL;
82cae269cfa953 Konstantin Komarov 2021-08-13  1892  		goto out;
82cae269cfa953 Konstantin Komarov 2021-08-13  1893  	}
82cae269cfa953 Konstantin Komarov 2021-08-13  1894  
82cae269cfa953 Konstantin Komarov 2021-08-13  1895  	ni = ntfs_i(inode);
82cae269cfa953 Konstantin Komarov 2021-08-13  1896  
82cae269cfa953 Konstantin Komarov 2021-08-13  1897  	le = NULL;
82cae269cfa953 Konstantin Komarov 2021-08-13  1898  
82cae269cfa953 Konstantin Komarov 2021-08-13  1899  	attr = ni_find_attr(ni, NULL, &le, ATTR_ROOT, SDH_NAME,
82cae269cfa953 Konstantin Komarov 2021-08-13  1900  			    ARRAY_SIZE(SDH_NAME), NULL, NULL);
82cae269cfa953 Konstantin Komarov 2021-08-13  1901  	if (!attr) {
82cae269cfa953 Konstantin Komarov 2021-08-13  1902  		err = -EINVAL;
82cae269cfa953 Konstantin Komarov 2021-08-13  1903  		goto out;
82cae269cfa953 Konstantin Komarov 2021-08-13  1904  	}
82cae269cfa953 Konstantin Komarov 2021-08-13  1905  
82cae269cfa953 Konstantin Komarov 2021-08-13  1906  	root_sdh = resident_data(attr);
82cae269cfa953 Konstantin Komarov 2021-08-13  1907  	if (root_sdh->type != ATTR_ZERO ||
82cae269cfa953 Konstantin Komarov 2021-08-13  1908  	    root_sdh->rule != NTFS_COLLATION_TYPE_SECURITY_HASH) {
82cae269cfa953 Konstantin Komarov 2021-08-13  1909  		err = -EINVAL;
82cae269cfa953 Konstantin Komarov 2021-08-13  1910  		goto out;
82cae269cfa953 Konstantin Komarov 2021-08-13  1911  	}
82cae269cfa953 Konstantin Komarov 2021-08-13  1912  
82cae269cfa953 Konstantin Komarov 2021-08-13  1913  	err = indx_init(indx_sdh, sbi, attr, INDEX_MUTEX_SDH);
82cae269cfa953 Konstantin Komarov 2021-08-13  1914  	if (err)
82cae269cfa953 Konstantin Komarov 2021-08-13  1915  		goto out;
82cae269cfa953 Konstantin Komarov 2021-08-13  1916  
82cae269cfa953 Konstantin Komarov 2021-08-13  1917  	attr = ni_find_attr(ni, attr, &le, ATTR_ROOT, SII_NAME,
82cae269cfa953 Konstantin Komarov 2021-08-13  1918  			    ARRAY_SIZE(SII_NAME), NULL, NULL);
82cae269cfa953 Konstantin Komarov 2021-08-13  1919  	if (!attr) {
82cae269cfa953 Konstantin Komarov 2021-08-13  1920  		err = -EINVAL;
82cae269cfa953 Konstantin Komarov 2021-08-13  1921  		goto out;
82cae269cfa953 Konstantin Komarov 2021-08-13  1922  	}
82cae269cfa953 Konstantin Komarov 2021-08-13  1923  
82cae269cfa953 Konstantin Komarov 2021-08-13  1924  	root_sii = resident_data(attr);
82cae269cfa953 Konstantin Komarov 2021-08-13  1925  	if (root_sii->type != ATTR_ZERO ||
82cae269cfa953 Konstantin Komarov 2021-08-13  1926  	    root_sii->rule != NTFS_COLLATION_TYPE_UINT) {
82cae269cfa953 Konstantin Komarov 2021-08-13  1927  		err = -EINVAL;
82cae269cfa953 Konstantin Komarov 2021-08-13  1928  		goto out;
82cae269cfa953 Konstantin Komarov 2021-08-13  1929  	}
82cae269cfa953 Konstantin Komarov 2021-08-13  1930  
82cae269cfa953 Konstantin Komarov 2021-08-13  1931  	err = indx_init(indx_sii, sbi, attr, INDEX_MUTEX_SII);
82cae269cfa953 Konstantin Komarov 2021-08-13  1932  	if (err)
82cae269cfa953 Konstantin Komarov 2021-08-13  1933  		goto out;
82cae269cfa953 Konstantin Komarov 2021-08-13  1934  
82cae269cfa953 Konstantin Komarov 2021-08-13  1935  	fnd_sii = fnd_get();
82cae269cfa953 Konstantin Komarov 2021-08-13  1936  	if (!fnd_sii) {
82cae269cfa953 Konstantin Komarov 2021-08-13  1937  		err = -ENOMEM;
82cae269cfa953 Konstantin Komarov 2021-08-13  1938  		goto out;
82cae269cfa953 Konstantin Komarov 2021-08-13  1939  	}
82cae269cfa953 Konstantin Komarov 2021-08-13  1940  
82cae269cfa953 Konstantin Komarov 2021-08-13  1941  	sds_size = inode->i_size;
82cae269cfa953 Konstantin Komarov 2021-08-13  1942  
82cae269cfa953 Konstantin Komarov 2021-08-13  1943  	/* Find the last valid Id */
82cae269cfa953 Konstantin Komarov 2021-08-13  1944  	sbi->security.next_id = SECURITY_ID_FIRST;
82cae269cfa953 Konstantin Komarov 2021-08-13  1945  	/* Always write new security at the end of bucket */
82cae269cfa953 Konstantin Komarov 2021-08-13  1946  	sbi->security.next_off =
82cae269cfa953 Konstantin Komarov 2021-08-13  1947  		Quad2Align(sds_size - SecurityDescriptorsBlockSize);
82cae269cfa953 Konstantin Komarov 2021-08-13  1948  
82cae269cfa953 Konstantin Komarov 2021-08-13  1949  	cnt = 0;
82cae269cfa953 Konstantin Komarov 2021-08-13  1950  	off = 0;
82cae269cfa953 Konstantin Komarov 2021-08-13  1951  	ne = NULL;
82cae269cfa953 Konstantin Komarov 2021-08-13  1952  
82cae269cfa953 Konstantin Komarov 2021-08-13  1953  	for (;;) {
82cae269cfa953 Konstantin Komarov 2021-08-13  1954  		u32 next_id;
82cae269cfa953 Konstantin Komarov 2021-08-13  1955  
82cae269cfa953 Konstantin Komarov 2021-08-13  1956  		err = indx_find_raw(indx_sii, ni, root_sii, &ne, &off, fnd_sii);
82cae269cfa953 Konstantin Komarov 2021-08-13  1957  		if (err || !ne)
82cae269cfa953 Konstantin Komarov 2021-08-13  1958  			break;
82cae269cfa953 Konstantin Komarov 2021-08-13  1959  
82cae269cfa953 Konstantin Komarov 2021-08-13  1960  		sii_e = (struct NTFS_DE_SII *)ne;
82cae269cfa953 Konstantin Komarov 2021-08-13  1961  		if (le16_to_cpu(ne->view.data_size) < SIZEOF_SECURITY_HDR)
82cae269cfa953 Konstantin Komarov 2021-08-13  1962  			continue;
82cae269cfa953 Konstantin Komarov 2021-08-13  1963  
82cae269cfa953 Konstantin Komarov 2021-08-13  1964  		next_id = le32_to_cpu(sii_e->sec_id) + 1;
82cae269cfa953 Konstantin Komarov 2021-08-13  1965  		if (next_id >= sbi->security.next_id)
82cae269cfa953 Konstantin Komarov 2021-08-13  1966  			sbi->security.next_id = next_id;
82cae269cfa953 Konstantin Komarov 2021-08-13  1967  
82cae269cfa953 Konstantin Komarov 2021-08-13  1968  		cnt += 1;
82cae269cfa953 Konstantin Komarov 2021-08-13  1969  	}
82cae269cfa953 Konstantin Komarov 2021-08-13  1970  
82cae269cfa953 Konstantin Komarov 2021-08-13  1971  	sbi->security.ni = ni;
82cae269cfa953 Konstantin Komarov 2021-08-13  1972  	inode = NULL;
82cae269cfa953 Konstantin Komarov 2021-08-13  1973  out:
82cae269cfa953 Konstantin Komarov 2021-08-13  1974  	iput(inode);
82cae269cfa953 Konstantin Komarov 2021-08-13  1975  	fnd_put(fnd_sii);
82cae269cfa953 Konstantin Komarov 2021-08-13  1976  
82cae269cfa953 Konstantin Komarov 2021-08-13  1977  	return err;
82cae269cfa953 Konstantin Komarov 2021-08-13  1978  }
82cae269cfa953 Konstantin Komarov 2021-08-13  1979  

:::::: The code at line 1874 was first introduced by commit
:::::: 82cae269cfa953032fbb8980a7d554d60fb00b17 fs/ntfs3: Add initialization of super block

:::::: TO: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
:::::: CC: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108201308.jPb6dCR8-lkp%40intel.com.

--/9DWx/yDrRhgMJTb
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
myK6cauTwYIrpkyHPvP0df8P5W5lhpi8AQA=

--/9DWx/yDrRhgMJTb--
