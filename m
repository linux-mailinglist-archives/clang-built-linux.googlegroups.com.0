Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBA735SCQMGQEW3GKLZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id C243F39C6F1
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Jun 2021 11:01:58 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id p2-20020a5d98420000b029043b3600ac76sf7895745ios.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Jun 2021 02:01:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622883716; cv=pass;
        d=google.com; s=arc-20160816;
        b=fsnlnLFsqbMQH8cFZQtYkJGNKMRxTLsZc3Ydmwj44GmbzQA3ZrzcatCDOSYRxcBkKa
         +V+7r6ntQZ9vNEZJPFEH5CSIDROeMwd6l4kZRy/LYXdySnX0HV3M5JKrrc3wavPVcpRn
         667omOJfS3sq1XixYnf9nAgrzey5ZUdP5z3Mdi0uSflHOyQ77qZ0/ghgJpSEAQpKs7Ce
         baRvt51fC147Res9s1bbEqeThQkvb2evIrzJE4zIzPLBc4Zd4A+nBPVwfvMsxWFnnQ9F
         DsCebLrjN8LWj/O2JovKxZWMV93XK5RsXWJ5FK1E8Y3F4EmSe5+nLyilBH3r1JX21M3y
         BYjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=gRjB1TEd6nt2R1Btyuo2xU+8h6aoCBJ4MnijImlgnsg=;
        b=NA3CAkKZFRaUOf26+KI5Ikpa8RHJu5KJRhNVJnnUxEBdAByUsZHQFC4KisRKS49gSD
         3/A4geJzIYSsz9DEjpO1BxEXohiBw1gPsxOlZ8vqRTuM0RVLf+ePhVPlLL1HUw11uhg4
         BL+U77ZFsij1HCoKGSy97schIJ07FBbfnBSKJJNKJLL/xzTQJtB0yMvoc8G+Aso47Jp/
         XsxLgdtzLkKRaUx0D4n8VjnlYbymXcNpipQ4zBgYubQ9rKxbJgxy53COSSrvWM7OABCv
         rXmmr2IzT+P9i45ccAC2NhdhA5p4UeVUJKasv9mTM8zNRgvsMD+B8wSd5Xj1z+kifEo1
         fCAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gRjB1TEd6nt2R1Btyuo2xU+8h6aoCBJ4MnijImlgnsg=;
        b=UoahwToIE9eRRMnIxou9KO27rdhWGxViRTx4RM7d/4pTWbKa8jOhx5DGGWPWXabMSu
         lgE7jfttT0kblxMpkZB6e9kJ6EWsTS9CUPkDHm/1S51y4bQ0dktIScQ6tpuLVi6AVPNg
         w1lWP0xgmbEb3TjDZEu/XaYytI1DOWleely8/zkSv5ev/MYv2duu+D/XfLSR2wMXtDBf
         Tohi4GTbfriBVA/6Fvpunz/GC48JHoZkmg2uflPIlklTj5idclXLM4I2bbidb1OW/crc
         OY915woX5tP/H85JZZMLtnUQ4Q2P+2QGc4VYpfrucq+JudYp4xlETxlqo9o/TzRv62yE
         5OsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gRjB1TEd6nt2R1Btyuo2xU+8h6aoCBJ4MnijImlgnsg=;
        b=rMBazB9vIGWH7UxksZfbMlLlrPAQOV1TvmnyCqIsKwz6e1HWXFG/1fpD446JUvZrds
         2oaixzoKo7zVU1ni2b7zmpCezgeWySSX3HtIvdFI7vYQqI0+uxiS1vYrpOODBCS9TqXh
         ISVu1ItTta/+vbaYFegaZebm3M9GaWUi697vZKOn0TV2Mb+Z3+DjtbvipGdrhaAYyU0V
         nV3jTDWov8Lvq9dnorC7fgJlYQBV1UBmvjLxRaMInCxm21T+1oEn4QaiDlTS0PC9ISCx
         n1QLboey5ZXMqv1LMw8gto/73QgYXFe7DjQwxAlnpydEeV1VBprVL6/J6wKfvBtNhAVg
         2d7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53394JfUgdMSKMTn7OPHAwr3v/a6ZxrtvoZnCwiIVt+N1inP0FMu
	oFHTmDHlJRppVwwxafO5uDs=
