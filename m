Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQWPXH6QKGQE4KDUVKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id E26492B1975
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 12:02:28 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id b34sf2522951pgb.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 03:02:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605265347; cv=pass;
        d=google.com; s=arc-20160816;
        b=gatIrILlMicO/fC7nckVni1+wIGNYCzzppL90gbGCBSgFyyEmj7HiUcVsjZphQzWMb
         ejiXkoVJpcxsJ/3PHSzfwYnmYOpeuHXxLxMJPgeCP7Zy1D9wc72zwtnYy7VcVODXfTmf
         yErK5PGfVLs5l5flVjHRGLKPbevv47jK3Qddk4nAh+Sk28s9C2rbB3i6mJkqGhdhOtvb
         aryXbcI/GkT7vZFquQ3XQF2dRYszNrIokirgLeNGEJioAHBDrs1CnqTB14B4i6XtGIXY
         wbMEw2BKXoekMonshIhkLU8+/0BvcHHI/3gKJZwU6bNYcMlsNAGcxPupFf+h8KKj9/9q
         ZgWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=LooXrgQ1BSM/UflWLpiv0O9S7dVRZ+zqyCE01Ri3ug8=;
        b=Q//25akwALsb8fK1MinpV/kjoY8+kER91o7jTT4XtL36fG4FTtmiMl2mT7KUhuSTdH
         Sze/ItEQ9c3+qDeIF8BT1AhKXjS0A4YX0Q4vpQow2smGSE/HbvxfTkjWv7msqX44EB7U
         utpTmFtmphcGTSVq20Y7tCRWSW+lfI49NPGN1OQqq0ZZfPNK4bI27YwmLTKs0Hr+w+9L
         FtASu9ELKzQvE0SddvlE8wXhN3jNiaNj+adPEgQFCnBuiuIcm+a2GW+9/zyR95gyu9qx
         7dDveh0jXVg88gb9etPjje82LYj9K+GSnrEEN6fdNUCQZdAEn1ellzyNwCwhVZNGCs42
         M4jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LooXrgQ1BSM/UflWLpiv0O9S7dVRZ+zqyCE01Ri3ug8=;
        b=W9JlD0oyAdRYsLSsEh5e++yhHEgAyOy4PPlZYz0/km+o78JpR+Bpq7yDRYBiCVJd0F
         mcWeoygcSWKS607PZQTdlmoYOO6hSx0XtQU0gJ3KxkOschLSu/SGGHFovDtxoFsojzFk
         0U+clrximiZWppK1d2LGjxlVkV7EbKAyaGK1iDJpRIzPwgg0dmK9+AtEtTqbbj305ZgN
         TP4X7jb82Kk68gSjd0XDn0eiwDWO7JqJJUZV2IWtidusEyelm2EZvZPplE2k6cBQ6vHQ
         3gvXJK2OgYoFh4a9KME2eVuqPOCyh0UBlspvZyIlgnmyqyylRTGYo+u0kqpnwi6Gm6XR
         zlNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LooXrgQ1BSM/UflWLpiv0O9S7dVRZ+zqyCE01Ri3ug8=;
        b=snc2u5bFz0m4aH/s+0zqSZOulpBI0C+2tjuD2xhjtA+snEvVS4oqkiDPWD/x/JX8VT
         HbKftHtrYau6sW9n7GpNLY5fXlbwpu/fFNz46rYJEhtARj2lFOdD/EWDtPrFGmSEEH4B
         EW/6BoGGeISmi2T96mRn84d+bU5IcDx6Buc4Mu02Q5IwZ6aWcnag9hloVn4R+hIeuEZ4
         i7e/aUsNExbiZeN3yelEAPDOOuyVE9Pzn9JRRCxmGaypq1sJmmed2RogogzGQ28T0APU
         ZAVvragwLJLsWPOIMaM9Aqp6gEsx/eXENKqhY86TWTjyWqUDVZWSu/+mAU9RIJ2fhWZi
         1ncA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GaJG3CReerVyTU1LQLHeXaRF4mUOg46+ELiMk2PEpmqnFEf1H
	zGS/GjmLkA8JpVUOup5lCI4=
X-Google-Smtp-Source: ABdhPJw8huw3PmvHEIBsV7c+CyjIwx1ZAZ3/EnivBjfgwdMfX8vE7TDqQUoe10kfHTEt2oud5irQww==
X-Received: by 2002:a17:90a:d918:: with SMTP id c24mr2315742pjv.71.1605265347109;
        Fri, 13 Nov 2020 03:02:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd46:: with SMTP id b6ls2951475plx.10.gmail; Fri, 13
 Nov 2020 03:02:26 -0800 (PST)
