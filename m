Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJMU26BQMGQE2QMOYOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD5535E447
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 18:43:18 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id 59-20020a1709020241b02900e8de254a18sf5386762plc.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 09:43:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618332197; cv=pass;
        d=google.com; s=arc-20160816;
        b=RibZjsAL1/zJmVS8jAQUpuZBw+sGBmDTpZtQWSRuzCIsMvP0JqSQr00sCpjsBZGBQL
         ayuxLdxbMJxFkZUM2atAevjdTdO3ufTJ54lXWNTrVpdfCFaneJ2B+d3SjL4PXp3C+pxF
         Y12fnqnUUzo8g//eZTq8aua+EviRm5+QT5MnA5Jnr0HyvQd/yd07a3RWRqihlyiFE6KK
         ljMK1eGX7CovE0hIKzdxKmerXmf7vIE/WD5PHZ9o665laBmfLllMgLX0x28PVZzqNdlI
         EMBqYf6sPKt2oksBxKiwx+M2rL67fLjJX1hPMX5UqVq6EM3xbcR+d5G8vx+maZy7lw+3
         Tfkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=KfdASfuEz3C+9zOJLyla65XqtlcUBx0xlRsTHbaOD3M=;
        b=UTFcEIPoJSTm2N9dKVq0tczVd752ozse6pMphPW6q0w6/j7BSXCjkMJ1gf2TWWQZVP
         meLKb4RyDC7b84EzBWC3SUYeTHgXGCBIpqeTg5I9mXEn0zDB10RLQk5coBNRyovWJ1Op
         Rw91g2pZvCl5tU8rjT3jKOEXTaCZC89mu/ft39IBbVuYSdVEPrp6GqnkJSYopJwuFazw
         0EforSCTZ+6IBDXEAm3v4EQAd5HJlpk5O/WP1KYDAYFEMgnW3npwzXcKRpRhA1THh3kt
         2gLznbZmJhvFNySRYw6mmTyfWDLqDd7eZxeOQYNBJQsBDfidbeRCiDDu/9KTwWVRf1tP
         nbvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KfdASfuEz3C+9zOJLyla65XqtlcUBx0xlRsTHbaOD3M=;
        b=C0KzQyQyzKAAnpLq8sXWsFLFRZY1m7ih3c2LcgfpLTLvZgdwK6LFoM6A1FW7gQMK9U
         1l6ofdIUa0Q7/zgWr9NDCqMg3XaLRbLG0rnSd2Qfs9GLMzoE/5knD3PxhrLIz5LrQ3Hw
         4v7imdMkYt/HMnaJeTlPgnLoACXs3CCj5szhYM5D7+2LAPx8KUzuhDkaPHqzuPnEtWGJ
         ZSiGE8k0T56TELK0QONqYAtAhge3LwNRdvKOLlvKansMpfGcgfVtD45584hKLSS5XO6Q
         GCQODjQrb1d2cBjTbHZ7XfFkeWcMJkawxp9Kjh6sJFZD7M8yhTOE6yD9kRfZsjGhK4BJ
         9WIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KfdASfuEz3C+9zOJLyla65XqtlcUBx0xlRsTHbaOD3M=;
        b=XIBaUUVBWs/MDu1+YKOYz8il9lpY+xMNx4eyvrwz+76NxsxY0iQSlPXRuHLj00W0ag
         ITD/HdvKOfCJZ/kcxnzaIULVZKKeb3zyXxZ7JI+Tkv88OsXAFRCRpQomxSbNeWmPUHWz
         t43NCoNfc16et4fARg5/BNt9c6NxbtfAYWtrGq/x/34eosedM3ZEYN+D37OToEju3fpS
         8K7cNwpJA2jYnEdQ6OpZnMiVJHsi23Jn4OI6FfRPShaG8D24gGGXxnnhc05f8B3GDigO
         yDDgLIrysuvDG4xbiMio38nDhHeZ+TtsXlw9PjeYCf1jkC0srCwxmWxAhux6el1IHUr5
         VhQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531t6WGiTP8VfMZGOIfO5gyRVzzzeJwE509TNh1t3DTn1jT2Ggz1
	2anHn3pnMeWy9E+G/ZcEmiU=
