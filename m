Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBCOAS75AKGQEEYUREBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D062525FF
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 06:07:38 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id s27sf204019vsj.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 21:07:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598414857; cv=pass;
        d=google.com; s=arc-20160816;
        b=TAfElTqOyva4LUNBMuvzO9noVP0y3hX/QL7WMOvb0BuGwasV2Kd3dH6NU2AQ6e8Uyt
         PugEI1amuKQXNlw7lz1G/I1AFlzKcgwlzgl67m5RNr2HF6scpjkRqfsBa01X6U+VemE7
         RkbBrju9iMeMR1UEsyGmojpCYahdPL/0MAuMAYi49hLO96uYT9rdQgGZw5+58MigIG6k
         HgzrRTsozlCbCkX04t6fo2iiilc5G2dw6B1dQYGnYDN7GIoy0Yq5oxXd89/AsvXXdpSd
         00r4BIakQYNTy5OerBso7C9+tM79hN7GiGf91Il9+jdgrkuJZ1rRSUIj6MQuznKErrjD
         zZmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=0RSYPxRWGH/20PRye/+JRwNZm8CKr4JAJaUn5hkuW1g=;
        b=PT7/u2jUMW7aNuJWBLIatrEzD/lhMs7O1aeV6JuFAPkDhtcdHdXXKIvU020QFw3KHm
         xjalv1x0Ec35qSkNb1pl58TaAGtxVQJPDz3Hy99iRWlU3vqoARQcIsJeGe1L5kyP/EQU
         BRpCWswJyDL65PkFv6GoIoxlg8onGaikjkDTa+uGmUDFH3+8cLIpibw6Ekx/9YwkLFVH
         XLN/0fvpeeAHkoTMERfWgnuzaQFlAk374ZwAoX28y/NMrMfdQwqh464cUwJtRBp9s/1r
         7hwa/34wcTHxZuQlfgzUGSh9cpL+XQGuLoGmzIqnhBNBRMb8TeRr1MxRaVAwRqq8F2/N
         MIQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0RSYPxRWGH/20PRye/+JRwNZm8CKr4JAJaUn5hkuW1g=;
        b=JBqOkVsh11suPK5jKBHjbSSfuDu2z34Xtkj/XGukx7+zWeAt3vNV6qZt/LV6Rx23mg
         HiEA7Iwpg+50kj19iJtU6IZY7U2xulvkbQDTvNykId8ZqYqFhQ0fKLaEbpfJrtsHFT7N
         NY0go0xQCEMF323xi+sLEJESMyKOGTPbI/B9CdKIXpZTOhCl4z4xrArWRKCmybRR9nKL
         EAl/+LX81JnyaCXsQYF8j3HCh+oTksuaPfjlFxi+CwbMZRoM6Ef+bb26V7QQSZyvd3mJ
         S5vSXYNMFZys7uNyVZpCzSXHUv0NRklvjBl1OnsOe2ya9WkjQnSX8mP1tdyo6gpJSP+s
         TGKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0RSYPxRWGH/20PRye/+JRwNZm8CKr4JAJaUn5hkuW1g=;
        b=TqR4D8FVxNwGkB7+mwS8JNbRk4vmvzVJZMq5ji0q2xI/JrSXepXNnnm+2PpwZX3o0v
         vW1vNlRLJJVMkrLjXaqKSeUF8kk90pJIeTunTu1SIeKsqyh4ZdyqK0DIVKkZBV7bhV5A
         CF+rgNGIx/07+UO2Huhyf14QbOrcyR9YvbKaOn0s8myp1+dRVXFj6M5X2H5UMG9pONex
         c9YKCEOSLsavmmeJKng+/eQ/w/PWhrVKni53WcWBK/CRN9yMzRSI+Oc/odNfGs8hHvwf
         lCm11SyHFG5CTZWTAPcyX4v3TCM57dv3MRuV6JiGzsVp88YvwaJicZVr8qNKCiBJf6B5
         U8/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LEYbv53k/Y1Nd8RQkCv+4EwVLWFF/2RaDF5xn2t2V/GTLIUe3
	6Hl0PFkpzB0Gcqgfe7M+xME=
X-Google-Smtp-Source: ABdhPJzK9z/QxdW04k4fhqaUQ3YIDwWTryCtp2QR/dSzR/AV/YNUIpk+1LEzX8f1SScP+8HL3F7Krg==
X-Received: by 2002:a67:1505:: with SMTP id 5mr7197609vsv.63.1598414857279;
        Tue, 25 Aug 2020 21:07:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f28f:: with SMTP id m15ls103599vsk.0.gmail; Tue, 25 Aug
 2020 21:07:36 -0700 (PDT)
