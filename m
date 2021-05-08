Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDVU3SCAMGQETYGS5FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C667377486
	for <lists+clang-built-linux@lfdr.de>; Sun,  9 May 2021 01:09:04 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id 125-20020a6215830000b029028ef0e94e38sf8385515pfv.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 May 2021 16:09:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620515342; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z4DWqF3zqamD0nipywxpqaZqlqA0bAFh3RFVlQWwbPOWu29VekDzaPSteqKfJolDc9
         KjRGEZ92a/Xgtaq0rNhGrhi0M8CUy5ifRmuQ1DxLj2GkhgmzSN50XwxkoCKfTVuIIxkd
         oUFbmEcVv/NewsggUhWAd1vDBLsKZr78dmvpu/UGLVEz3KZNCvKQB8Axy+p/gbag8YZg
         ZycbYOEP6igab3lTK/mgpSoe3ziGdmh9K7qPLri41ewLizmHmKlO4sYcIcvmcuOZpgAD
         s5FHY9IETgZyQI6/M0Z65Mrm6H52UOe4+gk7JITHyPIAjV7UrdOQdH9+vAwLcDglhohF
         NxBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=c/id4vxFNCQ4Qd6Be+9AKzA4O9zfeNUUgFplF8vt/A8=;
        b=XtBhb0JzQpG7XuwRy1Xd7xd6rf6JB2+O7WsgtwRh72PyQZCieZL4yT1XBQYjoCMxvU
         oMtFBJHd1gP2G8vlKUrewAtB8ukDEa3Gm56wiPnYczz4DuwBOAf6Ctt6nERKsE0xcO2b
         Z6VI4+aRYjKDE6qqH9pMKfk1O7cDynDf8nBvB8GuAdH6GuY9OhNCCIZ0hE7FdYYM9uZ5
         xPNfKaTDCMOLr5A9stlJKYw+zTjq+aCirGGu9LeJRgjzw/zOq78NlV5VdmzdcO3QN6Ys
         E17vRWTDHpaM1XJ44B0mIE8aqVNi0mPLqt18fz5ksti7HFhl0r0PFGjT91sK54oX+NKj
         /eEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c/id4vxFNCQ4Qd6Be+9AKzA4O9zfeNUUgFplF8vt/A8=;
        b=o0TK9RrmaAmt34iuxSw+yVNFMppD5fXDSvoNGO4TVQhy73LWVl0IG9uDeROcLAG5K/
         Ma3zUJI82Tdqg8jx2FsPYNQWYuLknfRU9953JDRj9vCCqwWYy1vJ+zSqlZZytRohgV5L
         F2AcbyzhYQQtuViSHtQ/0k5aSqR2f+dgOZ2+GTIrzI8cFQ+ogVc+ydilJ53CGAwEEaYB
         C0jEwrOu4/hnUkb3oVmNe3/S6qw3tkSbqQ/NQvtwMlHyItRD4TjpWMCbAf1UJJb/ZSDi
         R4I7v0nLha2F7OheIskdA4j2Vb2+D/uRuGJwyvFMSrTGE4296j5PyewtqQxEs/s4gtoN
         f5ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=c/id4vxFNCQ4Qd6Be+9AKzA4O9zfeNUUgFplF8vt/A8=;
        b=rd8LLbsw9+hB8XLWr6U7SoMYg/soqB+1KLpWNBvPtS5vfSCoSdWssBL2HasZAGyItm
         FHWdjrlCmDDID76P5MmUtJ6jpGXUD931nUUFLga4xbrFafTx8vrzLgAiWKep6XHiiU8A
         iq8HQnM2P0xzjFgj+fQMZwNo81O8bOZGo3/7rvalMhC3oUMOwpXqr2iwBFa7v22CGD9L
         rL/Y43oHWzLhBmA/QT0Fj81cXIKl0orubNeRiAEy8/6IDXaE9aLM5qRuWvAEyL4T6Ewy
         bW337FBimnPDEixI2rFE9Dei5hLQdZKGyaCVgrWwbABpYnlywflvUYI+xMydXCLpX09a
         rlig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532b2yyCmx35sCZN4wQSlRBds7//hoZLFQ0NxzpCfpmH9EoX6TVo
	bxJD6DLXmweJ0QHje0/KW8w=
X-Google-Smtp-Source: ABdhPJyK49S3Xuba8hNKXKW4veyy4zY+hfTvgfECidMb86G8Z3p4VY7jiT6hHrWexupb6ZbiQAS7lw==
X-Received: by 2002:a17:902:32b:b029:ee:fa93:9551 with SMTP id 40-20020a170902032bb02900eefa939551mr17276203pld.47.1620515342451;
        Sat, 08 May 2021 16:09:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:860c:: with SMTP id f12ls5281727plo.5.gmail; Sat, 08
 May 2021 16:09:01 -0700 (PDT)
X-Received: by 2002:a17:90a:6682:: with SMTP id m2mr18821262pjj.90.1620515341625;
        Sat, 08 May 2021 16:09:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620515341; cv=none;
        d=google.com; s=arc-20160816;
        b=qwLCTL/XP+CE/sXa6jBSX6csu2bN1peXjN7SuqhcIfQy6vxEB/hVSvfMzO7tpjxII/
         QvGvBzCYrRSkccrY2SBAg9vda0RKeh2iMOCWTAm11JTrXZjilm5vSzr8KNtM2BsarROY
         mNLHGE66dNgukL2rIqy9trhsjvScCxr3TB2QLtgWwohIE6O7jrhu8LfPc4IRTS3r6Xhs
         dYCpSL4iTTQCCXx9X/MONkxZBRFQXGnei2CIR5cLL5hZS2L9kdyaIPE7c7X+ZV3Th5K5
         l3e9PWfBERxS2ml7n8W2p6kl6COQIG6oC/DELruPta/umkjRWA6bQcTtri4azIxXtVHI
         4iMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=izJmH8alz8GLiAmTWkQvhFru7hyjM8mQixDDhiyr3B4=;
        b=VGTyCbU1/DCxPx0cUEftlmjU/OJHdzAKURzrnAdJw+OHwJWI6kiCrF+qPrIc4oQ3+m
         DTrxgNF0yz8wTPE8Y4y7CK3V5juH4h0G8XseFEzpNpbJNJpdEcb13/9e8d07ZbZniUZ6
         Hm55hypCXe7v42/RXFj38zW8gP7weK6ThE3oITPxDXQvokUKudM5YU7sZF3qFlKTCFqC
         VMXRmP/YoN2fMADSrvQu+FmePVYsobnQGmBA6B8f2f5p+5BRjlc2TopCSpj166gvhhgi
         zwgOzLkMFqkRleCJGqOP4nogUxuZFnplwTD0NOnIX/hOTI/k64JgaJkZeU2cI0shzyFJ
         m/KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id b9si1041800pfd.3.2021.05.08.16.09.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 May 2021 16:09:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: bXg+r9KBdq7bw1Jb6pWi/EU5e1uozAs9RNOBztUThc0fpfp7HHsvwnr8J1rbFolOcVjdC5RLXx
 naF2PDfm/BvA==
X-IronPort-AV: E=McAfee;i="6200,9189,9978"; a="219884134"
X-IronPort-AV: E=Sophos;i="5.82,284,1613462400"; 
   d="gz'50?scan'50,208,50";a="219884134"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 May 2021 16:09:00 -0700
IronPort-SDR: /Zz4KND2NTU5t4BWsk+tbcod2digb00tn4kBgo963zT+TLvR0LjrWE2L4XXKZhuLCWlLe79+GI
 ovrJQn6hh+sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,284,1613462400"; 
   d="gz'50?scan'50,208,50";a="432594810"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 08 May 2021 16:08:58 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lfW4A-000Bq3-0t; Sat, 08 May 2021 23:08:58 +0000
Date: Sun, 9 May 2021 07:08:31 +0800
From: kernel test robot <lkp@intel.com>
To: Harshad Shirwadkar <harshadshirwadkar@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
	Andreas Dilger <adilger@dilger.ca>
Subject: fs/ext4/mballoc.c:2614:1: warning: stack frame size of 1152 bytes in
 function 'ext4_mb_regular_allocator'
Message-ID: <202105090715.NPdThVDG-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline
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


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Harshad,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   b741596468b010af2846b75f5e75a842ce344a6e
commit: 196e402adf2e4cd66f101923409f1970ec5f1af3 ext4: improve cr 0 / cr 1 group scanning
date:   4 weeks ago
config: powerpc64-randconfig-r023-20210509 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 1312852040b3190a6cb7d7c1f61fe95a5e930d8d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=196e402adf2e4cd66f101923409f1970ec5f1af3
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 196e402adf2e4cd66f101923409f1970ec5f1af3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/ext4/mballoc.c:2614:1: warning: stack frame size of 1152 bytes in function 'ext4_mb_regular_allocator' [-Wframe-larger-than=]
   ext4_mb_regular_allocator(struct ext4_allocation_context *ac)
   ^
   1 warning generated.


vim +/ext4_mb_regular_allocator +2614 fs/ext4/mballoc.c