X-Google-Smtp-Source: ABdhPJwffXVAZf/ixunV9pdfovrw+00+M42Hx7sesQF4DHhBn8fr5hXxL8UJXTd6Ncq0W++KhkQxRg==
X-Received: by 2002:aa7:9f1a:0:b029:24e:faac:2ba4 with SMTP id g26-20020aa79f1a0000b029024efaac2ba4mr1121120pfr.40.1618332197513;
        Tue, 13 Apr 2021 09:43:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1492:: with SMTP id v18ls217278pfu.0.gmail; Tue, 13
 Apr 2021 09:43:16 -0700 (PDT)
X-Received: by 2002:a65:640d:: with SMTP id a13mr32327337pgv.272.1618332196644;
        Tue, 13 Apr 2021 09:43:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618332196; cv=none;
        d=google.com; s=arc-20160816;
        b=E5CehiQtYFqB2ZMTT3DUjee6ZLTBG+73hfleIRtM/7zoaGcBjlNjP1jldu+VbhZBNc
         fcY5zAVRZ+tqcfYOQ5X8uacmxI8uI3zSl/2k3jQR9wEo5DBBs87ZFygA+VReDGuhu1P9
         BRonilWp0ho+m5wjk+SMCqXnXjoZjoEovlfgZXumAf/JjQSpMHDXIlFrMl7EmXNXFqyG
         BioXpHUAEFpwAhh0LlpnxBgnd86evpaZz4zIF+BGnrVEj1FFlENFKKNxvLuR8ETc0ZIB
         gjXTJ0cR2DdrEvOhN68vs1ZUR1iqGd8dsqMCvweH4ldmAGZZ+FPVO7OFgOO8PRiU1sgx
         HQoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=D0HAssgrKMn81D5AJwCU6cyX69O4kr06Oq36b5rNMSc=;
        b=GhYXcwULOFrZFJHRjVoY3ucWwPttVoT/XDv6sxU2A6KH7RveypnQcK50ev+K6Jh7rV
         i2dBFqgAQK84soc2ZJqqnXeueC0g5lXvp283V3PL0PvRNV6/nrcKSvuNmwzudUrIvO3J
         ztCOO071/VZ29uEfxgHXrSo1e3RY7m5bgDSDuAeb7ngyKwDKLh67ZAzWlFlWmhmJ2yho
         bqYGtOBXm0tjGfXBydlrF6YsHLwt9h+uE4girUKR6mRSnCs+BkmjvdcEeO+5l1NFVtAq
         BL14OwpYzEqBcieA5ujqMYIhC3+zc4Fb0NFQHaZOcXHPHAzL4UNvyFX2uN/UbvqkH8Px
         bPHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id f16si23952plg.0.2021.04.13.09.43.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 09:43:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: rkhyx0uGHhWqx1yqZ5++DP2j8DlbinDga7Ggc0F/OL5pniUZTDxURpdquUtZIui8ZY3U6axQ+l
 vOOU3ffPkbQQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194017708"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="gz'50?scan'50,208,50";a="194017708"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 09:39:17 -0700
IronPort-SDR: cq6cS7LM0O6LeltMtZqydJzjPIt052ekM5KzaCZB8A9UWeVpRMkrKYZXa1SWvtriuWiTTTAuv7
 9q9kI8tR3vxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="gz'50?scan'50,208,50";a="614984519"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 13 Apr 2021 09:39:15 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lWM4I-00019T-GO; Tue, 13 Apr 2021 16:39:14 +0000
Date: Wed, 14 Apr 2021 00:38:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Christoph Hellwig <hch@lst.de>
Subject: [hch-xfs:xfs-array-size 14/14] fs/xfs/xfs_extfree_item.c:158:42:
 warning: variable 'efip' is uninitialized when used here
