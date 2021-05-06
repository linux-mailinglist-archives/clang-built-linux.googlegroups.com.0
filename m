Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSFB2CCAMGQEWJA45ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FA33757F2
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 17:52:42 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id i141-20020a379f930000b02902e94f6d938dsf3765328qke.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 08:52:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620316361; cv=pass;
        d=google.com; s=arc-20160816;
        b=zOc9jHZ4pMtqBEGrulJRxMv9Nx6Jnxkc7kSC3s0SjalD9zGs8fSM9Pslv2N2FEcyhn
         NpqwLOlXJuvRmyOSSpTbWoK0FdyDzwlQioF/rjrnb22FPr5rMFL904KU5EyJL1ovCK+s
         8pAzRHnE7ok6BsRAFOot2ou+OxL9huMc+JJaipHFR2lMa88ltGiARlcesK/pQEebIvJH
         ev/klZ4WWCkDyXYSA2nCv1AWybwxaTYXKcGgwfhXwz7N1jOtJRPOqogTIaqSR/3/O3jO
         5GadhhwXA8ZIqK+qRR2iHiiQaBSLHRkezz85D2kmLBFPP878caU1lnbJHVNqlLJt0070
         CuBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=6oO6kQu+1d/oHP+SAO6MoDHSwVVCpXm22dtKnBF5DXw=;
        b=ZuriLWgep0Uj2+CvRFCgyTvqfWUyuI2+Q1safBU3jzJHZ+N3RCzvXmrTP0ly8ieKvY
         W+GOcBQmprgM4zDmBvvipZQ/HRwT0QyLxx8II6L0zd0ojqVaMF0nqrI21qguWCox7nui
         lGnjfUGSBVqdCXYa0RP7TYl0zCMTAE3coeYUEk1b111UXi0tegEnNiAoetRbtD8kZRgz
         xrWFEBpwm4xPk/MOR9cBiZJT+rabemVrDUB51axI1VHntIPGSequVV1dB4Uz6kcSM6uE
         KP7s1iS/kWX6oRr1M3FZ0mj4X8K1lZlEZZNi7J4NVaPA+3m9yk8wTR3xevSDUw1ssCLg
         me4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6oO6kQu+1d/oHP+SAO6MoDHSwVVCpXm22dtKnBF5DXw=;
        b=eJYeBPbVrhi+irF5SW8fjFrV21WEgz8FG1kaDYn+vnggvu4THoJLGxxbo1BdHtBeO6
         3NNeFUZ0d6Jac8GHgapVhuIFg72LDcJYrGGWYr2i/tA08LvoMjZlsRwKi6q0U4WsT4gj
         093uBlu0kV02m3DK+Q4W6ks/moLOXHI38qX8Z5uVJuloBtEXzry8Ld6cjvpOl9L71EbD
         XDfOemgi2Crpis05x2IJTT6d+gmSRswdl0Mn1aM/gtKLfA895qpKVidPp4pYJMocdKg2
         /fZS/fC4Yq8YFTjp3i83Ur2xQhU5qAq60ttqVeTIpwjRbxg5w+H+RCDNBYBbBVpijiy1
         AKoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6oO6kQu+1d/oHP+SAO6MoDHSwVVCpXm22dtKnBF5DXw=;
        b=OAvolRR17i6Vm8pKBksZCcSdcD0Iy3kAnORPSPxqbq+/JB1KGMUTLGWOolErlhyf89
         UHIto+TUapLSzChvpeFexfcXAw/kL8n37rlj+oq16AU8iSfKKW2fO9L82DCjaT01mfwc
         aZj1RGfM4hVS1dX6T68LLLuJlX755LKCkTNzGeqhy/hZs/1bk83zEwMt+gXegmHU+daG
         TTKdtNLGV1WDHZXlEd4PaXJBeABcYFFCCfys2CvVkIyZxoDjAng26XPW32w1s5GzziQ8
         O0FNA283ZjNjpSLTx6tZaLS8Ek5ppD+0hdp4QPG4nVUdSk5DiZ6lZUschxSzX7l0kdWq
         eBFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533WTAqs+K7nmNYg9tqt2t1/XdXHWBSb9lIQdf+RDlWf2jFoTavC
	QBxMO9a3OA+jd4Zba43J3zA=
X-Google-Smtp-Source: ABdhPJyTkN8jLeULgZLLY2NFrgrjReFWV6WPB0gIjaObtcywyOkaf5pmxt66QVzoj5uUnP8iOHpiDw==
X-Received: by 2002:a37:9d58:: with SMTP id g85mr4667231qke.426.1620316360733;
        Thu, 06 May 2021 08:52:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7e8e:: with SMTP id w14ls1575064qtj.0.gmail; Thu, 06 May
 2021 08:52:40 -0700 (PDT)