cfd73237722135 Alex Zhuravlev     2020-04-21  2612  
4ddfef7b41aebb Eric Sandeen       2008-04-29  2613  static noinline_for_stack int
4ddfef7b41aebb Eric Sandeen       2008-04-29 @2614  ext4_mb_regular_allocator(struct ext4_allocation_context *ac)
c9de560ded61fa Alex Tomas         2008-01-29  2615  {
cfd73237722135 Alex Zhuravlev     2020-04-21  2616  	ext4_group_t prefetch_grp = 0, ngroups, group, i;
bbc4ec77e9f9c7 Ritesh Harjani     2020-05-10  2617  	int cr = -1;
42ac1848eac588 Lukas Czerner      2015-06-08  2618  	int err = 0, first_err = 0;
cfd73237722135 Alex Zhuravlev     2020-04-21  2619  	unsigned int nr = 0, prefetch_ios = 0;
c9de560ded61fa Alex Tomas         2008-01-29  2620  	struct ext4_sb_info *sbi;
c9de560ded61fa Alex Tomas         2008-01-29  2621  	struct super_block *sb;
c9de560ded61fa Alex Tomas         2008-01-29  2622  	struct ext4_buddy e4b;
66d5e0277e225c brookxu            2020-08-17  2623  	int lost;
c9de560ded61fa Alex Tomas         2008-01-29  2624  
c9de560ded61fa Alex Tomas         2008-01-29  2625  	sb = ac->ac_sb;
c9de560ded61fa Alex Tomas         2008-01-29  2626  	sbi = EXT4_SB(sb);
8df9675f8b498d Theodore Ts'o      2009-05-01  2627  	ngroups = ext4_get_groups_count(sb);
fb0a387dcdcd21 Eric Sandeen       2009-09-16  2628  	/* non-extent files are limited to low blocks/groups */
12e9b892002d9a Dmitry Monakhov    2010-05-16  2629  	if (!(ext4_test_inode_flag(ac->ac_inode, EXT4_INODE_EXTENTS)))
fb0a387dcdcd21 Eric Sandeen       2009-09-16  2630  		ngroups = sbi->s_blockfile_groups;
fb0a387dcdcd21 Eric Sandeen       2009-09-16  2631  
c9de560ded61fa Alex Tomas         2008-01-29  2632  	BUG_ON(ac->ac_status == AC_STATUS_FOUND);
c9de560ded61fa Alex Tomas         2008-01-29  2633  
c9de560ded61fa Alex Tomas         2008-01-29  2634  	/* first, try the goal */
c9de560ded61fa Alex Tomas         2008-01-29  2635  	err = ext4_mb_find_by_goal(ac, &e4b);
c9de560ded61fa Alex Tomas         2008-01-29  2636  	if (err || ac->ac_status == AC_STATUS_FOUND)
c9de560ded61fa Alex Tomas         2008-01-29  2637  		goto out;
c9de560ded61fa Alex Tomas         2008-01-29  2638  
c9de560ded61fa Alex Tomas         2008-01-29  2639  	if (unlikely(ac->ac_flags & EXT4_MB_HINT_GOAL_ONLY))
c9de560ded61fa Alex Tomas         2008-01-29  2640  		goto out;
c9de560ded61fa Alex Tomas         2008-01-29  2641  
c9de560ded61fa Alex Tomas         2008-01-29  2642  	/*
e9a3cd48d65307 brookxu            2020-08-07  2643  	 * ac->ac_2order is set only if the fe_len is a power of 2
e9a3cd48d65307 brookxu            2020-08-07  2644  	 * if ac->ac_2order is set we also set criteria to 0 so that we
c9de560ded61fa Alex Tomas         2008-01-29  2645  	 * try exact allocation using buddy.
c9de560ded61fa Alex Tomas         2008-01-29  2646  	 */
c9de560ded61fa Alex Tomas         2008-01-29  2647  	i = fls(ac->ac_g_ex.fe_len);
c9de560ded61fa Alex Tomas         2008-01-29  2648  	ac->ac_2order = 0;
c9de560ded61fa Alex Tomas         2008-01-29  2649  	/*
c9de560ded61fa Alex Tomas         2008-01-29  2650  	 * We search using buddy data only if the order of the request
c9de560ded61fa Alex Tomas         2008-01-29  2651  	 * is greater than equal to the sbi_s_mb_order2_reqs
b713a5ec55bf73 Theodore Ts'o      2009-03-31  2652  	 * You can tune it via /sys/fs/ext4/<partition>/mb_order2_req
d9b22cf9f5466a Jan Kara           2017-02-10  2653  	 * We also support searching for power-of-two requests only for
d9b22cf9f5466a Jan Kara           2017-02-10  2654  	 * requests upto maximum buddy size we have constructed.
c9de560ded61fa Alex Tomas         2008-01-29  2655  	 */
4b68f6df105966 Harshad Shirwadkar 2021-04-01  2656  	if (i >= sbi->s_mb_order2_reqs && i <= MB_NUM_ORDERS(sb)) {
c9de560ded61fa Alex Tomas         2008-01-29  2657  		/*
c9de560ded61fa Alex Tomas         2008-01-29  2658  		 * This should tell if fe_len is exactly power of 2
c9de560ded61fa Alex Tomas         2008-01-29  2659  		 */
c9de560ded61fa Alex Tomas         2008-01-29  2660  		if ((ac->ac_g_ex.fe_len & (~(1 << (i - 1)))) == 0)
1a5d5e5d51e75a Jeremy Cline       2018-08-02  2661  			ac->ac_2order = array_index_nospec(i - 1,
4b68f6df105966 Harshad Shirwadkar 2021-04-01  2662  							   MB_NUM_ORDERS(sb));
c9de560ded61fa Alex Tomas         2008-01-29  2663  	}
c9de560ded61fa Alex Tomas         2008-01-29  2664  
4ba74d00a20256 Theodore Ts'o      2009-08-09  2665  	/* if stream allocation is enabled, use global goal */
4ba74d00a20256 Theodore Ts'o      2009-08-09  2666  	if (ac->ac_flags & EXT4_MB_STREAM_ALLOC) {
c9de560ded61fa Alex Tomas         2008-01-29  2667  		/* TBD: may be hot point */
c9de560ded61fa Alex Tomas         2008-01-29  2668  		spin_lock(&sbi->s_md_lock);
c9de560ded61fa Alex Tomas         2008-01-29  2669  		ac->ac_g_ex.fe_group = sbi->s_mb_last_group;
c9de560ded61fa Alex Tomas         2008-01-29  2670  		ac->ac_g_ex.fe_start = sbi->s_mb_last_start;
c9de560ded61fa Alex Tomas         2008-01-29  2671  		spin_unlock(&sbi->s_md_lock);
c9de560ded61fa Alex Tomas         2008-01-29  2672  	}
4ba74d00a20256 Theodore Ts'o      2009-08-09  2673  
c9de560ded61fa Alex Tomas         2008-01-29  2674  	/* Let's just scan groups to find more-less suitable blocks */
c9de560ded61fa Alex Tomas         2008-01-29  2675  	cr = ac->ac_2order ? 0 : 1;
c9de560ded61fa Alex Tomas         2008-01-29  2676  	/*
c9de560ded61fa Alex Tomas         2008-01-29  2677  	 * cr == 0 try to get exact allocation,
c9de560ded61fa Alex Tomas         2008-01-29  2678  	 * cr == 3  try to get anything
c9de560ded61fa Alex Tomas         2008-01-29  2679  	 */
c9de560ded61fa Alex Tomas         2008-01-29  2680  repeat:
c9de560ded61fa Alex Tomas         2008-01-29  2681  	for (; cr < 4 && ac->ac_status == AC_STATUS_CONTINUE; cr++) {
c9de560ded61fa Alex Tomas         2008-01-29  2682  		ac->ac_criteria = cr;
ed8f9c751feb3a Aneesh Kumar K.V   2008-07-11  2683  		/*
ed8f9c751feb3a Aneesh Kumar K.V   2008-07-11  2684  		 * searching for the right group start
ed8f9c751feb3a Aneesh Kumar K.V   2008-07-11  2685  		 * from the goal value specified
ed8f9c751feb3a Aneesh Kumar K.V   2008-07-11  2686  		 */
ed8f9c751feb3a Aneesh Kumar K.V   2008-07-11  2687  		group = ac->ac_g_ex.fe_group;
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2688  		ac->ac_last_optimal_group = group;
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2689  		ac->ac_groups_linear_remaining = sbi->s_mb_max_linear_groups;
cfd73237722135 Alex Zhuravlev     2020-04-21  2690  		prefetch_grp = group;
ed8f9c751feb3a Aneesh Kumar K.V   2008-07-11  2691  
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2692  		for (i = 0; i < ngroups; group = next_linear_group(ac, group, ngroups),
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2693  			     i++) {
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2694  			int ret = 0, new_cr;
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2695  
2ed5724d5a78a2 Theodore Ts'o      2013-06-12  2696  			cond_resched();
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2697  
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2698  			ext4_mb_choose_next_group(ac, &new_cr, &group, ngroups);
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2699  			if (new_cr != cr) {
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2700  				cr = new_cr;
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2701  				goto repeat;
196e402adf2e4c Harshad Shirwadkar 2021-04-01  2702  			}
c9de560ded61fa Alex Tomas         2008-01-29  2703  
cfd73237722135 Alex Zhuravlev     2020-04-21  2704  			/*
cfd73237722135 Alex Zhuravlev     2020-04-21  2705  			 * Batch reads of the block allocation bitmaps
cfd73237722135 Alex Zhuravlev     2020-04-21  2706  			 * to get multiple READs in flight; limit
cfd73237722135 Alex Zhuravlev     2020-04-21  2707  			 * prefetching at cr=0/1, otherwise mballoc can
cfd73237722135 Alex Zhuravlev     2020-04-21  2708  			 * spend a lot of time loading imperfect groups
cfd73237722135 Alex Zhuravlev     2020-04-21  2709  			 */
cfd73237722135 Alex Zhuravlev     2020-04-21  2710  			if ((prefetch_grp == group) &&
cfd73237722135 Alex Zhuravlev     2020-04-21  2711  			    (cr > 1 ||
cfd73237722135 Alex Zhuravlev     2020-04-21  2712  			     prefetch_ios < sbi->s_mb_prefetch_limit)) {
cfd73237722135 Alex Zhuravlev     2020-04-21  2713  				unsigned int curr_ios = prefetch_ios;
cfd73237722135 Alex Zhuravlev     2020-04-21  2714  
cfd73237722135 Alex Zhuravlev     2020-04-21  2715  				nr = sbi->s_mb_prefetch;
cfd73237722135 Alex Zhuravlev     2020-04-21  2716  				if (ext4_has_feature_flex_bg(sb)) {
82ef1370b0c175 Chunguang Xu       2020-12-04  2717  					nr = 1 << sbi->s_log_groups_per_flex;
82ef1370b0c175 Chunguang Xu       2020-12-04  2718  					nr -= group & (nr - 1);
82ef1370b0c175 Chunguang Xu       2020-12-04  2719  					nr = min(nr, sbi->s_mb_prefetch);
cfd73237722135 Alex Zhuravlev     2020-04-21  2720  				}
cfd73237722135 Alex Zhuravlev     2020-04-21  2721  				prefetch_grp = ext4_mb_prefetch(sb, group,
cfd73237722135 Alex Zhuravlev     2020-04-21  2722  							nr, &prefetch_ios);
cfd73237722135 Alex Zhuravlev     2020-04-21  2723  				if (prefetch_ios == curr_ios)
cfd73237722135 Alex Zhuravlev     2020-04-21  2724  					nr = 0;
cfd73237722135 Alex Zhuravlev     2020-04-21  2725  			}
cfd73237722135 Alex Zhuravlev     2020-04-21  2726  
8a57d9d61a6e36 Curt Wohlgemuth    2010-05-16  2727  			/* This now checks without needing the buddy page */
8ef123fe02ca09 Ritesh Harjani     2020-05-20  2728  			ret = ext4_mb_good_group_nolock(ac, group, cr);
42ac1848eac588 Lukas Czerner      2015-06-08  2729  			if (ret <= 0) {
42ac1848eac588 Lukas Czerner      2015-06-08  2730  				if (!first_err)
42ac1848eac588 Lukas Czerner      2015-06-08  2731  					first_err = ret;
c9de560ded61fa Alex Tomas         2008-01-29  2732  				continue;
42ac1848eac588 Lukas Czerner      2015-06-08  2733  			}
c9de560ded61fa Alex Tomas         2008-01-29  2734  
c9de560ded61fa Alex Tomas         2008-01-29  2735  			err = ext4_mb_load_buddy(sb, group, &e4b);
c9de560ded61fa Alex Tomas         2008-01-29  2736  			if (err)
c9de560ded61fa Alex Tomas         2008-01-29  2737  				goto out;
c9de560ded61fa Alex Tomas         2008-01-29  2738  
c9de560ded61fa Alex Tomas         2008-01-29  2739  			ext4_lock_group(sb, group);
8a57d9d61a6e36 Curt Wohlgemuth    2010-05-16  2740  
8a57d9d61a6e36 Curt Wohlgemuth    2010-05-16  2741  			/*
8a57d9d61a6e36 Curt Wohlgemuth    2010-05-16  2742  			 * We need to check again after locking the
8a57d9d61a6e36 Curt Wohlgemuth    2010-05-16  2743  			 * block group
8a57d9d61a6e36 Curt Wohlgemuth    2010-05-16  2744  			 */
42ac1848eac588 Lukas Czerner      2015-06-08  2745  			ret = ext4_mb_good_group(ac, group, cr);
8ef123fe02ca09 Ritesh Harjani     2020-05-20  2746  			if (ret == 0) {
c9de560ded61fa Alex Tomas         2008-01-29  2747  				ext4_unlock_group(sb, group);
e39e07fdfd98be Jing Zhang         2010-05-14  2748  				ext4_mb_unload_buddy(&e4b);
c9de560ded61fa Alex Tomas         2008-01-29  2749  				continue;
c9de560ded61fa Alex Tomas         2008-01-29  2750  			}
c9de560ded61fa Alex Tomas         2008-01-29  2751  
c9de560ded61fa Alex Tomas         2008-01-29  2752  			ac->ac_groups_scanned++;
d9b22cf9f5466a Jan Kara           2017-02-10  2753  			if (cr == 0)
c9de560ded61fa Alex Tomas         2008-01-29  2754  				ext4_mb_simple_scan_group(ac, &e4b);
506bf2d82165c0 Eric Sandeen       2010-07-27  2755  			else if (cr == 1 && sbi->s_stripe &&
506bf2d82165c0 Eric Sandeen       2010-07-27  2756  					!(ac->ac_g_ex.fe_len % sbi->s_stripe))
c9de560ded61fa Alex Tomas         2008-01-29  2757  				ext4_mb_scan_aligned(ac, &e4b);
c9de560ded61fa Alex Tomas         2008-01-29  2758  			else
c9de560ded61fa Alex Tomas         2008-01-29  2759  				ext4_mb_complex_scan_group(ac, &e4b);
c9de560ded61fa Alex Tomas         2008-01-29  2760  
c9de560ded61fa Alex Tomas         2008-01-29  2761  			ext4_unlock_group(sb, group);
e39e07fdfd98be Jing Zhang         2010-05-14  2762  			ext4_mb_unload_buddy(&e4b);
c9de560ded61fa Alex Tomas         2008-01-29  2763  
c9de560ded61fa Alex Tomas         2008-01-29  2764  			if (ac->ac_status != AC_STATUS_CONTINUE)
c9de560ded61fa Alex Tomas         2008-01-29  2765  				break;
c9de560ded61fa Alex Tomas         2008-01-29  2766  		}
a6c75eaf11032f Harshad Shirwadkar 2021-04-01  2767  		/* Processed all groups and haven't found blocks */
a6c75eaf11032f Harshad Shirwadkar 2021-04-01  2768  		if (sbi->s_mb_stats && i == ngroups)
a6c75eaf11032f Harshad Shirwadkar 2021-04-01  2769  			atomic64_inc(&sbi->s_bal_cX_failed[cr]);
c9de560ded61fa Alex Tomas         2008-01-29  2770  	}
c9de560ded61fa Alex Tomas         2008-01-29  2771  
c9de560ded61fa Alex Tomas         2008-01-29  2772  	if (ac->ac_b_ex.fe_len > 0 && ac->ac_status != AC_STATUS_FOUND &&
c9de560ded61fa Alex Tomas         2008-01-29  2773  	    !(ac->ac_flags & EXT4_MB_HINT_FIRST)) {
c9de560ded61fa Alex Tomas         2008-01-29  2774  		/*
c9de560ded61fa Alex Tomas         2008-01-29  2775  		 * We've been searching too long. Let's try to allocate
c9de560ded61fa Alex Tomas         2008-01-29  2776  		 * the best chunk we've found so far
c9de560ded61fa Alex Tomas         2008-01-29  2777  		 */
c9de560ded61fa Alex Tomas         2008-01-29  2778  		ext4_mb_try_best_found(ac, &e4b);
c9de560ded61fa Alex Tomas         2008-01-29  2779  		if (ac->ac_status != AC_STATUS_FOUND) {
c9de560ded61fa Alex Tomas         2008-01-29  2780  			/*
c9de560ded61fa Alex Tomas         2008-01-29  2781  			 * Someone more lucky has already allocated it.
c9de560ded61fa Alex Tomas         2008-01-29  2782  			 * The only thing we can do is just take first
c9de560ded61fa Alex Tomas         2008-01-29  2783  			 * found block(s)
c9de560ded61fa Alex Tomas         2008-01-29  2784  			 */
66d5e0277e225c brookxu            2020-08-17  2785  			lost = atomic_inc_return(&sbi->s_mb_lost_chunks);
66d5e0277e225c brookxu            2020-08-17  2786  			mb_debug(sb, "lost chunk, group: %u, start: %d, len: %d, lost: %d\n",
c55ee7d202857b brookxu            2020-08-15  2787  				 ac->ac_b_ex.fe_group, ac->ac_b_ex.fe_start,
c55ee7d202857b brookxu            2020-08-15  2788  				 ac->ac_b_ex.fe_len, lost);
c55ee7d202857b brookxu            2020-08-15  2789  
c9de560ded61fa Alex Tomas         2008-01-29  2790  			ac->ac_b_ex.fe_group = 0;
c9de560ded61fa Alex Tomas         2008-01-29  2791  			ac->ac_b_ex.fe_start = 0;
c9de560ded61fa Alex Tomas         2008-01-29  2792  			ac->ac_b_ex.fe_len = 0;
c9de560ded61fa Alex Tomas         2008-01-29  2793  			ac->ac_status = AC_STATUS_CONTINUE;
c9de560ded61fa Alex Tomas         2008-01-29  2794  			ac->ac_flags |= EXT4_MB_HINT_FIRST;
c9de560ded61fa Alex Tomas         2008-01-29  2795  			cr = 3;
c9de560ded61fa Alex Tomas         2008-01-29  2796  			goto repeat;
c9de560ded61fa Alex Tomas         2008-01-29  2797  		}
c9de560ded61fa Alex Tomas         2008-01-29  2798  	}
a6c75eaf11032f Harshad Shirwadkar 2021-04-01  2799  
a6c75eaf11032f Harshad Shirwadkar 2021-04-01  2800  	if (sbi->s_mb_stats && ac->ac_status == AC_STATUS_FOUND)
a6c75eaf11032f Harshad Shirwadkar 2021-04-01  2801  		atomic64_inc(&sbi->s_bal_cX_hits[ac->ac_criteria]);
c9de560ded61fa Alex Tomas         2008-01-29  2802  out:
42ac1848eac588 Lukas Czerner      2015-06-08  2803  	if (!err && ac->ac_status != AC_STATUS_FOUND && first_err)
42ac1848eac588 Lukas Czerner      2015-06-08  2804  		err = first_err;
bbc4ec77e9f9c7 Ritesh Harjani     2020-05-10  2805  
d3df14535f4a5b Ritesh Harjani     2020-05-10  2806  	mb_debug(sb, "Best len %d, origin len %d, ac_status %u, ac_flags 0x%x, cr %d ret %d\n",
bbc4ec77e9f9c7 Ritesh Harjani     2020-05-10  2807  		 ac->ac_b_ex.fe_len, ac->ac_o_ex.fe_len, ac->ac_status,
bbc4ec77e9f9c7 Ritesh Harjani     2020-05-10  2808  		 ac->ac_flags, cr, err);
cfd73237722135 Alex Zhuravlev     2020-04-21  2809  
cfd73237722135 Alex Zhuravlev     2020-04-21  2810  	if (nr)
cfd73237722135 Alex Zhuravlev     2020-04-21  2811  		ext4_mb_prefetch_fini(sb, prefetch_grp, nr);
cfd73237722135 Alex Zhuravlev     2020-04-21  2812  
c9de560ded61fa Alex Tomas         2008-01-29  2813  	return err;
c9de560ded61fa Alex Tomas         2008-01-29  2814  }
c9de560ded61fa Alex Tomas         2008-01-29  2815  