Message-ID: <202104140037.k3ltY5Jt-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Dxnq1zWXvFF0Q93v"
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


--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/xfs xfs-array-size
head:   0e7da51da807eb42b92b287738899d1ee6ca029e
commit: 0e7da51da807eb42b92b287738899d1ee6ca029e [14/14] xfs: Replace one-element arrays with flexible-array members
config: riscv-randconfig-r026-20210413 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        git remote add hch-xfs git://git.infradead.org/users/hch/xfs
        git fetch --no-tags hch-xfs xfs-array-size
        git checkout 0e7da51da807eb42b92b287738899d1ee6ca029e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/xfs/xfs_extfree_item.c:158:42: warning: variable 'efip' is uninitialized when used here [-Wuninitialized]
                   efip = kmem_zalloc(xfs_efi_item_sizeof(efip, nextents), 0);
                                                          ^~~~
   fs/xfs/xfs_extfree_item.c:154:31: note: initialize the variable 'efip' to silence this warning
           struct xfs_efi_log_item *efip;
                                        ^
                                         = NULL
>> fs/xfs/xfs_extfree_item.c:270:42: warning: variable 'efdp' is uninitialized when used here [-Wuninitialized]
                   efdp = kmem_zalloc(xfs_efd_item_sizeof(efdp, nextents), 0);
                                                          ^~~~
   fs/xfs/xfs_extfree_item.c:266:32: note: initialize the variable 'efdp' to silence this warning
           struct xfs_efd_log_item         *efdp;
                                                ^
                                                 = NULL
   2 warnings generated.