X-Received: by 2002:a17:90a:b97:: with SMTP id 23mr2468354pjr.52.1605265346394;
        Fri, 13 Nov 2020 03:02:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605265346; cv=none;
        d=google.com; s=arc-20160816;
        b=GS+T7nQg6qJYxmnO58rEQPNzHg8VuJ+DFtLo8M75RGWw23Sk0nG8kEXvq4LjEbCof/
         QOef8BGzaAWYRunfeWJLmKdYAHwJ6d/RMA4S8UHMPckQzPT2GC33Xi60FfwjjtHpaWd6
         2vJz6krI9wxLw7/YNT/RU0aUzEjLofnAKvI6HwaL6pqdWsqHtRrsvyG3jvDNZvsjftXS
         MbqBE+qaIu5R6LXFI/S8r5Sftv6kBksmeb1fQm93sGolgKIKh3XZxqmUkzbtAawBS2vS
         mjdaR06q2ajDXeJe6o/P9cyjKS3NT3KssFvydw3J8SvM4n3fxgMnuD7EbnMOknkrrxcD
         kFmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=jL3XqyrhQrb9JT3DdgLs2/qNnLT0tCa5wM9DZydEhpk=;
        b=iiBNxh7apxfel764e6PumaUKD5MOmDRpkrGO2XbhjgiPZxDxqGVCymS6NdIh8tzMGT
         1zu8TkgETuCzVBun73+0udwD4JMA4xVdsccto+sE7TGQjWgLGMjicivq0dcEhlLhPmp7
         CNqVQnzSyfGZgMsyVZEZ+X3/0d5tTPTDGdAhTSzB1c90E9aUS8KtF0yLJ04NzQmtvxmv
         z4IO9FTiWDhf/PXfuEZHF2O5noNIrCD017HuxKv5YivqTVwDHxH8q0vutCFzCpgO3z8h
         12Xs/y90N3CtHhJ/HL+wwsS+aQ2JOqTNBaWQLhr+50W32zAhyi4Lqm/9m7XoK5YkJNrF
         +p8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id d2si625031pfr.4.2020.11.13.03.02.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 03:02:26 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: 3d+vKVPq5sz2Ca0AMuv89EQGZmv1wKoQatVPbxmdce5O6KwRJmNhhqVo6QildAt1ojubrZTcUu
 wzdL5m7HZf+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="234615636"
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; 
   d="gz'50?scan'50,208,50";a="234615636"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2020 03:02:25 -0800
IronPort-SDR: hxFV54uWfnaY25Jb/gXkSa041QavhzsrYRDGcPbCdFuFgwwjBbL54gza/VWlaU9YGtLrI0AYVy
 OQl7iTiXw/rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; 
   d="gz'50?scan'50,208,50";a="366686270"
Received: from lkp-server02.sh.intel.com (HELO 697932c29306) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 13 Nov 2020 03:02:23 -0800
Received: from kbuild by 697932c29306 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kdWqV-0000Eu-44; Fri, 13 Nov 2020 11:02:23 +0000
Date: Fri, 13 Nov 2020 19:01:39 +0800
From: kernel test robot <lkp@intel.com>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Jakub Kicinski <kuba@kernel.org>
Subject: [netdev-net-next:master 181/184]
 drivers/vdpa/ifcvf/ifcvf_main.c:420:31: warning: shift count >= width of
 type
Message-ID: <202011131936.S0GbsMmN-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5mCyUwZo2JvN/JJP"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--5mCyUwZo2JvN/JJP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git master
head:   e1d9d7b91302593d1951fcb12feddda6fb58a3c0
commit: 85ce50d337d10a6fd328fa70b0a15543bf5c0f64 [181/184] net: kcov: don't select SKB_EXTENSIONS when there is no NET
config: arm64-randconfig-r032-20201113 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9e0c35655b6e8186baef8840b26ba4090503b554)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=85ce50d337d10a6fd328fa70b0a15543bf5c0f64
        git remote add netdev-net-next https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git
        git fetch --no-tags netdev-net-next master
        git checkout 85ce50d337d10a6fd328fa70b0a15543bf5c0f64
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/vdpa/ifcvf/ifcvf_main.c:15:
   In file included from drivers/vdpa/ifcvf/ifcvf_base.h:17:
   In file included from include/uapi/linux/virtio_net.h:32:
   In file included from include/linux/if_ether.h:19:
   include/linux/skbuff.h:4622:26: error: implicit declaration of function 'skb_ext_add' [-Werror,-Wimplicit-function-declaration]
                   u64 *kcov_handle_ptr = skb_ext_add(skb, SKB_EXT_KCOV_HANDLE);
                                          ^
   include/linux/skbuff.h:4622:43: error: use of undeclared identifier 'SKB_EXT_KCOV_HANDLE'
                   u64 *kcov_handle_ptr = skb_ext_add(skb, SKB_EXT_KCOV_HANDLE);
                                                           ^
   include/linux/skbuff.h:4631:21: error: implicit declaration of function 'skb_ext_find' [-Werror,-Wimplicit-function-declaration]
           u64 *kcov_handle = skb_ext_find(skb, SKB_EXT_KCOV_HANDLE);
                              ^
   include/linux/skbuff.h:4631:39: error: use of undeclared identifier 'SKB_EXT_KCOV_HANDLE'
           u64 *kcov_handle = skb_ext_find(skb, SKB_EXT_KCOV_HANDLE);
                                                ^
