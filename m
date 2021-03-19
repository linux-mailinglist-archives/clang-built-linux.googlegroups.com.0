Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBUGZ2OBAMGQEG6NMQJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA35342497
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 19:26:25 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id i1sf1008315uae.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 11:26:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616178384; cv=pass;
        d=google.com; s=arc-20160816;
        b=f+cn7dsI8pTO/jwBk6Rv55olFP+UX78S25OJEcez7Te7q+jC46TMKz8CF9QCQCbQw1
         UbXUht3mYkGIa79lnD+Lm9+OdNg2OwqVrALQO41+/Ab1lf6BQtm3ZaxQTGoinI+zr25t
         7ezFCiszRR1mjHRKc1YFsnef3ZrNRVL5oTPJoOStUic86OhRw3NgK2hB6SUOOlQs5ipA
         sFF/t1anzW4OAsDC3HF2hBCzw+A2uw3IfuIeamPitX3nRM+/ZQcYPlklf0w9VeJ8rdmx
         CRsKUcMZ5oFWP1UfAo0W4c1+9RHp21+9xddAVzaeAfcFQqL7ou12SZChb3yW326WskRL
         ls0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=WqibqtBF+3JY7kcSe5l6vM1UDMgUhthFZi4X3t7duJo=;
        b=fZuclrmQf8EIgStKsXX4KJM7SwVgG2gPVSDSUPe4rzZjQg2sIQvHnTKvMibgsM5kBC
         s9QfOr0ZoRt5dP53l+JSnMQF5QEaMfJVP0sItVDzdE4Jpd69PScS49dd025y6gJmKD2D
         4kx2pyvcTbo903wbMwDZA6JZq+si2dRSqOMw5GwUODM2wYVrOVkX2TzCzopQJbfUoeGl
         6zdkY3d8tQLbH9ndTHux+t5rZbQTj3et1AP5iIlWGaEDoNVGomgPKe9PtrmwTBM7g6XK
         HmMwHuX7Y1lUcDNNg9I6Ix61d530CYwM8lqiPWwErJigYjCWGLr+tSclOcHqnjgg0UEe
         9/Sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WqibqtBF+3JY7kcSe5l6vM1UDMgUhthFZi4X3t7duJo=;
        b=EoCrPOAHNAgSNsL0r+s2mq9DvnAg8UPIOPw/KKVrbUpK4BIAxx0UcmeXL2JNmfVMVs
         47pGn+FbMUvlbq+/31TfKVcJ3aO3nK+aSiSG0FIhg1PkYLkgDMGWLSel67wbrgAC5M0z
         4raAnlX4xIf8WQkuLFw0K3aWM3AKB09062sLwXmUsgPWWbWhdpilRu34d0/WmnfnICBi
         2Gn+ucqQyfKKdu2aCtvnqDJ2QjUQHJbvdhRJ8zMCajbrouHCddEObxzV9h+S52mwmHcl
         8b71dqkx+np4RlpxvHZEW9qkDBcVcRk7oHPL9OC00NrzOYyrJ+ihhIH6szXtVjTyk529
         C3Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WqibqtBF+3JY7kcSe5l6vM1UDMgUhthFZi4X3t7duJo=;
        b=hbPk+CC7cJZJzWC2bpsgqNrjVy4rc9RzFQL51M8HB5eREwWG1JrdAIGasNjWvu+azn
         x8rUWIGO/T55Yt/J2JuI9eI3gHMIQtYNH/UuIDY1LuzN+pZt1fJerWbmgCAZtgWwAkl1
         txY4vwr6F3RFxhBCzExpNjev79BOvQwXjdHypK3A21jFCA+bLB8bpzXV0jgSmTiGgDqg
         O+/VRP0TeRP6oP8FbP2oFH5CRwCAFS6BaHQtRBT9dpQ/cuq6YK+7uhPx4TPw9i2+EPi+
         177AoyKvk/Bmh7aGb6ca/LYWDdu1ykJcVJmlC0+o9lNyPPZgBfsi8MF47JNFG5TXY/nf
         8XJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xfjiuU7F3ihoU+ZUQM06Bykxm26iVQimQNRg8Br+NmtGz2OK3
	hkjLm69hc4OZ3HCVIO1S+rI=
X-Google-Smtp-Source: ABdhPJzjRwdJO8FckWKCShnMChkM4M4BWpGaTiaohrcW+Mu5EzryJPVizhBcapqxG9N6MD/y/Yvn5A==
X-Received: by 2002:ac5:c93a:: with SMTP id u26mr3633982vkl.17.1616178384365;
        Fri, 19 Mar 2021 11:26:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c89b:: with SMTP id n27ls341561vkl.1.gmail; Fri, 19 Mar
 2021 11:26:23 -0700 (PDT)