vim +/efip +158 fs/xfs/xfs_extfree_item.c

   144	
   145	/*
   146	 * Allocate and initialize an efi item with the given number of extents.
   147	 */
   148	STATIC struct xfs_efi_log_item *
   149	xfs_efi_init(
   150		struct xfs_mount	*mp,
   151		uint			nextents)
   152	
   153	{
   154		struct xfs_efi_log_item	*efip;
   155	
   156		ASSERT(nextents > 0);
   157		if (nextents > XFS_EFI_MAX_FAST_EXTENTS)
 > 158			efip = kmem_zalloc(xfs_efi_item_sizeof(efip, nextents), 0);
   159		else
   160			efip = kmem_cache_zalloc(xfs_efi_zone,
   161						 GFP_KERNEL | __GFP_NOFAIL);
   162	
   163		xfs_log_item_init(mp, &efip->efi_item, XFS_LI_EFI, &xfs_efi_item_ops);
   164		efip->efi_format.efi_nextents = nextents;
   165		efip->efi_format.efi_id = (uintptr_t)(void *)efip;
   166		atomic_set(&efip->efi_next_extent, 0);
   167		atomic_set(&efip->efi_refcount, 2);
   168	
   169		return efip;
   170	}
   171	
   172	static inline struct xfs_efd_log_item *EFD_ITEM(struct xfs_log_item *lip)
   173	{
   174		return container_of(lip, struct xfs_efd_log_item, efd_item);
   175	}
   176	
   177	STATIC void
   178	xfs_efd_item_free(struct xfs_efd_log_item *efdp)
   179	{
   180		kmem_free(efdp->efd_item.li_lv_shadow);
   181		if (efdp->efd_format.efd_nextents > XFS_EFD_MAX_FAST_EXTENTS)
   182			kmem_free(efdp);
   183		else
   184			kmem_cache_free(xfs_efd_zone, efdp);
   185	}
   186	
   187	/*
   188	 * This returns the number of iovecs needed to log the given efd item.
   189	 * We only need 1 iovec for an efd item.  It just logs the efd_log_format
   190	 * structure.
   191	 */
   192	static inline int
   193	xfs_efd_log_item_sizeof(
   194		struct xfs_efd_log_format *elf)
   195	{
   196		return struct_size(elf, efd_extents, elf->efd_nextents);
   197	}
   198	
   199	STATIC void
   200	xfs_efd_item_size(
   201		struct xfs_log_item	*lip,
   202		int			*nvecs,
   203		int			*nbytes)
   204	{
   205		*nvecs += 1;
   206		*nbytes += xfs_efd_log_item_sizeof(&EFD_ITEM(lip)->efd_format);
   207	}
   208	
   209	/*
   210	 * This is called to fill in the vector of log iovecs for the
   211	 * given efd log item. We use only 1 iovec, and we point that
   212	 * at the efd_log_format structure embedded in the efd item.
   213	 * It is at this point that we assert that all of the extent
   214	 * slots in the efd item have been filled.
   215	 */
   216	STATIC void
   217	xfs_efd_item_format(
   218		struct xfs_log_item	*lip,
   219		struct xfs_log_vec	*lv)
   220	{
   221		struct xfs_efd_log_item	*efdp = EFD_ITEM(lip);
   222		struct xfs_log_iovec	*vecp = NULL;
   223	
   224		ASSERT(efdp->efd_next_extent == efdp->efd_format.efd_nextents);
   225	
   226		efdp->efd_format.efd_type = XFS_LI_EFD;
   227		efdp->efd_format.efd_size = 1;
   228	
   229		xlog_copy_iovec(lv, &vecp, XLOG_REG_TYPE_EFD_FORMAT,
   230				&efdp->efd_format,
   231				xfs_efd_log_item_sizeof(&efdp->efd_format));
   232	}
   233	
   234	/*
   235	 * The EFD is either committed or aborted if the transaction is cancelled. If
   236	 * the transaction is cancelled, drop our reference to the EFI and free the EFD.
   237	 */
   238	STATIC void
   239	xfs_efd_item_release(
   240		struct xfs_log_item	*lip)
   241	{
   242		struct xfs_efd_log_item	*efdp = EFD_ITEM(lip);
   243	
   244		xfs_efi_release(efdp->efd_efip);
   245		xfs_efd_item_free(efdp);
   246	}
   247	
   248	static const struct xfs_item_ops xfs_efd_item_ops = {
   249		.flags		= XFS_ITEM_RELEASE_WHEN_COMMITTED,
   250		.iop_size	= xfs_efd_item_size,
   251		.iop_format	= xfs_efd_item_format,
   252		.iop_release	= xfs_efd_item_release,
   253	};
   254	
   255	/*
   256	 * Allocate an "extent free done" log item that will hold nextents worth of
   257	 * extents.  The caller must use all nextents extents, because we are not
   258	 * flexible about this at all.
   259	 */
   260	static struct xfs_efd_log_item *
   261	xfs_trans_get_efd(
   262		struct xfs_trans		*tp,
   263		struct xfs_efi_log_item		*efip,
   264		unsigned int			nextents)
   265	{
   266		struct xfs_efd_log_item		*efdp;
   267	
   268		ASSERT(nextents > 0);
   269		if (nextents > XFS_EFD_MAX_FAST_EXTENTS)
 > 270			efdp = kmem_zalloc(xfs_efd_item_sizeof(efdp, nextents), 0);
   271		else
   272			efdp = kmem_cache_zalloc(xfs_efd_zone,
   273						GFP_KERNEL | __GFP_NOFAIL);
   274	
   275		xfs_log_item_init(tp->t_mountp, &efdp->efd_item, XFS_LI_EFD,
   276				  &xfs_efd_item_ops);
   277		efdp->efd_efip = efip;
   278		efdp->efd_format.efd_nextents = nextents;
   279		efdp->efd_format.efd_efi_id = efip->efi_format.efi_id;
   280	
   281		xfs_trans_add_item(tp, &efdp->efd_item);
   282		return efdp;
   283	}
   284	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104140037.k3ltY5Jt-lkp%40intel.com.

--Dxnq1zWXvFF0Q93v
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
t/8PiCytbqBjAQA=

--Dxnq1zWXvFF0Q93v--