X-Google-Smtp-Source: ABdhPJy/neHFigNnihXUn/HrlzDQEfpZHPUJ1K6TfYZteUHmX7wrVwJ2b4J6EHIcuY4WNqSOZIykkw==
X-Received: by 2002:a05:6e02:1c8e:: with SMTP id w14mr7731304ill.144.1622883716004;
        Sat, 05 Jun 2021 02:01:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c56b:: with SMTP id b11ls2452608ilj.4.gmail; Sat, 05 Jun
 2021 02:01:55 -0700 (PDT)
X-Received: by 2002:a92:d412:: with SMTP id q18mr7363371ilm.258.1622883715460;
        Sat, 05 Jun 2021 02:01:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622883715; cv=none;
        d=google.com; s=arc-20160816;
        b=Ny6+wOcc8DLrLBnBomlD6R68w1tuZMfqSBn+1JM8w3kTcfSxlzXJ8YUyJpPfs3LBVR
         2rYyBRMLokbYqcDUMoh/skPpty/f4YGEiATjCC32E7a5GP2j3rJVT2kYGpoPmClvquMM
         BdyXy3swHwxNrXI9bodWFOHPpMTNkVLs72RCi8LNClAMTkTNaN2QH8+lfipI3JT0uF6h
         D4WswMLoMc+BV4I94ZLax1WBaNnG6RGX6dJPytuRLGBB+v+Z6tMQSIvhlpAIFaXAbO/f
         R60pOW/Mg0YRoXyChT5nEFatJtE6IdUQPEj8irZxTTDeHcpz8hjeLvQopD1sCzqBdxnL
         FUEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=4+YNMFqVQwzJVAev96sDlMM5s4B8DJuYVEe5iaA7pw4=;
        b=ThPMMAnFvf494UwvbcsgijHM/BDsrfPvQhHDXwKI/8n3X7ceh/2DuH9ihqJXl/uug2
         7G/aeR39u1WDy0Y5mnO4Kjj1x4y+H1Pr5Kcr+5NUf49gxBalonE4FmRiowCT/fBasMRp
         6BwZ6AqQwIza3wEex088wDch6CW5e8CryiYoofUDvm+IZ3W7+/JXb959bSVXzyUG1n/r
         7QoggBjXunOILx6ePAhJC4qfYHrogWnxOjqvhh8HGJuAkKr9JzeTfurC+krlOXr3W7wI
         Yk50LJEbW90+lBa6bEL0w1Q4oeQsTQwVK7q6uMpfpJ8o772QJeGj8RrgzQJw5HSHHWfO
         ZrrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id h15si843166ili.5.2021.06.05.02.01.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Jun 2021 02:01:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: InvEA6qxNb4j6flKBC1cbWa/CjbsRqrgApW4Tk96yVzdn5A4QlQ7IO9L7fKqn4VzWUCGFrfe/h
 Yfsm6MkonvkA==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="204234878"
X-IronPort-AV: E=Sophos;i="5.83,250,1616482800"; 
   d="gz'50?scan'50,208,50";a="204234878"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jun 2021 02:01:54 -0700
IronPort-SDR: U75MWrOIqb/TBSW6K2KA1KJvQ9nOPEK5y/IYDNZ79/8yizytjfMiOi7+VzAKNJvsAvrkCDrr6B
 tU66lcFlvQSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,250,1616482800"; 
   d="gz'50?scan'50,208,50";a="468568613"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 05 Jun 2021 02:01:51 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lpSBj-0007LH-8m; Sat, 05 Jun 2021 09:01:51 +0000
