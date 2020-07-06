Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVU2RX4AKGQE63CQRWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B30215B8D
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jul 2020 18:12:07 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id d3sf28154819ilq.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jul 2020 09:12:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594051926; cv=pass;
        d=google.com; s=arc-20160816;
        b=F4HRT+owSgyL7dsRx6rJUWOklyYzWIjGetcrRIBK+X6AvocxdstCEAaqz7EhuSBnm5
         GX75EM72Ng0zAFq83l54hlr5pqxmOi7E5COrCK+6zJ1vWXMLMbJomi8LHLGgEeTXfJs8
         y1Ng3zdTDZ+kJhcfB9hh5eGGWIFyl9vcZJg465PjbMFtChHQm02e6adZWgU644yMahEO
         sfmbAzS52dcy55mzG1DICkTVGEB+fiUwOm1PtdbGf+f0yLcjyPnd/hgydquVUfBj4Nc3
         2Op2/GRJOCVjtlwzAiobYmlvS+P500OqaxGnR7Mk7L1BOaC+V0+wUFVPD7/OgPJJgrPV
         LWvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=EQCBLVcBu9Yrx64rsNYnlhxd7zgOPFLu7iw63uMN7GI=;
        b=HHX9iS0kGmkOsH6F5ylofOEeILIwD8eXMxcuYFGIguG7ABg6BFQzg7TzCXunnScqK9
         h4iP1r9wpgfcLw9e3LOY7Nn1utMvrFLj/7jL7QU7Icn4OeB9mG0HsI+eUdYVWYcZeWqI
         bWufp12agAG/6q8mzckEfmkcQZwIct7/2COyp4OnlulVSvOXKuDekty7fTH64SLYlHL4
         RpZoc7qBFMXkHOdM4muRRFPcjWYZc5eTgCnzCIGOrKEDnZ9UyFNSmsm3mv6qF1LdHEss
         NcJcaRzGCwkPB7E4NNxuz5kTOdTH/zrCxwmhctRL/ucuENbUjaKHrzz4LQ4CUFeRYkDr
         LQDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EQCBLVcBu9Yrx64rsNYnlhxd7zgOPFLu7iw63uMN7GI=;
        b=lfgqvBcawoIAyOpaHnqICthekLpJZLC7DWjqLgJClep/MSWVj8k1NiW4c1ZsqPx66y
         ECDEMJ0dbKoddhogQQrBzGa/cMgDB29ibZbJMYiKqoDxGsyOldg0vi5WUG+OIIIT8ohJ
         pdvJqytPM1nR3yoJSG/5YurdLDQhA2doBTUU6zDuq7KwraY23YY7WU1dh4ye0rsVjU7T
         3orcKio5VwPcsCAA5HSpxtVD1BpUti7Er4NgpBhUVJU2SwCvrttdhUCsC+Jkks6LbOIQ
         PiSXjBM4kJxkUqbGpGxb60Hf5Sdybp1tJ8BPlvAq36wYZCotLMesZWoxa4Oq8ROhNBKj
         Xzpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EQCBLVcBu9Yrx64rsNYnlhxd7zgOPFLu7iw63uMN7GI=;
        b=MW4EISMgNujAEEn6P1uVPRcLnnfIcdaJiwu7BSgQUaVora1vvffRkIf00iBPq6G8re
         6hOpzM5bj2eVeW0g8qwnSVFXzyG7UVYFi7D0whxsQO0sHlnthPsvIjd7pn2fTZtZSdCC
         B5CQUQpKqkbnjL4uZJFWFXbGZ05L0rbtNfYvzrC80F3WMQHvs2ipmnHqmXJI/uQkmysh
         0kKVeIiXbYI9DRpeOwiX1gfy7nte8VFJVOqM5n/TVmmK1VNBAY3bAWNVIo/Uq5sRuWmR
         TUCEUuM0K27aLWjKvrkyX1dz6cJCWVZkBW3XXdB8VLIVUcsxLvZ5Mp2I5ibiVbOXALJD
         5pVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TjbO8HgyyQc2wmtKVa0b1YwXtBnYM5LX/dUeigv6ZNrmPWtQK
	Yy9Sy0vxb3Oqj716DIu5OTs=
X-Google-Smtp-Source: ABdhPJxVcQoKQ0f4gPIayQdQHX21MVfeLAZMXlmK7ILHut2ZKiNIpcyKaw68vAfljXf/wyFp69qQcQ==
X-Received: by 2002:a05:6e02:1246:: with SMTP id j6mr30244869ilq.216.1594051926521;
        Mon, 06 Jul 2020 09:12:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:de07:: with SMTP id e7ls3118618iok.5.gmail; Mon, 06 Jul
 2020 09:12:06 -0700 (PDT)
X-Received: by 2002:a6b:bb43:: with SMTP id l64mr26073079iof.191.1594051926094;
        Mon, 06 Jul 2020 09:12:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594051926; cv=none;
        d=google.com; s=arc-20160816;
        b=fvRQwUB7XUa4LvN/eWJfoX2dLkSPSRPv9KjTJbxTUX4IfKX8EERVrBXl63xnNZrvws
         gfa8+UYjA6LNMZKsACh7dEiecq1I6gi+WxfCEzP0byRRR4KHlWlY37U/W6d0n16/LLv7
         srxMXw4a8sH4hlhFyGTxp87gxuV0NKU8Cr8djnTobTPrSEkPU0viWjh1YNot3bB0rZO9
         6JER1GkD2FeW6KprYJnuXnslyu0sU9h/CRADQ0rddByNMVldgCjRIsc5w5OKusQ7Dy3a
         R0wnuS7PeX2xKKL0arZdNRDa/dCp6WPCl1H9hxt15SiixTMp26w4UxzkNN25anB/YMWb
         BOMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=mxEO7FlOgHpovXNGrO0z948Bhyc+2XC4mrE7MRj0bO8=;
        b=qQwSk8pf0eUfJZ5KZ2T8F7qq38s2M8X4/R7zfZcMtxRWNL8zgqAEJaUmr6+EoLDPyD
         Mirb3nuUKXx3BevAev8GRqlSPHusXNWQYuPrl4hbQGQGjdIrIbOIx+hEuIxplekmybNe
         g/oGE1NZEjJpS1SHT0xmY3ldVd+23q+UsIbgbJaTZOVFDr07IizSy3FA1CmlbyKOC4qN
         1WQZOYJcqa0R5QrF7uzIN3spdQ7g8jsJ/H05y3jRKsVmViZpMuBx9v6+sSlN30Hh/ccu
         dqxFA3k0Rlokgc+JLTQUWOelJ9AC9dfri8YedW0kNADCEQB39mr5jU+dDUEkGesoS0y2
         PFQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id i20si630107iow.2.2020.07.06.09.12.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jul 2020 09:12:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: nMTf1EcSC5d5hMgKJtZ3rLeQhizWokM4zGBa0OF3eYjnxuRnj6JVw6Csly4LRFxKDwRMUhva+b
 +Lu0NbM0/ncg==
X-IronPort-AV: E=McAfee;i="6000,8403,9673"; a="134902827"
X-IronPort-AV: E=Sophos;i="5.75,320,1589266800"; 
   d="gz'50?scan'50,208,50";a="134902827"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jul 2020 09:12:04 -0700
IronPort-SDR: 1tjuLHLTRw674aTp4Cnim8BJNy9dM1rVB8rsVHldxyCWmsEGawhRxfMuDfJUCf7WlwQOsNrFbH
 qfz4+0ypoIsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,320,1589266800"; 
   d="gz'50?scan'50,208,50";a="483178504"
Received: from lkp-server01.sh.intel.com (HELO 82346ce9ac16) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 06 Jul 2020 09:12:01 -0700
Received: from kbuild by 82346ce9ac16 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jsTiq-0000H0-WA; Mon, 06 Jul 2020 16:12:01 +0000
Date: Tue, 7 Jul 2020 00:11:00 +0800
From: kernel test robot <lkp@intel.com>
To: Coly Li <colyli@suse.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [bcache:bch_sb_features 14/16] drivers/md/bcache/sysfs.c:1087:5:
 warning: format specifies type 'unsigned long' but the argument has type
 'unsigned int'
Message-ID: <202007070052.swpLbCVc%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wac7ysb48OaltWcw"
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


--wac7ysb48OaltWcw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/colyli/linux-bcache.git bch_sb_features
head:   5bd8146daf03ca8c0e07b6327c37448e689c1d84
commit: b683087292f7e51bae70c1f1210a2513f85e20f2 [14/16] bcache: add bucket_size_hi into struct cache_sb_disk for large bucket
config: mips-randconfig-r032-20200706 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project a378c0449507e00e96534ff9ce9034e185425182)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        git checkout b683087292f7e51bae70c1f1210a2513f85e20f2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/md/bcache/sysfs.c:1087:5: warning: format specifies type 'unsigned long' but the argument has type 'unsigned int' [-Wformat]
                                   n * ca->sb.bucket_size / (ARRAY_SIZE(q) + 1));
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.

vim +1087 drivers/md/bcache/sysfs.c

