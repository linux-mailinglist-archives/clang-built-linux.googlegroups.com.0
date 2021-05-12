Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBXW256CAMGQEJPFDBTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A62837C182
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 16:59:44 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id d64-20020a6368430000b02902104a07607csf14507363pgc.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 07:59:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620831583; cv=pass;
        d=google.com; s=arc-20160816;
        b=KrFBLoBqf0wN2PtiM4MOZPEWiDkruM2tltkerX40wKFNpD6rKxW6M+0ZSCM/osb9BW
         jEfCoVdcIaYBm2cLh5U8T44FamAhvllIU70v21s4mAXAxL8CRS3w9d3PXVd8FZ4BSpAX
         v/Hy6HHPpAVOYt0HdOB7PJQDkTzEYOW43SkGcec6OrrcFY1vHSL7RBfkhJWlCVUvtf3/
         NOkRiJmfAxnDA4RZG/cCieURIoX9U1H4kqjSc2cg3wKR+YSwmbgfl88eju2BpG0c18ua
         Ng3o8Pi7xx+t+NHEasMQqTwwy3RMptpYlvc0/MZhm0qZ7IMbpU7/oGQx3Hh6ZF7bHU9u
         sjnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=sON5qH6u05AJoQNZV8z3ygdImZmX0LiC/Ph6y1X78NI=;
        b=u+R0H9ScG4DChhygOtv9NvqXUL/lP8YYC76Bxd44anG53QzZXDjDqH4bPDPHoWOyJI
         lUn9U4W7MAt8H7EHvfWpkJ5Cc1Lb26J5bV361/brmqTwnssTbRPR4/hqutdh+JwyROT8
         SRQWv7c3VARbFuNnaOdAbF0xIMeq9yLL9U/1zhK0lJjHZEHc2wLp5fuX2RtvIqED1p3H
         yQXPwnqIYV689bJ7wkYANulhYqCOTomtjk5aiQQrarrZ9/QcojfX9z1qthuE4Y2ZiRDT
         c8pfQOPXWFOEAzb0g3Xt90MBdEc6IXIQdY26JLN1cekTcP83JdarQ5HPl879XCyb6qWK
         rUAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sON5qH6u05AJoQNZV8z3ygdImZmX0LiC/Ph6y1X78NI=;
        b=MXNp14hb/tyvgwpLdy6hso26faRpLseGg8PRej5wvktyh2RQr+3vwKNUVDvm7V+0xh
         A6UziimwBNcTuu1jamNs+KLhrZDbWD/SFYAuyc3tIC6JSZ/rbeKTqoX8+ZtOO4/klwPr
         7Q9kHghS+r48SQjotquetFoyLfehCkI8fLBtMAz8LRtrQgAzap4dH0zKBQNugcLbptWC
         tv7DZQqnLesJ7S3kXHo2lmFTDseQKprC6R+1KMMuEWXY+X1fYaeDVedFujAzgdL6FevX
         GfdITTcBLey50YrqRYjNA44lpL5FxW5kMIzWUjHBGS7W5aBAsNSpocjiaq1f89KlN5xO
         Reiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sON5qH6u05AJoQNZV8z3ygdImZmX0LiC/Ph6y1X78NI=;
        b=Wy5SOMCkdRXfusUoetKWZ2biyz/7OBJE4RfEGT31w0absLvtY6BO98URllBGUdkZIN
         iub4sR4bx2Lwghum3wObnRQ1RdDxM9dpAoI2ye/8HoKLdRBxLZ9wJbOvRmx/wYK1qo4B
         c6ivWlKlmpXKd9zgtKxcAqd211fNZwliZWrekEmM/s8jw27hkUOlmkWU9YdDwdnd1ogk
         Bfzlp72BIzbewtQtNreSGtOb3YBF+DEKpemQj9U2Af0j40EFHIvXee5ubcgK8yue8VFW
         1M8p/KHwHFCyrgSQKJ+2oOf5awjX0mIbrmKHEg/ZJhilZ4uhDIlPy/+WypVeo67rwmvt
         z/gw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LvJlz9jml131wd5RUBkR46/fRl4cD9oVNnr0sc0yaAL4nWO3P
	CnbBDMm2M6lpS0rGPHEw0qo=