X-Received: by 2002:a67:ec13:: with SMTP id d19mr8474560vso.28.1598414856709;
        Tue, 25 Aug 2020 21:07:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598414856; cv=none;
        d=google.com; s=arc-20160816;
        b=vjPCT40Ihqmtt7qwYdsezi37yiiGheYo9HZRim4V345LpyzHjj296tQs/4Z6HXIoYU
         wBNn5qSwiFH18o3TAbBHe6KrvpgEZJ/Cph1FuyEKfTofLvofiVDWHJRuuT9jmesYAEeZ
         iezga7lymaoJVfc1I05w6JfujHdhCdGl5bNnpBX2h5J9Dt0KMaJPX2jjrz+5YlchoKYo
         03CWSI7hF/LwySTy/Qcj2or9o2T7RRYvYoJuDzVV+600q3SvhHWDmYOsHvGEb95KI3Qo
         EaOSQNDfFiyl1BkzKXCkOZu6Lf0OMvrcVhsMLMjbJ2IN+CjU2O/CsEPpBjILMfwiA8Gp
         v3NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=y5l3Xqp5p6OzK5J7lKRBLS04CJAsWfW4gXO9vSr3Ojg=;
        b=UhN1kLqrLiwWzw3/nN7ktGFjQQuxR5WIt89CS32krH2+KrmU0mHYQygAsbZd5FJGtX
         the68ee2xIiZRcRSjfL96TzZYtpauxENX13UsRDUnKIDXlfU1PSmlvXByUt++djSB3I+
         D5UrKISFTAYMrqGc8PzatI2uJmzcWb2tPWmcIeb4wk6txrsHnn5AjqqLe8vnV0+fkzSG
         8PCCF6h4CK8TsgcjU60yuasIk/V5lLoPM6Nn/R859d35NBifmdRKCJHf91bcMwFAFJDT
         nIXZcKQd80xLzUzO99+oVfVvbH+xeeepwZOZ7K24FwCRchyQVgAcOmbf/tFoMUAcUP7M
         xAEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id f20si59510vkp.1.2020.08.25.21.07.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 Aug 2020 21:07:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: /rUZv7N7zQAwKfuJxYGJCi5LiuYxsKD/m74Caa9b/Awk0aDoPoKlKLAaSVuZBcGE8/ADAWJzWP
 DV48zMs7qXhg==
X-IronPort-AV: E=McAfee;i="6000,8403,9724"; a="143895997"
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; 
   d="gz'50?scan'50,208,50";a="143895997"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Aug 2020 21:07:34 -0700
IronPort-SDR: 2j70kQEnLEB1eEImuFZCUgSweqZYetZVfzQ0u7aLRZ313pbRtM0GP1uuYulWh+QXCwwe+f2OO/
 tOAJ3/4v0IyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; 
   d="gz'50?scan'50,208,50";a="295233960"
Received: from lkp-server01.sh.intel.com (HELO 4f455964fc6c) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 25 Aug 2020 21:07:32 -0700
Received: from kbuild by 4f455964fc6c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kAmih-0001IU-Ul; Wed, 26 Aug 2020 04:07:31 +0000
Date: Wed, 26 Aug 2020 12:07:22 +0800
From: kernel test robot <lkp@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [jgunthorpe:for-yishai 29/35]
 drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c:842:29: warning: shift count
 >= width of type