Date: Sat, 5 Jun 2021 17:01:09 +0800
From: kernel test robot <lkp@intel.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: [linux-next:master 7367/7430]
 drivers/scsi/mpi3mr/mpi3mr_fw.c:3126:34: warning: shift count >= width of
 type
Message-ID: <202106051701.Gj190BNQ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="GvXjxJ+pjyke8COw"
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


--GvXjxJ+pjyke8COw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   ccc252d2e818f6a479441119ad453c3ce7c7c461
commit: 64ff646f76f5f1f9777dc5be87942980f44755e0 [7367/7430] Merge remote-tracking branch 'scsi-mkp/for-next'
config: riscv-randconfig-r036-20210605 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8ec9aa236e325fd4629cfeefac2919302e14d61a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=64ff646f76f5f1f9777dc5be87942980f44755e0
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 64ff646f76f5f1f9777dc5be87942980f44755e0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/scsi/mpi3mr/mpi3mr_fw.c:10:
   In file included from drivers/scsi/mpi3mr/mpi3mr.h:13:
   In file included from include/linux/blkdev.h:8:
   In file included from include/linux/genhd.h:19:
   In file included from include/linux/blk_types.h:10:
   In file included from include/linux/bvec.h:14:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/riscv/include/asm/pgtable.h:519:9: error: implicit declaration of function 'pfn_pmd' [-Werror,-Wimplicit-function-declaration]
           return pfn_pmd(page_to_pfn(page), prot);
                  ^
   arch/riscv/include/asm/pgtable.h:519:9: note: did you mean 'pfn_pgd'?
   arch/riscv/include/asm/pgtable.h:220:21: note: 'pfn_pgd' declared here
   static inline pgd_t pfn_pgd(unsigned long pfn, pgprot_t prot)
                       ^
   arch/riscv/include/asm/pgtable.h:519:17: error: implicit declaration of function 'page_to_section' [-Werror,-Wimplicit-function-declaration]
           return pfn_pmd(page_to_pfn(page), prot);
                          ^
   include/asm-generic/memory_model.h:81:21: note: expanded from macro 'page_to_pfn'
   #define page_to_pfn __page_to_pfn
                       ^
   include/asm-generic/memory_model.h:64:14: note: expanded from macro '__page_to_pfn'
           int __sec = page_to_section(__pg);                      \
                       ^
   arch/riscv/include/asm/pgtable.h:519:17: note: did you mean '__nr_to_section'?
   include/asm-generic/memory_model.h:81:21: note: expanded from macro 'page_to_pfn'
   #define page_to_pfn __page_to_pfn
                       ^
   include/asm-generic/memory_model.h:64:14: note: expanded from macro '__page_to_pfn'
           int __sec = page_to_section(__pg);                      \
                       ^
   include/linux/mmzone.h:1314:35: note: '__nr_to_section' declared here
   static inline struct mem_section *__nr_to_section(unsigned long nr)
                                     ^
   In file included from drivers/scsi/mpi3mr/mpi3mr_fw.c:10:
   In file included from drivers/scsi/mpi3mr/mpi3mr.h:13:
   In file included from include/linux/blkdev.h:8:
   In file included from include/linux/genhd.h:19:
   In file included from include/linux/blk_types.h:10:
   In file included from include/linux/bvec.h:14:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/riscv/include/asm/pgtable.h:519:9: error: returning 'int' from a function with incompatible result type 'pmd_t'
           return pfn_pmd(page_to_pfn(page), prot);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/scsi/mpi3mr/mpi3mr_fw.c:10:
   In file included from drivers/scsi/mpi3mr/mpi3mr.h:13:
   In file included from include/linux/blkdev.h:8:
   In file included from include/linux/genhd.h:19:
   In file included from include/linux/blk_types.h:10:
   In file included from include/linux/bvec.h:14:
   include/linux/mm.h:1552:29: error: static declaration of 'page_to_section' follows non-static declaration
   static inline unsigned long page_to_section(const struct page *page)
                               ^
   arch/riscv/include/asm/pgtable.h:519:17: note: previous implicit declaration is here
           return pfn_pmd(page_to_pfn(page), prot);
                          ^
   include/asm-generic/memory_model.h:81:21: note: expanded from macro 'page_to_pfn'
   #define page_to_pfn __page_to_pfn
                       ^
   include/asm-generic/memory_model.h:64:14: note: expanded from macro '__page_to_pfn'
           int __sec = page_to_section(__pg);                      \
                       ^