:::::: The code at line 2614 was first introduced by commit
:::::: 4ddfef7b41aebbbede73f361cb938800ba3072dc ext4: reduce mballoc stack usage with noinline_for_stack

:::::: TO: Eric Sandeen <sandeen@redhat.com>
:::::: CC: Theodore Ts'o <tytso@mit.edu>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105090715.NPdThVDG-lkp%40intel.com.

--PEIAKu/WMn1b1Hv9
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICDYQl2AAAy5jb25maWcAnDvLdts6kvv7FTy5m57FTSTZlu3u4wUEghIikmAIUJaz4VEk
JtG0I3kkOTfpr58q8AWQkJKZPt1pq6pQAAqFeoJ//vGnR15P+2+r03a9en7+6X0pdsVhdSo2
3uftc/EvzxdeLJTHfK7eAnG43b3+ePey/7s4vKy9m7fD0dvBX4f1tTcvDrvi2aP73eftl1fg
sN3v/vjzDyrigE9zSvMFSyUXca7YUj28WT+vdl+878XhCHTe8Ort4O3A+8eX7emf797Bv9+2
h8P+8O75+fu3/OWw/+9ifQKi4ejuZjS4Hny6Gt4PVuP1p9vN7Xr4eTz8XNzfrG6K+6vB5m7z
X2/qWafttA8DYylc5jQk8fThZwPEnw3t8GoA/6lxod9nAjBgEoZ+yyI06GwGMOOMyJzIKJ8K
JYxZbUQuMpVkyonncchj1qJ4+iF/FOm8hUwyHvqKRyxXZBKyXIrUYKVmKSOw6DgQ8A+QSBwK
B/SnN9Un/uwdi9PrS3tkk1TMWZzDickoMSaOucpZvMhJCnvmEVcPVyPgUi9ZRAmH2RWTytse
vd3+hIwbIQlKwlpKb96040xETjIlHIP1DnNJQoVDK+CMLFg+Z2nMwnz6kRsrdQJ9FpAsVHob
BpcaPBNSxSRiD2/+sdvvilaV5CNBLs165ZNc8ISaq2xwj0TRWf4hYxlz7IKmQso8YpFIn3Ki
FKGzdnmZZCGftL/17kgK7EgGNxBmBTGF9cmBEnjH10/Hn8dT8a09uSmLWcqp1hE5E48tuy4m
D9mChbZW+SIiPLZhgUgp8ysl4ubFkQlJJUMiUzrmPD6bZNNA2pIqdhtv/7mzge4qtTIv2j13
0BR0Zg7rj5V0ICMh8yzxiWK1tNT2G5gbl8AUp3NQdAYiMa5MLPLZR1ToSMTm5gCYwBzC59Rx
vOUo7oesw8liwaezPGVSbzF1y6a33HZ4kjIWJQr4xsypgTXBQoRZrEj65FhoRdOush5EBYzp
gbkWghYkTbJ3anX8t3eCJXorWO7xtDodvdV6vX/dnba7L61oFzwFjkmWE6r5lsrTLFRL3kY7
lupgksdE8QUzeU2kD4sVlMH1AkLllozkTmn/xp703lOaedKhQSCkHHB9aZbAZn74mbMl6I/L
OkqLg+bZAYHZlppHpecOVA+U+cwFVymhHQQylgouW6v1BiZmYAIkm9JJyKXSm6qEZwulMRzz
8g9z+3w+AwvSUXktWLn+Wmxen4uD97lYnV4PxVGDqxkc2MaeTlORJYYJSMiUlUrM0hYKBpdO
Oz97Vn0Szit+LsOtEbmkM+abgwLC09zAOYaC+tqDbZYJ96XJsQKnfkTOryMA9fiod9gd57MF
p27DUFGAtp+9IRXJJAnOz61tujkz+kxwBXD3XINmjM4TwWOFNk+J1Lq2WiTa5fcEb3rbQMKs
cKkoWHSniFlInrpnCZLQnj71nWwnQqC5w7/doqC5AMsX8Y8MXSCaffi/iMTU6dg71BL+6Hhy
CF98DMOogDsJvonkDEMotGW2j7lI6Iqr/FykyYzEEHykxr1F56lCsDiUaRNe3nojaEyC9kdp
l4w7AhERh4jEuEVyylQE5iNvvXLnkCqEU54BLBAco8sZCcmXlTc0eSYpaM3cfXiZy1VMCEQj
QWavLMgg6XAyYYmw11rvhU9jEgbWPderC1y6p4MQm1jOwMI4SAk34n8u8izteETiLzhsoRKj
6zoB4wlJU26eyxxpnyLZh+RW7NRAtZzwzlRetNUH19EiGO5eKIj7IqGS6ADaKR4dv2Ii0648
xxkmhM6NFbvI5FMMsVxpMeotUDMdgeDTijy1ZdJQ1zlFE+b7pgHWtxKvdd4Ekq3u0eHguuen
qjw3KQ6f94dvq9268Nj3YgehAgFXRTFYgLCtjJMqPi17Z+jxmxxbhouoZFc7OafNhTyMKEji
5pZWhmTiNrBhNnFdg1AYyQiOhsNJwb1W+ZKt8VkQQOan3S+cLiR0YOqdgacIeGhlEdoqaQ8h
zbjCzkyb8Qm9GlkHldBx/6CSw35dHI/7A4TQLy/7w8k6k4Si9Z9fyfxq5A4UgeLu5seP80gb
V2GuBz/MpV1fu4iaJCUxA0bgGUCMm7KpcSmuf/ywSaIIIjEB12R2Dp53pAMIbZqdyQoq0Yyl
WpsgE2Wm+PsSbAJyXwo9S61tsO4JXrDY58RwP1ejCTcdSpR1rnsUEYhzYh9GK7j4ZPkwvL1E
AInpcOgmqDX+V4wsOotfnGLCKh9uhqNG5SE9n5eRssySxC6paDCMCEIylX08pqcQsvQR9fHP
Hhnkgco6R8MbkzR8qhygGdzGVWYsMvUwvGuKTGUYJSKuIDKEaCzX18n0EaUYyFNl9EDbfGrr
UOZPpvlwfHMzMEZh3UGP7VpqPmFpGZCg+5Z8Yqa8mkRmMgGVcKBxNp+mbRZnw3t8tAQxoU/F
hEmbHjxmbfatq2PjOKHyYeTG+ZdwC8A1Uk6mZXFN103sMXBTQagcoyiIcmWdLCfPqxPadZcV
kqCLrvqIzXSa6JihjRAogVvmtEszoQKIaZ24OQ9JxlwJRUQgLDBuppjI8WBgCRLMGsREUWKe
4fXghi2thSXR3WB454605uC1ppm7KsgSkkB0TVKCmb5RZvCCQ/E/r8Vu/dM7rlfPZWWhDc/B
6kAW9MHpVd2ja8Z881x4m8P2e3EAUDMdgo2iNfC3Czk1JJ+KRR4SiCXSM8iIxVbebyEVE313
JR5ZmtBmGZ6vV2dlwedpzF2XmzAg5matGh3kpdQpvJ7SmqHP/gVr+1aIg/WsTrxrlsuGg4Hj
1AEx0pbGJL2ySTtc3GwegE2ry2oGcV4W9lIqG6NzBOddsKhmj3kWa72HA1Vm5KgNE4u1NaiK
uXD7kjCb/oomhb8WXVMJPkQBSUVtpAhhyKYkrK15voCbygx7BLbqeq5jro7l02GYnPEAvERj
pqouQAW+qsE6wezS6povetL8o4iZSFHXW19JI183JNoSOluCQ8wVgfAQorgWXjkBI4ysvEJb
wOgg5JwnOvI34vTK2TBX4mB4IicwlzFJsLaL9QBDShG4dx/NjuKq6kcYqJCxxCLGEkUf+kjm
DD29dEOrFgnorhmRGfipq4icRBa3XrkFV+MvsA7hl0h3lBrpNkwtV+c85T77Mzx+yLW1yVkQ
cMoxPqxi/ks5TG0aGu2VJPcjAp6B11Z98no0LEgnIqrobU3mEFSmjCr0rrZTAudITVEhQApq
pf4yzMOJ28qZS9FrI5vvmH5tmlaYmZWX0ha6jNIvX/rF59XrswZgsfjogfn0VjW/tdkVref0
VofCez0Wm1YOoXhEI6ArR4Mfuolo9BH1lRZBIJkC7LqDrdpdELGmLnQye5IcLk9DMOgQKF3W
KWduBjey6oimSQTAX2ck5B+J2SCo87bVYf11eyrWWLD9a1O8AC/Ia10O5H0WJeBQJ8xlk3W8
2uphFsOE0xiLhpSWkZZpSTPJdKdQ8TifVAVekxEXYIAhF4BQUnVQ8254WUJTptyIEoot0qBT
V9P4IIuptj8sTQXkFvF7RjtGqmnv6fEzyEj7aYIE0ejQobTejoIJmGrFgyfQ/SylXc+iczBU
m7y7XewrR8Kvuq7d3WEwnRM0x5gDVbKubrJFV1ZgTJCueNjBeAvHWlHF08+i7unoJbfaYOWO
+RScMwwuQ3B0H0409ip+QVI6R6s+qyd+JKBfmANqeRE4rQX6nCjqCR2WGkc8lyQAlxQlSzrr
+v1HRuZYYWNYaSP0Q8ZT93TaWWMTte6LOyQiGcW89QIqD0DlLW/aHRIqoTuGHSbuDp11Y9IP
ZS/2LAVoUbWYhFEemH0pQGUhXBK8liwMdM3RwZ8tUUnjsjONytGhkSJQiAMS8Rh3SZqboGcA
pRVRv/jerydcKkYYsU47Ol5Aag0+wBhJQxBpjhHJI0l9AyHwrQKf9sKfCk46pqAqS5S3FaXt
2B3a8BxOsXSR5tuJuVkRdOWSrb6daxXYmXaZ/OI90aW8xrJTsfjr0wqclvfv0uW/HPaft93M
DMkqh3SpHqzJynIgy+uSc137uzRTt0D4C0dTTwyKHmErwLTkuhAuI5zdCNEqrXUlCJU+6+5s
CAY7M67YBI/C/AkelUoOSv8BU18bg82pibSiLgMccldBtm1qKTZNuXrqs2xQuRoOXMwxnHcF
g7r5WYb1pUFKu6MfJ67sveSL6hLI7gipQybibgchQfmuCdIemj4l3eZWmRivDqetjpvUz5fC
CBqbwL2JzuwqiUjjlsa5AMKXbor6qsrASA9M5hFc4ItDIaNKuXtwROjFoZH0hbSG1vKSEO1z
Oa89Y8uRx7ATmU0usZUihCXJfHk3djGHNHcJBoFZM9QGxo/cW0HE+fxDTvkvDgDSifQXZyCz
2D33nKTR5TNgAXftFJ9uje9cGEP7jfnqmkhHD031jz7YyUkFQ9dq9vsQrPOV8vWWaJ81GGoN
47goq7nYAraf/RnI+dPEvqE1YhK4K2L2fMa5l1dQJhAwZ7FtwWynQBT4VZqn0aPDOcXomiGE
CUmS4AMd4vtYB831s4CWvs36tRDYj2L9elp9ei70e1NPt8BOhjgmPA4ihY7dKI2Hgd0TrIgk
Tbn5oqkCR1xaOSGOxdDTKaVzC9KrjYpv+8NPL1rtVl+Kb3YuU++vLOQYGwYACMfXJSC4/N0g
LiCQok9NL6JFOse0HDuh9oHIJIT4IFHa50PUJh+urQiCdq+JDnVThgfoflwFpizt1E50SAhx
xiQzG8rS2FT9XlKHTGB+9Gk/XA/uxzWFfi2UYKcXQsu5MZRCRBzXvaZGKQSELZ3HONT5+uVj
l0wD9OZR3SDPqtcG/w+id702ODsk/Ch+i/XdtbtpeIHx9f95wMz9uvTskI9Sudz6OfqHN8//
2b+xqT4mQoQtw0nm98XRobkKIKC9sNAOuY60hKvm5SB/ePOfT6+bN12WNTOn0dcMWs2q9lD/
0qs1flfLsXdZwjDHcIU7dVpe9ueqaoJRsPXrHjim9PPO6w64EHgfkLV0Cg0Mwbm3020aoFiZ
aBErYj5vnIx3WszFWdshio883vOm/eIX37drsw1hZfKmtysrxXZ1rvOjelUsbaDjpQmAta0C
0+OqVwKWSKs6WkFcLxIanK5kSli3u0xqkaG3+y1i91swixBOyt0Twc1H9ktUA4OlgnnnKQq/
VOdFUSrnAw5Eke6zFg5auzjLKUnPrSshkvtdAaOTyFUW68rkmSPTNGcOSOOwjHJeikjxW+Iu
CVk6wn9cel42aCrtNLumNRi8FXVt3ySRs6TJh5F6vd+dDvtnfJy6MXp2huACBf8Oz3S2kAA/
O6gNy/ntLfHVjNVdrS7qcftl94jVZFwO3cMf0mg2V+bhElkZ3Ow/weq3z4guzrK5QFVuewWp
97oo0a1ojs5XOLgrSnzI/uCuYJyEgjgrpfe3oyFzkNSdzl/O3ITy7lNrTpTtNi/77a67Vnze
ovtw7p6pObBhdfx7e1p//Q0dkY/wX67oTLEzPdmL3IywaRnm56wnJalv2s4IfEj3d46v/HLK
7RfJMLDDtNriX+vVYeN9Omw3X8zk/InFyipSaUAu3HFTiQTlFzPHukus4n12SsgZn7jCxMQf
347uDbd8Nxrcj8y94pYwaUFfbBYsU5Jw38zaKgAmxu3Lm6tBF131edNlriCjxXzJXG/DpGvF
e1yyCGtSnLpG0xlYwAujI5w3p2Wbs/xeYfWy3WDmV2rOpuvN65FK8pvbpXPORObL5YVJcej4
ri8vHAg2bdTHpEuNuTKjlzMLbftJ23UVi3iim3NlZfFzxsLErIBbYPBeamZ98bVQURIYEUkN
ySP7AxhQkNgnYVk5N14ml9wDDukw1k3012m9CxJsD9/+Rpv7vAfzdDDyxEd90cz1NiAdP0Ii
n1mPs7G9Xs9mbKQdpTsrjRDaFqiLANLOso/ufqjdDKnzBsf5A1HvyWB3uzWtrjxj8bHOvY1s
F4LtxzO4c1D9MCvlC1N6FZQtUmbdvBKuG+HlkLx8gHH5Xabu9uv+nqG+bGqF+uXvnI9oDybN
NlkDi/rAKLJMTcWx+prOrHL31b9pp290pG55lEgsFXN70vIZF7b+Owa9HTzjfZzRM6/nM7KW
WJ5h5UxJfWVITATmaYkAK1LqTAoEWMzpldXXA2CZizlRczF5bwH8p5hE3FpAXauyYOUhtL+B
gKULuJZWdadEiHBhz1oWwozqfNlgwueezfPLhKT2u9BzgNx8FtrCwBgEVrnCQOkkhgt3KNWS
lR7f5T4rGrK8u7u9H/enH47urvtQfE+cWJ6rajr07GK8iJgRXtbpKUA7z/3rrgWiTMaaVH+h
gobduVFNErgDao0rHys59dxaXxkeb49r46rV5+rfjG6WOcSFVmZjgNE+uLJ5g8KyFmDroidb
+7Bbp0RkTqB4EGlJOXfHqby/GsnrwdBVFo9pKGQGLgsVmlPbXM7A/IRuxSGJL+/vBiMSui87
l+HofjC4csxZokbGo1LJYilSSB0Bc2M/A6xRk9nw9tb15K8m0Au6HyyNimpEx1c3Rsjhy+H4
zviNJgK2nDOaXFWffllTp+R8xl6H/70CTUNVZmi59INuEF+zWegH3K4PNkbV3S/L4gx8T2Tk
TPXZaTik9CPj9rXAG3MvFRjfD1LXB8AVPiLL8d2ta+T9FV2OndtoCJbL64sU3Ff53f0sYfLM
91clGWOQHV87L2JHEo24JrfDQW0q2jRFQ8/F2AY2J1Jm5VfNzUttVfxYHT2+O54Or9/09zfH
rxDKbLzTYbU74uze83ZXeBswBNsX/NPMi/8fo42bhU83CEaaiathzujMMvTY0IAxFD9JpNzt
eJEEcpDlWYoZmZCY5MT9PbRl7azSH/fN56l+83l98lysjgVwKTx/v9Yy0M/d3m03Bf7v7eF4
0q/ivhbPL++2u897b7/zgEEZ6xs2FWD5MoBALRKduTD94rH5rgiBRFmvkppGOKAkUcQmnvrd
3zmxM9UWmrhKQQZ7Kp2zwkDWZahf13FBVdhzhSiC9dftCwBqNX/36fXL5+0PO6arZ8BCCdbC
Lq8Nn13KIDALVcZEx75pMcZ26mMlBBUJC2z6JfCFuUUQTIRVZ6gxvW/WmyFwEcejoVOYuI/O
emosYXQ8WroNS0MT8uHN0uWSGorIv71eLvuT08gfXzvgKuVByByIWaKuxuM+/D2Em6nVyK9P
knMHG67uhrcj14YBMxpe2osmcLCM5d3t9fDGxTPx6WgAUsw7bZxzZDF77POXi8d57+2HRnAe
QS57gbEM70Z0OLhxMA3p/YBpgfb4qjSCeOLiyS84Ac5LZ+miYUPvxnQwOKt59e3BRzyVNexf
HP3CB0yVWefgaD+U/S2zZuKytS7uhm9Qzm92HPcrsorzUflRPZgjduZLf6DAzj9Jz2FxH674
q0IZYqshgx7o+mZswZqQ3YLq1oD5mKnTIC5/95+pV/AqoJUXmiQVJdFfFEOezaVKe1/T95TI
d0eDZeLQi78rbJDZzzjL3/pTCjllD5A6dTChmE7LRmHpEBhj3vDq/vp/GbuW7khxJf1XvKw+
Mz2NAIFYzIIEMs01ZGLAmena5PG13d0+43LWsV136s6vH4XEQ48QWQu7yhEfej8iQqHQ1Zf1
y/vzgf/8Zg+7ddkWB82ndKScdtfa8dxI3u66e9WusJjP1DlpxkXeXXc9WE+0IX0ot/k6Rbci
rkAZ6tqp4a1q735v33982nNr3ny2zV1vfXX98P4k7EzlH7sr+EQRHzrQfBc1bwMh/jyVzAu1
VVeSuWp7s8IPuAdAVjadj7SAZFflirPtdNv0sJDooEgcm+5kJG4AB8lxqQScV8uDN/3LNjvJ
kunkBi8v3EJ0ZHM3tudsD0prcYqLLndY301DEhsNcjhwafrh8ROOPGxzV9/fO9soraRLpcPY
JS7YogJN02jXhcqmLk8ygEVrUMXRVa6LmoIuLusKOzHK4UuQ4R8gmDJ+i3DkbNcpGmtE4LrS
SLXryrWVmohGlu/wVVEWBs69jdPbWU04DA7VmA2jaaoy200ebYM56XGpq+DYpU63pxC/zTez
Q90mkLV+eETHkzNXxYosbXaKTXh/g8fnEB7e6k5+sAzNsI4LerHv/tunkZasOerHAZrxn0a3
4ACpxAflwAPD0CK/9LNT1lJcEFJB4JOGaZYqpuSUbaFuXCp3e7ff9SZTJKuT9j04R7S7472d
TtcHwddGNV2YHN2YbnGloUw1t1T3Lku1vWCoZ1sworkUedf1IgqQPO2wNyc/szderYjQNELd
gciK2tyDrhE+/dj0BeY1/0pbYDixvjuOk6n+8fr58v31+SevAZQj45obukFC97YruUDzRKuq
2G4cZkGZg4BeAPDfi4iqz8LAixx1A0STpQkNiVW/gfHTZnCpzGxBINfVMWtMH7PRTLHUSHpS
w7mXI7YkILpaOjxOXZ++/nV+f/n8+9uH1vt8093stMAWI7HJ1hgx1aQuPeEps2lbhCOWuZ+H
hfWKF47T/z5/fOLOBFqmXOcNqNmWghwFzm5FVGWdzxVlilv7BjYjhDj5XL5aYHYZdvIPLFCS
Q7MuW+FzhgtGgr8v8zLl4/jO1ddlR2litREnRwG+nA7sJMIUSmDuVV+KgcAXQnVAyQh5V/+E
QzTZc1dfvvEuff331fO3fz4/PT0/Xf0xoH4/v/0O1prf9M7NwAZjhoQARl5A0CpxFI1ZiJxY
h3kQYIvrRLmqTyVqygbuTVE3VW5N58aF34Eu1entxyfOVBW7o2rDUUZhSul5sqX/5JvA28Mr
9MAfcho9PD18/3RNn/kYTny++/xbLi7Dt0rnqfZf5xQ2yl2l6NGz7BWwTOvHXzMdlhK7z4Hj
2gHV3Uv5LsCaTTuC4n9MqrZCqtOu110LBFWXo6S9hMst9cMHNHE2L1aWKyl8LhUYM9H0WIp/
+VZWbrH2AiZfglepLj8L8l0PgnOFnXkAf3A4Mz+b5wSuSnDI9ticwPTXoYZhQAwTU6FUdeyd
qqrRqeJauhrodyRa/bADn6PtvU6Ul98N2jH1VTMm0NpddpNdl0bmXUYYX+c832wCrj6UDr9X
0dNHdLoD6wgBQ/VcpkmopfH1fntbN6fNrUu0Fb1f2440Ykgpuz0WTgfKeGc7SMKnzfv58/x4
fh2GpTEI+Y8UxbS0+qqI/CO+G4ivHHNZjCbTy2Dw/pj1Ktz9t9F9dRvEpCUlgqa7enx9kQdN
poQKn2WVuCx/I6IWzsVQWLa7wcwbxvGU1RAV/vxuiyZ9wwtyfvwfk1G8iUs0zfU9XGWEiLrb
ooeQ5XCNVfjRdX1aw1Whq8+zODbiCy1fmZ/EJSu+XItUP/5LC4BjZaa0VbnN+hZTcqAy2mQb
COLqDZgihyAdStyv3dqYyuMnZXurTyi5BJsbshDGXVHXpKSuyf4T6bQnBtU6NRFUroTGgTcr
C9L3/9vD9+9chBD7NuJnKr6Eww7hdoSOawGRa7KbP6ygbkB+SBs80KBgr3v4xyOYAUCtM7r7
S0DrlE0E/7o64DY7wa12mzLb4yf0snVXLOpiXAOSgGL7lfixG9CldUpzn4/K3epuAWatuMYA
ylSVWxDtdVX2GVjRs2tUEFgYHZNoKqjPP7/ziYqNmjRvKGXMVdI03zZ2Jx1ODXqopIxgDxvX
/hGn6l4x0iIJymRg4geqFZZ+4qFuJQN7zaQnrErtmzLz2XCfWhGvjFaTc3Gd261ptaVv1jxt
y6+7bWqVN08Tj2Jm15lLrY+k+O36qGqCJAyQNo4j37MbLK245Ocew21Ge8pwvVEO475unGO8
zwLKEru9u4j6hGFkFqHohPgG+VCzgJhYIFKz7TkxSUK1c5FOnM7RFzt31bOjPTvFpRtwfSa4
Aj2CConyQ1dztXkWyCNe7WIAVlQQexaLyncCEoVWWflACEhCMDVXmbjmNlVnQcAYMnrKbtfh
J4xyOWtTEnoBum4hNRA127+8f/7gEsLiPpduNm2xMWPQGlXl8rEZcnzIG81jrPGBjBsv+f1/
XwaFb5Ys5/MxMihNEFeu3WFNOkPyzg9VVzWVQw41xjDFjpnTbfCzZqS8aj261wfNFYcnKKTc
E4TN0Ysg6Z1hWZ8YUBuP4hVWEAxJUzJOEOxopYV50RAkcH0aORh+4Cop00uK18ZhF9IxuIlL
x+BLpY5hFzHUcwynCREzD2+JmBGcwQovdLZRQeKlITUMnUmZEJcpwWla1TBmoiFfmxzxUkDa
6tcFFUzVZ35CHaGbFVzdR4GPN7gK4ysFhHzE41VruLFUCHMS19AsJHf5sG3AtIV4mQDc31AY
OCfXLpSWNYRuqO7N4kqqaeJp8lTytTV8kMTTPDutUjCsYGYVviWwxKfT5+PwERuwCI6kxjcY
yAiYeiZV3NuwSgVnJxsw5nNJyoswJ+ehrBDDiyUh1cSqkZcdfI/gE3+EwGSJHH5GCoRh4qQG
IFgBBAcT7UZAt+qwanMy7rKTblOEbyS6uvXjo+bwpjP0Ay6TeZ3fYlUZ2Xk/vLrUwShdahUu
uAYe2iougXesPgcQ6vqU0KW+4AOVxMbRssHD1xQN5KPC0Vg8MRm8AOu4qmGxrjUiAMawT019
18pUdD2aaR9EFN+XZkgWksjHwzQp9SIhjXGld+ob4W62G9ARxU4IlQS5xpGgLcXHU0goroFr
mAT1IlAQPo3n0awyYv2ITGFRI2cEwXvY9XHC8AVDxUSoW+I0v+tVECKlHrSi2J6dm/RuU8hN
UT1yHdltT70Abee256sjvgaOkLusI56HT4upTnmSJBSPcXJ9qNFIHUKkTLXoDwNJxMcou77M
sHVsBBXiKYptdj/tqXz0VSmfo50aym2E77DoBCPz0JYyZGTflroJdkSMQUcgfjeXsJvToeyw
fRfDixeiOt5UxaWUZXDMBnf6GT+4nKSzkCgSDlHErwt5zoVT88yLPQRhH5GLuU2BtRdRTuPk
aKJYzAu2j8jHIIhIM4/BUQoZvKVsinEwN5G3u0N6v1Of7ZxY0ltMPjMlr4fnCGrXFNvpXrky
cCeAZUcWGtvh4fPx76fzX1fN+zM8Wnf+8Xm1OXM19e1sKKFjOk1bDNlAd7oTdEV+gRicSAPJ
/drFoA5GFLgYWFLSSjOTdTV+qqHw9YQHv5xPUNXFdu2TVZ0t+8WBfdeLkmXQIMdexHCpFsMM
iMHVE6vc17JsQfta+HqMnoF9nh8uVDI9RsERr4A547D006qsY+KR0yFHnZyiwPOKbgXsuSel
ZXKgzeLVbndTONLhfXFKfTJ8Mlrhhtig06DNHt6fzKAaTbZQNZ6cFqWo4yW1HyrhVB3SwXU0
46usFAFc0K9HrkkEn0Xzq1kP1CDYESMHDLfZefqwMjly10EoT1fEVxlcuLHSArIBkqWHi0FI
DTQELlFPiA6NByb4c/GNzMeyQzDNrN5aWSt1c6Y9qL+zt92fP94eRYTHwQHZcg+p17mxDQAF
0zEFvQtih0PUyPYxPaepxe5kHBKIT9LeZ7F971HwwBdTuCdkO9zzZ0ZdV1mOH38BhrcOTTzH
xSoByBMak/qAB5ES2Rwb3zuaV581SA0el+jdc6i+UA8VHXUiqpd7IZlh99H8JhS6pstOdGrT
IiTdKLBohuIJ1A3XduFcuzttuoXqZiQABdnl96BiFput8SM/wZZJzrwuo5CvlI3meXDdZyJ0
VxboNJ5Loz1gDm8tqM88AaETBK0E4Jde8Twcl4oAcdtFvnv4/CPdfoUHmnN0bgJi8h5TaIzB
80IeRqRmEQU5Qg2kcuhJTVZPCzsAm+moWWFmswhLLAkQKgsDJAuuUGKGgYnrW5UU5ARXx2c+
bkgW/D4KImetODMxG2iUnWZy8VX48zZm2TIgOnPmcih+Jg7MJltTPvOwa47i2+kATCWO+q1K
k8eSZsnaG+a526Td0j4i2DE3cLvCfIxSUMswjo7omtzVFA3BIHg394yPQs0JK10dqee57pWJ
r+Asddy0+B8vj+/n59fnx8/389vL48eVPGst4cnIPx8e9Vekxq0fII6oFJI3utmPx3C/no1W
VMN7AWg9OHcFAT2e+o6LrsbabJ5LS5ppERvSqWrMt1eMIHFgrdiQmy4iHj3qFN4znknRI2CJ
jASd4ae2MwC1Qk1sabKxKsBrFrhXyQFBI+wQTUmaGS08H5Hb5UxQlxuF7Ts+8x3jRYMYtzMG
Hl+zHadi/aEKvcAe7iog8sLF+XCoiB8HyKys6oCaS8Lsa6AX8rY+MsxQCcz9kVFr6a122fU2
3aTYcZEQfyZfDps4iCS6uDSwcMdSsaB2YVypN2dE5WtKPN+mEWsPEw4Orv1FMK0pxqkhekVr
YAbmIjyow5bENdAtCc30xJhpaBqjg4a6Wu+uay6MxoQtCKsjiEuDC+v+lNICqOtBsHIL9HxR
XLvLIcWmmngnvoOiB6mLOsjYGtNJ5dxAE8k80ZsZ6/JY8LG8q/p0U2CA4SEnCInT3dX6QcKM
AgugMABOOLS68wdcENuwCG8UDQWiHTLWZgwoWSyiWNkV/cvm5TTQx7bCk9rUYraTyoF8L1WJ
i5+rmoXBCZwJEx+TGzSIr+5fBoeggyDd0oDqq5nBZehJ5gzSbQUzXSoeeMKSt6cO/4kZWHZV
Ejg8MTRU5McE0xxnEEgSsaM8gofp3SqExaoTos5xtaAUVZYTllsQmjJnRXGEsRR9BckWuBTd
vzSMpdtoXBaFmFJpYCJ0xM36Cc5yzZ9Rc/qFkquKlMFj3lLyzMdFNwWWNYRLcPj5lgJraOhw
3lNBjNHkF0AXl8S6uY0Tf3kygo5GHINc8JbXJuka4/6cLg9lU0OcOZP8jSQM3rchqktrmMbx
9ZodL+wTzfruK0QTcySw5yscqvQaGIaOdMFKUNYtvOVsXvIw2Hfd6rR3BSKYsW3aNauibe/h
DsruLrvusrYAI3gPN4EWy44ovQqzDxmqjqoQ86BY5dX7CyOy8+sm9dDNB1gdvi91tGZx5Fjd
RjX5Qpt11YaaDwRjMJ6YF+FXGzQUs6IN4KgYP8qcUVwDooRPtMV2UzRUPInIDxxuSDqMr2OY
4cQExQs5UfILhdW9ECyeQ+CS3BAzyxkgzcfb4BlaqiLDOu7/zAhTbdE51LFoSOXjQuuLCV6l
q3KFvcNQF3AdOSuy8TElNScgZ9dx4Dt8LAr7Jq6WLJKkxhiehnQcdErgKm/38oXjojLiRQ0X
jJ5eHkad5FN/iG2oXFqLGIZTYTRuuk2rHdfo9y5AXm7KnisgbkSbgmu8g9nlrYs1XiJy8Yc3
kuc2nG7NWFVWmuIRXj6wbt7ty7zY6c9MD62z2/btrtJix+T71Ww11DLVEh9c3p+ez2H18vbj
p/3mlMx1H1aKpjHTTIODwoF+hxB4qNlB4tJ8b4fdkiypVNblVuxZ2w36XqLIZ33YylCOinu9
XR+tdadbw1ZtzQaFdsSa0EpBvpbx8tfL58PrVb/H3iGGLoE3rZCKCFZ65A2SNj3EwSKRyhou
fMrm0AOQA7eASBadfP/3VO26Di6h4f4rHH5XFVgos/ElD7sK6hy1Lb7DPIBXJuQwxxZJMbum
yqkLoZx3ZRh7ji1xAhDc01oCeOOV4n8LmL5IaRw51lqZTZrGsRfhEZ/HRNZcq3BIDAIhrYYo
gI/XecUYQp45gXVR++CKvYSD/vylBGEJ++WclXj27mxdoPFlAhHy7erLFAfut6tUBkaw5gTE
kMv7PToc9WGnjMSHt8eX19eH938rY1Kw0x9PL2e+sj6e4U7Pf8LLro/PHx9wuxjuCX97+WkU
Qa43/T69cw2fAZGncYiKLxM/YaFnrpJ81EUhoRlK15Vmyai7JggdwqZEZF0QOM6ZRgANQkxB
m9lV4KdWkap94HtpmfnByuTd5SkJQmsP4OJLrMd3nukBpvQPG0Tjx13dHM3kut32/rTq1yfJ
m1+I/6VOlY+S5N0EtLuZz/DIuGo6vxKifjlvjAup8f0rJg6PXBXhWA0mRMjwxW9GRGYEawth
PBuo8Vc9I4nZ1pyohs+ciHpQVEm+6TyC+pYPQ7ZiES9jFFv9yRdUQqw5IclHOx9hweKzzD3J
9g0loTVuBJkik4kzYpd/8YA4+MzDrkSO7ET629tUpJ2Ajh6DjcP+yAVxbM6nx8TXjVXKAIQh
/qDNAFM8Ew0aIw2aHX3KFyV0vBujW8nw+W0hGz+2sxEM5l5xxDSIrXEgyRQjB6HV6IKse/TP
DOpwhhoRScASTHka+DeMEXtUXXfM9zxLtJzbR2mzl298UfqXfBtRBMI2G++uyaPQC4i17EoG
C+x87DTnLe4PCXk8cwxfCuFUZ8wWWfNi6l/jgXyWE5OuAHl79fnjjUu7Vg4gV/DByzV2iqZu
fjq9dvHMN++35zOEHXt+/Y4lPfVBHJhXePW5Q/3YEa5ZAlweT0PrwBu+TZmbi4QSq95RVlnY
h2/P7w/8mze+G2ExKWUu1yV1hDcbyljzNlxa4gUAt/7OALokFAAgvpTFckPWcHn7AiC4kEXg
uBEiAbu956dkqRC7vR+ZC5oFcNjJZ8Dipi0Ay6Wkl8rAARdTwN2rFMBSd+72UeQIzjmnEF8E
XCpksgyIfcftrwkQO5z1JsCllowv1SKOL6TA2OLcA0C0XM3kUiGTS31BArY4O/ddFPlLU6fu
k9pzRDlUEAsKCvCJfqYzMRqXH82E6C9m3hOyJGhxxN5b3KUFIriUhisO5LCct17gNZnjPFhi
trvd1iOXUDWtd47HiCSgzdOs9peSkIil4rb/oOF2sT70JkrxMwUFsLQ/ckBYZJulWcghdJXi
18YlouhZcbM0fjuaxUGNh9rA90ixSVacZrvCj0IbZZiwnN7EweK6lR+SeHEzBUC0VBsOYF58
2mc1WiGt1NLg8frw8bd7+09zOAde6iVwKXOcwkyAyHwPaXwYUct8is+yLFhtOhKZdiwlNIot
6Ui7C/AUQ86QZHbMfcY8GZ2u3dsWU+0zw0R+txWGa1nEHx+f528v//cMBkghOFrGWYEfXhq0
zO2C1+cpYb7m/qVzmZ8sMdUITXa6MXFyE8ZiB1PYHl1fCqbuxqmw6670cE9fFdT73tFRbuBF
jgoLXuDMuvf9yOGfqsNIcKmEtz3RvGJV3hEegGEuHvX0I3ed6wj2rpXvWPE0aOdoAsGN7bMb
yc3CsGOeu4lA+8H9aK2ho59dqvw1vBRzqQUFyMeLKXjB0rg1/G8VfvELTbjOuHbhGkOMtV3E
03A0YX+XJtpDOPpE9gl1zJqyT0jgGNQt3xtcXXasAo+0a1d9b2uSE95eqMXMAq54xbTwXdga
pS5eH89X+X51tX4/v33yTybLtHDB/Ph8eHuCV62/fDx8csXy5fP5t6s/FehQDDCMd/3KY4li
uBuIEVGvqkji3ku8nwiR2MiIEAQaEdWBQhxI8XmhLimCxljeBURMB6xSjyIu539c8XX+/fnj
8/3l4dVZvbw93uipjwts5ue5UcASJplRli1jYexjxKl4nPR79yttnR39kJiNJYh+YOTQB8TI
9GvFeySIMKLZe/SahD7Sez5jdj97WD/79ogQXYqNCM9qXyYNTUajex6LbKgfGSNiX3TkmJjf
D1M1J1ZxJUs2rZ0rT/9o4lN7bMvPI4wYY91lNgQfOeYo7jvfM3F8WFvlh1CdqZm1bK+YqEOs
v/ryKyO+a7iAYJYPaEerIn6MtAMn+sh4Cgwin1jG9KmiUIvLNdcjNLLeHnt72PEhT5EhH1Cj
U/NyBY1Yr3ByZpFjIKPUxqIm9vCSNTAmTrpOPHO0FRm6ZAaRNYK4HOt7ph8FUENiule0feWz
wMOIZi/B6mUU82tO+CYFh/f/T9m1dDeO6+j9/Aqfu5jTvehpvS0teiFLsq2OZKlE2eXUxied
cqV8OokziXNu1/z6AUg9SAp06m6qYgAiJT5AEATxVSlRHV9rh/GVdJrVOLJwZob6kBbt45D9
rms1oVnmfaVxy6DOzfn18n0WPyFC+N3z7zfn1+Pd86wdR/rvCdf3abszvhkMKMeytFFWNb7t
6OsNEm296RYJbIx05Vas0tZ19UI7qk9Sg1gnQ5foQwInk6Vp13gb+o5D0Q7w2X9osRgdZ+dR
sWJDHcRKG0RO3/Y5S39eo0R698JMCWlF5lhMqUJdF//7P6q3TfDqArX2eu6QOLqPJZEKnJ2f
H390RtPvdVGopQKBWkDgk0DhkmsLZ0XDXGFZ0gfn9PthDgvLzYCJ9eFG+9s/tWGxWawdfQQh
LZrQar3lOU1rErxQ4OlDkhP1pwVRm5W4U3X1gcvCVTEZ5EDUV7m4XYC5pisomP5B4Gv2X76H
7bK/07oTzXpnMpZQv7raS62rZstcbYrFLKlaJ9MksyLbDJdMk/PTEwL1Dnc9f8k2vuU49q9X
gWh6LWlNTKHaISz1iUHO627P58c3TA8PA+X4eH6ZPR//rQx3NciKI6cvM9JhYgpJ4YWsXu9e
vuO9VgJVIF5R0WC7VYyoS+OndQQeIraqtzw8bHy7ZoqRgbCJsjOqP+uTyMJt9Xr3dJz99f7t
G0Jo6PjzywXi1CKM5/gqQNtUbb68lUmyFlzmTcnBX2AfRSWJhgJS+W4u/OY5jGAFIwI88RWW
GCJUFE2WTBlJVd9CZfGEwaFhF0WuPsJuGV0WMsiykEGXtayaLF9tELk9j5UkIfyT2nXHIb0n
KAL/TSVGPtTXFtlYvPYVVc0UYpots6bJ0oN8iWqJYwazIWSqMGbNLBC2UhUFuQ7Kimnf0+YF
b4E230zxIpRR9L3HqSFiBbFv8qbZUrGcwKtLR6sWKNBfywr0PN733mjRw1Kxt4usUXWVTO2G
nFw0mbINn2kD3/fVcmKWF9AJamvlJWtVCkxTebOAldTZpgcfkitndsqzcdCvIACmtEc61CnT
YfYoYYapHWWG/jfJNfmOPnTADzedt/HRpqeiVkqN08yQnw1bub21HepekOBp7QGUgwF7uOOu
DM2LPHkCKB1D++iRE+9osGnk5er0gt8HV/VZ9lTy3hR2TFaBlsn1UXpz21Cx+cBx0+VeqRQJ
hzhJskIrgzPoK/Y4aKsqrSpbe2bXhgF52wN1QZOnAnVUafHmxjSrXU00gXWIRl7C0bUooeda
z5+0X3eNmH6szGDgbapSXarQ7nXUlPkjlQctr1JDu/RCRU6XqUe+45c2GU8QB3+bxkl3aKEM
C4Y7QSq4Dpnl3FZMGnLF5jp2cXf/9+Pp4fsFTPkiSY2Q4sA7JEXMWIcFO34ccgpvCZtDz2nl
oDfOKBlsbFdL2Zjl9Hbn+tYnZSeEdNCYkWM4++/5LnnlC7ltWjleqZe5W60cz3ViKlwP+RKk
i0SNS+YG0XIl527vvsi37Jul6ttHznofuj4dnYHsqi1dx/GpW8KDXtGbeChglLhpU8en5tgo
MiSaIB4XWazIl1SFyHzHowiRAWhk8ptHn4uMsuRGKf3q08gZM40RhQMzDMkLk5rM3FSA8ZK9
0oQB98ISz1P3/yZCVGLcnqdjJEjV7uCz5wVl3o9CizSwrbnh25pkn2wMCPJjNRmNXfqBMpA2
FpgOV9YB1apSf4EG3CBSKmhXZZ6MLG730LNlFEqKbevoES7d2062SH39rNpuFKBHtqFGIt59
RVz6ic08PIcSxP2U8XioJDPQZCUmCr6RS+ppBuw0AYfELqf7v4kUf/2z2w2Llxkm79/Kq0uJ
CSAPi6KSgSlKNlAmNawRspVEQZy+L2zaSijsymce/izzBFbRgxsqh24dt/EjybuxyT7j6JMM
H/wl1J4yTgbqYQn/0ndrJCGEk8+TqjBAq3DJRYODf5OB+Poz5onerLIpqh/ODWITwkuIN67l
+BFt4woJTOBPaWfxBkkZuPKJ9Uj1w+nnN5aFXj86JoWLZIUNCsOlD2K5BF8LrEnZnEzHTI18
43fwqBKHKjSITIs3CkyhL2SumslDlIjpt7xpRUA23L/u+L5FbpN6rr/H7GhlKScDG3hq1pCR
bG4O4MopVTpi6Mun1z1RSx3Wk+kVjXM5PJh6E1umm27iDjKBfBjOqX3+I1Di2+m0ExePTSUO
aTDVh4wmQ8dNbMdjVuhPHryGcyKmR+qE1qR1W9eXfZxi8k3NBk5vkxhvmJsqaIvEj5TTvmEK
yB5PMYKnCQc5PWeuvSxcO9JL6RhiO6EpGO5k/uvx9Pz3L/avM1hsZs1qMesW53dEl5qxl+M9
OsDXeTriM8OPQ7vON6vy14mKWsC6eUOhXHDuFA9GfFWxh24wzydMsmTmcoTb25ZOmCZamOfG
62acsRvGjANScBzeYmnPr/ffNcU8NGX7enp4UNZLURoo+5XmkZIZPL25ccz1QhWsFuuq1fq0
56Y5uzGw1lnctIssbo31X3emKKJJTeemVITipM13eUsl41DkCC07fE+X9p+PEN7Ap5cLHtW9
zS6ilceBuTlevp0eEU75/vz87fQw+wU743L3+nC8TEfl0OhNvGEI5/rRW4qr+4b3rOON6vLQ
uIgwQZvAaovpVzeHMbXAOUlPLbJY9J9gwmnYnZIdkIH+O4COw9vYLGm2kpOesyYO7KZNVDBm
JEyMJCSuk7aCWU2+FvKB14KRa+RP7FGJx0Gd+qEAhNmpP3FRTCMUzTftcooKMBWBna2hMsz2
gLeD/5DA6bFOwhbrxUWSNsMN8E4mXiz8L5nBQTcKZdUXQ5KkQWQfktl7e4GUoT9G756Rc0hg
2G9JrCpZcO6pnT7S1aT1Ei+Qo5l6+vq2DH05W3TPGEwQjY6p95XQH4mh5dIaGVqa4Z7TMD9x
5w7VGDkrbMdwDVmVMeQe0YTIVF2dyB4EiPfmeKoO0TScoafAk3lucH0ccaGATHcjS4RE3aVn
typWpcoxIBH0QotPrnNDfNE071U/1bqcNle/5xqOai/DYKMQWYb8RZ3MsnRtU669viqYXoYb
XJKIH5LJoqQyVJdUz8lK2LjRrrnh4R2IXB+XKEJnIhoEwtAiOpf5JfVWLAW9EE5WIIx6VzUf
MSIiwxiKDPrDInQEpxMTBOkeUT6nz2l6RGuOILIp/RDNlZRcQ/95fkjRUZ14ITk5uNa61icw
4xybmu1lUs8j7eth0YFNftplhh16A43Qn1iPUga72+taS7zNT4zEKLk60PZd7KbAHnm8u8BW
4umj90vKyrw8dx3pGBJLSyI+GXIuC/j04AlC/7CMy7y4pbpSCHxUeRBeX6dBZO58XMzcI++d
yxJhSE+NuUdOJcdTgUoHzmRjTItcfR0N+WFQIO2NPW9jemZ4YftBX6KIe61eFPAjsnRWBg4Z
CT+uSF5IKZ2m9hNq8uOgJ3TIJD+aRPcJ+S+3m09l3c+M8/NvuHm6qk078C3qKzsoo+trWwt/
fbR06dgDemv2iSunugBxrScrBHoDmLgX98GUX1VFuswN/tMUAU/wpGmaigdYi+2SykfFbjcJ
RsPQrSKeO5TVLusifojP7oQmObw6OuydazrrgPZWfXnxdg9b8bqIpfAihAEsEilGdp163jy0
RrffUG3HIb8HU5hYVHRBXq4wVC3PD6IW+ajPodzlddzwzHewec2keEX+s2f+YWnkpsKW/sNX
ycJ1fShhz6nkzhZcAcHb8f71r/HNuiaBfezBhPYri1COGonP3fJa3ePPrXrCBT8PSU7FziCn
7qZh3nxSSoABkZUkI84SlcCyJqmYqxL5Sf0wuyXGJmv3mmizZUwllcvAUTT6bkn6WTHAoE9p
NZaAVNnRIn6j/3CrlCnIJkSqjr2Ii6IiO6QvtlTbWyL3wXgHYqr30hzzavJqnJo0mBlOHI0d
imwVJ7cTZcGxON7O3y6z9Y+X4+tvu9nD+/HtooQuDokxrouO1a+a7NaUmJa18UoLKRufu6bx
xOQ/JAXtx1l/Bmtvg8dmk29MHs/3f8/Y+f31ngxS42dgyTqvD3XeBt6C1F9kIcOJWZwXi0rx
rA+518o1hSwSYw7N+FBqT3UFcW8K+Zk5tMKWOtgUjp7j0/lyxFxZxJqZlVWbgVpSl8uBekg0
B8+YJmtaqqjt5entgVzB6pKtRCTBCh1vSKDXWC4oRjxdtVKFNIrwmPhzrgJ5CJu/Sma/sB9v
l+PTrHqeJd9PL7/O3tAV/+10Lx2XiqjZp8fzA5DZWV2J++hZgi0ib17Pd1/vz0+mB0k+F9js
69+Xr8fj2/3d43H26fyaf5oU0n3jp22eJDB9V1rk1FDLR2UJN/D/lHvTa054nJk98ysexely
FNzF++kR/cZDK1JnrHmb7RF7T0qlSb70z5fOi//0fvcIDWlsaZIvj5Pk0OaTQbI/PZ6e/zGV
SXGHm/I/NbyGlbXsAW17q7b7qWCr9iZUB33L4XZ53Bgs5GlWxhv5upAkVGcNaph4Q0PochHE
MmbxzmDxSZIDGAdl9MklxozBeql/zwTedfz0Q7bL5EjabN8m4zFF9s/l/vxsRIkVwhxd989Y
DpLoGOqRSEecIrKNDNdVARdGDsdSo04AhMTUH9cz2o1P48R3Ak0bRnP5rkRHZ6Xvq3ADHQNj
V/STYUIGhjb86xoSkoD9VZEu61xusRxNlO1yKV91G2mHRIn0lxhgztPrkyJCKa+pIEZ0EAAw
kuANDwkHcfUlu9OgLCU/Qfy5ZOQzE1FePcM5NYg4sgj7PIme7MhjicrHjS/Hx/9EB8X398fH
4+v56ainSI1hR2QHjiH7Ts+lfSlxui9czzdGjfd8E3Ak58+dD/mm8hdlbJOoL8DQEiEChYaE
WpQJzKchspmgqpBOCkeDDUtjx7A9TGPXkFcIBm6TWtTphOAoXhVOMrgQ+ABpuxdz431OWfA3
e5ZKl5r4T/0rBJGO6L7ZJ3/e2GoqiMR15FtgZRnPPQWmVBAm4GEd2QAcBlwFswUIoacgqJYY
1WJPwQsFnS4zEi7HUZgn+CDTa+yTwFG1N0tiQwQVa29C5do+EhaxryR31OagmJfPd2D18Wti
3W1GWJ9gUVLz38SI1LjiuL9Fq9zciNO5FdkN7cYEpm1I+oWsiPLKAcMJJE88/o5srUonov2U
nEU5QYDhzQOtlMAKDvkSEbnquIGNa0bDniuSZk0xnxsyyXBWeDDpt/mc1CDIiGylHeZqclCg
hCEVKwSMyNFFIxKjCBkqqF+cRl5Au/1BFx9gWqN5QmkLDvALK3ms3kXKNrusqGrc1rdZ0hri
Htc5mCP0KFrv56QfP9/EeE9BQcIUZ8YH7RWKNnG8OVUG52ixXkiKDPG+nEdiAYIRZqmpY5Fk
24ZM14JpwMsDnuMZsPKAZzrcxSy7gQk0O6nBdCJBfYHjOWryHCBFhnQ9m8MXe2jhjrqJtzqU
lLAfxWggyuG75R3auVMv54AGdMivPMwFdlpHjxxg0KOJpdy8Lqt0GswnuW0QyjU24Hy3vHgr
tKmX65mu0hw91WOWIV+ekLAd26UHRce3QmYb8j33JYTMdIzTSQQ2CwzQXlwCarDpxhPseWRI
BinYoetRF1g6ZqBGlXYV8pBLw0MC81braWC0ReL5HjVKd8vAtvQn9nmRb/aH/aRX+9Xx2koo
r5X8njXs7NVL1Gj9NBms0Pp5g1q89HDnk3l5hM30xCYOXcNqsi4Tz6GTEUtlicK+H59O9/Ah
4gRGraEtYHrW6wPLNswwC4RM9qW6JrQoM1O22SRhoUEd5fEnI3ItS9JrwLb4LnmDUCBsVRti
NVjNXGpR3X3pIWx7P6feROLU6vS1P7WCbu1u8cs+E1pA3imVrGs01pmdwl3H6v65oVDZemb1
8JTQi9p2bhRYbxXclmnBymOt9jI0T0GZ1XidkavmvcDU7XxU0zajbwWebMD4bmCppobvGoYO
sDwSxRMZnmIewu9I+e1HDgatsmxC1Qhuo72NTybKB0bgeI2+S0FyGFwxCP0gCgy7GGBqSJic
Qmt+ZAWGtpgHnl6K0Qr153PLMNGBF9E1YHJyudnC0FKM8bSu8BYevVCmzPMM9j9YUnZgSAiK
VlZgCE8pA8c1seK9b9OWK7JCw8ILxo43d8gdGHAiR1/H4WOt0MEbAqY1ECR8f25c5oE9N23G
O3ZgU1sjsawBX575VyejiE8FDfX1/empz9uh6Rzhe+X5P3SnjswTfh36lGsiKxxU5CI1eZsu
xcLxf9+Pz/c/ZuzH8+X78e30f3iBIE1Zl0VHOtpaHZ+Pr3eX8+vv6Qmz7vz1jofssuKJfEdB
G7j6nAhM+n73dvytALHj11lxPr/MfoF6MT1Q/15v0nvJdS09DfuOk/Te717kP61mvBV9tXkU
rfzw4/X8dn9+Oc7ehmV/3MAxO1DwOQXJdrVPEETKKdQ55HRNvm+YKbk+Z9K4pYtypWSpEr91
fxenadp3uY+Zg3m+aM1T1lvXEmDoBicrrG2r26YSjqrJssdZGGN3hY23SXr2OBXaFeyzaEAS
cw8Jq+N493j5LhlrPfX1MmvuLsdZeX4+XdQOXWaepyhoTpCh7uO9a2mQrh2NTo5M1icx5VcU
L/j+dPp6uvyQhtvY9aVDZ4RI162aqX2NextDhDzwHFPc0rplDmkorNutnIKK5XNLjiDF347i
HZt8h1CeoDMueK/p6Xj39v4qsEreoV0m08qziDnkGZa4jjun2qbjhZr7OO9mhsEKz7tJQrKX
+4qF0ADm9Cq9AO0MvSn3gdJd+WZ3yJPSAz1gLlQRMr0aCsFsDYjZSsoYyxEzs2BlkLI9vfSY
+1Ke39j+6p0WmToevohLOPwSOqFp/0wPTEOYjtMtOokMIwJz+pKOwMJF1DJpjtcpi1z5AgSn
RJpKZnPXIX04i7U9lwMS8be8JCQlPChHNyNBdWcARbseK7MC0p+NjMBXGmRVO3FtkUHRggXf
bVlKnuNhH8MKWG8MDjRViMy5w1m2fFnkTxbbWhLppm4sn9QufQ1DAovBdG181UAudtCtXkLe
S4/3nqfn/hY0+rhrU8UYB0/yqrp16TTqNXwXv3qtvBfLbduluxBZJLwea29c11beF6bcdpcz
0n5uE+Z6trJB4aQ51eF9i7bQMb56s4WTDJc7kDcnCwSO57vKN2+Zb4cOlWFhl2wKvSsEzeCU
3mVlEVi0k4Gz1JweuyIwAel9gZ5zJsefPRKDol5EDNvdw/PxIg5xyDX3Jozm5D4WGdKAj2+s
KJJTdXYni2W82pBE8hySMxTPAVBcJV9zWSau78jQkZ2y5s/SFlZf3zW2bIBpo2hdJn7ouZTm
6FgG01CX0szOnt2UMA/MC5YmZlqzbuMyXsfwH/N1R1YfhUh19n8NiclfHo863Cd3Pm3pBVB5
pjNv7h9Pz8RgGpZMgi/SS3a3mWe/zUR69Mfz81HdWq4bfnWZDkLIN23WNNu6NUYU4JXjoqrq
XsBkyONdTqWQ7t3pN+xW7WcwcwXw4PPD+yP8/XJ+O+F+kGqFnxFX9mAv5wvYFicy2sF3SHWV
MltHYYj3vnfF1+GRV8wERz2ISmpPWyoljq3qSCT5BrAkLm6yxNu6MG4qDO1Cthn01UUNtivr
yLY+2FOpT4s9PUL9vb8eSSW5qK3AKunA3EVZG8MoijXo9pTm1YgcQG1FarVj86TGViQhKerC
tuXQBf5bVbwdTdW5deGqDzI/kHW7+K0VJGiaikOqSx1xdqq3bjI2VcicSnqXBUd529b31BZZ
144VUOr4Sx2D6Sn5ezuCWlNP7L+k97boA2C02J9Pzw+E1c7cyPXlIqbC3dA6/3N6ws0i6oSv
HCDinhxo3M70SbusyNO44aGkh516/LqwTbfzalMwebNMESeOfoo1SwO+LttHrmE+A8s3HF5j
eQZ4KbCZXNMWZ1f4bmFNcjVK/XW1VbuY77fzI2YkMUWsSJrWYUaPlMNsk5fmgxrE4nd8ekFf
okG7oAM7CqnoSsRxLw/tOmvKKqm2KsRTsY+sQLWXBc0wGNoSNk+Gc1xk0b7wFhZMcjxyhpNq
S5BrT9AF+/WVaARpr9KScLRlBhvoIU87/JwtXk9fH4hYWBRN4shO9moCJ6S3sEXxqAUNmcv4
JlMqOCN0C5E6bFfmKA+bX8XGHx6cROmO0/DzNCd13nzicGLTjJTAwfsWyu68OCxzehZMyhmK
qePkpmu9fqWq4iaFlTfJHXXvAjo3aw3B6UKDrW9n7P2vt/+v7Ema48Z1vr9f4ZrTe1WZGdtp
Z5xDDmyJ6lZamynJ3fZF5dg9SdcktstLzZvv138AF4kLKOdd4jQAcScIkFikbffUVO2ENADa
uX1KymFTVwztcE8RSTOn9ZVxRBy6WgjPDpSkS3+msJYVl7R5MFJlbYGJV8/LC2xelKzMd7yQ
uXCDSi2qZseG0/OqHNat7YvloHAQHFsXQNYJL2p8LhUpp10C3REfC0aT9YQ5iyNPCwy0+plH
4v+mXUPFTSoT68oKfqCvlgsoGtcbhtHPOdC/RbBg2P3d08Phzjosq1TUucMuNGhY5lWKOXOa
mKWFKmoUfZnl42ZCudg/lYxv16TBaOnTpox2t1E0Av4JOrPeHr083dzKcz2MWt921PCiwlIA
63avQRXMd4vz0avOckAcoWXbE9Cmywno5IJqrqvDLpiPsmbl2mgq76sGZyRuV4FfDeVKjORt
/DrZI00um3k6bXvzZnl5whczt9iGrGTJelfHzbYl4VLk6Wqmq2lGm3tmLTWVTTnUjbNL2zwS
CLwt8jLmDyi13iSM9D5dn9Y9ktDqV+27yRklyD2o1Ivq4Tscy5LZuIceQ7kTZE5QmhsmWlKv
Blxel8xKUsR33emQ+Q4hCBp2rOuoQgD/Pvzkvay4bnMM5k3PgKFqedKLSJyqXbcYbGcHDZhK
DlGmOK9Bi2hkqc/L1OHz+DtKDBWUywQWpiXRCZ7D+ALGbukIBFI39KpFHh3Uz15pn+k+f470
F+HR7uI3HetyDIfqTNtOVkrO1SprTz2ckRm6seeTHKFhbyyAkUwOkdw0K38hhMSir0BSqIBO
OpTG2xS48yswa2H06V051cGz4RIkJDJaQJUXajSmechOgzGQIBxnetj0F2oBBN+9OXSGambv
SBI1skTLVGA9JX3ksWQGupKkLqV2n5Me3zjS9ske253o25vpIMCDSvsx1ZSDKIQIT++digQB
UVw12FSnpgkMh9TKLbOVUxhZTmkYDMLi3hIXjzKZsZmvL/q6o93IWN/VWbuI7TGFjmEzaE0M
V0NHC3blodVxcHP7zY2Ol7WSfZEnjKZW5Omvoi5/Ty9TecgQZ0ze1h8/fDiOtapPswBl6qHL
VheFdft7xrrf+Q7/Bd0iUnvZAmWs7sss2HjWYTCDrDpiCsz5O9cypW4971/vHo7+pFssHdJJ
bqBc1dd5kYI2NS3wDReVzWaMfDwKEfhn4jxGAwkbMWoHeatipWAURl5aZdUCQ3h4pw5LA7am
QYPY0ms4i69gLrdqDLsOPpwQTdG7DVvyoGESFDvzll7Hws8TwUqy+vaiZ+3amQUNUVzLyAKT
XOig01zEZMCRMOXIYUHSrFaRKDY+qYwuPtNYhw7dP5OmJzoQHD4j5rrIqXudEV9cL8jvimsq
IslU4TVdW9tRr7UjfoFh6i+XxQbG6JoebF4ueZqSCR6mCRFsVfKqU3Omyno/XintgjVR5hUc
Y+SqqEtvRa0bD3BR7RYh6AMNMqKKkRCD4hUEQ/SiX/CVH1xfoeEQNPCJ57Rd1ML+qr2M8u6Z
bSzCU8owz8JqMvwwAXw//XJ4fjg/P/v468kvNjqpU96wFR8W752XLAf3B/lK4ZL8cRb9/Jy0
SPRITmc+p0wePJJ44+ko6h7Jyczn1BuiR/J+5nPKQMAjOXOnzMJ8iGI+RjAf38e++ehaz3pf
vdnLj4uP8V6SZhBIAgIKrrrhPNKok1PbQMpHBdMiw2u9UdWJW54Bn9Lg9zR4QYODRW4QlAGv
jQ/Wp0FE7I/s/lDPGw5BpLEn3rra1Pn5IAhY78JKliA7s3MFGnDCMaeG3xeFAd2xJ3OMjSSi
Bp2XLPZK5EVBF7xivPAv8H0SwTmVM8zgc2g2c9O/jKiqz6kgus44kG3uerHJ7XBniOi7zHG6
66sc1zN1Y1kP2wtbZnSukZQP0/729Qkf6aaQe6NUeuUck/gbNOaLnrf6aKUkXC7aHGROOH2B
XoCo45TRiR6QqSyLugdSap4msAXkqyFdY35CwVAJdEyElGaMMdta+VLSiTxxwt/PKM8G5WnO
oMKiYtjWvYhEYZQ3K4lUHTEPpUpDSVRgQttPzWS2f3Nbfvrl+839HXo0vMN/7h7+vn/3z82P
G/h1c/d4uH/3fPPnHgo83L3DKOhfca7efXn88xc1fZv90/3+u0xjuZcP29M0/mtKv3N0uD+g
qezh/25c54okGdaslSrpcMmEygenA9lbCghFdQ0Cgn2zDSAYFND5q7pyZDcLxYpiNky+R4pV
xOnkXQDIQVb6gFniDDZwlHZMjUsOl0HHR3v03PO3kxmgXS2U1GbrXTKmpfbFc2AlL5PmyodC
GT6oufAhguXpB9gHSW0lSJbbqjbPqMnTP48vD0e3D0/7o4eno2/774/Sj8jSkpAcNJuG2qUa
y4oVs81AHPBpCOcsJYEhabtJ8mZtm5h5iPCTtRMU0gKGpKJaUTCScJRsg4ZHW7JpGhIYFoGq
W0gKRwFbEX3XcNdw20FhXhC2BGU0uC+NfcB3nWDR61VNvMpOTs9BwwxaVPUFDQw7Jf+kRNOB
p6yB68811g8nqG5gXr98P9z++tf+n6NbuZq/YlK2f4hFLFoq86FGpmuiTTxJI1EcDV6kLX31
Z9ZpSZt4mNHoxSU/PTs7+Rj0i72+fEPLt9ubl/3dEb+XnUPDxL8PL9+O2PPzw+1BotKblxuL
j+uCkzIY+lVSEn1M1nCAs9Pjpi6uokbo4yZd5S2d69b0l1/kAbeBcVozYL6Xhu0spd/ej4c7
O2u3ac8yoVpJpiY1yC7cJEnXEs1YEkUXkZstja4z2vRAoxtob7xlO6IVIMJshWsYYIYXQ5x2
Pf3qbfqAcevCd29MVBQZz9KWMww/LBk1yrvZzlyqj4xx5/75JaxMJO9Pw+okOIDudiSvXhZs
w0+pmVKYGQYF9XQnx2mehWufrMqseYqTprRh3YgmXWFG5NA04TCUOewDaasS4kSZOh6TZj+t
2QnROgRjFTMbEfb02QeqvLMT6uQARMTvxzCyeXQHMtWypm0YNc22OXPdnxWPPjx+c+zDRl7T
UluEtwN5EToukXqb5eSqUogg6Z5ZOqzkoBMyAoFKThDMxsLOrAREh5PgZLU3Epb8G9auuXM4
kVw0XjLrcaZmV263rf3gxGoeHn48ol2tqxWYBmeFk23VsM7rmmjAORmVf/xkQfHg60UkQ5Qm
8C+Mlc0o6EsPP46q1x9f9k/GDZxqP6b8GpKGkvdSsVyZwNMEJsIoFc7LCkqQUCcTIgLg5xx1
IY5mfba0b4mvoL1kvtz+/fDl6Qa0lKeH15fDPcH80a+R3kjS4/EtfopEagVSOQoCorkJlFSk
tBPSUfsD4YZdgySHN/kncyTz7f0ZYWfqFy0chdQRnrveUiuIXw7rPKuGPz6eUdG7LDLg8ws3
F7yFZB3wLZBsZnfPRIhNPF7MzhQSU7GsQyrMBbxLItH1LLokgcPhzfaVRb3Kk2G1K4jhAI22
LDle6MgroO6qcW4WLHTTLwtN1fZLJAxZHboL/ykl62eZAfP58PVe2Tvfftvf/gX6vGM2KJ9O
7RsrEbPW16SwsTC1YtvRxOZN/CeaYfq/zCsmroZGYA67T6OPcmz7K9XfvhIwkGEJShZwNWHn
jcwrzsQgH4QdXoGGybSBxjKHAx/zDViHgrExBlmgSpqrIRN1Ke/FaJKCVwY7rYdapJHbV+h6
yUGpLJdQK9EidR/IirAyTMJgrN6slZfAugSuS+695MTZxskQipXJkHf94JzYiedMjQA4qIss
Ggdfk8CC5csrWq2yCBZE6UxsWSTxqaJYkhfOgPvgFxcTGxIyb22+DIX9xHp3GaX7sSRYX2ld
RoZE0+AzNJ50rrhxrU4FDwrSx2ip5ELVY7gPX5DUC5Ia5Q2CXIIp+t01gu3eKsiwO6feajRS
Gok31Gc5I1/yNJaJkvgGoN0a9gc5jZqmbZigtAaNXiafiYIjc2X2l7x7xZCL9gVkWyc57MhL
Ds0SdlocvD+G3WjbgiuQzE3j2KYiPC0tkbziwH9bGa14APbhWF9LHCKgCHkpb62UVEa4TQom
OEzqWgpaVmNFspZ1yVtTpM1qEYTJpqkcM4uRBLGwQBqiMkRVdWUQGDq4cbEjqqnrwkUJHlAr
cxMKw9AhwjUzcMAwkPZcm6EbzwfqkWRVqNm2mGxRO6o6/p7b4OOikblo7ThySXE9dMyOziEu
UFCzxqBscid+B/zI7JSkawbrzdRwmbbWs4SBrniHzst1ltqLcpy5Bl0LnMvsEQUYOcqSLbAO
BiK3/elHul7l4h2yom/XnuFwC9zYO4jwlapaRY6J0VvRO+jdFx8jsUjo49Ph/uUv5Wn3Y//8
NXzOgz9tLc0vVwWc4cV4tf1HlOKiz3n3aTHOg8rtFJawsEWhclmjJMaFqEC5JjsWbeyokh6+
7399OfzQItGzJL1V8CcqOZha2qgrEYsvE9CQYctE9enk+HTsDk5BAzwL/VFKN1cpZ6m8SAck
bcQGBBhwP6+A5RSU5Kr3mrK6RXu8knWJxbd8jGzeUFduikJVCnCchA9ZXyXaADbHOAun1NWo
/cGWs41MCaC41SSA/uz4ygGW+vXh1iy7dP/l9etXfPrK759fnl4x6I61yEqGwjzIw3biLAs4
vr/xCgf40/F/TygqkA9zW6YLcXjl3KM3GWYacztvnc8GItnXFv8lRreV7yaSoER3DXLGvZLw
jZOyYWTy5IPp3KxSh0Hib0rBGdnHsmXa3h2UXN1STSRxdmGKuBNkbj/9WKtolphqyFarbaQ8
ogMS+sO3v2hBr+3CVqb5ZfwdV5H0FWw4ULiXBTWmiqZeogW7sQv0mlr7gwXLqy+DxuO+KZ1j
mRz1caP81NJ3lxpa8tp5HxQUzXGN9qZfmMfCrKQzyFv5rsOAuO6to8TU2ypipi7RTZ23dRXT
UFU7JKHgdAo+RaLGmbTPxbWtewmHYgHcxe/nW3A8TKV8o+bx5MPx8bHfgJF2fKnPqPR9HrE0
TWgTd5toHizNCXo8uWjlHY7qVFPxKlWuFDMjdEl5E04yoKLJRdczgtloRLRDKu+NNFnw5Bur
M+gGkAEXivTVoOf5E2tteyMPgY8+rsCnGYfCBrkNNXZbC7w4AO44bak01SqTb2Mx7YCgF2t0
mvavbyT9Uf3w+PzuCENuvj6qY2t9c//VTt0ENSdo7lEr3xMKjF5zPd4kTougzjo0zuib+bwG
Cjmse+hlx1pKWt5ewFkOJ3paOw6e881XplhwGN+94glsc4fJtIRAu6sHRdwN5xhVIlwboJnw
sglf0rExFm/79/Pj4R4faqGdP15f9v/dw3/2L7e//fbbf6ZRls49styVFGNVSj9ruAUmYtWe
Pg4rkwjBtqqICmRf+qpJolGh85kJqot9x3c8OOdNDsWA/dLk263CDC1sFhDt10FN29bxnVBQ
2TBvdyAs5U046BoR3e9KH4IWcN5QFeHgoupm9ARHTJUtgZXa9YLHky5O3Zy7kmqTbKYoo5D8
D0vF9AWkFJBFYUNnBXNtAbXMrjGU3oncTH5vfyYFZbQO66sWlH/g3eqGaYZlb9SpFmEpf6nj
/e7m5eYIz/VbvIsltAu82Z07XN/At3Mns/Qzy70rzpFGHswgSrEO7wlkmK3Al89hM5Euuesr
ETB6VQfC9BjAQyQ9KZmoTZs4aVrh5yDzI8SXHpK8uT6RCP0w6bIsIlBjBqluST5X992n0xMb
H6wUBPILwltoCg7j9NefFODkSpMSUoeKbmLl6giSG94eWfyqksHOoFHCO2hHVW4euwIBf03T
pFegXAPjyEynnQLUniul87m0BBSpRwKqVCJHEilBdKxsixVJkegPVSkTUjUHQ8kMXt2q1sTz
WEEO5ie4k7HHJX3uvM3WVYej2G5z1Ij9jltFaS2s3dq3X/qAw/sjsltBfeZyyK9IE4anWhYs
Mcx5javRfEPdPsQm+415DqZ4Mk82H+o03bGkNyjRqlKJZqnZ0mMGu3S1soMXwSCCSJQFjRrp
PbgSokfodFGyLVgXb4ReqXo1tsEqayvWtOs6XH4GYe43vKWwhCMBVpAen8Ai2cBZBXyX4eue
+sAP9eKTw4ahCE2lhXRfG2T6RGdnmKlUMff99RTbqC4W3YLjOxKXq3MV3F5V3TqocI2Pkzq2
omeXj1WpfRmGqrGJ5K6inhPt7WmjgzpYIW+ccUjJ4db9Vp3FP73wXdJ9WljrcMo00dPDappN
6hwWFs0YVENubZkkL5IPfBpl5CbxQ84Z+Kj7assw6YIzMQpESTCh5ikD5OT6iopbK0m5RGgK
u3QZ0s/CBRLS48Pf+6fHW1IoaJLR4HjLhagdNoGLRHEgEH9BtP6wsL/jJWbrUmq3YytZp5i9
D7i/fTnubAlYN7u+sXFjb8o2H9RN+7ysiy3AUwKVPliK7YaSEDTtriSDISzTXB9TDl/BrjFR
XM0UmLG8UInQo21rurQvG1JgCefDfhPo9s8vKJijXplgjuabr3tbjt30Fe2HpKXPQU7jFC3C
mtCSJpoo6kzu2Hh51iy6MSlsRF6oSyqjX1nD5nwjTQiSuiEDYmApJdtw46zkliOH34iQ5Odu
TeGtsk8x6SnI1Dr7XBx358Z1x1D3JS2cJfWlOYqd/iI9xcmA80txQ+nNxoRtUgk3aUdrQviF
VGFg2UfCokiSMq/weYOOACUp/O/NlhgHATdfyF+XaCs6owbIR966qMt6ho/KgEt4gpCFmUHX
j4wEA7FdZFyM7Nqa73DreVD9Vqd8vNxjU6PbhFyJEr0BfFfvgs+UUU/sq/HF0Ab2vRugTQJ3
8lI+Pl0z14ESL9Bgo5OvMd5geIYcEgjnIs3W8goDxXX0Q7JbRpaLErR4+vRXHYUzd65P6B4F
cuXcIu2kEVM+t9J5OU8gHcaQHdGHP3wfvSmZZciBN5l6yf1/qGosvIFqAQA=

--PEIAKu/WMn1b1Hv9--