X-Received: by 2002:ac8:7d89:: with SMTP id c9mr4722035qtd.171.1620316360122;
        Thu, 06 May 2021 08:52:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620316360; cv=none;
        d=google.com; s=arc-20160816;
        b=bviIhqSWoIgO91mxYRgRzUDN8n47OCm83N1SpYdEYZDbk4FOx/hKppvO2sEF8S1WqA
         KrVUA006psX6oEnW5UtSYGa7PuNCokW3hCzhgnDsZqFi21jouyincnZ9G1MgOf1ab5i+
         Xw8NttTz1rQnk8PZzUEdVx2yjFpmT9xyaQUzhWs54Lu7DKe1zI7bc/1KK3vEyGcVmOEB
         DcdrKg1F+WXSfYHC1mDcp8xFpQE0EOQF+fJFgXR7swdtBqRAOTebEAL9CZAA/yQU2+F2
         m2lXABqfJftshpApK17E6VGjZ4ZmXkzaqDwY2DoLVQcphh6VG/cKRh+5+LIiHnXho1rx
         6XDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=rp0QogtyEKfMki5beyNNap5k+epQL5HAoI7F1J7SdgM=;
        b=Yb0NZJkXwEdIAmwjLjjvZXkTvmxDtoJUMi7eO8QQAu5dzlKjxFQoH4Qpv3v4KdZB0S
         WZkKj2md/WVxHZsWA+yjnQQRwXz52/B633ER6MztpMVhBA6WiWG2THj59ZGWCER4cx42
         JP2+oqGoZdx4B66JRhhxcj1HWiyfxsL7PocaJ26z5lfOAgt+o7FvEqcgv6Fb7bUYI9Wg
         ngn7DHWhc6NBh+oZTnmquOZyKNfOE4yq4wFf2/VhxENyrtwYVNoQ6BpUgxECEQbSt9Wp
         7i+oUFPjB83RMeXAh90yFdYDlMTuihLu8FRlypDosXmp5ITnm5tOqHf31RPog4eIll8/
         9Rqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id y8si276699qti.5.2021.05.06.08.52.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 May 2021 08:52:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: jf1mdbSwTvS1zzgF+XmD6ofKsfMCktHLCHPzZzHSv773MAM+UTH+HcofNT/e/8dcy2YvkANNzo
 csJ6VBRm2oeA==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="178066385"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; 
   d="gz'50?scan'50,208,50";a="178066385"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 May 2021 08:52:36 -0700
IronPort-SDR: RttHJtbGeIGwFgOMHlTramJWqYwEtseTsCVakfhCpvNiWh7r12bbdHZm41/XzTh/jLYEnPHa9b
 UXAISnRmA5gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; 
   d="gz'50?scan'50,208,50";a="532633984"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 06 May 2021 08:52:34 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1legIj-000AkR-Ui; Thu, 06 May 2021 15:52:33 +0000
Date: Thu, 6 May 2021 23:51:51 +0800
From: kernel test robot <lkp@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Eric Auger <eric.auger@redhat.com>,
	Alex Williamson <alex.williamson@redhat.com>
Subject: [linux-stable-rc:linux-5.4.y 5600/6105]
 drivers/vfio/vfio_iommu_type1.c:366:22: error: implicit declaration of
 function 'pte_write'
Message-ID: <202105062336.5KCPcg2D-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="T4sUOijqQbZv57TR"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--T4sUOijqQbZv57TR
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Jason,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
head:   73e74400c797af9bc645d41cfd350b15e3e52d2c
commit: 3c57ea09365f4a6b32568b8ba6b98ae7d238cb0d [5600/6105] vfio: IOMMU_API should be selected
config: arm-randconfig-r014-20210506 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=3c57ea09365f4a6b32568b8ba6b98ae7d238cb0d
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-5.4.y
        git checkout 3c57ea09365f4a6b32568b8ba6b98ae7d238cb0d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/vfio/vfio_iommu_type1.c:366:22: error: implicit declaration of function 'pte_write' [-Werror,-Wimplicit-function-declaration]
           if (write_fault && !pte_write(*ptep))
                               ^
>> drivers/vfio/vfio_iommu_type1.c:369:10: error: implicit declaration of function 'pte_pfn' [-Werror,-Wimplicit-function-declaration]
                   *pfn = pte_pfn(*ptep);
                          ^
   drivers/vfio/vfio_iommu_type1.c:369:10: note: did you mean 'put_pfn'?
   drivers/vfio/vfio_iommu_type1.c:327:12: note: 'put_pfn' declared here
   static int put_pfn(unsigned long pfn, int prot)
              ^