X-Google-Smtp-Source: ABdhPJz5+/kS6Lur2a3MDLKfx063sp3LSrwt943OR0nq7aDf4gtjj9Q2J+MDjHsd+PUxIhrmZGfozA==
X-Received: by 2002:a65:48cd:: with SMTP id o13mr36439574pgs.249.1620831582486;
        Wed, 12 May 2021 07:59:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa46:: with SMTP id c6ls1500960plr.4.gmail; Wed, 12
 May 2021 07:59:42 -0700 (PDT)
X-Received: by 2002:a17:90a:df08:: with SMTP id gp8mr40817888pjb.199.1620831581632;
        Wed, 12 May 2021 07:59:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620831581; cv=none;
        d=google.com; s=arc-20160816;
        b=edmfbfWNpZxON4y231nj9RM5DOMn80ywfR4K/4vF3HKklyQFh5hKKZ9vg7VVDri+DZ
         zI/BNz2kNCh+GywY/IW94aL1+cxwiD7VjGelqE9Be9k5XtKxAULYfM+5Q/Kd+Of1GSFH
         9BuZMzew2sRK2SkNedO1OnqoU/yO5WgbgMdEvGVENd9fWpZJI1p1PPjB/Sm7RbIx3oCO
         LalyzwEBZNkPU50WbsRFYBGNnDidM/sOLLOW984dXYxZdSOzzJe+rZiIuGeCxp5kAStZ
         /v9ZO6DWKnUTGtBJhWzm9//YZxcTlqOmm3aEsVOlqh7miB73AIz4b51flpvXwih9h3uY
         mTEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=RD1/9gfeYkqwxIOR0RcTrbUJCVvmU/JecaQM7s+pm94=;
        b=1IXvQuzFXlOjO6nQk5mBSVrLzxqBQz3uDo5wyHXDIdLokASIKRdATVY/FMrheQ4tz4
         EOJHo1+E/3OxgvjFizSSH3SVQH1bqwtkffzseKGpnp5QI/HP9w3vFI6UCWHNpUWtfz6V
         FvrVg/Q4Xx+FdedX8WH3DoPS0sF2ODiuqsmJhgANwdJwAqCJ0/O+XV4TKyRif41lxKCb
         bpSkCsuNnCyg16shf13FSONkCzI526ch4mlTZl3lFPsAGEV66dSnBMC1tQj4GWBsuAJn
         B2tDAYIdu8AX72lC+jGQlwyduuYXYTmAqC3SC00z/ixrxdudMLecSM8q3+n8wqjoaHVM
         eqyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id s24si41219pfw.4.2021.05.12.07.59.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 07:59:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: 9nCfMbNUWDMM7XN/5BDHL0fVOFOOpbXdPass3LW6LN5z2pHxU2qg/5kiDv6QYRZR64NAstEw8C
 0j3IcE5thmWg==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="220701103"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; 
   d="gz'50?scan'50,208,50";a="220701103"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2021 07:59:40 -0700
IronPort-SDR: +sU23emI36GkprxVs4+wm7UA5R57rWGMWXJ9jBd8P1iMIZETrYxCUbEzZZHBRiEWrKnml/lS2Y
 wTT7iEKV3Bmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; 
   d="gz'50?scan'50,208,50";a="462592165"
Received: from lkp-server01.sh.intel.com (HELO 1e931876798f) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 12 May 2021 07:59:37 -0700
Received: from kbuild by 1e931876798f with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lgqKm-0000L2-CD; Wed, 12 May 2021 14:59:36 +0000
Date: Wed, 12 May 2021 22:59:12 +0800
From: kernel test robot <lkp@intel.com>
To: Daniel Wagner <dwagner@suse.de>, linux-nvme@lists.infradead.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
	Sagi Grimberg <sagi@grimberg.me>,
	Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
	Daniel Wagner <dwagner@suse.de>,
	Enzo Matsumiya <ematsumiya@suse.com>
