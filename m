Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKMG56EAMGQEL43B4KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 185F73EEE28
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 16:09:47 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id g12-20020a1709026b4cb029012c0d2e483csf13275764plt.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 07:09:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629209385; cv=pass;
        d=google.com; s=arc-20160816;
        b=Igk7ura4LZAlqFxP2N24qM2hNmk2hTMWhm3AxLXUgXhjF5M0D2OLIRJagtIClYcBYz
         eJZXOBsoTbGb+M9XwONZFGsEDkstqAnH0kK5DBX0LCZmICkryvAo5DLjkZYi4GdiNsMl
         0Zq/56dZUfE3GaPW+ipWFzWM4QgRL+iIz2URWxqCcKJ6H2Y/U0Ue6PcBSKIedDzWAmF4
         x/DfD0VSZlmk/hfynK25M3guGXKLESQw5GCfPg69Id0k3W2SQ7w2uZJRo6SMx2uuSnrZ
         rl7scuw0tl8s1eNZh3UqYd3hzwqrSETdcaig1asdDRUQNqNk26JqZ6YgI02MwnKsVabH
         Y36Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=12gO2qhhP8zJBxVNdmXFkXx2ugpsElIVOsRlHA/3j7A=;
        b=srSdfwbdtiIacMES+JL2z7uF65zy51Mjw4U95ug8ySuqXBitaqcpzpZgrGMkRDEqMD
         laI1SKOzu2D3CsIrgSZa6f5rxNr9cGY39Wlf3ilXBu4CbOjxpJvawdFd40+zSzOeTo1I
         ps4TCuPUwkgiM3XyywCBmxaRcBAGJ9s1HudgzEHJEzDQxRLUOc6H26P1wIKV5/YqXuWW
         ntYvf6dxiv+2uqk9+CxsV7V1wHhPPWxzVcDnf0cEsUJp99lw8nWfuaHLEx3m9BslHADZ
         0PUKVfwWpaO/Qntbp9xWDrr9EhAnKIIHky/bVCCI7UaonnVJUtAc5764FNzYjBx0VPJQ
         zRMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=12gO2qhhP8zJBxVNdmXFkXx2ugpsElIVOsRlHA/3j7A=;
        b=kKIzAzscPKKpjxYOswSk5OrQ9NraqEgoyty9IP4QY3haunJ+e7pi8m66C01U1qtNJj
         BftKx/5Y8CmSIRlI3YP1TWqE2299/qFfSh1nLzJeEhtJTP/VWi15RIx8oiU36ntwlKWQ
         sl4wElxODhDtbgisO5sWT1l0Jdtyu8oyQUWcGwAyr4T62e9Juc5XkhKKT+nR6dnv/UdS
         1v2rjGGKHdNmrS7+Ds7zuUL+E3vhWr7iH4SKhQwoC7/sb8pJcUXzb8q2qdjtoZMU4UMI
         92PLY/QAPi8/fOb/hthtSC/Ki0yIRy3tDSwX2NSCMw6QOumponLFknyDL+Hj1Ta3zDKJ
         W4xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=12gO2qhhP8zJBxVNdmXFkXx2ugpsElIVOsRlHA/3j7A=;
        b=T6/W0Qp6ktmTDEjKBMVxKovw72FJBP7+Ve9hVKsuvkG21nMlw3+rvzlZMSy+fb2B4e
         qkooe6Af6BIbn/pAWriV86+P9eJUoAzY0eq+aJC/TSTLLx+zoACwBvg+RJDCMLoK3y0Z
         8uqKIDTpGGY1rV8ihtPDVMxvU7ZnS62JdE0ljhvXgoxg8ru/laieWskb/OqlioP7gLic
         Y+qoyZ2eer32dRPu7WInEi8dPsFbZvLdnh5oczOZdkvWB6Sr4ikqQ9wYH8E9mCXIDCaq
         877g/ErM/sB0O/ALSy72PU7h1ECz3My4EgWQV4bkr6Dw7gczgTxdwwev92P1qRSLOvCs
         YEHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530nt1iB0n4kKHUrsXHu9rO/vK89exl7xPMzeUvNn0NBgtW6XNvD
	UmkPs0JYjg5P15/jMl1ed0k=