>> drivers/scsi/mpi3mr/mpi3mr_fw.c:3126:34: warning: shift count >= width of type [-Wshift-count-overflow]
               (sizeof(dma_addr_t) > 4)) ? DMA_BIT_MASK(64) : DMA_BIT_MASK(32));
                                           ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   1 warning and 4 errors generated.


vim +3126 drivers/scsi/mpi3mr/mpi3mr_fw.c

824a156633dfdb Kashyap Desai 2021-05-20  3109  
824a156633dfdb Kashyap Desai 2021-05-20  3110  /**
824a156633dfdb Kashyap Desai 2021-05-20  3111   * mpi3mr_setup_resources - Enable PCI resources
824a156633dfdb Kashyap Desai 2021-05-20  3112   * @mrioc: Adapter instance reference
824a156633dfdb Kashyap Desai 2021-05-20  3113   *
824a156633dfdb Kashyap Desai 2021-05-20  3114   * Enable PCI device memory, MSI-x registers and set DMA mask.
824a156633dfdb Kashyap Desai 2021-05-20  3115   *
824a156633dfdb Kashyap Desai 2021-05-20  3116   * Return: 0 on success and non-zero on failure.
824a156633dfdb Kashyap Desai 2021-05-20  3117   */
824a156633dfdb Kashyap Desai 2021-05-20  3118  int mpi3mr_setup_resources(struct mpi3mr_ioc *mrioc)
824a156633dfdb Kashyap Desai 2021-05-20  3119  {
824a156633dfdb Kashyap Desai 2021-05-20  3120  	struct pci_dev *pdev = mrioc->pdev;
824a156633dfdb Kashyap Desai 2021-05-20  3121  	u32 memap_sz = 0;
824a156633dfdb Kashyap Desai 2021-05-20  3122  	int i, retval = 0, capb = 0;
824a156633dfdb Kashyap Desai 2021-05-20  3123  	u16 message_control;
824a156633dfdb Kashyap Desai 2021-05-20  3124  	u64 dma_mask = mrioc->dma_mask ? mrioc->dma_mask :
824a156633dfdb Kashyap Desai 2021-05-20  3125  	    (((dma_get_required_mask(&pdev->dev) > DMA_BIT_MASK(32)) &&
824a156633dfdb Kashyap Desai 2021-05-20 @3126  	    (sizeof(dma_addr_t) > 4)) ? DMA_BIT_MASK(64) : DMA_BIT_MASK(32));
824a156633dfdb Kashyap Desai 2021-05-20  3127  
824a156633dfdb Kashyap Desai 2021-05-20  3128  	if (pci_enable_device_mem(pdev)) {
824a156633dfdb Kashyap Desai 2021-05-20  3129  		ioc_err(mrioc, "pci_enable_device_mem: failed\n");
824a156633dfdb Kashyap Desai 2021-05-20  3130  		retval = -ENODEV;
824a156633dfdb Kashyap Desai 2021-05-20  3131  		goto out_failed;
824a156633dfdb Kashyap Desai 2021-05-20  3132  	}
824a156633dfdb Kashyap Desai 2021-05-20  3133  
824a156633dfdb Kashyap Desai 2021-05-20  3134  	capb = pci_find_capability(pdev, PCI_CAP_ID_MSIX);
824a156633dfdb Kashyap Desai 2021-05-20  3135  	if (!capb) {
824a156633dfdb Kashyap Desai 2021-05-20  3136  		ioc_err(mrioc, "Unable to find MSI-X Capabilities\n");
824a156633dfdb Kashyap Desai 2021-05-20  3137  		retval = -ENODEV;
824a156633dfdb Kashyap Desai 2021-05-20  3138  		goto out_failed;
824a156633dfdb Kashyap Desai 2021-05-20  3139  	}
824a156633dfdb Kashyap Desai 2021-05-20  3140  	mrioc->bars = pci_select_bars(pdev, IORESOURCE_MEM);
824a156633dfdb Kashyap Desai 2021-05-20  3141  
824a156633dfdb Kashyap Desai 2021-05-20  3142  	if (pci_request_selected_regions(pdev, mrioc->bars,
824a156633dfdb Kashyap Desai 2021-05-20  3143  	    mrioc->driver_name)) {
824a156633dfdb Kashyap Desai 2021-05-20  3144  		ioc_err(mrioc, "pci_request_selected_regions: failed\n");
824a156633dfdb Kashyap Desai 2021-05-20  3145  		retval = -ENODEV;
824a156633dfdb Kashyap Desai 2021-05-20  3146  		goto out_failed;
824a156633dfdb Kashyap Desai 2021-05-20  3147  	}
824a156633dfdb Kashyap Desai 2021-05-20  3148  
824a156633dfdb Kashyap Desai 2021-05-20  3149  	for (i = 0; (i < DEVICE_COUNT_RESOURCE); i++) {
824a156633dfdb Kashyap Desai 2021-05-20  3150  		if (pci_resource_flags(pdev, i) & IORESOURCE_MEM) {
824a156633dfdb Kashyap Desai 2021-05-20  3151  			mrioc->sysif_regs_phys = pci_resource_start(pdev, i);
824a156633dfdb Kashyap Desai 2021-05-20  3152  			memap_sz = pci_resource_len(pdev, i);
824a156633dfdb Kashyap Desai 2021-05-20  3153  			mrioc->sysif_regs =
824a156633dfdb Kashyap Desai 2021-05-20  3154  			    ioremap(mrioc->sysif_regs_phys, memap_sz);
824a156633dfdb Kashyap Desai 2021-05-20  3155  			break;
824a156633dfdb Kashyap Desai 2021-05-20  3156  		}
824a156633dfdb Kashyap Desai 2021-05-20  3157  	}
824a156633dfdb Kashyap Desai 2021-05-20  3158  
824a156633dfdb Kashyap Desai 2021-05-20  3159  	pci_set_master(pdev);
824a156633dfdb Kashyap Desai 2021-05-20  3160  
824a156633dfdb Kashyap Desai 2021-05-20  3161  	retval = dma_set_mask_and_coherent(&pdev->dev, dma_mask);
824a156633dfdb Kashyap Desai 2021-05-20  3162  	if (retval) {
824a156633dfdb Kashyap Desai 2021-05-20  3163  		if (dma_mask != DMA_BIT_MASK(32)) {
824a156633dfdb Kashyap Desai 2021-05-20  3164  			ioc_warn(mrioc, "Setting 64 bit DMA mask failed\n");
824a156633dfdb Kashyap Desai 2021-05-20  3165  			dma_mask = DMA_BIT_MASK(32);
824a156633dfdb Kashyap Desai 2021-05-20  3166  			retval = dma_set_mask_and_coherent(&pdev->dev,
824a156633dfdb Kashyap Desai 2021-05-20  3167  			    dma_mask);
824a156633dfdb Kashyap Desai 2021-05-20  3168  		}
824a156633dfdb Kashyap Desai 2021-05-20  3169  		if (retval) {
824a156633dfdb Kashyap Desai 2021-05-20  3170  			mrioc->dma_mask = 0;
824a156633dfdb Kashyap Desai 2021-05-20  3171  			ioc_err(mrioc, "Setting 32 bit DMA mask also failed\n");
824a156633dfdb Kashyap Desai 2021-05-20  3172  			goto out_failed;
824a156633dfdb Kashyap Desai 2021-05-20  3173  		}
824a156633dfdb Kashyap Desai 2021-05-20  3174  	}
824a156633dfdb Kashyap Desai 2021-05-20  3175  	mrioc->dma_mask = dma_mask;
824a156633dfdb Kashyap Desai 2021-05-20  3176  
824a156633dfdb Kashyap Desai 2021-05-20  3177  	if (!mrioc->sysif_regs) {
824a156633dfdb Kashyap Desai 2021-05-20  3178  		ioc_err(mrioc,
824a156633dfdb Kashyap Desai 2021-05-20  3179  		    "Unable to map adapter memory or resource not found\n");
824a156633dfdb Kashyap Desai 2021-05-20  3180  		retval = -EINVAL;
824a156633dfdb Kashyap Desai 2021-05-20  3181  		goto out_failed;
824a156633dfdb Kashyap Desai 2021-05-20  3182  	}
824a156633dfdb Kashyap Desai 2021-05-20  3183  
824a156633dfdb Kashyap Desai 2021-05-20  3184  	pci_read_config_word(pdev, capb + 2, &message_control);
824a156633dfdb Kashyap Desai 2021-05-20  3185  	mrioc->msix_count = (message_control & 0x3FF) + 1;
824a156633dfdb Kashyap Desai 2021-05-20  3186  
824a156633dfdb Kashyap Desai 2021-05-20  3187  	pci_save_state(pdev);
824a156633dfdb Kashyap Desai 2021-05-20  3188  
824a156633dfdb Kashyap Desai 2021-05-20  3189  	pci_set_drvdata(pdev, mrioc->shost);
824a156633dfdb Kashyap Desai 2021-05-20  3190  
824a156633dfdb Kashyap Desai 2021-05-20  3191  	mpi3mr_ioc_disable_intr(mrioc);
824a156633dfdb Kashyap Desai 2021-05-20  3192  
824a156633dfdb Kashyap Desai 2021-05-20  3193  	ioc_info(mrioc, "iomem(0x%016llx), mapped(0x%p), size(%d)\n",
824a156633dfdb Kashyap Desai 2021-05-20  3194  	    (unsigned long long)mrioc->sysif_regs_phys,
824a156633dfdb Kashyap Desai 2021-05-20  3195  	    mrioc->sysif_regs, memap_sz);
824a156633dfdb Kashyap Desai 2021-05-20  3196  	ioc_info(mrioc, "Number of MSI-X vectors found in capabilities: (%d)\n",
824a156633dfdb Kashyap Desai 2021-05-20  3197  	    mrioc->msix_count);
824a156633dfdb Kashyap Desai 2021-05-20  3198  	return retval;
824a156633dfdb Kashyap Desai 2021-05-20  3199  
824a156633dfdb Kashyap Desai 2021-05-20  3200  out_failed:
824a156633dfdb Kashyap Desai 2021-05-20  3201  	mpi3mr_cleanup_resources(mrioc);
824a156633dfdb Kashyap Desai 2021-05-20  3202  	return retval;
824a156633dfdb Kashyap Desai 2021-05-20  3203  }
824a156633dfdb Kashyap Desai 2021-05-20  3204  

:::::: The code at line 3126 was first introduced by commit
:::::: 824a156633dfdb0e17979a0d0bb2c757d1bb949c scsi: mpi3mr: Base driver code

:::::: TO: Kashyap Desai <kashyap.desai@broadcom.com>
:::::: CC: Martin K. Petersen <martin.petersen@oracle.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106051701.Gj190BNQ-lkp%40intel.com.

--GvXjxJ+pjyke8COw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--GvXjxJ+pjyke8COw--