>> drivers/vdpa/ifcvf/ifcvf_main.c:420:31: warning: shift count >= width of type [-Wshift-count-overflow]
           ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(64));
                                        ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   drivers/vdpa/ifcvf/ifcvf_main.c:426:42: warning: shift count >= width of type [-Wshift-count-overflow]
           ret = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
                                                   ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   2 warnings and 4 errors generated.

vim +420 drivers/vdpa/ifcvf/ifcvf_main.c

5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  399  
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  400  static int ifcvf_probe(struct pci_dev *pdev, const struct pci_device_id *id)
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  401  {
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  402  	struct device *dev = &pdev->dev;
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  403  	struct ifcvf_adapter *adapter;
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  404  	struct ifcvf_hw *vf;
3597a2fba672cfd drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2020-07-31  405  	int ret, i;
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  406  
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  407  	ret = pcim_enable_device(pdev);
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  408  	if (ret) {
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  409  		IFCVF_ERR(pdev, "Failed to enable device\n");
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  410  		return ret;
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  411  	}
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  412  
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  413  	ret = pcim_iomap_regions(pdev, BIT(0) | BIT(2) | BIT(4),
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  414  				 IFCVF_DRIVER_NAME);
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  415  	if (ret) {
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  416  		IFCVF_ERR(pdev, "Failed to request MMIO region\n");
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  417  		return ret;
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  418  	}
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  419  
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26 @420  	ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(64));
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  421  	if (ret) {
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  422  		IFCVF_ERR(pdev, "No usable DMA confiugration\n");
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  423  		return ret;
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  424  	}
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  425  
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  426  	ret = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  427  	if (ret) {
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  428  		IFCVF_ERR(pdev,
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  429  			  "No usable coherent DMA confiugration\n");
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  430  		return ret;
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  431  	}
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  432  
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  433  	ret = devm_add_action_or_reset(dev, ifcvf_free_irq_vectors, pdev);
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  434  	if (ret) {
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  435  		IFCVF_ERR(pdev,
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  436  			  "Failed for adding devres for freeing irq vectors\n");
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  437  		return ret;
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  438  	}
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  439  
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  440  	adapter = vdpa_alloc_device(struct ifcvf_adapter, vdpa,
a9974489b61c09c drivers/vdpa/ifcvf/ifcvf_main.c        Max Gurtovoy 2020-08-04  441  				    dev, &ifc_vdpa_ops,
a9974489b61c09c drivers/vdpa/ifcvf/ifcvf_main.c        Max Gurtovoy 2020-08-04  442  				    IFCVF_MAX_QUEUE_PAIRS * 2);
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  443  	if (adapter == NULL) {
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  444  		IFCVF_ERR(pdev, "Failed to allocate vDPA structure");
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  445  		return -ENOMEM;
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  446  	}
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  447  
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  448  	pci_set_master(pdev);
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  449  	pci_set_drvdata(pdev, adapter);
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  450  
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  451  	vf = &adapter->vf;
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  452  	vf->base = pcim_iomap_table(pdev);
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  453  
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  454  	adapter->pdev = pdev;
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  455  	adapter->vdpa.dma_dev = &pdev->dev;
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  456  
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  457  	ret = ifcvf_init_hw(vf, pdev);
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  458  	if (ret) {
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  459  		IFCVF_ERR(pdev, "Failed to init IFCVF hw\n");
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  460  		goto err;
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  461  	}
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  462  
3597a2fba672cfd drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2020-07-31  463  	for (i = 0; i < IFCVF_MAX_QUEUE_PAIRS * 2; i++)
3597a2fba672cfd drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2020-07-31  464  		vf->vring[i].irq = -EINVAL;
3597a2fba672cfd drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2020-07-31  465  
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  466  	ret = vdpa_register_device(&adapter->vdpa);
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  467  	if (ret) {
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  468  		IFCVF_ERR(pdev, "Failed to register ifcvf to vdpa bus");
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  469  		goto err;
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  470  	}
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  471  
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  472  	return 0;
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  473  
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  474  err:
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  475  	put_device(&adapter->vdpa.dev);
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  476  	return ret;
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  477  }
5a2414bc454e89e drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  478  

:::::: The code at line 420 was first introduced by commit
:::::: 5a2414bc454e89e0515b47500734a65aa40cf9fe virtio: Intel IFC VF driver for VDPA

:::::: TO: Zhu Lingshan <lingshan.zhu@intel.com>
:::::: CC: Michael S. Tsirkin <mst@redhat.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011131936.S0GbsMmN-lkp%40intel.com.

--5mCyUwZo2JvN/JJP
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--5mCyUwZo2JvN/JJP--