58f913dce2814a Peter Foley     2017-10-13   999  
cafe563591446c Kent Overstreet 2013-03-23  1000  SHOW(__bch_cache)
cafe563591446c Kent Overstreet 2013-03-23  1001  {
cafe563591446c Kent Overstreet 2013-03-23  1002  	struct cache *ca = container_of(kobj, struct cache, kobj);
cafe563591446c Kent Overstreet 2013-03-23  1003  
cafe563591446c Kent Overstreet 2013-03-23  1004  	sysfs_hprint(bucket_size,	bucket_bytes(ca));
cafe563591446c Kent Overstreet 2013-03-23  1005  	sysfs_hprint(block_size,	block_bytes(ca));
cafe563591446c Kent Overstreet 2013-03-23  1006  	sysfs_print(nbuckets,		ca->sb.nbuckets);
cafe563591446c Kent Overstreet 2013-03-23  1007  	sysfs_print(discard,		ca->discard);
cafe563591446c Kent Overstreet 2013-03-23  1008  	sysfs_hprint(written, atomic_long_read(&ca->sectors_written) << 9);
cafe563591446c Kent Overstreet 2013-03-23  1009  	sysfs_hprint(btree_written,
cafe563591446c Kent Overstreet 2013-03-23  1010  		     atomic_long_read(&ca->btree_sectors_written) << 9);
cafe563591446c Kent Overstreet 2013-03-23  1011  	sysfs_hprint(metadata_written,
cafe563591446c Kent Overstreet 2013-03-23  1012  		     (atomic_long_read(&ca->meta_sectors_written) +
cafe563591446c Kent Overstreet 2013-03-23  1013  		      atomic_long_read(&ca->btree_sectors_written)) << 9);
cafe563591446c Kent Overstreet 2013-03-23  1014  
cafe563591446c Kent Overstreet 2013-03-23  1015  	sysfs_print(io_errors,
cafe563591446c Kent Overstreet 2013-03-23  1016  		    atomic_read(&ca->io_errors) >> IO_ERROR_SHIFT);
cafe563591446c Kent Overstreet 2013-03-23  1017  
cafe563591446c Kent Overstreet 2013-03-23  1018  	if (attr == &sysfs_cache_replacement_policy)
169ef1cf6171d3 Kent Overstreet 2013-03-28  1019  		return bch_snprint_string_list(buf, PAGE_SIZE,
cafe563591446c Kent Overstreet 2013-03-23  1020  					       cache_replacement_policies,
cafe563591446c Kent Overstreet 2013-03-23  1021  					       CACHE_REPLACEMENT(&ca->sb));
cafe563591446c Kent Overstreet 2013-03-23  1022  
cafe563591446c Kent Overstreet 2013-03-23  1023  	if (attr == &sysfs_priority_stats) {
15754020524a56 Kent Overstreet 2014-02-25  1024  		struct bucket *b;
15754020524a56 Kent Overstreet 2014-02-25  1025  		size_t n = ca->sb.nbuckets, i;
15754020524a56 Kent Overstreet 2014-02-25  1026  		size_t unused = 0, available = 0, dirty = 0, meta = 0;
cafe563591446c Kent Overstreet 2013-03-23  1027  		uint64_t sum = 0;
bbc77aa7fb72e6 Kent Overstreet 2013-05-28  1028  		/* Compute 31 quantiles */
bbc77aa7fb72e6 Kent Overstreet 2013-05-28  1029  		uint16_t q[31], *p, *cached;
cafe563591446c Kent Overstreet 2013-03-23  1030  		ssize_t ret;
cafe563591446c Kent Overstreet 2013-03-23  1031  
42bc47b35320e0 Kees Cook       2018-06-12  1032  		cached = p = vmalloc(array_size(sizeof(uint16_t),
42bc47b35320e0 Kees Cook       2018-06-12  1033  						ca->sb.nbuckets));
cafe563591446c Kent Overstreet 2013-03-23  1034  		if (!p)
cafe563591446c Kent Overstreet 2013-03-23  1035  			return -ENOMEM;
cafe563591446c Kent Overstreet 2013-03-23  1036  
cafe563591446c Kent Overstreet 2013-03-23  1037  		mutex_lock(&ca->set->bucket_lock);
15754020524a56 Kent Overstreet 2014-02-25  1038  		for_each_bucket(b, ca) {
15754020524a56 Kent Overstreet 2014-02-25  1039  			if (!GC_SECTORS_USED(b))
15754020524a56 Kent Overstreet 2014-02-25  1040  				unused++;
15754020524a56 Kent Overstreet 2014-02-25  1041  			if (GC_MARK(b) == GC_MARK_RECLAIMABLE)
15754020524a56 Kent Overstreet 2014-02-25  1042  				available++;
15754020524a56 Kent Overstreet 2014-02-25  1043  			if (GC_MARK(b) == GC_MARK_DIRTY)
15754020524a56 Kent Overstreet 2014-02-25  1044  				dirty++;
15754020524a56 Kent Overstreet 2014-02-25  1045  			if (GC_MARK(b) == GC_MARK_METADATA)
15754020524a56 Kent Overstreet 2014-02-25  1046  				meta++;
15754020524a56 Kent Overstreet 2014-02-25  1047  		}
15754020524a56 Kent Overstreet 2014-02-25  1048  
cafe563591446c Kent Overstreet 2013-03-23  1049  		for (i = ca->sb.first_bucket; i < n; i++)
cafe563591446c Kent Overstreet 2013-03-23  1050  			p[i] = ca->buckets[i].prio;
cafe563591446c Kent Overstreet 2013-03-23  1051  		mutex_unlock(&ca->set->bucket_lock);
cafe563591446c Kent Overstreet 2013-03-23  1052  
58f913dce2814a Peter Foley     2017-10-13  1053  		sort(p, n, sizeof(uint16_t), __bch_cache_cmp, NULL);
cafe563591446c Kent Overstreet 2013-03-23  1054  
cafe563591446c Kent Overstreet 2013-03-23  1055  		while (n &&
cafe563591446c Kent Overstreet 2013-03-23  1056  		       !cached[n - 1])
cafe563591446c Kent Overstreet 2013-03-23  1057  			--n;
cafe563591446c Kent Overstreet 2013-03-23  1058  
cafe563591446c Kent Overstreet 2013-03-23  1059  		while (cached < p + n &&
cafe563591446c Kent Overstreet 2013-03-23  1060  		       *cached == BTREE_PRIO)
15754020524a56 Kent Overstreet 2014-02-25  1061  			cached++, n--;
cafe563591446c Kent Overstreet 2013-03-23  1062  
cafe563591446c Kent Overstreet 2013-03-23  1063  		for (i = 0; i < n; i++)
cafe563591446c Kent Overstreet 2013-03-23  1064  			sum += INITIAL_PRIO - cached[i];
cafe563591446c Kent Overstreet 2013-03-23  1065  
cafe563591446c Kent Overstreet 2013-03-23  1066  		if (n)
cafe563591446c Kent Overstreet 2013-03-23  1067  			do_div(sum, n);
cafe563591446c Kent Overstreet 2013-03-23  1068  
bbc77aa7fb72e6 Kent Overstreet 2013-05-28  1069  		for (i = 0; i < ARRAY_SIZE(q); i++)
bbc77aa7fb72e6 Kent Overstreet 2013-05-28  1070  			q[i] = INITIAL_PRIO - cached[n * (i + 1) /
bbc77aa7fb72e6 Kent Overstreet 2013-05-28  1071  				(ARRAY_SIZE(q) + 1)];
cafe563591446c Kent Overstreet 2013-03-23  1072  
cafe563591446c Kent Overstreet 2013-03-23  1073  		vfree(p);
cafe563591446c Kent Overstreet 2013-03-23  1074  
bbc77aa7fb72e6 Kent Overstreet 2013-05-28  1075  		ret = scnprintf(buf, PAGE_SIZE,
cafe563591446c Kent Overstreet 2013-03-23  1076  				"Unused:		%zu%%\n"
15754020524a56 Kent Overstreet 2014-02-25  1077  				"Clean:		%zu%%\n"
15754020524a56 Kent Overstreet 2014-02-25  1078  				"Dirty:		%zu%%\n"
cafe563591446c Kent Overstreet 2013-03-23  1079  				"Metadata:	%zu%%\n"
cafe563591446c Kent Overstreet 2013-03-23  1080  				"Average:	%llu\n"
b683087292f7e5 Coly Li         2020-07-04  1081  				"Sectors per Q:	%lu\n"
cafe563591446c Kent Overstreet 2013-03-23  1082  				"Quantiles:	[",
cafe563591446c Kent Overstreet 2013-03-23  1083  				unused * 100 / (size_t) ca->sb.nbuckets,
15754020524a56 Kent Overstreet 2014-02-25  1084  				available * 100 / (size_t) ca->sb.nbuckets,
15754020524a56 Kent Overstreet 2014-02-25  1085  				dirty * 100 / (size_t) ca->sb.nbuckets,
15754020524a56 Kent Overstreet 2014-02-25  1086  				meta * 100 / (size_t) ca->sb.nbuckets, sum,
bbc77aa7fb72e6 Kent Overstreet 2013-05-28 @1087  				n * ca->sb.bucket_size / (ARRAY_SIZE(q) + 1));
bbc77aa7fb72e6 Kent Overstreet 2013-05-28  1088  
bbc77aa7fb72e6 Kent Overstreet 2013-05-28  1089  		for (i = 0; i < ARRAY_SIZE(q); i++)
bbc77aa7fb72e6 Kent Overstreet 2013-05-28  1090  			ret += scnprintf(buf + ret, PAGE_SIZE - ret,
bbc77aa7fb72e6 Kent Overstreet 2013-05-28  1091  					 "%u ", q[i]);
bbc77aa7fb72e6 Kent Overstreet 2013-05-28  1092  		ret--;
cafe563591446c Kent Overstreet 2013-03-23  1093  
bbc77aa7fb72e6 Kent Overstreet 2013-05-28  1094  		ret += scnprintf(buf + ret, PAGE_SIZE - ret, "]\n");
cafe563591446c Kent Overstreet 2013-03-23  1095  
cafe563591446c Kent Overstreet 2013-03-23  1096  		return ret;
cafe563591446c Kent Overstreet 2013-03-23  1097  	}
cafe563591446c Kent Overstreet 2013-03-23  1098  
cafe563591446c Kent Overstreet 2013-03-23  1099  	return 0;
cafe563591446c Kent Overstreet 2013-03-23  1100  }
cafe563591446c Kent Overstreet 2013-03-23  1101  SHOW_LOCKED(bch_cache)
cafe563591446c Kent Overstreet 2013-03-23  1102  

:::::: The code at line 1087 was first introduced by commit
:::::: bbc77aa7fb72e616edcb1b165c293e47c6d4d0cf bcache: fix a spurious gcc complaint, use scnprintf

:::::: TO: Kent Overstreet <koverstreet@google.com>
:::::: CC: Kent Overstreet <koverstreet@google.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007070052.swpLbCVc%25lkp%40intel.com.

