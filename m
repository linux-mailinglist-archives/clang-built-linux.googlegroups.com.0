Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZFYRGAQMGQE4VKH5OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 414A8314C3C
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 10:56:55 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id bg11sf9152534plb.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 01:56:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612864613; cv=pass;
        d=google.com; s=arc-20160816;
        b=ROHyLCIBk8yCz5pgLqRYheOb0rIw0+ULBtIJ9kl/wIKA1ntQ+aXiDcEDKqnK98Grkm
         JGgZqBNAhrskwOIRHT3Qw7qlKCxz7vHpelxjFweH2zDX0eaTykpxzvyIQpYV05jivUyD
         YW8++ntqjBL/4lHFZAP4Xda4k7xtO/qrv/dqHHLVAVBd4AOOjbbhwOsaGdi+R4sjOSFs
         MAWBaO3sDsC5LQbZHndWh20uKphg7hBh4oSa9P9e2QpeL+MY+iAfkasaNYuNAMqNPi7s
         fXOLkMyUdmh26IeWh6wNpFDlYPR00BG8qvHhphO64g1yK7+KqDJNjcUWX6IErGrJp3ia
         /i5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=Su7fiVFpgJlXvvHlrFCzucepHwGE7Xd1aa1sqDycXpk=;
        b=BSVa+Kzzgg/zft2ThzQrsc+UgswjZ224ay8tGe1+0NoIc6t2J7CX14BOU3qgE+2wkf
         fZ5zTBDIYkCpzXxFSYM23wRtvEP07DJj/okOyBPYj8SgemJiKWqos+cy8u1rtwFTasr1
         SWIHZD0m9s+a+gzIEa/o3iJw2yAXa78YgIhN07zyR4ktYhut3+yN9N6lNX03BDfPHYkO
         /NHS9kyAiQkCUS/yeYgJavUqnd9hX/KyozkK03CxOMBhxfRbD5J6rT+bFAgTAMcZwD5G
         yKWUiH3T03yeVNxFn87Bqj5koSil/n7bSMuQAx95lySlEEKskTdtmF7gCDvzVMmcJyrg
         XMTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Su7fiVFpgJlXvvHlrFCzucepHwGE7Xd1aa1sqDycXpk=;
        b=As/qhLmwST86HJ3UhZQiUhya7M82UcE7SWz8QMy+eXYMohk/qslR1viqn0agAHofVf
         vNIlB+jUblDuFwLwzhF5GO9f9huCFyS/E7yUgMtMI/JOSjMNQemY5tnIGzXIC+US2l2f
         9ccUqmEKq01lmGilVIziSIpCi/MUNOjnn5AxSfXgkOXeWi0w4U5op4scqc4FLn8svjxI
         tWnil55EfQTYq5qGMjkJdJ/uTA+sLAlE015CsTM2hgQ69+4V1Q2HrAIDgvUoSOen1PkO
         ZEz5TRgvEAW0VnYiXA12DlFB9J+NkYQNBAXtSUVQES2Bcgijb6d9sQSAfVRc+za5DB55
         K0Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Su7fiVFpgJlXvvHlrFCzucepHwGE7Xd1aa1sqDycXpk=;
        b=T0DmGN/rwfl1Ac+gz3HvS9OK/moEnLUIishwVC9gwca5tcv+K5JQQbH+1TCj/STpQS
         hmh/1WQsO4nPSqmSp7FS18rTh18yMU7tNcsSf8EhHN5+UgKE0LwoMb2MnkJR6TcYLdG8
         p6JwBTRpw9FzUfFocMsYeoetaodck55Ci+OC4rH6olXE/XcxvMJD+zCJbTDeuY3oKoFm
         Fj0znSKkORXIReRFFOxklzgjJLe2bH7xbmgmRDKzw/3JZ4idznULcPAcupxNdC3eHtD3
         +116eCON0jz0v7cJWx0Lwbxm77CsrjVAOc806kcR7xqgC/PbHiah0iIanWzPcpFBzu+f
         rKOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NKJLLBIqwAzzfdlEODsg2eO8PeXhP9kx9gp9bYhBP+DVc+Q/4
	wm9k4WM6KHTykJ11H5y/NVU=
X-Google-Smtp-Source: ABdhPJzemTCq3/suHN4eD7sebniSv1Lv8wGSbFnmSskCqk6TkWzQ6GjsJbdZTc1kwS3vGugFGuxouQ==
X-Received: by 2002:a63:4443:: with SMTP id t3mr20992219pgk.297.1612864612229;
        Tue, 09 Feb 2021 01:56:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4015:: with SMTP id ie21ls1252933pjb.2.gmail; Tue,
 09 Feb 2021 01:56:51 -0800 (PST)