>> drivers/vfio/vfio_iommu_type1.c:371:2: error: implicit declaration of function 'pte_unmap' [-Werror,-Wimplicit-function-declaration]
           pte_unmap_unlock(ptep, ptl);
           ^
   include/linux/mm.h:1988:2: note: expanded from macro 'pte_unmap_unlock'
           pte_unmap(pte);                                 \
           ^
   3 errors generated.


vim +/pte_write +366 drivers/vfio/vfio_iommu_type1.c

73fa0d10d077d9 Alex Williamson 2012-07-31  338  
270c35d0723a2f Ajay Kaher      2020-09-06  339  static int follow_fault_pfn(struct vm_area_struct *vma, struct mm_struct *mm,
270c35d0723a2f Ajay Kaher      2020-09-06  340  			    unsigned long vaddr, unsigned long *pfn,
270c35d0723a2f Ajay Kaher      2020-09-06  341  			    bool write_fault)
270c35d0723a2f Ajay Kaher      2020-09-06  342  {
e41bb745fd0fca Alex Williamson 2021-02-16  343  	pte_t *ptep;
e41bb745fd0fca Alex Williamson 2021-02-16  344  	spinlock_t *ptl;
270c35d0723a2f Ajay Kaher      2020-09-06  345  	int ret;
270c35d0723a2f Ajay Kaher      2020-09-06  346  
e41bb745fd0fca Alex Williamson 2021-02-16  347  	ret = follow_pte(vma->vm_mm, vaddr, &ptep, &ptl);
270c35d0723a2f Ajay Kaher      2020-09-06  348  	if (ret) {
270c35d0723a2f Ajay Kaher      2020-09-06  349  		bool unlocked = false;
270c35d0723a2f Ajay Kaher      2020-09-06  350  
270c35d0723a2f Ajay Kaher      2020-09-06  351  		ret = fixup_user_fault(NULL, mm, vaddr,
270c35d0723a2f Ajay Kaher      2020-09-06  352  				       FAULT_FLAG_REMOTE |
270c35d0723a2f Ajay Kaher      2020-09-06  353  				       (write_fault ?  FAULT_FLAG_WRITE : 0),
270c35d0723a2f Ajay Kaher      2020-09-06  354  				       &unlocked);
270c35d0723a2f Ajay Kaher      2020-09-06  355  		if (unlocked)
270c35d0723a2f Ajay Kaher      2020-09-06  356  			return -EAGAIN;
270c35d0723a2f Ajay Kaher      2020-09-06  357  
270c35d0723a2f Ajay Kaher      2020-09-06  358  		if (ret)
270c35d0723a2f Ajay Kaher      2020-09-06  359  			return ret;
270c35d0723a2f Ajay Kaher      2020-09-06  360  
e41bb745fd0fca Alex Williamson 2021-02-16  361  		ret = follow_pte(vma->vm_mm, vaddr, &ptep, &ptl);
e41bb745fd0fca Alex Williamson 2021-02-16  362  		if (ret)
e41bb745fd0fca Alex Williamson 2021-02-16  363  			return ret;
270c35d0723a2f Ajay Kaher      2020-09-06  364  	}
270c35d0723a2f Ajay Kaher      2020-09-06  365  
e41bb745fd0fca Alex Williamson 2021-02-16 @366  	if (write_fault && !pte_write(*ptep))
e41bb745fd0fca Alex Williamson 2021-02-16  367  		ret = -EFAULT;
e41bb745fd0fca Alex Williamson 2021-02-16  368  	else
e41bb745fd0fca Alex Williamson 2021-02-16 @369  		*pfn = pte_pfn(*ptep);
e41bb745fd0fca Alex Williamson 2021-02-16  370  
e41bb745fd0fca Alex Williamson 2021-02-16 @371  	pte_unmap_unlock(ptep, ptl);
270c35d0723a2f Ajay Kaher      2020-09-06  372  	return ret;
270c35d0723a2f Ajay Kaher      2020-09-06  373  }
270c35d0723a2f Ajay Kaher      2020-09-06  374  

:::::: The code at line 366 was first introduced by commit
:::::: e41bb745fd0fcaa1d37a7bd4da46230822ffe18f vfio/type1: Use follow_pte()

:::::: TO: Alex Williamson <alex.williamson@redhat.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105062336.5KCPcg2D-lkp%40intel.com.

--T4sUOijqQbZv57TR
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
+j/SLKSYgWwBAA==

--T4sUOijqQbZv57TR--