Message-ID: <202008261216.LcPyFXaX%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nFreZHaLTZJo0R7j"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--nFreZHaLTZJo0R7j
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/jgunthorpe/linux for-yishai
head:   fbe06ba07d5a363aa078ac4d0274fa8ca7151c90
commit: 6422fcb801b64b3c2854096ffc6440f158ed9c04 [29/35] RDMA/mlx5: Use ib_umem_find_best_pgsz() for devx
config: x86_64-randconfig-r033-20200826 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 7cfcecece0e0430937cf529ce74d3a071a4dedc6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 6422fcb801b64b3c2854096ffc6440f158ed9c04
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c:56:
   In file included from drivers/infiniband/hw/vmw_pvrdma/pvrdma.h:56:
   include/rdma/ib_umem.h:86:29: error: conflicting types for 'ib_umem_find_best_pgsz'
   static inline unsigned long ib_umem_find_best_pgsz(struct ib_umem *umem,
                               ^
   include/rdma/ib_umem.h:80:29: note: previous definition is here
   static inline unsigned long ib_umem_find_best_pgsz(struct ib_umem *umem,
                               ^
>> drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c:842:29: warning: shift count >= width of type [-Wshift-count-overflow]
           if (pci_set_dma_mask(pdev, DMA_BIT_MASK(64)) == 0) {
                                      ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c:843:43: warning: shift count >= width of type [-Wshift-count-overflow]
                   ret = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
                                                           ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   2 warnings and 1 error generated.

# https://github.com/jgunthorpe/linux/commit/6422fcb801b64b3c2854096ffc6440f158ed9c04
git remote add jgunthorpe https://github.com/jgunthorpe/linux
git fetch --no-tags jgunthorpe for-yishai
git checkout 6422fcb801b64b3c2854096ffc6440f158ed9c04
vim +842 drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c

29c8d9eba550c6d Adit Ranadive     2016-10-02   778  
29c8d9eba550c6d Adit Ranadive     2016-10-02   779  static int pvrdma_pci_probe(struct pci_dev *pdev,
29c8d9eba550c6d Adit Ranadive     2016-10-02   780  			    const struct pci_device_id *id)
29c8d9eba550c6d Adit Ranadive     2016-10-02   781  {
29c8d9eba550c6d Adit Ranadive     2016-10-02   782  	struct pci_dev *pdev_net;
29c8d9eba550c6d Adit Ranadive     2016-10-02   783  	struct pvrdma_dev *dev;
29c8d9eba550c6d Adit Ranadive     2016-10-02   784  	int ret;
29c8d9eba550c6d Adit Ranadive     2016-10-02   785  	unsigned long start;
29c8d9eba550c6d Adit Ranadive     2016-10-02   786  	unsigned long len;
29c8d9eba550c6d Adit Ranadive     2016-10-02   787  	dma_addr_t slot_dma = 0;
29c8d9eba550c6d Adit Ranadive     2016-10-02   788  
29c8d9eba550c6d Adit Ranadive     2016-10-02   789  	dev_dbg(&pdev->dev, "initializing driver %s\n", pci_name(pdev));
29c8d9eba550c6d Adit Ranadive     2016-10-02   790  
29c8d9eba550c6d Adit Ranadive     2016-10-02   791  	/* Allocate zero-out device */
459cc69fa4c17ca Leon Romanovsky   2019-01-30   792  	dev = ib_alloc_device(pvrdma_dev, ib_dev);
29c8d9eba550c6d Adit Ranadive     2016-10-02   793  	if (!dev) {
29c8d9eba550c6d Adit Ranadive     2016-10-02   794  		dev_err(&pdev->dev, "failed to allocate IB device\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02   795  		return -ENOMEM;
29c8d9eba550c6d Adit Ranadive     2016-10-02   796  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02   797  
29c8d9eba550c6d Adit Ranadive     2016-10-02   798  	mutex_lock(&pvrdma_device_list_lock);
29c8d9eba550c6d Adit Ranadive     2016-10-02   799  	list_add(&dev->device_link, &pvrdma_device_list);
29c8d9eba550c6d Adit Ranadive     2016-10-02   800  	mutex_unlock(&pvrdma_device_list_lock);
29c8d9eba550c6d Adit Ranadive     2016-10-02   801  
29c8d9eba550c6d Adit Ranadive     2016-10-02   802  	ret = pvrdma_init_device(dev);
29c8d9eba550c6d Adit Ranadive     2016-10-02   803  	if (ret)
29c8d9eba550c6d Adit Ranadive     2016-10-02   804  		goto err_free_device;
29c8d9eba550c6d Adit Ranadive     2016-10-02   805  
29c8d9eba550c6d Adit Ranadive     2016-10-02   806  	dev->pdev = pdev;
29c8d9eba550c6d Adit Ranadive     2016-10-02   807  	pci_set_drvdata(pdev, dev);
29c8d9eba550c6d Adit Ranadive     2016-10-02   808  
29c8d9eba550c6d Adit Ranadive     2016-10-02   809  	ret = pci_enable_device(pdev);
29c8d9eba550c6d Adit Ranadive     2016-10-02   810  	if (ret) {
29c8d9eba550c6d Adit Ranadive     2016-10-02   811  		dev_err(&pdev->dev, "cannot enable PCI device\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02   812  		goto err_free_device;
29c8d9eba550c6d Adit Ranadive     2016-10-02   813  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02   814  
29c8d9eba550c6d Adit Ranadive     2016-10-02   815  	dev_dbg(&pdev->dev, "PCI resource flags BAR0 %#lx\n",
29c8d9eba550c6d Adit Ranadive     2016-10-02   816  		pci_resource_flags(pdev, 0));
29c8d9eba550c6d Adit Ranadive     2016-10-02   817  	dev_dbg(&pdev->dev, "PCI resource len %#llx\n",
29c8d9eba550c6d Adit Ranadive     2016-10-02   818  		(unsigned long long)pci_resource_len(pdev, 0));
29c8d9eba550c6d Adit Ranadive     2016-10-02   819  	dev_dbg(&pdev->dev, "PCI resource start %#llx\n",
29c8d9eba550c6d Adit Ranadive     2016-10-02   820  		(unsigned long long)pci_resource_start(pdev, 0));
29c8d9eba550c6d Adit Ranadive     2016-10-02   821  	dev_dbg(&pdev->dev, "PCI resource flags BAR1 %#lx\n",
29c8d9eba550c6d Adit Ranadive     2016-10-02   822  		pci_resource_flags(pdev, 1));
29c8d9eba550c6d Adit Ranadive     2016-10-02   823  	dev_dbg(&pdev->dev, "PCI resource len %#llx\n",
29c8d9eba550c6d Adit Ranadive     2016-10-02   824  		(unsigned long long)pci_resource_len(pdev, 1));
29c8d9eba550c6d Adit Ranadive     2016-10-02   825  	dev_dbg(&pdev->dev, "PCI resource start %#llx\n",
29c8d9eba550c6d Adit Ranadive     2016-10-02   826  		(unsigned long long)pci_resource_start(pdev, 1));
29c8d9eba550c6d Adit Ranadive     2016-10-02   827  
29c8d9eba550c6d Adit Ranadive     2016-10-02   828  	if (!(pci_resource_flags(pdev, 0) & IORESOURCE_MEM) ||
29c8d9eba550c6d Adit Ranadive     2016-10-02   829  	    !(pci_resource_flags(pdev, 1) & IORESOURCE_MEM)) {
29c8d9eba550c6d Adit Ranadive     2016-10-02   830  		dev_err(&pdev->dev, "PCI BAR region not MMIO\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02   831  		ret = -ENOMEM;
db857e6ae548f0f Qiushi Wu         2020-05-22   832  		goto err_disable_pdev;
29c8d9eba550c6d Adit Ranadive     2016-10-02   833  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02   834  
29c8d9eba550c6d Adit Ranadive     2016-10-02   835  	ret = pci_request_regions(pdev, DRV_NAME);
29c8d9eba550c6d Adit Ranadive     2016-10-02   836  	if (ret) {
29c8d9eba550c6d Adit Ranadive     2016-10-02   837  		dev_err(&pdev->dev, "cannot request PCI resources\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02   838  		goto err_disable_pdev;
29c8d9eba550c6d Adit Ranadive     2016-10-02   839  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02   840  
29c8d9eba550c6d Adit Ranadive     2016-10-02   841  	/* Enable 64-Bit DMA */
29c8d9eba550c6d Adit Ranadive     2016-10-02  @842  	if (pci_set_dma_mask(pdev, DMA_BIT_MASK(64)) == 0) {
29c8d9eba550c6d Adit Ranadive     2016-10-02   843  		ret = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
29c8d9eba550c6d Adit Ranadive     2016-10-02   844  		if (ret != 0) {
29c8d9eba550c6d Adit Ranadive     2016-10-02   845  			dev_err(&pdev->dev,
29c8d9eba550c6d Adit Ranadive     2016-10-02   846  				"pci_set_consistent_dma_mask failed\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02   847  			goto err_free_resource;
29c8d9eba550c6d Adit Ranadive     2016-10-02   848  		}
29c8d9eba550c6d Adit Ranadive     2016-10-02   849  	} else {
29c8d9eba550c6d Adit Ranadive     2016-10-02   850  		ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
29c8d9eba550c6d Adit Ranadive     2016-10-02   851  		if (ret != 0) {
29c8d9eba550c6d Adit Ranadive     2016-10-02   852  			dev_err(&pdev->dev,
29c8d9eba550c6d Adit Ranadive     2016-10-02   853  				"pci_set_dma_mask failed\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02   854  			goto err_free_resource;
29c8d9eba550c6d Adit Ranadive     2016-10-02   855  		}
29c8d9eba550c6d Adit Ranadive     2016-10-02   856  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02   857  
29c8d9eba550c6d Adit Ranadive     2016-10-02   858  	pci_set_master(pdev);
29c8d9eba550c6d Adit Ranadive     2016-10-02   859  
29c8d9eba550c6d Adit Ranadive     2016-10-02   860  	/* Map register space */
29c8d9eba550c6d Adit Ranadive     2016-10-02   861  	start = pci_resource_start(dev->pdev, PVRDMA_PCI_RESOURCE_REG);
29c8d9eba550c6d Adit Ranadive     2016-10-02   862  	len = pci_resource_len(dev->pdev, PVRDMA_PCI_RESOURCE_REG);
29c8d9eba550c6d Adit Ranadive     2016-10-02   863  	dev->regs = ioremap(start, len);
29c8d9eba550c6d Adit Ranadive     2016-10-02   864  	if (!dev->regs) {
29c8d9eba550c6d Adit Ranadive     2016-10-02   865  		dev_err(&pdev->dev, "register mapping failed\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02   866  		ret = -ENOMEM;
29c8d9eba550c6d Adit Ranadive     2016-10-02   867  		goto err_free_resource;
29c8d9eba550c6d Adit Ranadive     2016-10-02   868  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02   869  
29c8d9eba550c6d Adit Ranadive     2016-10-02   870  	/* Setup per-device UAR. */
29c8d9eba550c6d Adit Ranadive     2016-10-02   871  	dev->driver_uar.index = 0;
29c8d9eba550c6d Adit Ranadive     2016-10-02   872  	dev->driver_uar.pfn =
29c8d9eba550c6d Adit Ranadive     2016-10-02   873  		pci_resource_start(dev->pdev, PVRDMA_PCI_RESOURCE_UAR) >>
29c8d9eba550c6d Adit Ranadive     2016-10-02   874  		PAGE_SHIFT;
29c8d9eba550c6d Adit Ranadive     2016-10-02   875  	dev->driver_uar.map =
29c8d9eba550c6d Adit Ranadive     2016-10-02   876  		ioremap(dev->driver_uar.pfn << PAGE_SHIFT, PAGE_SIZE);
29c8d9eba550c6d Adit Ranadive     2016-10-02   877  	if (!dev->driver_uar.map) {
29c8d9eba550c6d Adit Ranadive     2016-10-02   878  		dev_err(&pdev->dev, "failed to remap UAR pages\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02   879  		ret = -ENOMEM;
29c8d9eba550c6d Adit Ranadive     2016-10-02   880  		goto err_unmap_regs;
29c8d9eba550c6d Adit Ranadive     2016-10-02   881  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02   882  
05297b66ad874f6 Bryan Tan         2017-08-22   883  	dev->dsr_version = pvrdma_read_reg(dev, PVRDMA_REG_VERSION);
29c8d9eba550c6d Adit Ranadive     2016-10-02   884  	dev_info(&pdev->dev, "device version %d, driver version %d\n",
05297b66ad874f6 Bryan Tan         2017-08-22   885  		 dev->dsr_version, PVRDMA_VERSION);
29c8d9eba550c6d Adit Ranadive     2016-10-02   886  
750afb08ca71310 Luis Chamberlain  2019-01-04   887  	dev->dsr = dma_alloc_coherent(&pdev->dev, sizeof(*dev->dsr),
29c8d9eba550c6d Adit Ranadive     2016-10-02   888  				      &dev->dsrbase, GFP_KERNEL);
29c8d9eba550c6d Adit Ranadive     2016-10-02   889  	if (!dev->dsr) {
29c8d9eba550c6d Adit Ranadive     2016-10-02   890  		dev_err(&pdev->dev, "failed to allocate shared region\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02   891  		ret = -ENOMEM;
29c8d9eba550c6d Adit Ranadive     2016-10-02   892  		goto err_uar_unmap;
29c8d9eba550c6d Adit Ranadive     2016-10-02   893  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02   894  
29c8d9eba550c6d Adit Ranadive     2016-10-02   895  	/* Setup the shared region */
29c8d9eba550c6d Adit Ranadive     2016-10-02   896  	dev->dsr->driver_version = PVRDMA_VERSION;
29c8d9eba550c6d Adit Ranadive     2016-10-02   897  	dev->dsr->gos_info.gos_bits = sizeof(void *) == 4 ?
29c8d9eba550c6d Adit Ranadive     2016-10-02   898  		PVRDMA_GOS_BITS_32 :
29c8d9eba550c6d Adit Ranadive     2016-10-02   899  		PVRDMA_GOS_BITS_64;
29c8d9eba550c6d Adit Ranadive     2016-10-02   900  	dev->dsr->gos_info.gos_type = PVRDMA_GOS_TYPE_LINUX;
29c8d9eba550c6d Adit Ranadive     2016-10-02   901  	dev->dsr->gos_info.gos_ver = 1;
8aa04ad3b39396e Adit Ranadive     2019-01-26   902  
8aa04ad3b39396e Adit Ranadive     2019-01-26   903  	if (dev->dsr_version < PVRDMA_PPN64_VERSION)
29c8d9eba550c6d Adit Ranadive     2016-10-02   904  		dev->dsr->uar_pfn = dev->driver_uar.pfn;
8aa04ad3b39396e Adit Ranadive     2019-01-26   905  	else
8aa04ad3b39396e Adit Ranadive     2019-01-26   906  		dev->dsr->uar_pfn64 = dev->driver_uar.pfn;
29c8d9eba550c6d Adit Ranadive     2016-10-02   907  
29c8d9eba550c6d Adit Ranadive     2016-10-02   908  	/* Command slot. */
29c8d9eba550c6d Adit Ranadive     2016-10-02   909  	dev->cmd_slot = dma_alloc_coherent(&pdev->dev, PAGE_SIZE,
29c8d9eba550c6d Adit Ranadive     2016-10-02   910  					   &slot_dma, GFP_KERNEL);
29c8d9eba550c6d Adit Ranadive     2016-10-02   911  	if (!dev->cmd_slot) {
29c8d9eba550c6d Adit Ranadive     2016-10-02   912  		ret = -ENOMEM;
29c8d9eba550c6d Adit Ranadive     2016-10-02   913  		goto err_free_dsr;
29c8d9eba550c6d Adit Ranadive     2016-10-02   914  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02   915  
29c8d9eba550c6d Adit Ranadive     2016-10-02   916  	dev->dsr->cmd_slot_dma = (u64)slot_dma;
29c8d9eba550c6d Adit Ranadive     2016-10-02   917  
29c8d9eba550c6d Adit Ranadive     2016-10-02   918  	/* Response slot. */
29c8d9eba550c6d Adit Ranadive     2016-10-02   919  	dev->resp_slot = dma_alloc_coherent(&pdev->dev, PAGE_SIZE,
29c8d9eba550c6d Adit Ranadive     2016-10-02   920  					    &slot_dma, GFP_KERNEL);
29c8d9eba550c6d Adit Ranadive     2016-10-02   921  	if (!dev->resp_slot) {
29c8d9eba550c6d Adit Ranadive     2016-10-02   922  		ret = -ENOMEM;
29c8d9eba550c6d Adit Ranadive     2016-10-02   923  		goto err_free_slots;
29c8d9eba550c6d Adit Ranadive     2016-10-02   924  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02   925  
29c8d9eba550c6d Adit Ranadive     2016-10-02   926  	dev->dsr->resp_slot_dma = (u64)slot_dma;
29c8d9eba550c6d Adit Ranadive     2016-10-02   927  
29c8d9eba550c6d Adit Ranadive     2016-10-02   928  	/* Async event ring */
6332dee83d8eab8 Adit Ranadive     2017-02-22   929  	dev->dsr->async_ring_pages.num_pages = PVRDMA_NUM_RING_PAGES;
29c8d9eba550c6d Adit Ranadive     2016-10-02   930  	ret = pvrdma_page_dir_init(dev, &dev->async_pdir,
29c8d9eba550c6d Adit Ranadive     2016-10-02   931  				   dev->dsr->async_ring_pages.num_pages, true);
29c8d9eba550c6d Adit Ranadive     2016-10-02   932  	if (ret)
29c8d9eba550c6d Adit Ranadive     2016-10-02   933  		goto err_free_slots;
29c8d9eba550c6d Adit Ranadive     2016-10-02   934  	dev->async_ring_state = dev->async_pdir.pages[0];
29c8d9eba550c6d Adit Ranadive     2016-10-02   935  	dev->dsr->async_ring_pages.pdir_dma = dev->async_pdir.dir_dma;
29c8d9eba550c6d Adit Ranadive     2016-10-02   936  
29c8d9eba550c6d Adit Ranadive     2016-10-02   937  	/* CQ notification ring */
6332dee83d8eab8 Adit Ranadive     2017-02-22   938  	dev->dsr->cq_ring_pages.num_pages = PVRDMA_NUM_RING_PAGES;
29c8d9eba550c6d Adit Ranadive     2016-10-02   939  	ret = pvrdma_page_dir_init(dev, &dev->cq_pdir,
29c8d9eba550c6d Adit Ranadive     2016-10-02   940  				   dev->dsr->cq_ring_pages.num_pages, true);
29c8d9eba550c6d Adit Ranadive     2016-10-02   941  	if (ret)
29c8d9eba550c6d Adit Ranadive     2016-10-02   942  		goto err_free_async_ring;
29c8d9eba550c6d Adit Ranadive     2016-10-02   943  	dev->cq_ring_state = dev->cq_pdir.pages[0];
29c8d9eba550c6d Adit Ranadive     2016-10-02   944  	dev->dsr->cq_ring_pages.pdir_dma = dev->cq_pdir.dir_dma;
29c8d9eba550c6d Adit Ranadive     2016-10-02   945  
29c8d9eba550c6d Adit Ranadive     2016-10-02   946  	/*
29c8d9eba550c6d Adit Ranadive     2016-10-02   947  	 * Write the PA of the shared region to the device. The writes must be
29c8d9eba550c6d Adit Ranadive     2016-10-02   948  	 * ordered such that the high bits are written last. When the writes
29c8d9eba550c6d Adit Ranadive     2016-10-02   949  	 * complete, the device will have filled out the capabilities.
29c8d9eba550c6d Adit Ranadive     2016-10-02   950  	 */
29c8d9eba550c6d Adit Ranadive     2016-10-02   951  
29c8d9eba550c6d Adit Ranadive     2016-10-02   952  	pvrdma_write_reg(dev, PVRDMA_REG_DSRLOW, (u32)dev->dsrbase);
29c8d9eba550c6d Adit Ranadive     2016-10-02   953  	pvrdma_write_reg(dev, PVRDMA_REG_DSRHIGH,
29c8d9eba550c6d Adit Ranadive     2016-10-02   954  			 (u32)((u64)(dev->dsrbase) >> 32));
29c8d9eba550c6d Adit Ranadive     2016-10-02   955  
29c8d9eba550c6d Adit Ranadive     2016-10-02   956  	/* Make sure the write is complete before reading status. */
29c8d9eba550c6d Adit Ranadive     2016-10-02   957  	mb();
29c8d9eba550c6d Adit Ranadive     2016-10-02   958  
05297b66ad874f6 Bryan Tan         2017-08-22   959  	/* The driver supports RoCE V1 and V2. */
05297b66ad874f6 Bryan Tan         2017-08-22   960  	if (!PVRDMA_SUPPORTED(dev)) {
05297b66ad874f6 Bryan Tan         2017-08-22   961  		dev_err(&pdev->dev, "driver needs RoCE v1 or v2 support\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02   962  		ret = -EFAULT;
29c8d9eba550c6d Adit Ranadive     2016-10-02   963  		goto err_free_cq_ring;
29c8d9eba550c6d Adit Ranadive     2016-10-02   964  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02   965  
29c8d9eba550c6d Adit Ranadive     2016-10-02   966  	/* Paired vmxnet3 will have same bus, slot. But func will be 0 */
29c8d9eba550c6d Adit Ranadive     2016-10-02   967  	pdev_net = pci_get_slot(pdev->bus, PCI_DEVFN(PCI_SLOT(pdev->devfn), 0));
29c8d9eba550c6d Adit Ranadive     2016-10-02   968  	if (!pdev_net) {
29c8d9eba550c6d Adit Ranadive     2016-10-02   969  		dev_err(&pdev->dev, "failed to find paired net device\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02   970  		ret = -ENODEV;
29c8d9eba550c6d Adit Ranadive     2016-10-02   971  		goto err_free_cq_ring;
29c8d9eba550c6d Adit Ranadive     2016-10-02   972  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02   973  
29c8d9eba550c6d Adit Ranadive     2016-10-02   974  	if (pdev_net->vendor != PCI_VENDOR_ID_VMWARE ||
29c8d9eba550c6d Adit Ranadive     2016-10-02   975  	    pdev_net->device != PCI_DEVICE_ID_VMWARE_VMXNET3) {
29c8d9eba550c6d Adit Ranadive     2016-10-02   976  		dev_err(&pdev->dev, "failed to find paired vmxnet3 device\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02   977  		pci_dev_put(pdev_net);
29c8d9eba550c6d Adit Ranadive     2016-10-02   978  		ret = -ENODEV;
29c8d9eba550c6d Adit Ranadive     2016-10-02   979  		goto err_free_cq_ring;
29c8d9eba550c6d Adit Ranadive     2016-10-02   980  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02   981  
29c8d9eba550c6d Adit Ranadive     2016-10-02   982  	dev->netdev = pci_get_drvdata(pdev_net);
29c8d9eba550c6d Adit Ranadive     2016-10-02   983  	pci_dev_put(pdev_net);
29c8d9eba550c6d Adit Ranadive     2016-10-02   984  	if (!dev->netdev) {
29c8d9eba550c6d Adit Ranadive     2016-10-02   985  		dev_err(&pdev->dev, "failed to get vmxnet3 device\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02   986  		ret = -ENODEV;
29c8d9eba550c6d Adit Ranadive     2016-10-02   987  		goto err_free_cq_ring;
29c8d9eba550c6d Adit Ranadive     2016-10-02   988  	}
11e40f5c577624d Neil Horman       2018-06-29   989  	dev_hold(dev->netdev);
29c8d9eba550c6d Adit Ranadive     2016-10-02   990  
29c8d9eba550c6d Adit Ranadive     2016-10-02   991  	dev_info(&pdev->dev, "paired device to %s\n", dev->netdev->name);
29c8d9eba550c6d Adit Ranadive     2016-10-02   992  
29c8d9eba550c6d Adit Ranadive     2016-10-02   993  	/* Interrupt setup */
29c8d9eba550c6d Adit Ranadive     2016-10-02   994  	ret = pvrdma_alloc_intrs(dev);
29c8d9eba550c6d Adit Ranadive     2016-10-02   995  	if (ret) {
29c8d9eba550c6d Adit Ranadive     2016-10-02   996  		dev_err(&pdev->dev, "failed to allocate interrupts\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02   997  		ret = -ENOMEM;
ff89b070b7c98eb Adit Ranadive     2017-01-19   998  		goto err_free_cq_ring;
29c8d9eba550c6d Adit Ranadive     2016-10-02   999  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02  1000  
29c8d9eba550c6d Adit Ranadive     2016-10-02  1001  	/* Allocate UAR table. */
29c8d9eba550c6d Adit Ranadive     2016-10-02  1002  	ret = pvrdma_uar_table_init(dev);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1003  	if (ret) {
29c8d9eba550c6d Adit Ranadive     2016-10-02  1004  		dev_err(&pdev->dev, "failed to allocate UAR table\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02  1005  		ret = -ENOMEM;
29c8d9eba550c6d Adit Ranadive     2016-10-02  1006  		goto err_free_intrs;
29c8d9eba550c6d Adit Ranadive     2016-10-02  1007  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02  1008  
29c8d9eba550c6d Adit Ranadive     2016-10-02  1009  	/* Allocate GID table */
29c8d9eba550c6d Adit Ranadive     2016-10-02  1010  	dev->sgid_tbl = kcalloc(dev->dsr->caps.gid_tbl_len,
29c8d9eba550c6d Adit Ranadive     2016-10-02  1011  				sizeof(union ib_gid), GFP_KERNEL);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1012  	if (!dev->sgid_tbl) {
29c8d9eba550c6d Adit Ranadive     2016-10-02  1013  		ret = -ENOMEM;
29c8d9eba550c6d Adit Ranadive     2016-10-02  1014  		goto err_free_uar_table;
29c8d9eba550c6d Adit Ranadive     2016-10-02  1015  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02  1016  	dev_dbg(&pdev->dev, "gid table len %d\n", dev->dsr->caps.gid_tbl_len);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1017  
29c8d9eba550c6d Adit Ranadive     2016-10-02  1018  	pvrdma_enable_intrs(dev);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1019  
29c8d9eba550c6d Adit Ranadive     2016-10-02  1020  	/* Activate pvrdma device */
29c8d9eba550c6d Adit Ranadive     2016-10-02  1021  	pvrdma_write_reg(dev, PVRDMA_REG_CTL, PVRDMA_DEVICE_CTL_ACTIVATE);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1022  
29c8d9eba550c6d Adit Ranadive     2016-10-02  1023  	/* Make sure the write is complete before reading status. */
29c8d9eba550c6d Adit Ranadive     2016-10-02  1024  	mb();
29c8d9eba550c6d Adit Ranadive     2016-10-02  1025  
29c8d9eba550c6d Adit Ranadive     2016-10-02  1026  	/* Check if device was successfully activated */
29c8d9eba550c6d Adit Ranadive     2016-10-02  1027  	ret = pvrdma_read_reg(dev, PVRDMA_REG_ERR);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1028  	if (ret != 0) {
29c8d9eba550c6d Adit Ranadive     2016-10-02  1029  		dev_err(&pdev->dev, "failed to activate device\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02  1030  		ret = -EFAULT;
29c8d9eba550c6d Adit Ranadive     2016-10-02  1031  		goto err_disable_intr;
29c8d9eba550c6d Adit Ranadive     2016-10-02  1032  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02  1033  
29c8d9eba550c6d Adit Ranadive     2016-10-02  1034  	/* Register IB device */
29c8d9eba550c6d Adit Ranadive     2016-10-02  1035  	ret = pvrdma_register_device(dev);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1036  	if (ret) {
29c8d9eba550c6d Adit Ranadive     2016-10-02  1037  		dev_err(&pdev->dev, "failed to register IB device\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02  1038  		goto err_disable_intr;
29c8d9eba550c6d Adit Ranadive     2016-10-02  1039  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02  1040  
29c8d9eba550c6d Adit Ranadive     2016-10-02  1041  	dev->nb_netdev.notifier_call = pvrdma_netdevice_event;
29c8d9eba550c6d Adit Ranadive     2016-10-02  1042  	ret = register_netdevice_notifier(&dev->nb_netdev);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1043  	if (ret) {
29c8d9eba550c6d Adit Ranadive     2016-10-02  1044  		dev_err(&pdev->dev, "failed to register netdevice events\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02  1045  		goto err_unreg_ibdev;
29c8d9eba550c6d Adit Ranadive     2016-10-02  1046  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02  1047  
29c8d9eba550c6d Adit Ranadive     2016-10-02  1048  	dev_info(&pdev->dev, "attached to device\n");
29c8d9eba550c6d Adit Ranadive     2016-10-02  1049  	return 0;
29c8d9eba550c6d Adit Ranadive     2016-10-02  1050  
29c8d9eba550c6d Adit Ranadive     2016-10-02  1051  err_unreg_ibdev:
29c8d9eba550c6d Adit Ranadive     2016-10-02  1052  	ib_unregister_device(&dev->ib_dev);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1053  err_disable_intr:
29c8d9eba550c6d Adit Ranadive     2016-10-02  1054  	pvrdma_disable_intrs(dev);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1055  	kfree(dev->sgid_tbl);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1056  err_free_uar_table:
29c8d9eba550c6d Adit Ranadive     2016-10-02  1057  	pvrdma_uar_table_cleanup(dev);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1058  err_free_intrs:
29c8d9eba550c6d Adit Ranadive     2016-10-02  1059  	pvrdma_free_irq(dev);
7bf3976d6cfd77c Christoph Hellwig 2017-02-15  1060  	pci_free_irq_vectors(pdev);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1061  err_free_cq_ring:
11e40f5c577624d Neil Horman       2018-06-29  1062  	if (dev->netdev) {
11e40f5c577624d Neil Horman       2018-06-29  1063  		dev_put(dev->netdev);
11e40f5c577624d Neil Horman       2018-06-29  1064  		dev->netdev = NULL;
11e40f5c577624d Neil Horman       2018-06-29  1065  	}
29c8d9eba550c6d Adit Ranadive     2016-10-02  1066  	pvrdma_page_dir_cleanup(dev, &dev->cq_pdir);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1067  err_free_async_ring:
29c8d9eba550c6d Adit Ranadive     2016-10-02  1068  	pvrdma_page_dir_cleanup(dev, &dev->async_pdir);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1069  err_free_slots:
29c8d9eba550c6d Adit Ranadive     2016-10-02  1070  	pvrdma_free_slots(dev);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1071  err_free_dsr:
29c8d9eba550c6d Adit Ranadive     2016-10-02  1072  	dma_free_coherent(&pdev->dev, sizeof(*dev->dsr), dev->dsr,
29c8d9eba550c6d Adit Ranadive     2016-10-02  1073  			  dev->dsrbase);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1074  err_uar_unmap:
29c8d9eba550c6d Adit Ranadive     2016-10-02  1075  	iounmap(dev->driver_uar.map);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1076  err_unmap_regs:
29c8d9eba550c6d Adit Ranadive     2016-10-02  1077  	iounmap(dev->regs);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1078  err_free_resource:
29c8d9eba550c6d Adit Ranadive     2016-10-02  1079  	pci_release_regions(pdev);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1080  err_disable_pdev:
29c8d9eba550c6d Adit Ranadive     2016-10-02  1081  	pci_disable_device(pdev);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1082  	pci_set_drvdata(pdev, NULL);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1083  err_free_device:
29c8d9eba550c6d Adit Ranadive     2016-10-02  1084  	mutex_lock(&pvrdma_device_list_lock);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1085  	list_del(&dev->device_link);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1086  	mutex_unlock(&pvrdma_device_list_lock);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1087  	ib_dealloc_device(&dev->ib_dev);
29c8d9eba550c6d Adit Ranadive     2016-10-02  1088  	return ret;
29c8d9eba550c6d Adit Ranadive     2016-10-02  1089  }
29c8d9eba550c6d Adit Ranadive     2016-10-02  1090  

:::::: The code at line 842 was first introduced by commit
:::::: 29c8d9eba550c6d73d17cc1618a9f5f2a7345aa1 IB: Add vmw_pvrdma driver

:::::: TO: Adit Ranadive <aditr@vmware.com>
:::::: CC: Doug Ledford <dledford@redhat.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008261216.LcPyFXaX%25lkp%40intel.com.

--nFreZHaLTZJo0R7j
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
iAIA

--nFreZHaLTZJo0R7j--