X-Received: by 2002:a1f:190f:: with SMTP id 15mr3869847vkz.2.1616178383734;
        Fri, 19 Mar 2021 11:26:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616178383; cv=none;
        d=google.com; s=arc-20160816;
        b=XZZUMI6KJVjuY9LvcxdVSA7GbAxOcubKO6Jrhrn2VcL/lw039PCi1hHTUzZXJw0doY
         P4F2Wb59GSKaTKp9XWv7rMWj98ZXvyVOtlAMPRYQlCFRBRut6xe0ITazui3aLd19Kllg
         zBBYE3riNCq7NjaYhwWR6Cy85M34yk3HHIyR/znumJzNwgym1bz9ZKsyIKvtNgxe/b6L
         P3UEwi0RpRLvi7YtgvwCzHOCLmUOXfRdjvbvFvvdyp644JezoQpZIMvpx6LkP2Okd8EK
         2EwehKQLosptvOLvaaR/4ErP+xIWa0FKCJUGaCP0aXdTdg5VBJVwQAVnI+La7qGpGLGB
         VI4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=sdZDal14pQvdbASMj3FqtF3A7Kg7yBRjvXjseiTV0mg=;
        b=iS/d4zVw/oCU1y3jD50rrxilA7gHkqZyzqWtvDypBgBRA31EOl/gzqljFmw+NPWhg5
         Mr1na2+i2S46EnwbBxOpebUDY+x+YReDuFXcj3UizQ3tYjRXx0pUVqfnwnBHhEy/82zb
         c1el8vVqgHleaIsnKyssappHevfV8aRZGgfnQ8cB+BL56iNQyhcO0Vyw7VWJWLdCDsQU
         dW47c/XM76AcJ0jGrISD+aJb9sBi5oj+pC7DCq+fvak+Ftwb5hq7g25C0k/OLLV+vkxw
         J77r+CRUNXFYUZ/JphM6c/R6vBg4mDRZxl9Db+G3hAsp+NfLNZBta7ATxMM6SRIWeG1B
         MUrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id p23si334773vkm.1.2021.03.19.11.26.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Mar 2021 11:26:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: iG7B0M/lOCPlXyw1ucmOhlN6WRWj10S02z5ROlpibKcSQAE9Q4GcfhYVmpU6K795nqHUI2equR
 O/wWizcFVDZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="189981620"
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; 
   d="gz'50?scan'50,208,50";a="189981620"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2021 11:26:21 -0700
IronPort-SDR: AAp2LLsBWWbUNnNeU5AetqM0YeDOMUqGLVOBrBpA2Ohuc0BOXAFhyw8L2i6wIbOWiRx2qOAd3b
 YrQ2XpnVPxDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; 
   d="gz'50?scan'50,208,50";a="441411783"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 19 Mar 2021 11:26:19 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lNJpD-0001yy-Bc; Fri, 19 Mar 2021 18:26:19 +0000
Date: Sat, 20 Mar 2021 02:26:13 +0800
From: kernel test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [arnd-playground:randconfig-v5.12 390/597]
 arch/s390/pci/pci_bus.c:219:3: warning: variable 'bridge' is uninitialized
 when used here