X-Google-Smtp-Source: ABdhPJycNBxdMll6g/D2Q60Q5QXXlr3pI/5K54D8ukaL7kPuinWMNDdwXHjO0SsuGkvM3mNKCkhZmA==
X-Received: by 2002:a17:90b:1e03:: with SMTP id pg3mr3786801pjb.203.1629209385643;
        Tue, 17 Aug 2021 07:09:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa8d:: with SMTP id d13ls1179131plr.4.gmail; Tue, 17
 Aug 2021 07:09:45 -0700 (PDT)
X-Received: by 2002:a17:90b:3013:: with SMTP id hg19mr2763164pjb.15.1629209384859;
        Tue, 17 Aug 2021 07:09:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629209384; cv=none;
        d=google.com; s=arc-20160816;
        b=PoDl5q+/m2leCkbCw1iMrG7eAnVgDhJF++G1JVTWAyPulDwZ1Cx9qLqc5Lai3/HbrS
         m9NxsY5NPqwg03JRQ/Zg9BoogqySZ24p0Q5E4Dd9QhuabdDA03rRAiscCRBTkYbA33wj
         Xh4t3n2PIo07BVPdWIUJ2KLJn6Aaw1keVtp2iXOvGGKTdnV3beNwTJsJ/JTqXezMUw2z
         6j8OY5FR9ZLFJGTOozAXHujYnpUsPSkySf4B4IWhTb45pla6LH4KDwMvniOzu18rsQEQ
         A26KpWm9DrSRbwG3hJaUJZnR0A5EmuESQEuXef2pVW+6vxVzzqjhUgF0ISc1vYcNoL2t
         yNDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=Rh+PnFRDWh99AAj40saiijuCYY43BspJNPVUGuS5444=;
        b=NZsPuLTBH3VgrUupeRAqSpkFrB3dwzWf+pVtDokjcVhJID41c/csH2pSYsX4F6wR2S
         m6cV0XYubsnbCoDax3mACmjD/gKiNHz1T8HeB5MdpQTEw4V1mBkbnaD7IXI5AwRv2U8U
         ORfvuxZpikvI6stuQXuU8COxc3kaMcNT9lHrsHu4nCVF11sgG4axT/MTBFVZivS7W8mX
         XV3DkFLfIkPp9aSsEftHh9PIt5rUmUx7REieuLXZNXs+sD7lt0bj6IHBBviB3KRdoZMB
         HYgKkzJTb5yj9XI8MM5+0gn5JRNG1b5i1wUZt+yOO2FEUAU2U4p65klyIRgFjMVrQIav
         Vs4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id g3si71314plp.2.2021.08.17.07.09.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 07:09:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="216101512"
X-IronPort-AV: E=Sophos;i="5.84,329,1620716400"; 
   d="gz'50?scan'50,208,50";a="216101512"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Aug 2021 07:09:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,329,1620716400"; 
   d="gz'50?scan'50,208,50";a="531083289"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2021 07:09:03 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mFzm3-000Rv9-64; Tue, 17 Aug 2021 14:09:03 +0000
Date: Tue, 17 Aug 2021 22:08:03 +0800
From: kernel test robot <lkp@intel.com>
To: Luis Chamberlain <mcgrof@kernel.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: [mcgrof:20210816-add-disk-error-handling 64/64]
 drivers/nvdimm/pmem.c:495:2: warning: ignoring return value of function
 declared with 'warn_unused_result' attribute