X-Received: by 2002:a17:90b:b0b:: with SMTP id bf11mr3346637pjb.208.1612864611450;
        Tue, 09 Feb 2021 01:56:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612864611; cv=none;
        d=google.com; s=arc-20160816;
        b=S5I5BUHibURn8oG4fGTFaVleWdFitdwrS8J6Y+YWjq3WHiR8CrLU+HzZlfbvl3wObK
         pd1ik0S8nzUgkFRgOZe1ffmb5MycMoRimJM3+zsSBiwbL8zFlI/ZxN2ww0L5F6bRysc4
         GDFL6pN/p+vUdT8kdGPrgv943SY6g3vH2xcyBBkxCRKAybHmk/LKY0n6BEIZfaJzjKOP
         iIPzrf81Rn3XMC8zNFbmaWfwXBi0X8fH2fH0HgTiAgBz56UiVX2a4GCUqoXcrMcYNrl4
         WEPuUaZIKJp/UqZj5s+jN2yPj2gBiEkTWjz4Y2+GJxMWPCPtmi6PirLzK3+vbwYRd1Lj
         tC3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=M2TmPAwmPKCP6Oe/ExP6kwOOCNpJ5S/jdeO3nOfIcXE=;
        b=WWlD+Qh40PrzkhkT3C3O6HWuiNyxZD+5WXaRjT90QNwgKT1EQW7/Lfs3+f/LokszAq
         pxrO+Mi/zPZRpXM+G/bACNbHHyHy3lMh1498SHuNh28f1Is+TC7OU6M3I7eF08qhQdd3
         omlBJ1QbFrBamHH3kgdIa85h1QUcKTBeHthQGlZ84FdaJCFtyRm67JOVYQeOX6/oIAi7
         WnWwiJgKxaPOYT4g2YQD4OWoemlGqiPVlYI7Apcg5AM1SNz0jeslOWSqPavmLlg9OHlV
         9FLU4jyJGudtrpZClio9r8pzDTo18BX0W0Tm3izpdNC586kwXcm+Npt0R326AvkaLaot
         XKoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id n13si1083316pfd.1.2021.02.09.01.56.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 01:56:51 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: ekQaGWk8ldWUc7OemkGRXwrpC9SFYbWk2swZg97JwfOi1YHCLRNIiOpk9OzQUeiLwDEp6JFuHD
 axtKgBnFWnAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="168980215"
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; 
   d="gz'50?scan'50,208,50";a="168980215"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 01:56:50 -0800
IronPort-SDR: yXQ7bCqLnNd38nZF31klCcjpBAO0D5mREFtbpsGdjABkPiyjJaoffd+1Og6ABLGUd/JxXTtWx2
 gVVXU6dDWGMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; 
   d="gz'50?scan'50,208,50";a="577995273"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by orsmga005.jf.intel.com with ESMTP; 09 Feb 2021 01:56:46 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l9PlG-0001w5-28; Tue, 09 Feb 2021 09:56:46 +0000
Date: Tue, 9 Feb 2021 17:56:37 +0800
From: kernel test robot <lkp@intel.com>
To: Claire Chang <tientzu@chromium.org>, Rob Herring <robh+dt@kernel.org>,
	mpe@ellerman.id.au, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
	boris.ostrovsky@oracle.com, jgross@suse.com,
	Christoph Hellwig <hch@lst.de>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 06/14] swiotlb: Add restricted DMA pool
Message-ID: <202102091735.dzjT85Zp-lkp@intel.com>
References: <20210209062131.2300005-7-tientzu@chromium.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline
In-Reply-To: <20210209062131.2300005-7-tientzu@chromium.org>
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


--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Claire,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.11-rc6 next-20210125]
[cannot apply to swiotlb/linux-next robh/for-next xen-tip/linux-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Claire-Chang/Restricted-DMA/20210209-142608
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 61556703b610a104de324e4f061dc6cf7b218b46
config: arm-randconfig-r001-20210209 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/a766e1949e37b6b82605062e9ef9dd109d2ee940
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Claire-Chang/Restricted-DMA/20210209-142608
        git checkout a766e1949e37b6b82605062e9ef9dd109d2ee940
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   kernel/dma/swiotlb.c:811:32: error: use of undeclared identifier 'reme'; did you mean 'rmem'?
                   unsigned long pfn = PHYS_PFN(reme->base);
                                                ^~~~
                                                rmem
   include/linux/pfn.h:22:39: note: expanded from macro 'PHYS_PFN'
   #define PHYS_PFN(x)     ((unsigned long)((x) >> PAGE_SHIFT))
                                             ^
   kernel/dma/swiotlb.c:793:58: note: 'rmem' declared here
   static int rmem_swiotlb_device_init(struct reserved_mem *rmem,
                                                            ^
>> kernel/dma/swiotlb.c:811:17: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
                   unsigned long pfn = PHYS_PFN(reme->base);
                                 ^
   1 warning and 1 error generated.


vim +811 kernel/dma/swiotlb.c

   791	
   792	#ifdef CONFIG_DMA_RESTRICTED_POOL
   793	static int rmem_swiotlb_device_init(struct reserved_mem *rmem,
   794					    struct device *dev)
   795	{
   796		struct swiotlb *swiotlb = rmem->priv;
   797		int ret;
   798	
   799		if (dev->dev_swiotlb)
   800			return -EBUSY;
   801	
   802		/* Since multiple devices can share the same pool, the private data,
   803		 * swiotlb struct, will be initialized by the first device attached
   804		 * to it.
   805		 */
   806		if (!swiotlb) {
   807			swiotlb = kzalloc(sizeof(*swiotlb), GFP_KERNEL);
   808			if (!swiotlb)
   809				return -ENOMEM;
   810	#ifdef CONFIG_ARM
 > 811			unsigned long pfn = PHYS_PFN(reme->base);
   812	
   813			if (!PageHighMem(pfn_to_page(pfn))) {
   814				ret = -EINVAL;
   815				goto cleanup;
   816			}
   817	#endif /* CONFIG_ARM */
   818	
   819			ret = swiotlb_init_tlb_pool(swiotlb, rmem->base, rmem->size);
   820			if (ret)
   821				goto cleanup;
   822	
   823			rmem->priv = swiotlb;
   824		}
   825	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102091735.dzjT85Zp-lkp%40intel.com.

--Q68bSM7Ycu6FN28Q
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--Q68bSM7Ycu6FN28Q--