Message-ID: <202103200207.n14JFby6-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--envbJBWh7q8WU6mo
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git randconfig-v5.12
head:   fd21c2581b744639b5207c11651ab40abf13701a
commit: aeb172ab4efb38a4817cf99c9c977d89130c3937 [390/597] pci: s390: remove redundant zbus->bus member
config: s390-randconfig-r001-20210318 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project fcc1ce00931751ac02498986feb37744e9ace8de)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git/commit/?id=aeb172ab4efb38a4817cf99c9c977d89130c3937
        git remote add arnd-playground https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git
        git fetch --no-tags arnd-playground randconfig-v5.12
        git checkout aeb172ab4efb38a4817cf99c9c977d89130c3937
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from arch/s390/pci/pci_bus.c:14:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:8:
   In file included from include/linux/spinlock.h:59:
   In file included from include/linux/lockdep.h:14:
   In file included from include/linux/smp.h:84:
   arch/s390/include/asm/smp.h:42:1: warning: function 'smp_stop_cpu' could be declared with attribute 'noreturn' [-Wmissing-noreturn]
   {
   ^
   In file included from arch/s390/pci/pci_bus.c:20:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
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
   In file included from arch/s390/pci/pci_bus.c:20:
   In file included from include/linux/pci.h:39:
   In file included from include/linux/io.h:13:
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
   In file included from arch/s390/pci/pci_bus.c:20:
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
>> arch/s390/pci/pci_bus.c:219:3: warning: variable 'bridge' is uninitialized when used here [-Wuninitialized]
                   bridge->ops = ops;
                   ^~~~~~
   arch/s390/pci/pci_bus.c:198:32: note: initialize the variable 'bridge' to silence this warning
           struct pci_host_bridge *bridge;
                                         ^
                                          = NULL
   14 warnings generated.


vim +/bridge +219 arch/s390/pci/pci_bus.c

44510d6fa0c00a Pierre Morel  2020-04-22  195  
44510d6fa0c00a Pierre Morel  2020-04-22  196  int zpci_bus_device_register(struct zpci_dev *zdev, struct pci_ops *ops)
44510d6fa0c00a Pierre Morel  2020-04-22  197  {
a33ad04d2320ed Arnd Bergmann 2020-12-18  198  	struct pci_host_bridge *bridge;
44510d6fa0c00a Pierre Morel  2020-04-22  199  	struct zpci_bus *zbus = NULL;
44510d6fa0c00a Pierre Morel  2020-04-22  200  	int rc = -EBADF;
44510d6fa0c00a Pierre Morel  2020-04-22  201  
05bc1be6db4b26 Pierre Morel  2020-03-23  202  	if (zpci_nb_devices == ZPCI_NR_DEVICES) {
05bc1be6db4b26 Pierre Morel  2020-03-23  203  		pr_warn("Adding PCI function %08x failed because the configured limit of %d is reached\n",
05bc1be6db4b26 Pierre Morel  2020-03-23  204  			zdev->fid, ZPCI_NR_DEVICES);
05bc1be6db4b26 Pierre Morel  2020-03-23  205  		return -ENOSPC;
05bc1be6db4b26 Pierre Morel  2020-03-23  206  	}
05bc1be6db4b26 Pierre Morel  2020-03-23  207  	zpci_nb_devices++;
05bc1be6db4b26 Pierre Morel  2020-03-23  208  
44510d6fa0c00a Pierre Morel  2020-04-22  209  	if (zdev->devfn >= ZPCI_FUNCTIONS_PER_BUS)
05bc1be6db4b26 Pierre Morel  2020-03-23  210  		return -EINVAL;
05bc1be6db4b26 Pierre Morel  2020-03-23  211  
44510d6fa0c00a Pierre Morel  2020-04-22  212  	if (!s390_pci_no_rid && zdev->rid_available)
44510d6fa0c00a Pierre Morel  2020-04-22  213  		zbus = zpci_bus_get(zdev->pchid);
44510d6fa0c00a Pierre Morel  2020-04-22  214  
44510d6fa0c00a Pierre Morel  2020-04-22  215  	if (!zbus) {
05bc1be6db4b26 Pierre Morel  2020-03-23  216  		zbus = zpci_bus_alloc(zdev->pchid);
05bc1be6db4b26 Pierre Morel  2020-03-23  217  		if (!zbus)
05bc1be6db4b26 Pierre Morel  2020-03-23  218  			return -ENOMEM;
a33ad04d2320ed Arnd Bergmann 2020-12-18 @219  		bridge->ops = ops;
44510d6fa0c00a Pierre Morel  2020-04-22  220  	}
05bc1be6db4b26 Pierre Morel  2020-03-23  221  
05bc1be6db4b26 Pierre Morel  2020-03-23  222  	zdev->zbus = zbus;
a33ad04d2320ed Arnd Bergmann 2020-12-18  223  
44510d6fa0c00a Pierre Morel  2020-04-22  224  	if (zbus->function[zdev->devfn]) {
44510d6fa0c00a Pierre Morel  2020-04-22  225  		pr_err("devfn %04x is already assigned\n", zdev->devfn);
44510d6fa0c00a Pierre Morel  2020-04-22  226  		goto error; /* rc already set */
44510d6fa0c00a Pierre Morel  2020-04-22  227  	}
44510d6fa0c00a Pierre Morel  2020-04-22  228  	zbus->function[zdev->devfn] = zdev;
05bc1be6db4b26 Pierre Morel  2020-03-23  229  
a33ad04d2320ed Arnd Bergmann 2020-12-18  230  	zpci_setup_bus_resources(zdev, &zbus->bridge->windows);
05bc1be6db4b26 Pierre Morel  2020-03-23  231  
aeb172ab4efb38 Arnd Bergmann 2021-01-25  232  	if (zbus->bridge->bus) {
44510d6fa0c00a Pierre Morel  2020-04-22  233  		if (!zbus->multifunction) {
44510d6fa0c00a Pierre Morel  2020-04-22  234  			WARN_ONCE(1, "zbus is not multifunction\n");
44510d6fa0c00a Pierre Morel  2020-04-22  235  			goto error_bus;
44510d6fa0c00a Pierre Morel  2020-04-22  236  		}
44510d6fa0c00a Pierre Morel  2020-04-22  237  		if (!zdev->rid_available) {
44510d6fa0c00a Pierre Morel  2020-04-22  238  			WARN_ONCE(1, "rid_available not set for multifunction\n");
44510d6fa0c00a Pierre Morel  2020-04-22  239  			goto error_bus;
44510d6fa0c00a Pierre Morel  2020-04-22  240  		}
44510d6fa0c00a Pierre Morel  2020-04-22  241  		rc = zpci_bus_add_device(zbus, zdev);
44510d6fa0c00a Pierre Morel  2020-04-22  242  		if (rc)
44510d6fa0c00a Pierre Morel  2020-04-22  243  			goto error_bus;
44510d6fa0c00a Pierre Morel  2020-04-22  244  	} else if (zdev->devfn == 0) {
44510d6fa0c00a Pierre Morel  2020-04-22  245  		if (zbus->multifunction && !zdev->rid_available) {
44510d6fa0c00a Pierre Morel  2020-04-22  246  			WARN_ONCE(1, "rid_available not set on function 0 for multifunction\n");
44510d6fa0c00a Pierre Morel  2020-04-22  247  			goto error_bus;
44510d6fa0c00a Pierre Morel  2020-04-22  248  		}
aeb172ab4efb38 Arnd Bergmann 2021-01-25  249  		rc = zpci_bus_scan(zbus, (u16)zdev->uid);
44510d6fa0c00a Pierre Morel  2020-04-22  250  		if (rc)
44510d6fa0c00a Pierre Morel  2020-04-22  251  			goto error_bus;
44510d6fa0c00a Pierre Morel  2020-04-22  252  		zpci_bus_add_devices(zbus);
44510d6fa0c00a Pierre Morel  2020-04-22  253  		rc = zpci_init_slot(zdev);
44510d6fa0c00a Pierre Morel  2020-04-22  254  		if (rc)
44510d6fa0c00a Pierre Morel  2020-04-22  255  			goto error_bus;
44510d6fa0c00a Pierre Morel  2020-04-22  256  		zdev->has_hp_slot = 1;
44510d6fa0c00a Pierre Morel  2020-04-22  257  		zbus->multifunction = zdev->rid_available;
44510d6fa0c00a Pierre Morel  2020-04-22  258  		zbus->max_bus_speed = zdev->max_bus_speed;
44510d6fa0c00a Pierre Morel  2020-04-22  259  	} else {
44510d6fa0c00a Pierre Morel  2020-04-22  260  		zbus->multifunction = 1;
44510d6fa0c00a Pierre Morel  2020-04-22  261  	}
44510d6fa0c00a Pierre Morel  2020-04-22  262  
05bc1be6db4b26 Pierre Morel  2020-03-23  263  	return 0;
05bc1be6db4b26 Pierre Morel  2020-03-23  264  
44510d6fa0c00a Pierre Morel  2020-04-22  265  error_bus:
44510d6fa0c00a Pierre Morel  2020-04-22  266  	zpci_nb_devices--;
44510d6fa0c00a Pierre Morel  2020-04-22  267  	zbus->function[zdev->devfn] = NULL;
44510d6fa0c00a Pierre Morel  2020-04-22  268  error:
05bc1be6db4b26 Pierre Morel  2020-03-23  269  	pr_err("Adding PCI function %08x failed\n", zdev->fid);
05bc1be6db4b26 Pierre Morel  2020-03-23  270  	zpci_bus_put(zbus);
05bc1be6db4b26 Pierre Morel  2020-03-23  271  	return rc;
05bc1be6db4b26 Pierre Morel  2020-03-23  272  }
05bc1be6db4b26 Pierre Morel  2020-03-23  273  

:::::: The code at line 219 was first introduced by commit
:::::: a33ad04d2320edeaca80d61524768a9b7b7af8e4 s390: simplify PCI bus scan

:::::: TO: Arnd Bergmann <arnd@arndb.de>
:::::: CC: Arnd Bergmann <arnd@arndb.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103200207.n14JFby6-lkp%40intel.com.

--envbJBWh7q8WU6mo
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
l8O3J4NJHGSsHazOj54X0a59sP8DBfHrgBFiAQA=

--envbJBWh7q8WU6mo--