--wac7ysb48OaltWcw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICPxCA18AAy5jb25maWcAjDxbc9u20u/9FZr0pWemTX1VkvONH0ASlFDxZgCUJb9gXFtJ
/dW2MrKctv/+7AKkCJBLpZlpE2IX170vFvrxhx8n7G2/fb7bP97fPT39M/myedns7vabh8nn
x6fN/02SclKUesITod8Dcvb48vb3r8+PX18nl+8/vj/5ZXd/Pllsdi+bp0m8ffn8+OUNej9u
X3748Ye4LFIxM3FsllwqURZG85W+enf/dPfyZfJts3sFvMnp6fuT9yeTn7487v/766/w/+fH
3W67+/Xp6duz+brb/v/mfj+5O//w8f7k4uLT5cmHzcnJ5tP08vzi8+dP95tPJ+cXm9OPlxdn
l6cfz/7zrp111k17ddI2ZsmwDfCEMnHGitnVPx4iNGZZ0jVZjEP309MT+OONEbPCZKJYeB26
RqM00yIOYHOmDFO5mZW6HAWYstZVrUm4KGBo3oGEvDY3pfRWENUiS7TIudEsyrhRpcShgDQ/
TmaWzk+T183+7WtHrEiWC14YoJXKK2/sQmjDi6VhEg5H5EJfnZ/BKO2qyrwSMIHmSk8eXycv
2z0O3CHUrBJmzlnC5QCpPfIyZll7vO/eUc2G1f5Z2e0ZxTLt4c/ZkpsFlwXPzOxWeHvwIRFA
zmhQdpszGrK6HetRjgEuAHA4BG9V5CH5azuGgCskDtBf5bBLeXzEC2LAhKeszrQlvnfCbfO8
VLpgOb9699PL9mUDoncYVt0weotqrZaiiklYVSqxMvl1zWtOrOaG6XhuLNTfYCxLpUzO81Ku
DdOaxXOaAxXPRESMy2pQba1UgAxNXt9+f/3ndb957qRixgsuRWxFrJJl5EmdD1Lz8oaG8DTl
sRbAGixNTc7UgsYTxW+IBxJAguO5z9DYkpQ5E0XYpkTu82ORgGQ6PASHuGkpY54YPZcgnMJX
gf68CY/qWarsuW9eHibbz72T6neySmcJ1AbhzYZjxiDVC77khVYEMC+VqauEad6SRT8+g7Wg
KANadQHaisPRe1pyfmsqGKtMrM498EBRIkTAeZAsYsEEh8zFbG4kV3ZXMjiFwcI8dpac55WG
UQuKnVvwsszqQjO59hfaAI90i0vo1R5PXNW/6rvXPyd7WM7kDpb2ur/bv07u7u+3by/7x5cv
vQODDobFdgxH88PMSyF1D4yEIc8LOcMSusMlVhypBGUm5iCmgKj92fowszwnRtAgLmhAld8V
G4EvM7a2PUe6mVV/StsqypE1dxRQImxvCP4vjtqSRMb1RFHsWqwNwDpWhQ/DV8CtHvuqAMP2
aZqCbQBDShZzOwSKr8kjcs3hWg7Sv3D/8PTB4sBkZSA3YuFMtyLNNhriFHSfSPXV2UnHqKLQ
4PiwlPdwTs/7Eq/iOeggqxRallb3f2we3p42u8nnzd3+bbd5tc3NjgjowUGaybKuAlYB4xDT
VI6yRdOBBDuQW94xhEok6hhcJqHB7sNTEOpbLo+hJHwpYlptNRjAmX1BGKyTy/QYPKqOgq0V
IFgAnQBVASd6yrzWyhT+twLPz2+AMwu+C66DbzjzeFGVwESoenUpA6vvOAbdwXHqgfVJFSwa
VGYMtiQhVi5Rf3gOZYYqZWkdHum5/vab5TCaKmuwl54zJJPWyzzMC03jLhwA++6bD1tR9sf2
8VxM+33hLbss0SCEwgyBQlmBdha3HI28pX0pc1bEofvUQ1PwD8oEolcLznaCaiYuE3AomGaG
YyhQsNBhQauvs/43KLmYV9pGgai1vOVXqb8ipwyJNeTgdArkI2/oGdfoTJmBp+GIP2hOnTvk
saF1Og+GPVBe/W9T5MKPPrzT5lkKxyL9XTEFJ1oHk9cQ//Y+QQ68Uaoy2IOYFSxLPUa06/Qb
rA/lN6g5aLvukwmPb8Dq1TLw8ViyFLDM5pi8A4BBIial8A97gSjrPFCtbZuBv6mQpAXb00Bp
Qx84IP2QRkhiG2H4+5KKXwdckkc8SUihtryK7G76HqZthOHNMocZrY2zVqXJX1Sb3eft7vnu
5X4z4d82L2DWGdibGA07eHmdFQ8HP6zJ6sfBJKRJ/pczthMuczedc/taH7QVYQi+mYbIfUEc
hspYFCjOrKaCIEQDossZb8O7sBNA0UhlQoE6BhEqc1rlzus0hWijYjCQ3T0DzU07WLJMRUa7
jFZBWN0fONthyuLAqsJae0vI/O7+j8eXDWA8be6bLFTnBgBi63KQS7IILAPTkq9JBCY/0O16
fnY5BvnwiXY9xpbTwuP84sNqFXjLcT49X63G1x6XEctoDyCHuBhIG9tEVEn78xbnN3Z7Ow4F
evFi5PgyBu709XjfrCyLmSqLc9oyBjhnnPZEAqTpxThOBZwKfws67WFPC8RT04a4GSE+ttKl
vDgdoUWxAp9RR2dnJ8fBNMtIhhlDWrxmwoBjQa+qAdIc2gA/HgGe06ttgCNzimituYnlXBS0
c9piMJnz7DtjlMfH+C6CuoFZjiFkQuuMq5rWSO0ooGdLRTNGgxKJ2egghTAji7Bso1fnn8ZE
2MEvRuFiIUstFkZGlyP0iNlS1LkpY80xg9s3Pi0DZrlZZRL8RibpuMZhVEcwrARVTDJMGNAK
zikwoxRlcFoo/M18HT/U4P1gcX7DxWzuRcuHvBEITiTB03dpAc8nssFCmQsNRgxiFWNNi+/a
WA9aMi95F/MltFz46XwIwcMWp3MxaiVSXUwCNVVdVaXUmM7CrKHnikBEiJmhuJxzyQs/9l8r
m+HnTGbrgSOKmRnHxYYXiWCh293NN4JTlI0bbsD2Zr2dZKdwhHBUTZh+ecgtBebUWwj2Oj8z
8jTwRjzAGUH4YJm3ePDDvfcHPwI+85knXOtwqeE5Yps/vGbg/mgjFANPdXl1Sq74/CwCNnJp
83C476DMQZJAP3GXxz44N77/uf/n66Y7YTuM532DDzirIRImmlxcgB7a9dVpdytlvTAM6MzF
InACO8DpdBGR0tuhTC8WlADbxDHorJW5BbVcygTk6fTUPxAkFcTeKYf9hkfVSmxS55XRWdRj
xLRqDzPsBsIHsHrY6Ng2GAhBBeeJQp5XOZPaDg0Rbi5iWTZOY58bzmxOcylCEG5ErYu4t0ym
RNLIyskQAMRTVx+7A8UkMkRVxEkGzNOgjYj1cShOfjrtqaAUYi7oAqoArwA9frwZC2Pmt+aM
9qwAckG7EAABxhsFjTgeONPlaK+zyykV3dmZTnoLPj05o26wguNhEuVy7l/i3aK4HIjn7MRc
YorckzK+4v7NrWRqbjnXiyvnayVA/eM1LzDtyd+fmz8fL05O/HtixWOM1oLkpGVLUGVpNb1o
F0tlP6yxyRO88wVJL3NrtLIS87K+DvR1SZejjRcJJ6QKfeSFSyIPYNXMXRpnwCGZujpzqip6
e51sv6J+fZ38VMXi50kV57FgP084KM6fJ/Z/Ov6PFyzHwiRS4BUujDVjsWeZ87zusWues8rI
wskPbLoAGToCZ6ur00saoQ2LvzNOgOaGO5zlv96sF7gmTdrmoNyr7V+b3QRi/Lsvm2cI8dsR
uxOyC5qLCCyGDc4wKQWepi+tjTehKrDoBLiBDBrazLJH1Ryiec4DFoQ2zKTadurKKQebteDI
RCoY6NDaVAT4pseHzmK/W2/msaQygOLME8Oba9j3DVg5nqYiFpgM6TIVniZtJmgoOHr4B9/G
YeQHDAAcYOLhaRO6PCJIHrYtZlYuIfxNWlGkwDkv6hHlf8ABr320/xyiVUwP+mO4nAcohsNq
J8nu8ZvLVXUuNY3gO01uo37L4FjsiOnj7vmvu50/Tc+fL5bgYXuOdRsEgP8bUH5WljPYWSpk
jl4RcTI8Fc4Jjm1y2d0Db77s7iaf21U82FX4ex1BaMGD9YcXnzVEELeD/EjgIyddTc8yUeVV
r5rmbgfhyx4c0Lfd5peHzVeYlxR5Z0XCjLE1NL02m8ssXa7MRz2EE4f1/4a+VMYiTuVhrfrA
nCSWzGhRmAgrNLzxJNf9CMVOLWA1qCkBqHugBdlhdKQgd25b7KKs8ZmX5aIHxPgIvrWY1WVN
FAko2K2VDVe50NOU6LGBg6pFum6vbIYIOIUCh78urP/YH8O58WWamv7OsfgqL5OmKKm/Ucln
4GuA7rXGFe+Z7e121d9+k9EenEhHyN6CbhjoPFHFGHZjerkplSKGaNwMDPKCMHes3fa0y0U6
81iXHrCpOAvBtqqh50f4fbt8SNhNaVmSKV+7BCQ4X2nLFIvgosKCgZww77xfhTVSstDn5GGx
Qg8DSNocX8VjkfrlegCqM66sCOFVjwwju2Z4vkKGKVwNDu6bYDrb2ybQIbaiaBc4OD0EOwHJ
8GGvj0O+aYu2dFkl5U3hOmRsXdZ97o7Lat1MAiGVHyVlQHMTwb5AYyc+wLlQTmDwjKl9NSWC
0sx7S8czhQAl0DNdThmTK97VB1WB4LjXCUWThjGFPGjmuFz+8vvd6+Zh8qdzjb/utp8fn1xR
TGePAK2J2ckLm2PDBAvButMqq2eiIO8uvmMg2qGAo3O8HvTVqL1DU3ip5MWbjjGDgMI2NfE5
xgd0/s5h1cUxjFbDHRtByfhQnZnRGd4WU9BFGA0YGUSCqjyGg1dKN2CJwf8tvLoDI3Ib4tGF
fwVwGGjjdR6VGY2ipchbvAXeV1Lmv1EBGjxqvIFY1J79jJrSlcPnAoJJJUBPXIcpm7bCIFIz
sjET0bAdk5UzKTRZqdCAjD49GYIxNZMEV0hY8NIEkVZi6Cw2ot1EI3ldOzbedKb0adrdY8K1
YpQvgmBXumx4Ect1FVYPkGCTAuUj1pUHVXe7/SOKzERDoPvqSzJsSwvbiSVLLHeg7ohzlZSq
Q+2mR6/Tb+4iid6M/nrza4xywz3k19Yw+ffv2GzDE1dqWnZlTJ5nCP1E6TIRWGzRlHh3gtCB
F+soJF+D0sKj9NrfQDjfQQWr4vTq+dDVHbyqwEVE1QDKN6wYdXBrGxz8GIzsewPcysc6+8Cw
98FU2ALgxC6xF5H2UeRND6ELhi0B+N+b+7f93e8QFOFTh4m9id/7MY0o0lyjye5N0gFsYb9n
76ApdODxy+U5WwuMvZpyOo813IgqlqLSg2ZQeHE4ZJN/OhB3bC8uQtw8b3f/eMHcMB5psoTe
WUEDOFuJtc0mZ/06+pQpbWa+DmxKsIUqs35BUJWBY1BpS1Vw1NTVRa9ThIo90AKuwbkWvYJo
qs2mqyVHKxA4drmYSdbvjlGFaQtAvPAPnCMIkML6FkVlbFtSWicqF6hpEnl1cfJp2mJg6hnz
q9YvXXjnGmecuXjDa2uuwLrPYVZkCE0pK4VQCKeZuvrQdbmtypK2zLdRTRv/WzUsXmlFNWkL
PIZuurteW/YiCDgHm+NuSnhbjwsLDkHFz3MmKU+5wrtY9MRZ5nP6ODN3Z+9JEJYVwhLRsWjl
vtjs/9ru/gTPzZMDz3zEC04lYOtCeMVb+AXiGuQ0bFsiGE04PeJ8rFKZ25on+iaW41XSmljP
KqnwhhcW6x2q12hX4qt2HnjWonIFdTEbebIDCK0BNRLCBNrWgMte+E8S7LdJ5nHVmwybMWNN
12o2CJJJGm7JWI28m3HAGSpantcrYpkOw+i6cHdyXo0o6phyIThNHNdxqcUoNC3rY7BuWnoC
JIth9JMVCwMPdxwoKlSGFF0Qetiu32i5ImzScdU2h8PXSTXOzxZDspvvYCAU6IKBP11UhbPD
P2fH3LUDTlxHflx+iGob+NW7+7ffH+/fhaPnyWUv9jhw3XIasuly2vC6vbkcYVVAcjWzSuMl
5kj8hLufHiPt9ChtpwRxwzXkopqOQ0VGl7BYYI+hfZASenAk0GamkiKMBRcJ+CfWWdDrig96
OzY8sg9UQ1XWPFIcEROLaEkzDld8NjXZzffms2hgdejiGMcDVXZ8oLwCxqIVDT7BxExbaNZQ
FCpd4StSCF7TdQCxXar52iZPwEzmVWBVAeOQsfP1i2sk5cZZtO1ug9YOPML9Zjf2PLcbqLOT
AxD8yz5ufR4F4SMPD4zl0EVhPYSgFZ+CAFvn4JE9e5txABgKolbqWL3hiLP1ofh2JQ18uABs
E6uU5xRgpbqi9wJBSdxbeAeD5UcQfJniu+Mr0RtfeydMkLg941lWc0M+doJBCqaDQeF7sBFs
c1sI2/oLwracKYikJEQqvdMcyulgwSuHc/XsOHFlQ5PXyf32+ffHl83D5HmLcegrxYUrnFku
+l33d7svm/1Yj6Z2B0+4ZQ+CVTvEkFl9BHeKBA26zgU+OhiR/iFy6uY6OiIEdEJymrAEukeZ
o7v8V0cBiixXA0pB9Hj/xxEC4VtcjHqsxqfHd0iUGhhiuTD62buDPKa7Ar9R8VH/dakGOlFU
//0XKjFFz0Iyaw0uevLu3GsLoR0/EBBQQqv1UZQEop8+PFSG4AoPNGeznK5Rcnwv3GuHnQNI
VAcZDNobU9JrPTAijtcH9mQi6NHxIh0eFPjcuZhlfDgCOI9krv0YjRoifpseIyNNLtpZCsg1
itKQiypICqgwpUg29c9zOkabqTsqlAbs41JEA4Qh9aZHyTcdI8D0OAWOHTApJtNRsxhJkcxo
ty2q3H7GBDiJ49F4UcUjsaQceYypx354gGm6YDs705SWV9oLeGcopl26SQZh73DnDcDdiGN0
pFjPqcMmoscyY4X5eHJ26uVEuzYzW/rL8AB5AEh4HGRH3HcT8nTNWRY8/4VPutycaZZRj45W
Z5feYKzy7jQqLOIPIoxpVt5UbOSFOecc93E5okfRxvUf57Zbi71Zk0LhK9ISf0gkIBCQntmL
AnL8suLFUt0IHf6mRHvKbfbFY/yln3whxzxgZGVZ4ZUGNbK9OPAnoAGdJ90diPUTwyA/r7LQ
qbctZqbKEMfyQe/3ANyzXGr7cyV7bo1xR9Vz4QOM7BwNBpp+2tG/ltpTbvhlVJ70WiAu67Xk
c9FfSxH3X/A3wOYxsw3I5Mj7IA/HBWwUh1nJWWHGeG3Ch5vRdZBkwleOv4nAS/ETkZP95nXf
u462q1vosV9esHpClpUB6ovBC7tGiQ+G7wH8BGinmHIw5eJQ11Td3f+52U/k3cPjFm+899v7
7ZNfuoii/ux/mYRhXU3GlrzHR7KkcumyVLx1Ptnq/dnl5KVZ98Pm2+N9W8Pl35AthAqEblrR
YhRV11zPfWsZsTWIjMG36Gmy8sfwIPOEfn+zZjl5zkdX7fEUo6rKIs9aR/iIkyf+uxTgsBSF
nGgyWge/GYK9C7KAEyBzkVTBGHPV65tRdsq2+6Ue0JCr1P6MV9iduJLwwYpnaf93n1w98dPb
Zr/d7v8YJXek7S13FpyT1OH3PBaRrlUUkLRrdvWtriZ2bIkH3Cim3QEfJ9ckw3kYUme9IwJQ
zcYeS7mecX52ck4lsBt4xU5PVsQe05p+ZGWhS/gvOKxcLsPTY3p+vghR9ALX6kdko5Ty/AHw
KFdyzMtKzSKmNEAq4LSaKpam6Qai4cylojr5SWfoCpwO01wt4GWzeXid7LeT3zewaIxjH/Ai
dJKz2CJ4KqRpwbgTL5vm9iELPne5OulmvBHQSqmsdIGvp57D756kNI2icD/f1nmnrn1WhabH
U+yfqtBYf6q6SoLAAnwifpLDUzdi5Mc8eDU3vZ/C8hx36sqvUgz8Ax4uS6RBREGlS1vvS2nT
u/IE+woLCX5yIP0fZ9fS3TaupPfzK7ya0/ecmxtTsmxp0QuIDwkxXyaoVzY86sTd8WnH9rWd
6Z5/P1UASQFgFZW5izxUVXiDQBVQ9UHItNjaaigs3nVRpP3RmOen1m6r3VYVmVk58Ew2cAC2
e4b/owXHcmYbkPVtMuzuVIcAV6gyc7LRFCp8vudpB3YF9SH73hXDgIyfEj7herCCTclYONj4
TFF3Aci528jq1u+VkSmHXFVvmIAyYMqC1gyRB7oYzxOeBtZz10WNznYoNVgXkPbl+en99fkR
kYK+Wp7xVt5JDX9zsUsogDB3o7ABuof3iGWwH9Qhun97+ONphy7nWB19qqV+vLw8v77bbutj
YsaF4/k3qP3DI7Lv2WxGpEyzj1/vEWpCs09dg/hlp7zsVoUiimFiNSV6g2BHkArQ+Wx7Jyp6
SPrhip++vjw/PPkVwThWHTFJFu8k7LN6++vh/cu3n5gAatfaLXVMY3WM52ZnFnLR0pUoZeQu
+KewgYcv7aJ1UQzdETbG+XUdpyV5AQ9mVJ2ViR1Z3FLANjAQcafL7lrkkUhZPDpdUheRYdA1
u8W1D5x4fIbBfrUch3ZNH4PWLdv7uhJ9PoiV1NeglzZ4UMNWEZKUX+hJqNtXhiEebU1720S7
jqJTpOM/1XcaOjSaMDWyPq1AvK2YG0ojgDpum01TxVmxpbpaCwmMKO1EDaZkr1D0Ee3o1A6a
qwc5WcUrxyHL/G52liNfS8oy2/+wJTp+dToIYg3jFCFCW+IejyAz0QuADtMgvw5mCvfBgkZZ
dOb0sgozVS+blUTNvKL3CyVR5cAwMHoLBpO/d9aywvW64jox+Cf33ZGqIhxAA61y5f1CWxB9
j747xAwx7SiGklVCczbL/YCR1ZHzQ8+J/hLm5Gv6cnx9c43fGoMUbrSPqnKz6GKtCJbl8uuz
ioSiGt9gGPa9S4d5orESiCQdy9xkaa8+7eP5ITgN6iCLZpO3MEG0m+5AHt1Lizw90K65XXfp
Xty8YQSbuWjUsEr16/Hp7VGfYV+kx/8d9OsyvYUP3O9V3Yjvbhs0sakoDT6xLdPc/LLU6zpt
qh2RTPqiVRJhXvS3oZKI1kVU5ieyh7oold+S3tcZFgBzMjfYpCqRfayK7GPyeHyDLfDbwwtx
JoOTLJFu132Kozj0ljakw/Lmr3htejyJ1b41TlhVx8yLNmrNaQFylrBdtQgw9J1AJ5j+rOAq
LrK4rijHOxTBdXQp8luwEaN63QRuZT3uZJR7NWyoDAjaxG8450vXp8BTE9iMmSbo7s7ANouG
wwCaghhSN7VM/flTCcqk15wic7MQS4TWsY8URmZWC+f18oKnlC1RG/Na6vgF1nh/+hW4Yeyx
e9F9RvndhUH62cioeyaEw9Nd2Wwx7I1WD3QGoCRXzBnhuZYYzNP7x98/oIp51D4SkOfwUMwt
MQtns4CtkEr50SnXGKfrjA/88Wnwu6mLGpEN8GzE9nBuuXGlo5KQG0zmxCo5wWYMzKKHtz8/
FE8fQuwCznDHLKIiXE2tkynjUADqU/ZrcDWk1r9enfr8fHc6i2Me56Aee5ujIWKsJYaS6vAE
99PsJFqVjU5e1INVq2NN9rgUrgbzxvnEdg3KDnoxLaOouvhv8+8EsQkuvhvvaGa+mATU/Dyf
ld2uzdJb6YHQ7FIdNajWBZgN3kzRAst42QIFTC7deiEXAwrGPk+UQfenJXVa0RfRRpU4KdcH
MDJoJTKqLWfSwoEhBb1ok8uaeawAuBghgcFgdgbNbbH85BCiQy4y6ZSi/WYcPzugOUo5/Hau
aYuku710aHhaZoCuTjaoqBj8kDYkzDmTbqPE8k2a4g/6ZLoVwvMApXCVQDQ4BqKsE954SDcD
Abz8HBWIqiVzUt9V+gxf7WnMmY7PfXFhhNgq5W0dRlu6BAS+xa7H80n6itfc0p7r0XMtrNR+
eKCUb7PYOvrp9EqgdsgBw57CJMRRM6YxvreitoJyNT0RS1jNlE8NPYJxOyGJeoidE2uLlzDA
dJZI7Xt+dJeXdgcYLeHh7QtlZoKNnx3ww6JP7dYirxkY01omme5OotvAHE4LtakQKLDayjB2
VOo1mNcpfadcIqbkmkZfNZgZ5JEX91yKOXBsVJTE9q6DnthgJ1lmW7ktRe68PTMprXdg4hih
OawTwK6dmt4spuH+2ja2PHnrw1neBJeDXmthO/4+vl3Ip7f31x/fNcrt27fjK+zJ72iRYT4X
jwj69xVG8uEF/2uPY436KDkX/oN8zT0zOjUdL5JyJSyskOe/nvDMqPVNvfjl9f7fPx5ewXaU
E41nZFzPnt7vHy9gRYfN8vX+UT+URJyebovSP7c4OVeNZNH3frh2rnv0uIo0RCBvTk/tht6X
GPC9e9K1AGtENIJ+8MD5upw7FRnZjw9F/S1++Xh/fEMER9Dpnr/ogdE298eHr/f451+vb+9a
Af52//jy8eHp9+cLMMghA6NrWBog0HC1Lb3QWh34DCwFPCfaAGir8TUVRELqoMHiQ3muq1wU
d49GhKRpjQL6TCnpQ8ywMajeg1Q3tB9/+/HH7w9/+80b6I39fgvqBV7s9L0Kg2plS57Zd2nH
bis6GbSyrye08dDJiDi8PrfVi1QGs/10XCaLbq7O5BNm0fXVuEgNSjhYeKMy67KeXtNunJ3I
J40ASDvW9L0v5Xg5sp4HN7RXnCUyCcY7RouMF5Sr+c1VQEMF97WNwsklDFQDqvfPCebxblRQ
bXe3fHS/lpAyE5xbZyeThovL+Mxw1FU2WdDXb53IVor5JNyfmUF1OL8OLy+HDgIIxdCZfoN9
TuM0ZIUNNS9khC9JVdZJIEqdJHSayH4mTFMG99Sa6i0NujJtLTRK38UvsD39+c+L9+PL/T8v
wugDbK8WfF7fl5G9KIXrylDHMBqATV0Z9WkdR7+eyryfpdvSKz+UEoMC2gwXHqCk5qTFakWj
vWu2Qlgt0aJsnjqq7jbyN2/EVCnbMXJ7OwmpoWuk/pviKHxNj8gI6alcwj+DpiBL3worJjzP
SFWlyZjcVv3W/ZfbVzuNuuhsbppDR50Znj4l1+9e2DPFDMt+tZwaMb7CKHR1TmiZ7ycjMst4
MsJsZ+V018C3vNcfGl/SuuRAuJELeSy4BaETgHHi+YK9rDVsEY5XT8jwZrQCKMBBeXcCC25X
NKvSdrQF2XaTjYxUVNaNnNC2iCkf4wZhvoxI4EUdg3OulwOo34Q5EI1XQi+ksNNwXqy9jIEF
HZcZ7wrY9c8JTEYFNERweTfSn5tErcPR+QpG/8h6kB24m86WS9cO1iDGWjb15l5jaPeo/TRY
BCO1TtqHATmrQgutIuakw6yt5Ui/4tNJjJN1xxec941pYM1ofIZ7yGbTcA6LCfNAAQrdwd4j
Q0QhHinnLhXcsUTPP7M2puVYBlE4Xcz+HvnYsCWLGzrSwegXin2HAdm76CZYUP6Kpnj0Txhs
DGV2Zpkrs7mnUnn7QeJ3m81t/RYH29E6TpUsIGHBPOiga+zNOXvn9LQ553COsn2joQVphxVk
EUJ6xqJySNgzlwNKMKRcOrdihnhFolcD83TkZuejnQYP9k1H79jiUEbc71qBVkNTLLJuK2cc
UKp4JVUNFfYxuPQhbNYBhlI8u9ERD+SrM0ncWdCJtxfpmcjBlKg02h+tI0ba0VFBVTXwLxr+
3y3eBrTOSpZx5FA1ephXrMpFiW+Fkj0I/Hot9eX0ViKkHfc6JGaOncgx9UXRqES8ZNyI9JUa
3QMagNFpYSarqqi8JmLUIbpXaWg8rhD2qwfe55j0bMDyhnPXpsIi6dXlxGIsFUdmzQvpJz1Y
5oY8IsWJof18XJ8mvLnxIHVsLt711Sx3GA3md70ee3Zwe8A+ur4GsK/v3D6s3T3Zr0PISH86
9PE1sBEvmNl3kV36O1mnbbRBaaeTfd8A0XR60V6WY+xkozxgZXNUFsfxRTBdXF38kjy83u/g
zz+GVnoiqxiDAuwKdbSmWJMHnj0fKjYhE+ZcVXuBQnkzoTvDHat1fxui4Syk8y5mTgznssgj
dqXBSwySgxVcbTgjJr7TYNYjqFLcHQzevcTcdbQIMbaU5MmSZW33HAdPKhkP96Wo4k1EK9Qr
zvVFhMr34j21C/6nCubt53pDVxDozVYPmn5nnEm9PXMVyE20PM2Yg0gwvbxEnePE++vDbz/w
zkAZn2RhIco6F/+db/lPJumvHjBkboChBstoVFTNNHRh3LdFxenn9aFcFySSupWfiERZx060
cUvSb2ngh3gmA9AbnI8proNpwGGAdYlSsO5xh147ZzupDAvSz9hJik9rOfUN2RfxULgSTa3O
NSITn239y2E5+K3wcx4EAXv1XOKsmVLvLtl5wtqQ11LQBVYhTcdpUTiHYaJOubjwlDYZkEF/
QcjhOvHcaG5AB3IuggylyZfzuWtaDhMvq0JE3qReXtFG2DLMcL1ijlzzPfMmGzc7arkqcuZ+
ADJjDrtXsMbpV9PoPfgAGnLmu4DY+TIYM1Z/hB7izzKn9FErTRsl4txXipC66HYS4VN15FRr
zUP3dNpYjDU9r3o23Z09mx7XE3ubnKk0KEFOvfxPn0iiIUmd6bmKM5nLfqFlVMXFJXMsEuUk
PqVVZuSuqAYLMJUMZFGfqr28OBWUTph3KDd55AecDfOLQbGP3QdM48nZusefw7X7nrahNLl+
shMNxQxtQP9DHOZknhghZ9h6I3axJFlyPpnt9zRLhyHbNQvI5SX2H6jSBAa4bkUfCgJ9y+AP
7rkkwGAKuWJLp5emT7TH0KkrMlFt49TpjGybRdxJ3y1zUahuD2f2qgxKEXnhTKMs3V813Jly
up8NnFBsrtqNshPKOd+ujwwrdxLcqvl8FkBa2lf/Vn2ez684pwwv58Kf+9D2mysyItxPqeKM
ntDZoZJO78Hv4JIZkCQWaX6muFzUbWGnFcaQaB1XzafzyZltGP4LZrerWKkJM522exJUx82u
KvIio7/+3K27bCC//9/SMp8unA9c7OfzmwWDHhVPbs+Pfr6VkXR2Cf2AQ+QpesOExa3TGpAn
UZutFAbhGFq5krn7dMRa4Bu09DAeYgygS+QZhb6Mc4XPm5Adbw7i7RLvUjHlbtHuUlZ1gjz3
cd5w7DsymMiuyAZ9qTJH67sLxQ0s0w2L0XCHACExhxtaZWdnTRU5ba+uL6/OfBZVjCaEsynP
g+mCAcVCVl3Q30w1D64X5wrLY3PdTfAQcKgiWUpkoA84vgQKdyLfRiFSxvYLSDajSMH2gz+O
Tqm425UkxPchwnO2ppKpcBeYcDG5nAbnUrkOAFItuOsqqYLFmQFVmXLmgMrCBeMAFJcyZG/G
IJtFwCTUzKtzK64qQoz62tN2vqr1puJUtc7Q9Dg/qpvcXVPK8pDFgolkg5nDuIqHiLuUM3uK
pN7SsytxyIsSjCFHnd2FzT5deR/wMG0drze1s6gayplUbgrZhCWoGgjqqxgM4TolEYHsPAu1
lktnV6jD6WzuuoMN023dnQR+NvwL7cjd4kuN9KG0le1Ofvaw2wyl2c24idoLTM8Z4saf2c68
9XDGFTeVDO5zKyP2kl+ZW5k0hXHkZJIoomca6GMl428L2m5jznfpo5j1gUNZKUvGT4C20RBO
yCB+6VdU7T5CVihqulHIvAVDhzkrQnYZr4Ty/ZQtflWnMNvosT3x6YMP5KP+Omf2d+TDH84C
RvZa0bsZ8mS5pteiXWo/eY6/TqeNmdlNKV7tHAbidRR/1QrcGafUuZlmNgC/zbIOnghud9BA
sDorlGFVsM0562+haiasqqykylxoRSLTk6lHMWPQWtk+rYTrD+nwetWGYtreljbDfkvLpteM
/OdDZGs0Nksfgsa5PpoxkRAaMupi94CoT78MQfL+gdBS6NX+/q2TIuLsdtwdSLbHo1lOncXA
c0lvhPqypgVHoq14FZEbydbRb+FnU3oxSW1Iw8uPd9Y/tgOwsn8aqKvvLi1J8DUfH7XL8BAe
kYOFNBLm/b5bGlfbiGSiruT+1kBf9BH+j8enrxcPT+/3r78fvzje9SZRga+6xVu/th0dsa02
e799PVeBtQ+Gxv5XfGB8XObw68313BX5VBy8kDtDj7c0+mXHNZ461uBwIbImwW18WBaisnxc
OgqseFZowYla3y4p6fQW6dYNfs/x4cpoCT3OpO3Vi5lBJOqUx7vafRSgZyEMK57ZUFczvdDJ
DBlw6mInduJAsTY53RMFzLIropZ7pueWYUZQESykzFyL15o8I58DzBx8XIQ+fjUiGkGasjhb
drEJ12ZqnmpmEdHJpYyrWrpHALaEiG7mN5TR6Ao5DyLYrPBQ16rkj9uGsldc1J0tiiG1UHmu
1LXISlCbz2YDmk8qemQWsouSzSdZqw3NXG3yzzFXiTilPGhsiZ3A44QdetdZ/h6WQKZ/cGMj
s/31BjRaRRkzjiDYeNr5iiri9iaYcE2Aj04jSJ3JX/+/kqt1TZeh/7+TOdeQGj0fp9PZ/ifa
orXdIisL5cTh+yJmZHl+KXKDG8jwpxnPk/UIM6431bLg+WbKsOwoC7ET7Ic8B8VX3azgBCJf
rxpUAoPDRNqcyWhV1EXJsz8hVkw40hXpSD/EE8kzPx/w7FaO5V1jePDVDOMYWSEz7fk8hDqM
fmD6/7L2IrgoQRXqRaTgcgoLsAMr2WwTxpBqtwRJzv8qk1feo/CalFxOh5S+IjZ9AvtcnCsb
AsvIB8GAMvEpU+ecu6XR16iGOZsNFMz18fWrDrGVH4sLP5jH7zlNwL/ZS2wjAcZXqajLI8OG
Lgf2qTWGWomdFf6jSa2PhhH2y1ATdE5kCxFVqBP6WZZLgmoUJJu+GTR+JbJ42O7WkYfqxlNM
MaHDG7Pk2/H1+AUfcTiFyHeT1H5ReGstiKFxlELUt1yZ1zyVLdkJULRGpXFsvxa6I6VPZHzk
NHLeu8J3FBfzpqzd8zsTJaLJxIik+hEyRMtD3MDOQlD3rw/HxyFeldn1YRWo0kPovFVqGPPJ
7JIkNlFcVrHGKxsCVdlywfVsdimarQCSHw9niSVos1NY0rbQoANtpoNmazPivai4YjPc/UkX
DVsqr/RtiPVeq82tQDmQWdyLkAXFe7Cxo5iJMLAEhSrxzdQte/3iDAIdverUrp7M58wBuSUG
E49132rlECGvDcYeLG3589MHzAcoeqLpqM5hjKnJCJuWOpqLx2AHuhfoRyTwJNwdwiJaefoN
+6ToA4eWrWQiSfzKjh+G+b4cFGrIbFPAUrqe2g4WLp1N167Tn2qx0sjkw+Z4El1OfAPaBC3Q
OctDbHD9vPzgM7CFlmITVfiIVRDMJpeXg9oh/Ic/t12J9py6VEyN7GfbTjScEqZ2waDMqmTC
hQw7UWmTluOV0jIyx7h7slYh3iEJjMmQKwmajhuN0ArhavM5mNJB7N20KX1P5h7Gy1nCvfKz
sK4MmvpgxuQmFjkyJyMnNUW/ncJqF+EhTEXEOPBnxV6YA9iUOQ/REjqYkPOFOeQhnopyocMt
u1kxr5qRbvtg9Uap+zBhs2K+7rz4XHCuGggEVTPBDxoCln8J2LCVi9O+7RBuB4ODB2cI3+o/
bTP4/GWZSbDp8yi1c9FUjUod+SAgmoOINwbjle5FFDJ3N+bQPBGkN5uWU3KQPz7hyYnv8Amv
qFj5lUVQ9yJJHOSVHWikecSgEImyRI9k+gHyrfNaO/y+dQj6XV7T86coM7E3dMQ4ncyurcQt
IJB1ywh/SqpkWKTSg/dIekeDnZL8gocq6Kma2HqYOxtV6/j1HkvaHH5OQgrmBMlUOba4JT1l
dnfmXk+VzNexpoHySxchvyQC704fWF2ixECNQNqXxwcDYeRrD5glrAnomXSLCpc1pBZL67+n
CWBx9OL4/VTQH4jYfHx/dnDfDbcuoRrPX/4kKgE1D2bzOQahaYg9+8qkverEk/icec3Wvjs5
fv2q4XphVdelvf3LjlcYVqKvg8xxtT81ssPJbhmNfrXJ0seBntmH+5Y80JtkA8lcDR5zgv/R
RRjGyZ9ARzC2ZdMXbG29YFVckYpIJ9BqoW49kFGEcVrUQ3qGn4kY0kN1dZPOZwxjYdk0OCtg
0AYEDcSoo/EMVuMsmHQSoAi7G22XRFZ3vuOi6RzmlRNtChukCievHg2pnV6ZgaD8fnx5uf96
oTMbWHI6HaILGbDz7w7dKGgekXBX1/RoB4Y7OY6ajeYU15akxn8ug8tBpv38ISwIR65qP1Ob
uE53znWMJmofui11VKTZ2XJ+rW72Xk6ggX0OJjceVYlMzKIJTJJiufGGQsnCzwRGLLRtZU1s
/Ta8fseI5nBtY/2OjKUZ6yQy1Pu/X2Ah8W5Vda63cVam1O2SaaL3SWhifZft5w5+HVFOj691
pvxlzbkymLMdJi60ZcoGn4BoAtpLtBOKjdSEPmLTUlUUTgeoUdZbFVTr8H0oonVtKoLrlSlW
qypeCe+pOaf7YVvYWC/W7qzDxV3QmImjCw0+/PXweq/R+rPj27t/fx50LwTiVWFB+SKfRCI1
uVpc2oWeOMEuc2rQMtrPjChPrWgEPKK+djvU4/F/7v0m/B9lR7bkuI37FVdeNqna1Nrypd6t
PFCHbU6LkkaHj3lROd2eGVe621197Gb265cgdfAA3dmHTNoAeEMgCIKAyH/XwAMP7IvvCUpQ
2h6RkjCwMX5e0mn8a9UDxWSqTY9SdOFAeFNt3nqEP547SkzHLsQEr2o2dfVqOm1C9QWajvRd
kzUfOxilp1j6Y7zWpT/B++LH45kqwfT17jdYkayJbJWtTDgKh7mackIQFXGpu88p4C4pBqYk
KFTt/ovWIIUDaFyOo61KDAHuZv2h5EPypAq9mzlmblepWLWYCu5B60C6hlCZm4yNG45Sw3En
FsGvWKaGpGypURxEkWU4qs++lScHHNrGUhlwEZF4bfdvN34ShZBmlgsYx7EaksGI0sjEtAUF
my405ULF+JhrpUYw0XIGtpgkXnOtZovdb3UknV76aCKCzx5Ev3Iimk302UbyE+hkybeuARNu
IGBA0dAynyzHMxvBi/g36lVXhzDl+FBAxBJBBtVRJNV0MVe++c1Oy6ErfjZbqmleEiiVWlB1
bUPw8Y0rM5hDmLx7KxtSTpcOb+6OYg9h0OHCMOU7HxZqdKgLjOW6pU1i6PyWa1+OQFMtzWo5
4bIcM2CoFL63WmMtSIUXdV3uOxEwEiuZBBR4Hu/RboO2u2OoC39PU/lLrCxw1c3ySsE89JfT
xdjuDyBmqlbcIdIqlJs3LSvTotlShNVi4ePufCrNcon5avcUeciW6mfU92zHYI5tRLmpJnOs
QyUt5/Oba43Bu4DZkk3Q0gIXTPV5tMi2lCz8BfYcuKeoJt4EbWJb+R762KIj2PnThbfcrOxB
S0ysosTqEM3TtQVB4ICKgvcUdk3YEcUs5sIghfvEdjeRIWYaVqopQDvyDPtaOiREfAFnLAhQ
q1uDOoo2KWSzziBkZ5w3O+pw/8JKrAgtZJKuK51QC4jkaiL8j+IA0dLpFeL4vos4OiDpWvyD
o7HWhdVIWTRrNWp5zYxNHpzrsVOHssEi3NCZYTGGAx+grCxpYFyL4Ul0Q0ZUcgWs/5IxQUW+
SpS6x2PgMgsNcJcazqIfEKKorr2oFIyqxjA5jlVCSs3nRYBLAXYNPu0KIW2IcAQhSx1YzVwk
Ma3uJA/97w9v56/vT3ciJ5cz4fcqMu43ASJ86xu4mAq1TEM9apOEqvcrIHobwXBfA3WDbcwR
YrnHTzHR2mNVk1sP1N+IDmD8Ug7wUZK6kRu6mHkT4VCKdGXDtyzIkxpq+neShw112CUA54r2
C+19IukXvrRZhH5+QCENMvrI4QxwszQHvqWQgyVzRSsCEsSsoWBLNh9P9JYEyGAxEuzn4zHC
LeaxAmCa6yExeUUxHakD2ftznFMKcaDH3F07y9M1Zh9OMmsQhZl2luiBziB7A8WK7sGNIksq
rgYPIxoI4KKtlje3Za3dJgw0ffg4lQrpjtMtfCCRZ8K/QDTH87XoRKieN5Dkqs1HGbJ+bVCE
kkEeFQC8Kuh/J1Q1QXBsFIdcyqoxoik8Mu8RWr4AfloN5x0Gv34EkgVGMhB82rpqL7P08FH1
JUkP2fUGYP/PlSYGDOPrfhtEKG7P8DJUno9sRBEyZiPEnG710GgFhO6mIm1qFWt1bOh+vok8
Yx6oK3ZW152C4G5Ccog1uttDj2Nw5JhqPSirIibsi2ASrZ11VkACamdldF3zA6lWV1Vxamqu
KmXodx32Ifm0OuRFhlWJtHljMpSKj4Pj9GF1aUk13pE39ML5j0EGLBcD6c3zru6DbN8YaZM6
2QkPxZoQ4nrVuXndLJyy66SMfaBA10w8NoQk7RsSZTuTTGuka+ARBUNkxEo31XT4ICq2woOw
jJM4tIOvsdP9+dgJbgjdrydYkyMkDFyC2sacfeQ8AbEiqy02HZIEHGog895Ag2+dgrggcGvw
MV0ZFR/2rbuqUrqm4YXFSu12f8NjTU9XcEujWDyWNRcllKaOZLjz357vT5dZcn56/7N7eDdo
grKe7SxRvGgHmFhCSDeiJoyRaMgr2mme/ZRIlNwwGU3Fg8V0jT4zEtWzmHlgNtTGITBCQYZX
cfygQ8rSxO7SLIpVUzI2SIXFlDTjFyUluDbPCI3KpL0OLcMGdmknz5D56HQ/Or7y0T2c7iAo
4PFt9LeVQIwe1cJ/s7kbvsKPmUxkVXcymZj1oF55xiY8wJH1FXA+9zKDrYWBRNXASnSN1sdE
jmFtVQYuR15VS8Zo74nRgbZcJcxwrjE24HtgsGl/W2rU1Pr+VTm2CWgk28oYSM+V/Tj0TvRM
KxydEjiWq83PEjVpOZ6sQucphc2OT3fnh4ejlnFSl3NVRcQbC5l36/3+fOES4u4Cd4x/Hz2/
XCD7KXiigO/I4/lP42LyrxWQWYqjsidUq9Dgg4RRaRUo1HrUGlXrMkoq5U5PLuoeo1CfH/lA
/n2CzFgyn5NdzCYZZvAfkuTuwmn4bMBpwqrlOqH0jY+K0dv70+nFLm2i+jx7J77aT6fL+6tI
3oUVvUIlW82ps6yFkxLo/fXt8nj+72lUbWWvtEIYWmadu1weXsHviG9Jp4fL8+jp9J/R1xcu
N3lJRKLazCxo1i/H5+/nO8Qxa7smkL5e+eIkQHjarfO6/G2yGL60CHEfJxymZi7sFk8BC/jq
5fh4Gv3+/vUrn5rIfMexCroE70NXOCzNKro6qCBVxq1owXakiBv+nWIiDCrl/3FtKYF87lrN
gAiz/MCLEwsh0kIFCdWL8PM3Xhcg0LoAodY19DyA2FgxXaeQJJGiNxFdi5lqAePAKF7FBVfw
G9VowOFgRGs2cZJrEpQjKpqIDlTyhYq9Gt+7VznI1Q/MCC0KR3wNjs0Zbu6BgocgLjxXDEhO
QEq+IRCHg6tYh7JyIuttXGJmfI7qX1ur2wTM5ySaOGN1AbuJCGYuLN9dnDi6nDlHaTuBaLXy
LdpxCIQZqg4TD7cqSKwLVeL2CsCQrSvpGWCpc6XTOOO8TB3RZ4Lm9lDglhSOm0Yr5wxssyzK
MjwqKqArf+GwvgBzF1xFcHMQKfD354JxnZWGXHoZsYaUGWrNeNqssTKsV9ihFRg1SgZ1B3gl
YM16X83m47H2nbZWLaNq1sUBdLJX4JsZDtXlhIzyVm+XE+OjbaU2KqSFOAiOd388nL99f4MM
22HkjLXBcfIA0RpHhhECps8IORjUSXibwNNrR6kBb6eZ7FFgM0PAwolll6jZCJTqdLt+D0/a
S+l2Rj4YtxSV/ORyeRA5Wp8fjt3ei2+2of2UiYP5X02ZrSoIxMGPktAbZD1lNuDQfF6ggeGp
bs3S8jd/jOOLbAeu8z2PFPy0z48YfE+xa0aQfIEqvv9B4B1GCi1xN0ZdZJW4FMO4E6283dsq
chtn29bG0WlJ16e557NsrSws/ILXP/Web5Cp5nikoPgSOJwaFaIwqSvP9Gps+2ZpWEMNZVYj
ie83XGOxGIQDh57zH73XCdju0rWa4ppj4SXw8OBUlh28PXhpJIeq1F+fT3fwHgn6YB16oCCZ
icDyj3p1JAxr8Sgcu7oR+KLe24UKcFPH3bMEQZ6jfuU9jhbmuMxwXyqqhqBMiicMTGKc3OrB
GyS0ynKjYyqargMIn7HS6wo3nD8P+iKFG8p/HcyRcwWkJBQzPEpsvVZzNQGMkZCf8s3axSnU
gPFBVhTuaoLxfDY2kIe8iMvS7A5nl3WWFhQN5A8EMSut4cYJSc2KwLDoeO4j0dhVm8B8uY2N
wa1jFtAi0htdrwpmQJKsoFltjWmTJcbLY53/q4U/dS0A74sRPkJAD7EOqEMr4CuAdySpMizO
EyC3NN6VevwH0Z1DIR0EtLFREateB1VGJz6RQH0CAKBqR9MNsbj6Nk7hpUaFSlwgSELp5qdV
BnveDx2QZtvMgPF5MPNNqPAm+uRciZ6G/8ixaesJVJdIABY1C5I4J5EnUapgpuub2Rj/hAG7
28RxUhrF5HfGV9QKX6QRJKB0mV/nwXAiAKi4aVln1kLIgNZ8S3c1kYEpy/weRB4pyZZa26ka
HE4CCtVQCCBIY3JrfiE5P11xkcW/H+yALCjaGDl6/XlckeSQ7g0oPI8Njc+1BcqzOQLvVSsc
DfXhCAjQhmJCWhgILqZkxJXS6BtoKXsdVoBCHcXmTBVZGBLXanFBrgWkkTAZrcuoB642XbWA
qVWEE9Q6VEKuIgvEWZdv3rEl83ibeeLc//i5xRCdEL+Fn7P17A0d8NrGLF4Af8oOV1rje5Ah
JLhQLOPY4BBISLdmBuEGHkzKZwuqS9wART5ceJ6+a/IS8/eVUtlIgyKAlMJtrKPInnL217sG
ueNg0EO3OogmnQTpISKQiN3gDOHz12zqwFhVCQ/5EPnBpA1oY+pLiZmKtDMsIkpb/y4G1SZF
9FFTo8x1NbGlsQIbKq9qtLr7QC4KUG0P8pg1YGviyry0bCkq6nDzogMhjHlmEMJFlJBxGrRO
ctrIp7ta+TQ1znMAJgVsOJDoWhUxWsQlcWureqeJcmnKBWIIudV2yhU/YkCG6bEu+EQYrNaT
sU34qNcPwd/49iDv66xQuFmF3Z+0mGa34YIosaoEWSmmC5zDOUC/PBaDgjvhmkugNJJeor95
ersMSWwnlv/y+gZHr+6mzgrgKFZgsdyPx9ZEN3tgBxwaBeuQ5AjCWo8Oakd3H7CDXUEbVNy2
75rRfe1Nxpvc7iI4808We4HQ5nHFV4GXsUtk6FA7qD2qAePoe3297/Vk6tndKxN/MrkC5gPL
zIYKnywW85vllcagpPAWfTSh4uKt9d/seaaN9Rk+HF9fMaOyYMgQP0OIT7IQF32Ozuwia64q
Zp9yUy70/zkSo6+yAkye96dnuDYZXZ5kBt7f399GXS7YMho9Hn90N2nHh9fL6PfT6Ol0uj/d
/2sEz77Vmjanh+fR18vL6PHychqdn75e9O+hpTNknwSaT29UVBdRWPNUEyDxAefuKesrJxVZ
EfzxhEq34ioAHphBpaJl5KlWShXH/yYVjiqjqBjfmIukYueYK6pK9KlmIsmtqxKSkDrCzP8q
UZbGxhlPxd6SwuToDtWeoSEVcxjgpbksaupgoQXZEt8lAcWh/xTo4/EbBGC2IpcJmRuF/nis
d0EcHDRlE1ytcivjpoRuESFhkICDNT5PUL5WfUYlzHIyERI+SlG1S3RZCIOoCI2RCHBWWmso
EGsSudKs9jQROHkWRgAk+dT54fjGv7/H0frh/TRKjj9OL923y4QEYoR/m/cnzf9DiBaacbZI
8HsT0eYuxO8FWiT2gFBM0IbmELlSn4MO2tRRqPNJj4GdAS/DSubAULZ3YCwruYaFxL1GD8Wz
tcUYBeL7okCAw39hGLJVArm81uKhtO5lhqUU8cgsM6X4FC3XvwGKGT8xMnlB8hEVoUUIz2M+
pCtupxOHJVkhkxbJj6jCzXSGPTZSSIQ6uImJoex1AYromoLVNk5iWyHsGsm5NrPHUa0QZD6K
jlker1HMqoog5FDmWJkt10Fwr1+FiObk8/Wx666basc45zkctxAqiLuP17PyJ97UnRdioJqj
2c1UXhT3iehc0XyHw+sahd/GhzInKTzYdXS7pbjeo9ukpHj9WUAhAB7OLSysmppPiqNpcVf5
0YSxrFwu0dQ+BpE/G+Od2NdOdk7JlhF8pvPEm46nKCqr6MKf42z+OST6rYaKa3NwXR9LmYe5
v5+jtZdkFTsRTU74ydw6r/eSKy4KAim0IWHBB104sCBzScoKjxWlSYIgLj7hl5IK2Z5LyYyh
w9ntHKsiA5DiKJZSSNbjKhbqsfbVjoBtpWEfSIAdLTcBVxHx+S/riamadateeSi8zqOlvxov
p3gxqVYpqqFuS0B3uJjRhdEYB3kLc9wkqqvaLYS2pSmp4eF81V4EaDUlzjNgtx2Eh2W4mBrK
zEE8XzR0hUjY2I3zM+wN5rWSGALc9UVcJUgIrpwJgoatqAjvJF/CuxmXlvx/27XrhJAYeg28
FAjjLQ0KIl9Lq+PIdqQoqP6eSRSKS7cCG29KkYa+BHf9fVWjL1+lFgTG8ZWxDRx4AWNbjr+I
CdwbDCFCLfJJiwvRmnoOz7//eD3fHR+kgoyzWL5R7iDSLBfAfRjTrd6MeJex1eIdfvoyWy7H
bQ2azdDRsFafUBBNLmjVRtcbMZME/PFiwyCk43EkjKMRF+gegu2OeGnNGumgUGrWMiVwqBmd
dZj608v5+fvphc/BYDzTZ37F/5maMqazL9V6TgrRuwKgjlnpjDhmoXxPvKVLMrAt1g5Apy4p
UKa54fTeQXlNwpZlHAKhVwbHBpxStquf5UrMgg3E8oikiwsWzefThXtC+M7heUuj5RYIzvbm
xyxQvjtN2Dq7rd0f+9obu0VBy1bS+93RXemkIw13+qeEMpIuAIIho4TOTGBl00Ed85pQkcnb
LI2RrposMCXTqknNdlZNbIPyTWZt6Ct48lLa0CLlm4EJZOAi1hnXDNzKoq63oQnaUNOe2xkb
TXBldl/+abbSQbu5Mi8mJJKElsmyx8F0Olmnp0qvmEt7ovgvErVT7troO0q5BK5+x7FL7+1J
2vXG50RbS1cjqybh0sWl3SpkpqBXUNodmIEDFnG3fd0OrRBWYn2HMHXH+2+nt9HzywneLVxe
T/fw1unr+dv7y3F4C6VUBReMjlb4h2moAdUGXxlAuBdlbX+jUi5Z300bUnRVmjJ3wJgpVF1k
op+ODilkQ8xMfSNSOOS6MlCBMmiIkDUqvtb49x5GYeMQoqAV3VJiAvknDYFWDKhw4ECB+Jp1
yNC5j61tmbWGy7PcXB0JlcNzHdRaml5WGRXs4iAkbhECl++Y2VYNwfgh53fdqQ55rIhn8ZN/
RzkzYXUoTBX9x1X9eD79GspQBM8Ppz9PL/+ITsqvUfmf89vddy3qstLD/7e42S6BV4ZPx7fT
iF3ukUgfstNRDoFbmeFnInHylUGHd07l9fY03U/kLNnRSnfOYgx/YMxEWrZBJHYQI66JCHZa
vp3v/sBexrVF6lQYKvjBsFYz1bMyL7ImaOMs98AW8mi34L5lHobTtVnRFXx6KJv2RJ/EPUra
TB0JNHrCYn6DmfQHfHv/xid64Exx394GK1zTstLziu8M3yVBLV/VIrDGimcjcIFISJbCiRsS
zWzgWa/tRgypCq3VEeUJqSaeGlhU1gopKjwfg859qw924Atz/EZFWvAKAVGDgajwpJrOb6YG
8LaKvMWN17HgMDhx1/r7w/npj58nv4ivo1gHozZP4zuEe8X8Y0Y/D95HvxjTYwZTkeNN9oVq
KRFACCRizQwX2QmrW88V1wSVazadCCNmP5zq5fztm71YreuGyR+dR4cMmY7juIbV3pNiWFZF
DswmJkUVaFcHGl512zPG3lKEOZbBXCMhfIffUjVHk4ZGOKhDdR40Q8zd8/MbRGp/Hb3JORyW
Pj29yVfh7V4z+hmm+u34wreiX1QRok8qBIegxtshdJwiHoIqxzV0TlzJdzQymSD3o7Zy4fCf
OiaF1JEeOxUudyBOFz9ZOp6CUf5vSgOSYgf6ogobLYA6AFg4mS38iW9jDBEGoE1YZTJHvQ3s
3vL89PJ2N/5JJeDIKtuEeqkWaJQa/CCq8EpWAsCKgKiWhCwgsziSWxdKcE1pZQZx7+F8BwsR
sJENV4U3NY1FHDjHVENsDtVEB8keoHtGpAN4QuwAw9tuR6neiqLjjOZDlik6aweNyonnL1D4
XI+EqGLm2M6gECz8ebMijCYHc8IGAudi9iQ3H5EsPR9zJlEpZiK2GVrY/7iwh0+ANxtjecc7
grK6nSwr4mOF2cyv/MWVwkAwnbuKzq/PCSvZwpthSk1HEXye+WNPZ26AF/k8HKPrvZ2OPdw2
1lF8OaSfmR1U9vL0K+wT15myz2ZgIFYV/2usJhPtMGB6niHwNnSbxcnFcioebfZvr8rT0yvX
Ka72S/HZhR1YnZcIwvAJz1BrxBwV1CvbLxTSIgl79dDrcieg2kGsLY5NtUQ1LNvG7cv4a2Rl
nKxA2uCKckvEtQCHv7ExjK7LpN63lzSKX3E0m0FscjUGE+OkZUip40KJb5px0mq1XNcuS81b
TmJlYOsW95OyFcDdj3hZAEFNsdcfKoH2MkNBuMJFtiTa6doRIQ4e7GJBRxS06pPcpodicVqr
fWrBkPbA1QjcvEQ5dpfVYgOIDqNfh7YYkZjVXbBNOGKWAnAXkKFBGL2j5p0avjX4Bf40CkS4
CdGsSgITWFD96YSEwtxYHxQ7371cXi9f30YbfiR++XU7+vZ+4sdF5ID/EenQ3rqIId8TMqiy
ImstlydX8uNIS6AlIc5bqh4tVVjxMdIvEJDuN28886+QMbJXKccGKeTXxYL9tOggQ7W8Fis0
j0cDmJNC96Vo4bQkjRWNpysTJks1764C9mY4eIGCp2MM7E88ZGwCgW2ZKt5HC7Lp0sN26paA
sDzhs0ozbzyGcVt9kgR5+D/Wnm25cVzH9/kK1+zLOVXT2/E1zladB1mSbbV1iyQnTl5U7sSd
uCaxc2ynpjNfvwApSiAJOX229qXTBkCKVxAgcen1R+fxo77Am2MJO2p8YXdVgHsWtee4F9wA
eA5IQxFnD9YQXIyrBrCFWfbSEIxb4nSQKj4nGQ0uOMFDERS98YW9chCsi5kUcWbqBH7I13fJ
gnsrGxxF/Z5jb4FpOOza0+NgJpkg6fbKsb0QkN8GGSbIYToTCCeG3sWCVxYrKne0QrM97jVA
MYHUHTH7zPGuu70J890YcEXp9LpDzuZKJ0qYhSdQfPxqg6I78qzxAlzoTDCEL7MzYG86HsMD
Is+habwbeBRwLQTE8uyI4RX7dZ8pmQ97Z7cFep20H/AVkXi+rXiltZuLqzGzimJRajS86Foo
gHs06JoGRssXZoolMg9mER+gpiK7iRbjCzZSSEUw7g3thQXAITN0CC7ZADwVwUL+xVsEaxMR
lnuO3dp7FXlc6xrTFRc4D656/JM9IDHZH4saX3ZbS8Fy0bMVSTUe1t7xVJn560q58/Cwedkc
9q+bkxHyy8BI6t36Zf8kwn1tn7YnzC2430F1VtlzdLQmhf6+/fK4PWxk1GatTiXVe8Vlv+Ja
+kc+q0Jer63f1g9AtsOomZ+1/nNiqUaJr8Efic4/dqfnzXGrVdVKIx2ANqe/9oc/RU8+/t4c
/ugEr2+bR/Fhl23aL5aoplZkS8FElE8fHTGNuAACV5/lNiJ5N7U57l/wevvTQfuMss4fyqzF
ZgXL2D/6OaAigqz/fH/DKkWIlePbZvPwTHTX1HcwNRrNNCBBqMAW89Jx44JlBgZZmoCicqaa
pZcW3Hu7TjaJCafVUZ7vFuHiDNZfkbtyHRueKYmu/K24dJEsW7HFKs1akcLsh1rPtcwEGTCp
nsjglNZEOrvHw377qHMLCTL0m1KEsicX84VfzrwIRGXN2nkaZD7aGFdvxszUzPJyms4c1NY1
pTkO8rs8Tx3e1F++nJRuuChXYYzBdRa395n9wDVbH//cnLgIgwZGNWcVhJiFCEP1TWmAvMAP
PWH1J+5v1c1FlJdOjIpgXqVybq7WM3dV4UiIX7YvWEuaJVO0VmYJrsMWU1VMb0HCuNqKdqOv
JqE3DdgbizlG7YfxI6dluMDr6DBJ5KY1CKGxPsyLrx2v1WxolZTz3FsYZ7+atfSWNxQgJFVY
4lbZUdFNQPVv3nmC3dNmt33o5HuXsYqu0nmV7ky9vjUtpjjzgtDE9YaTduTlmYLjFtyqe3Gh
JcvQkeM+rzopqsJd4liwV3HsiNSTepunQUwzGrsi83C+fz88sCEd60/iqyIzMwpveO6JB3X0
JCvToBgNJmxT2W+TOpwgnLAJMQOYyyUJDyA3Px6c0HGB7KTrp414AiSGog03+IRU/464uZnW
Xv3Z5nV/2mBkXm68ZDR/fA5iu8wUlpW+vR6fmMvlNMrJ5ZL4KS4dTVh9fdh8Saux5ucYXwxZ
tOoNjP7u8RbzPDZhViUCevCP/ON42rx2kl3Hfd6+/RMPmIftDxg5zxBdX0H8k4tOGxR1qjBo
WQ5PrMfWYjZWhhc87NePD/vXtnIsXkp5q/Tr9LDZHB/WMN3X+0Nw3VbJZ6Tymfm/o1VbBRZO
IK/f1y/QtNa2s/hm9nAjqqlbbV+2u59WRc3RJsJnu0t2IXKFa7Hil6a++VQqTqNp5nNOeCBC
uQ2/9n+eQFhRPv9WeAhJLFJcoQdRs8orhJkOtAJHzqrfb0lTU5EorwTeeiehYdok4y5jPyJP
ugG9nMfsfdLWn4OV1AucgD3qQK7D/XgWUN8igkV7HitzDeIXKLMglf6x6vkfzlKuhfK/9Amb
lLFIxVdzDExSk/QoSX5rheCswE2NvGpbUU8iZ0C1+knkdocX0g2ViCLN05rAlH1ydbRY5d6V
pov+X5TlWrW9HF2MymCKqYBA6nFAjOPEWAevHlZ4j0asEl0XT/WuDvTjGz9MUhUKk7oLzVfa
zbg6SfXETH5c3nfHYx2ae2KLRIlXmUtRs8E6yZPDmoneTEfdi6o6k1msjCL/+SXCFMONd3wZ
b5wsiczPXadyANfrJCWqo+TtBfiMMTHzyB30hnzbmgKyxPPmVbgTyVdbrRo4Ky8vLvq8NGKW
k8+/20f1/Ivqsguseb/77b+YpSn3TBSZoeAIWu0Kslr5+uUJnKcKVX+24dEWsroIkdNzwtD+
Yny5GxwvTQp8O9BeFsW6ACD/wHuu3vpi6/H99VWFWtWESGQKwnde6rC84GpW8JuMPb759/tm
9/BRX9j8jcZ6npd/TcNQyR9SkhRi3fq0P3z1tsfTYfv9HS+gtOukc3TSMuZ5fdx8CYEMJI9w
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

--wac7ysb48OaltWcw--