Message-ID: <202108172254.vZRMNx3g-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="x+6KMIRAuhnl3hBn"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux.git 20210816-add-disk-error-handling
head:   e1e79332ea1bba0e751529b114ef9d301bf962a5
commit: e1e79332ea1bba0e751529b114ef9d301bf962a5 [64/64] block: add __must_check for *add_disk*() callers
config: x86_64-randconfig-a011-20210816 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 2c6448cdc2f68f8c28fd0bd9404182b81306e6e6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux.git/commit/?id=e1e79332ea1bba0e751529b114ef9d301bf962a5
        git remote add mcgrof https://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux.git
        git fetch --no-tags mcgrof 20210816-add-disk-error-handling
        git checkout e1e79332ea1bba0e751529b114ef9d301bf962a5
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/nvdimm/pmem.c:495:2: warning: ignoring return value of function declared with 'warn_unused_result' attribute [-Wunused-result]
           device_add_disk(dev, disk, NULL);
           ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~
   1 warning generated.


vim +/warn_unused_result +495 drivers/nvdimm/pmem.c

1e240e8d4a7d92 drivers/nvdimm/pmem.c Christoph Hellwig 2019-06-26  369  
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  370  static int pmem_attach_disk(struct device *dev,
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  371  		struct nd_namespace_common *ndns)
9e853f2313e5eb drivers/block/pmem.c  Ross Zwisler      2015-04-01  372  {
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  373  	struct nd_namespace_io *nsio = to_nd_namespace_io(&ndns->dev);
f284a4f23752d0 drivers/nvdimm/pmem.c Dan Williams      2016-07-07  374  	struct nd_region *nd_region = to_nd_region(dev->parent);
ce7f11a230d5b7 drivers/nvdimm/pmem.c Ross Zwisler      2018-06-06  375  	int nid = dev_to_node(dev), fua;
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  376  	struct resource *res = &nsio->res;
a4574f63edc6f7 drivers/nvdimm/pmem.c Dan Williams      2020-10-13  377  	struct range bb_range;
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  378  	struct nd_pfn *nd_pfn = NULL;
c1d6e828a35df5 drivers/nvdimm/pmem.c Dan Williams      2017-01-24  379  	struct dax_device *dax_dev;
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  380  	struct nd_pfn_sb *pfn_sb;
9e853f2313e5eb drivers/block/pmem.c  Ross Zwisler      2015-04-01  381  	struct pmem_device *pmem;
468ded03c07e0f drivers/nvdimm/pmem.c Dan Williams      2016-01-15  382  	struct request_queue *q;
6e0c90d691cd5d drivers/nvdimm/pmem.c Dan Williams      2017-06-26  383  	struct device *gendev;
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  384  	struct gendisk *disk;
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  385  	void *addr;
e8d5134833006a drivers/nvdimm/pmem.c Christoph Hellwig 2017-12-29  386  	int rc;
fefc1d97fa4b5e drivers/nvdimm/pmem.c Pankaj Gupta      2019-07-05  387  	unsigned long flags = 0UL;
e8d5134833006a drivers/nvdimm/pmem.c Christoph Hellwig 2017-12-29  388  
e8d5134833006a drivers/nvdimm/pmem.c Christoph Hellwig 2017-12-29  389  	pmem = devm_kzalloc(dev, sizeof(*pmem), GFP_KERNEL);
e8d5134833006a drivers/nvdimm/pmem.c Christoph Hellwig 2017-12-29  390  	if (!pmem)
e8d5134833006a drivers/nvdimm/pmem.c Christoph Hellwig 2017-12-29  391  		return -ENOMEM;
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  392  
8f4b01fcded2dc drivers/nvdimm/pmem.c Aneesh Kumar K.V  2019-10-31  393  	rc = devm_namespace_enable(dev, ndns, nd_info_block_reserve());
8f4b01fcded2dc drivers/nvdimm/pmem.c Aneesh Kumar K.V  2019-10-31  394  	if (rc)
8f4b01fcded2dc drivers/nvdimm/pmem.c Aneesh Kumar K.V  2019-10-31  395  		return rc;
8f4b01fcded2dc drivers/nvdimm/pmem.c Aneesh Kumar K.V  2019-10-31  396  
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  397  	/* while nsio_rw_bytes is active, parse a pfn info block if present */
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  398  	if (is_nd_pfn(dev)) {
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  399  		nd_pfn = to_nd_pfn(dev);
e8d5134833006a drivers/nvdimm/pmem.c Christoph Hellwig 2017-12-29  400  		rc = nvdimm_setup_pfn(nd_pfn, &pmem->pgmap);
e8d5134833006a drivers/nvdimm/pmem.c Christoph Hellwig 2017-12-29  401  		if (rc)
e8d5134833006a drivers/nvdimm/pmem.c Christoph Hellwig 2017-12-29  402  			return rc;
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  403  	}
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  404  
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  405  	/* we're attaching a block device, disable raw namespace access */
8f4b01fcded2dc drivers/nvdimm/pmem.c Aneesh Kumar K.V  2019-10-31  406  	devm_namespace_disable(dev, ndns);
9e853f2313e5eb drivers/block/pmem.c  Ross Zwisler      2015-04-01  407  
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  408  	dev_set_drvdata(dev, pmem);
9e853f2313e5eb drivers/block/pmem.c  Ross Zwisler      2015-04-01  409  	pmem->phys_addr = res->start;
9e853f2313e5eb drivers/block/pmem.c  Ross Zwisler      2015-04-01  410  	pmem->size = resource_size(res);
0b277961f4484f drivers/nvdimm/pmem.c Dan Williams      2017-06-09  411  	fua = nvdimm_has_flush(nd_region);
0b277961f4484f drivers/nvdimm/pmem.c Dan Williams      2017-06-09  412  	if (!IS_ENABLED(CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE) || fua < 0) {
61031952f4c89d drivers/nvdimm/pmem.c Ross Zwisler      2015-06-25  413  		dev_warn(dev, "unable to guarantee persistence of writes\n");
0b277961f4484f drivers/nvdimm/pmem.c Dan Williams      2017-06-09  414  		fua = 0;
0b277961f4484f drivers/nvdimm/pmem.c Dan Williams      2017-06-09  415  	}
9e853f2313e5eb drivers/block/pmem.c  Ross Zwisler      2015-04-01  416  
947df02d255a6a drivers/nvdimm/pmem.c Dan Williams      2016-03-21  417  	if (!devm_request_mem_region(dev, res->start, resource_size(res),
450c6633e874c4 drivers/nvdimm/pmem.c Dan Williams      2016-11-28  418  				dev_name(&ndns->dev))) {
947df02d255a6a drivers/nvdimm/pmem.c Dan Williams      2016-03-21  419  		dev_warn(dev, "could not reserve region %pR\n", res);
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  420  		return -EBUSY;
9e853f2313e5eb drivers/block/pmem.c  Ross Zwisler      2015-04-01  421  	}
9e853f2313e5eb drivers/block/pmem.c  Ross Zwisler      2015-04-01  422  
87eb73b2ca7c1b drivers/nvdimm/pmem.c Christoph Hellwig 2021-05-21  423  	disk = blk_alloc_disk(nid);
87eb73b2ca7c1b drivers/nvdimm/pmem.c Christoph Hellwig 2021-05-21  424  	if (!disk)
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  425  		return -ENOMEM;
87eb73b2ca7c1b drivers/nvdimm/pmem.c Christoph Hellwig 2021-05-21  426  	q = disk->queue;
468ded03c07e0f drivers/nvdimm/pmem.c Dan Williams      2016-01-15  427  
87eb73b2ca7c1b drivers/nvdimm/pmem.c Christoph Hellwig 2021-05-21  428  	pmem->disk = disk;
a624eb520390ce drivers/nvdimm/pmem.c Dan Williams      2021-06-07  429  	pmem->pgmap.owner = pmem;
34c0fd540e79fb drivers/nvdimm/pmem.c Dan Williams      2016-01-15  430  	pmem->pfn_flags = PFN_DEV;
e8d5134833006a drivers/nvdimm/pmem.c Christoph Hellwig 2017-12-29  431  	pmem->pgmap.ref = &q->q_usage_counter;
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  432  	if (is_nd_pfn(dev)) {
f6a55e1a3fe6b3 drivers/nvdimm/pmem.c Christoph Hellwig 2019-06-26  433  		pmem->pgmap.type = MEMORY_DEVICE_FS_DAX;
f6a55e1a3fe6b3 drivers/nvdimm/pmem.c Christoph Hellwig 2019-06-26  434  		pmem->pgmap.ops = &fsdax_pagemap_ops;
e8d5134833006a drivers/nvdimm/pmem.c Christoph Hellwig 2017-12-29  435  		addr = devm_memremap_pages(dev, &pmem->pgmap);
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  436  		pfn_sb = nd_pfn->pfn_sb;
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  437  		pmem->data_offset = le64_to_cpu(pfn_sb->dataoff);
e8d5134833006a drivers/nvdimm/pmem.c Christoph Hellwig 2017-12-29  438  		pmem->pfn_pad = resource_size(res) -
a4574f63edc6f7 drivers/nvdimm/pmem.c Dan Williams      2020-10-13  439  			range_len(&pmem->pgmap.range);
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  440  		pmem->pfn_flags |= PFN_MAP;
a4574f63edc6f7 drivers/nvdimm/pmem.c Dan Williams      2020-10-13  441  		bb_range = pmem->pgmap.range;
a4574f63edc6f7 drivers/nvdimm/pmem.c Dan Williams      2020-10-13  442  		bb_range.start += pmem->data_offset;
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  443  	} else if (pmem_should_map_pages(dev)) {
a4574f63edc6f7 drivers/nvdimm/pmem.c Dan Williams      2020-10-13  444  		pmem->pgmap.range.start = res->start;
a4574f63edc6f7 drivers/nvdimm/pmem.c Dan Williams      2020-10-13  445  		pmem->pgmap.range.end = res->end;
b7b3c01b191596 drivers/nvdimm/pmem.c Dan Williams      2020-10-13  446  		pmem->pgmap.nr_range = 1;
f6a55e1a3fe6b3 drivers/nvdimm/pmem.c Christoph Hellwig 2019-06-26  447  		pmem->pgmap.type = MEMORY_DEVICE_FS_DAX;
f6a55e1a3fe6b3 drivers/nvdimm/pmem.c Christoph Hellwig 2019-06-26  448  		pmem->pgmap.ops = &fsdax_pagemap_ops;
e8d5134833006a drivers/nvdimm/pmem.c Christoph Hellwig 2017-12-29  449  		addr = devm_memremap_pages(dev, &pmem->pgmap);
34c0fd540e79fb drivers/nvdimm/pmem.c Dan Williams      2016-01-15  450  		pmem->pfn_flags |= PFN_MAP;
a4574f63edc6f7 drivers/nvdimm/pmem.c Dan Williams      2020-10-13  451  		bb_range = pmem->pgmap.range;
91ed7ac444ef74 drivers/nvdimm/pmem.c Dan Williams      2018-10-04  452  	} else {
50f44ee7248ad2 drivers/nvdimm/pmem.c Dan Williams      2019-06-13  453  		if (devm_add_action_or_reset(dev, pmem_release_queue,
d8668bb0451c3c drivers/nvdimm/pmem.c Christoph Hellwig 2019-06-26  454  					&pmem->pgmap))
50f44ee7248ad2 drivers/nvdimm/pmem.c Dan Williams      2019-06-13  455  			return -ENOMEM;
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  456  		addr = devm_memremap(dev, pmem->phys_addr,
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  457  				pmem->size, ARCH_MEMREMAP_PMEM);
a4574f63edc6f7 drivers/nvdimm/pmem.c Dan Williams      2020-10-13  458  		bb_range.start =  res->start;
a4574f63edc6f7 drivers/nvdimm/pmem.c Dan Williams      2020-10-13  459  		bb_range.end = res->end;
91ed7ac444ef74 drivers/nvdimm/pmem.c Dan Williams      2018-10-04  460  	}
b36f47617f6ce7 drivers/nvdimm/pmem.c Dan Williams      2015-09-15  461  
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  462  	if (IS_ERR(addr))
200c79da824c97 drivers/nvdimm/pmem.c Dan Williams      2016-03-22  463  		return PTR_ERR(addr);
7a9eb206663177 drivers/nvdimm/pmem.c Dan Williams      2016-06-03  464  	pmem->virt_addr = addr;
9e853f2313e5eb drivers/block/pmem.c  Ross Zwisler      2015-04-01  465  
ce7f11a230d5b7 drivers/nvdimm/pmem.c Ross Zwisler      2018-06-06  466  	blk_queue_write_cache(q, true, fua);
5a92289f41311a drivers/nvdimm/pmem.c Dan Williams      2016-03-21  467  	blk_queue_physical_block_size(q, PAGE_SIZE);
f979b13c3cc515 drivers/nvdimm/pmem.c Dan Williams      2017-06-04  468  	blk_queue_logical_block_size(q, pmem_sector_size(ndns));
5a92289f41311a drivers/nvdimm/pmem.c Dan Williams      2016-03-21  469  	blk_queue_max_hw_sectors(q, UINT_MAX);
8b904b5b6b58b9 drivers/nvdimm/pmem.c Bart Van Assche   2018-03-07  470  	blk_queue_flag_set(QUEUE_FLAG_NONROT, q);
4557641b4c7046 drivers/nvdimm/pmem.c Ross Zwisler      2018-06-26  471  	if (pmem->pfn_flags & PFN_MAP)
8b904b5b6b58b9 drivers/nvdimm/pmem.c Bart Van Assche   2018-03-07  472  		blk_queue_flag_set(QUEUE_FLAG_DAX, q);
9e853f2313e5eb drivers/block/pmem.c  Ross Zwisler      2015-04-01  473  
9e853f2313e5eb drivers/block/pmem.c  Ross Zwisler      2015-04-01  474  	disk->fops		= &pmem_fops;
6ec26b8b2d70b4 drivers/nvdimm/pmem.c Christoph Hellwig 2020-05-08  475  	disk->private_data	= pmem;
5212e11fde4d40 drivers/nvdimm/pmem.c Vishal Verma      2015-06-25  476  	nvdimm_namespace_disk_name(ndns, disk->disk_name);
cfe30b872058f2 drivers/nvdimm/pmem.c Dan Williams      2016-03-03  477  	set_capacity(disk, (pmem->size - pmem->pfn_pad - pmem->data_offset)
cfe30b872058f2 drivers/nvdimm/pmem.c Dan Williams      2016-03-03  478  			/ 512);
b95f5f4391fad6 drivers/nvdimm/pmem.c Dan Williams      2016-01-04  479  	if (devm_init_badblocks(dev, &pmem->bb))
b95f5f4391fad6 drivers/nvdimm/pmem.c Dan Williams      2016-01-04  480  		return -ENOMEM;
a4574f63edc6f7 drivers/nvdimm/pmem.c Dan Williams      2020-10-13  481  	nvdimm_badblocks_populate(nd_region, &pmem->bb, &bb_range);
57f7f317abdd07 drivers/nvdimm/pmem.c Dan Williams      2016-01-06  482  	disk->bb = &pmem->bb;
f02716db951c5e drivers/nvdimm/pmem.c Dan Williams      2016-06-15  483  
fefc1d97fa4b5e drivers/nvdimm/pmem.c Pankaj Gupta      2019-07-05  484  	if (is_nvdimm_sync(nd_region))
fefc1d97fa4b5e drivers/nvdimm/pmem.c Pankaj Gupta      2019-07-05  485  		flags = DAXDEV_F_SYNC;
fefc1d97fa4b5e drivers/nvdimm/pmem.c Pankaj Gupta      2019-07-05  486  	dax_dev = alloc_dax(pmem, disk->disk_name, &pmem_dax_ops, flags);
4e4ced93794acb drivers/nvdimm/pmem.c Vivek Goyal       2020-04-01  487  	if (IS_ERR(dax_dev)) {
4e4ced93794acb drivers/nvdimm/pmem.c Vivek Goyal       2020-04-01  488  		return PTR_ERR(dax_dev);
c1d6e828a35df5 drivers/nvdimm/pmem.c Dan Williams      2017-01-24  489  	}
ce7f11a230d5b7 drivers/nvdimm/pmem.c Ross Zwisler      2018-06-06  490  	dax_write_cache(dax_dev, nvdimm_has_cache(nd_region));
c1d6e828a35df5 drivers/nvdimm/pmem.c Dan Williams      2017-01-24  491  	pmem->dax_dev = dax_dev;
6e0c90d691cd5d drivers/nvdimm/pmem.c Dan Williams      2017-06-26  492  	gendev = disk_to_dev(disk);
6e0c90d691cd5d drivers/nvdimm/pmem.c Dan Williams      2017-06-26  493  	gendev->groups = pmem_attribute_groups;
6e0c90d691cd5d drivers/nvdimm/pmem.c Dan Williams      2017-06-26  494  
fef912bf860e8e drivers/nvdimm/pmem.c Hannes Reinecke   2018-09-28 @495  	device_add_disk(dev, disk, NULL);
c1d6e828a35df5 drivers/nvdimm/pmem.c Dan Williams      2017-01-24  496  	if (devm_add_action_or_reset(dev, pmem_release_disk, pmem))
f02716db951c5e drivers/nvdimm/pmem.c Dan Williams      2016-06-15  497  		return -ENOMEM;
f02716db951c5e drivers/nvdimm/pmem.c Dan Williams      2016-06-15  498  
32f61d67570db0 drivers/nvdimm/pmem.c Christoph Hellwig 2020-09-01  499  	nvdimm_check_and_set_ro(disk);
9e853f2313e5eb drivers/block/pmem.c  Ross Zwisler      2015-04-01  500  
975750a98c2676 drivers/nvdimm/pmem.c Toshi Kani        2017-06-12  501  	pmem->bb_state = sysfs_get_dirent(disk_to_dev(disk)->kobj.sd,
975750a98c2676 drivers/nvdimm/pmem.c Toshi Kani        2017-06-12  502  					  "badblocks");
6aa734a2f38e2e drivers/nvdimm/pmem.c Dan Williams      2017-06-30  503  	if (!pmem->bb_state)
6aa734a2f38e2e drivers/nvdimm/pmem.c Dan Williams      2017-06-30  504  		dev_warn(dev, "'badblocks' notification disabled\n");
975750a98c2676 drivers/nvdimm/pmem.c Toshi Kani        2017-06-12  505  
8c2f7e8658df1d drivers/nvdimm/pmem.c Dan Williams      2015-06-25  506  	return 0;
8c2f7e8658df1d drivers/nvdimm/pmem.c Dan Williams      2015-06-25  507  }
9e853f2313e5eb drivers/block/pmem.c  Ross Zwisler      2015-04-01  508  

:::::: The code at line 495 was first introduced by commit
:::::: fef912bf860e8e7e48a2bfb978a356bba743a8b7 block: genhd: add 'groups' argument to device_add_disk

:::::: TO: Hannes Reinecke <hare@suse.de>
:::::: CC: Jens Axboe <axboe@kernel.dk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108172254.vZRMNx3g-lkp%40intel.com.

--x+6KMIRAuhnl3hBn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--x+6KMIRAuhnl3hBn--