Subject: Re: [PATCH] nvmet: Reset ns->file when open fails
Message-ID: <202105122257.1Qd1VZKV-lkp@intel.com>
References: <20210512101352.23725-1-dwagner@suse.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="OgqxwSJOaUobr8KG"
Content-Disposition: inline
In-Reply-To: <20210512101352.23725-1-dwagner@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--OgqxwSJOaUobr8KG
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Daniel,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linux/master]
[also build test WARNING on hch-configfs/for-next linus/master v5.13-rc1 next-20210512]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Daniel-Wagner/nvmet-Reset-ns-file-when-open-fails/20210512-181435
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git dd860052c99b1e088352bdd4fb7aef46f8d2ef47
config: riscv-randconfig-r011-20210512 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0fed635fe1701470062495a6ffee1c608f3f1bc)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/406c65a33980a0f58f21c897d9283d9fff9a4eb5
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Daniel-Wagner/nvmet-Reset-ns-file-when-open-fails/20210512-181435
        git checkout 406c65a33980a0f58f21c897d9283d9fff9a4eb5
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/nvme/target/io-cmd-file.c:54:7: warning: incompatible pointer to integer conversion assigning to 'int' from 'struct file *' [-Wint-conversion]
                   ret = ns->file;
                       ^ ~~~~~~~~
>> drivers/nvme/target/io-cmd-file.c:56:18: warning: incompatible integer to pointer conversion passing 'int' to parameter of type 'const void *' [-Wint-conversion]
                   return PTR_ERR(ret);
                                  ^~~
   include/linux/err.h:29:61: note: passing argument to parameter 'ptr' here
   static inline long __must_check PTR_ERR(__force const void *ptr)
                                                               ^
   2 warnings generated.


vim +54 drivers/nvme/target/io-cmd-file.c

    41	
    42	int nvmet_file_ns_enable(struct nvmet_ns *ns)
    43	{
    44		int flags = O_RDWR | O_LARGEFILE;
    45		int ret;
    46	
    47		if (!ns->buffered_io)
    48			flags |= O_DIRECT;
    49	
    50		ns->file = filp_open(ns->device_path, flags, 0);
    51		if (IS_ERR(ns->file)) {
    52			pr_err("failed to open file %s: (%ld)\n",
    53					ns->device_path, PTR_ERR(ns->file));
  > 54			ret = ns->file;
    55			ns->file = NULL;
  > 56			return PTR_ERR(ret);
    57		}
    58	
    59		ret = nvmet_file_ns_revalidate(ns);
    60		if (ret)
    61			goto err;
    62	
    63		/*
    64		 * i_blkbits can be greater than the universally accepted upper bound,
    65		 * so make sure we export a sane namespace lba_shift.
    66		 */
    67		ns->blksize_shift = min_t(u8,
    68				file_inode(ns->file)->i_blkbits, 12);
    69	
    70		ns->bvec_cache = kmem_cache_create("nvmet-bvec",
    71				NVMET_MAX_MPOOL_BVEC * sizeof(struct bio_vec),
    72				0, SLAB_HWCACHE_ALIGN, NULL);
    73		if (!ns->bvec_cache) {
    74			ret = -ENOMEM;
    75			goto err;
    76		}
    77	
    78		ns->bvec_pool = mempool_create(NVMET_MIN_MPOOL_OBJ, mempool_alloc_slab,
    79				mempool_free_slab, ns->bvec_cache);
    80	
    81		if (!ns->bvec_pool) {
    82			ret = -ENOMEM;
    83			goto err;
    84		}
    85	
    86		return ret;
    87	err:
    88		ns->size = 0;
    89		ns->blksize_shift = 0;
    90		nvmet_file_ns_disable(ns);
    91		return ret;
    92	}
    93	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105122257.1Qd1VZKV-lkp%40intel.com.

--OgqxwSJOaUobr8KG
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--OgqxwSJOaUobr8KG--
