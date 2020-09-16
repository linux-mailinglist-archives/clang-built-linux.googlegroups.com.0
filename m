Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBS5RQ35QKGQEYRDNLXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7085026BB95
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 06:47:09 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id f10sf2607526plo.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 21:47:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600231628; cv=pass;
        d=google.com; s=arc-20160816;
        b=UQ2HTbLiHzLIBzkCZPDvPcfXHiAir18XWGHRQFK5ODmmHR92IHq8wuNf0MuDrg23Au
         vXzb+mYwIhEymNXUJOaA6FWHphxcb00qevY5O5jm7M7+JKxWppZgZQGlMXEmFm7hb9sN
         NNvdX+gxacvoCZ81PJtQXcMvET89oo72hF2B17rLrBKqm+T9wWkyic+roZg8HraZMVLB
         B3hUAdcU8lK77xMMKryM9ikXcRcgLTpbq7UIdj0noVd1RhYHKYWNL8jTBfnKk+n6Ma+w
         ixIjRU3noCQr8M7aa5qi5Ui4MVJksqoz10ZXNxVCXHNnovoKDRCLlIWu4wSwhABcP9Ki
         sKeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=PbieBDjq1CDQJ8WtfAJu9nJ68fFRFEzIl9hi7uMQKQM=;
        b=CTWMuMcRHOjmYBupEWZ7fbG0U/ujRNfJD7whUTegOvB6TARZ/5TfUXfX+6mqAAYCOk
         HlDxnPth5cPs79qlctjBHoCjj5L5qRzTLtSw9FMFf2M/sPV1rfWqCRIhbYnk83+Ulue5
         VB+83Kue+yGMc/JhSO7zf2jEdnlSh142URQCxGklGd928DgFIHDcf+VSCNzO5HG587X/
         Wvn4neUxXTkufoOAGLM9fSkn/i3dDAWIgL3L891CNEaPBqTH//blfbWtkIpcfa48Ya8p
         o3GwAecI4DU8mEhQ9SdamfXLjvU+KmK5wQJcyo1cAKwxQ671RQ1+GV2EXQ0IC1nHHzli
         otgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PbieBDjq1CDQJ8WtfAJu9nJ68fFRFEzIl9hi7uMQKQM=;
        b=bZmB1/sKTf0oMhDUISMexiZx+43vdiC6DpdLqUPiNFA7Po9exgPfB+2d7+f7GFkN5c
         j41zbF9Urfj7x+2dcN0elj7Msvy6jcU/G7qHaAxhKJFF0DDmCaPtnq8pC1xbMD0Bqv2M
         qhPbtcV/40gwHfHc4PAszLQVRrCey4JsjZRhVSFKcYohQeGnulJ1S3q0iqF8p7QtDJC7
         V+lhE4nQooY9vzwKzwjqKd6iIPqEOYCo/py0gOOjRq0K7bo5hR2xrjjuOBAkIwH/GqR3
         IAWPRu7c4OUwQJJWBMk2mUoTY3uKF0qiHRIdS0dS7Dx0YYa9DaEFmPXSKi5iA08UFJU7
         kKlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PbieBDjq1CDQJ8WtfAJu9nJ68fFRFEzIl9hi7uMQKQM=;
        b=BAS3UpyXQdBJbitLhfEmcTxUNfUdcHxn923SpOy79ZoKfb4AxBgUPFvUQvMPAJ+sR2
         3UGpuEwQpvhgeKfSMuEFUabS8+4KS6UiHB8RgXv0sBGLqXnxyc5KFBbl2XYzDkakI5G8
         d8/h8obSQ7ykFN5Z9GU5onuwrqYflZnxHJLfK2A9LkqxvVFdEXdHRcZo6xZE1e97gujQ
         FiZIrSXjXKnFXZTrCtMnbmEJWKIoJOTNCtbj3owDm5DEY8F2Q30ibwX5wlnRR2hiAFqg
         0aaqMvb5vfENruA//7+4W4vR+8EmkBfi+qJLa3RJnzoTU7ccnp7FaeasUwl0Hj9OpkZx
         cHbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xrT91bRvNUwR9p8ixFlBS9qF0VuXvBKMCKil3R+q4y8iN5MTG
	eoMxmnhBx7rYSg+vVh1bUEg=
X-Google-Smtp-Source: ABdhPJyAG09yBfRklwR545w6Ck1sGEeJQxAOX8cZfIjLNEO+0GckcsbkoZofg7e0b/RigGt2aprFjA==
X-Received: by 2002:a17:902:bb84:b029:d1:e5e7:bdd4 with SMTP id m4-20020a170902bb84b02900d1e5e7bdd4mr4770648pls.52.1600231627520;
        Tue, 15 Sep 2020 21:47:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7d09:: with SMTP id y9ls284890pgc.3.gmail; Tue, 15 Sep
 2020 21:47:07 -0700 (PDT)
X-Received: by 2002:a63:160d:: with SMTP id w13mr16603117pgl.97.1600231626866;
        Tue, 15 Sep 2020 21:47:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600231626; cv=none;
        d=google.com; s=arc-20160816;
        b=I2NAQDzvkgsF5jAmaXfZGGh3yLS+Cptn0/rMuknyDmFR9ay/qopPOacbt/tVPyuThO
         l9AJgQVqpenP2e9v8SReJz1ITvglwL2kDlyAYkJmWyLsOE4LsXA7fyyt+0yh++ui7JO0
         FOIJSDNT1BTPZ3vaNINWliDx/g9LH58xVv+p1ICDhDLy5BSDpd2jpgYkll+qF2D7SSCC
         XJf3hzsOjqysDVNs+K6SnAsEm2820y9UWpTdOPR/nMEve3Q/6mNHMNpl3a2S0TZEU+CQ
         7LfO+6eY0Ua1HOJ3pGHAyILx6pPYlOxp6vwNivz4Ixd67pXoUkkCNHHeZaOK86aH8213
         h9nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=kXq1fH1XHU57DBAlajLUNhWnB7jVp1jyElLDfQe4aFU=;
        b=iimcHPhjz44u2h4KdTAGvLUgN3RkpFoKyEU4IXPPAu3AO4clU/XB6CELc222+tzYpj
         BmueRG8yigo7xJzoMFGNumecKS/JpNRT+kUQ3cA0L23uRXywe8yCwJRJiujrb1eUQYlH
         cELbPHbOebVBTiLk2QASkz2KipvCGRwwrDpSX2YCnAbBjQveIPDb+ZrDorRd6giPzmyo
         4tLjj0vF+UMZsMK96JiCs0ibdVkwcaFEqKjR0pZFyy8MbVRxHy1FpjtuDA+FWOoArl5j
         Vs2OAgkOthYQtvNMK4cFBSWiprR7+REucWJWnz5DsLnbKYNDFbzcwlXBjktEMSZBhn0+
         ZYsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id r2si62451pgp.1.2020.09.15.21.47.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 21:47:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: EL/W10bVYz3+qWds4x5tW+8XyrJETca3GL7NL4dTQgntGqM0I4HkJlKHM1JNNkqgpaIiaGAt2M
 79SBzGNx4qIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9745"; a="158680780"
X-IronPort-AV: E=Sophos;i="5.76,431,1592895600"; 
   d="gz'50?scan'50,208,50";a="158680780"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2020 21:47:05 -0700
IronPort-SDR: DfrmLHiIHHfjpIgVKjCmbogJ2llcmcKDxAS6bN5LBFJ5s6Cwen9sMor6IyUpHM08T4VHP2BwOe
 mxNW0Cfe1Omg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,431,1592895600"; 
   d="gz'50?scan'50,208,50";a="451691158"
Received: from lkp-server01.sh.intel.com (HELO 96654786cb26) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 15 Sep 2020 21:47:03 -0700
Received: from kbuild by 96654786cb26 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kIPLS-0000RG-MZ; Wed, 16 Sep 2020 04:47:02 +0000
Date: Wed, 16 Sep 2020 12:46:14 +0800
From: kernel test robot <lkp@intel.com>
To: Jan Kara <jack@suse.cz>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	0day robot <lkp@intel.com>
Subject: [linux-review:UPDATE-20200915-201414/Ye-Bin/ext4-Fix-dead-loop-in-ext4_mb_new_blocks/20200914-184737
 1/1] fs/ext4/mballoc.c:4245:1: warning: unused label 'out'
Message-ID: <202009161204.hw0muweR%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="dDRMvlgZJXvWKvBx"
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


--dDRMvlgZJXvWKvBx
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/0day-ci/linux/commits/UPDATE-20200915-201414/Ye-Bin/ext4-Fix-dead-loop-in-ext4_mb_new_blocks/20200914-184737
head:   be9ed3afd2b7b27b328283e3994e99b4f9694eb4
commit: be9ed3afd2b7b27b328283e3994e99b4f9694eb4 [1/1] ext4: Fix dead loop in ext4_mb_new_blocks
config: x86_64-randconfig-a016-20200916 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9e3842d60351f986d77dfe0a94f76e4fd895f188)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout be9ed3afd2b7b27b328283e3994e99b4f9694eb4
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/ext4/mballoc.c:4245:1: warning: unused label 'out' [-Wunused-label]
   out:
   ^~~~
   1 warning generated.

# https://github.com/0day-ci/linux/commit/be9ed3afd2b7b27b328283e3994e99b4f9694eb4
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review UPDATE-20200915-201414/Ye-Bin/ext4-Fix-dead-loop-in-ext4_mb_new_blocks/20200914-184737
git checkout be9ed3afd2b7b27b328283e3994e99b4f9694eb4
vim +/out +4245 fs/ext4/mballoc.c

c9de560ded61fa Alex Tomas            2008-01-29  4142  
c9de560ded61fa Alex Tomas            2008-01-29  4143  /*
c9de560ded61fa Alex Tomas            2008-01-29  4144   * releases all preallocations in given group
c9de560ded61fa Alex Tomas            2008-01-29  4145   *
c9de560ded61fa Alex Tomas            2008-01-29  4146   * first, we need to decide discard policy:
c9de560ded61fa Alex Tomas            2008-01-29  4147   * - when do we discard
c9de560ded61fa Alex Tomas            2008-01-29  4148   *   1) ENOSPC
c9de560ded61fa Alex Tomas            2008-01-29  4149   * - how many do we discard
c9de560ded61fa Alex Tomas            2008-01-29  4150   *   1) how many requested
c9de560ded61fa Alex Tomas            2008-01-29  4151   */
4ddfef7b41aebb Eric Sandeen          2008-04-29  4152  static noinline_for_stack int
4ddfef7b41aebb Eric Sandeen          2008-04-29  4153  ext4_mb_discard_group_preallocations(struct super_block *sb,
c9de560ded61fa Alex Tomas            2008-01-29  4154  					ext4_group_t group, int needed)
c9de560ded61fa Alex Tomas            2008-01-29  4155  {
c9de560ded61fa Alex Tomas            2008-01-29  4156  	struct ext4_group_info *grp = ext4_get_group_info(sb, group);
c9de560ded61fa Alex Tomas            2008-01-29  4157  	struct buffer_head *bitmap_bh = NULL;
c9de560ded61fa Alex Tomas            2008-01-29  4158  	struct ext4_prealloc_space *pa, *tmp;
c9de560ded61fa Alex Tomas            2008-01-29  4159  	struct list_head list;
c9de560ded61fa Alex Tomas            2008-01-29  4160  	struct ext4_buddy e4b;
c9de560ded61fa Alex Tomas            2008-01-29  4161  	int err;
c9de560ded61fa Alex Tomas            2008-01-29  4162  	int busy = 0;
c9de560ded61fa Alex Tomas            2008-01-29  4163  	int free = 0;
c9de560ded61fa Alex Tomas            2008-01-29  4164  
d3df14535f4a5b Ritesh Harjani        2020-05-10  4165  	mb_debug(sb, "discard preallocation for group %u\n", group);
c9de560ded61fa Alex Tomas            2008-01-29  4166  	if (list_empty(&grp->bb_prealloc_list))
bbc4ec77e9f9c7 Ritesh Harjani        2020-05-10  4167  		goto out_dbg;
c9de560ded61fa Alex Tomas            2008-01-29  4168  
574ca174c97f79 Theodore Ts'o         2008-07-11  4169  	bitmap_bh = ext4_read_block_bitmap(sb, group);
9008a58e5dcee0 Darrick J. Wong       2015-10-17  4170  	if (IS_ERR(bitmap_bh)) {
9008a58e5dcee0 Darrick J. Wong       2015-10-17  4171  		err = PTR_ERR(bitmap_bh);
54d3adbc29f0c7 Theodore Ts'o         2020-03-28  4172  		ext4_error_err(sb, -err,
54d3adbc29f0c7 Theodore Ts'o         2020-03-28  4173  			       "Error %d reading block bitmap for %u",
9008a58e5dcee0 Darrick J. Wong       2015-10-17  4174  			       err, group);
bbc4ec77e9f9c7 Ritesh Harjani        2020-05-10  4175  		goto out_dbg;
c9de560ded61fa Alex Tomas            2008-01-29  4176  	}
c9de560ded61fa Alex Tomas            2008-01-29  4177  
c9de560ded61fa Alex Tomas            2008-01-29  4178  	err = ext4_mb_load_buddy(sb, group, &e4b);
ce89f46cb833f8 Aneesh Kumar K.V      2008-07-23  4179  	if (err) {
9651e6b2e20648 Konstantin Khlebnikov 2017-05-21  4180  		ext4_warning(sb, "Error %d loading buddy information for %u",
9651e6b2e20648 Konstantin Khlebnikov 2017-05-21  4181  			     err, group);
ce89f46cb833f8 Aneesh Kumar K.V      2008-07-23  4182  		put_bh(bitmap_bh);
bbc4ec77e9f9c7 Ritesh Harjani        2020-05-10  4183  		goto out_dbg;
ce89f46cb833f8 Aneesh Kumar K.V      2008-07-23  4184  	}
c9de560ded61fa Alex Tomas            2008-01-29  4185  
c9de560ded61fa Alex Tomas            2008-01-29  4186  	if (needed == 0)
7137d7a48e2213 Theodore Ts'o         2011-09-09  4187  		needed = EXT4_CLUSTERS_PER_GROUP(sb) + 1;
c9de560ded61fa Alex Tomas            2008-01-29  4188  
c9de560ded61fa Alex Tomas            2008-01-29  4189  	INIT_LIST_HEAD(&list);
c9de560ded61fa Alex Tomas            2008-01-29  4190  repeat:
c9de560ded61fa Alex Tomas            2008-01-29  4191  	ext4_lock_group(sb, group);
07b5b8e1ac4004 Ritesh Harjani        2020-05-20  4192  	this_cpu_inc(discard_pa_seq);
c9de560ded61fa Alex Tomas            2008-01-29  4193  	list_for_each_entry_safe(pa, tmp,
c9de560ded61fa Alex Tomas            2008-01-29  4194  				&grp->bb_prealloc_list, pa_group_list) {
c9de560ded61fa Alex Tomas            2008-01-29  4195  		spin_lock(&pa->pa_lock);
c9de560ded61fa Alex Tomas            2008-01-29  4196  		if (atomic_read(&pa->pa_count)) {
c9de560ded61fa Alex Tomas            2008-01-29  4197  			spin_unlock(&pa->pa_lock);
c9de560ded61fa Alex Tomas            2008-01-29  4198  			busy = 1;
c9de560ded61fa Alex Tomas            2008-01-29  4199  			continue;
c9de560ded61fa Alex Tomas            2008-01-29  4200  		}
c9de560ded61fa Alex Tomas            2008-01-29  4201  		if (pa->pa_deleted) {
c9de560ded61fa Alex Tomas            2008-01-29  4202  			spin_unlock(&pa->pa_lock);
c9de560ded61fa Alex Tomas            2008-01-29  4203  			continue;
c9de560ded61fa Alex Tomas            2008-01-29  4204  		}
c9de560ded61fa Alex Tomas            2008-01-29  4205  
c9de560ded61fa Alex Tomas            2008-01-29  4206  		/* seems this one can be freed ... */
27bc446e2def38 brookxu               2020-08-17  4207  		ext4_mb_mark_pa_deleted(sb, pa);
c9de560ded61fa Alex Tomas            2008-01-29  4208  
c9de560ded61fa Alex Tomas            2008-01-29  4209  		/* we can trust pa_free ... */
c9de560ded61fa Alex Tomas            2008-01-29  4210  		free += pa->pa_free;
c9de560ded61fa Alex Tomas            2008-01-29  4211  
c9de560ded61fa Alex Tomas            2008-01-29  4212  		spin_unlock(&pa->pa_lock);
c9de560ded61fa Alex Tomas            2008-01-29  4213  
c9de560ded61fa Alex Tomas            2008-01-29  4214  		list_del(&pa->pa_group_list);
c9de560ded61fa Alex Tomas            2008-01-29  4215  		list_add(&pa->u.pa_tmp_list, &list);
c9de560ded61fa Alex Tomas            2008-01-29  4216  	}
c9de560ded61fa Alex Tomas            2008-01-29  4217  
c9de560ded61fa Alex Tomas            2008-01-29  4218  	/* now free all selected PAs */
c9de560ded61fa Alex Tomas            2008-01-29  4219  	list_for_each_entry_safe(pa, tmp, &list, u.pa_tmp_list) {
c9de560ded61fa Alex Tomas            2008-01-29  4220  
c9de560ded61fa Alex Tomas            2008-01-29  4221  		/* remove from object (inode or locality group) */
c9de560ded61fa Alex Tomas            2008-01-29  4222  		spin_lock(pa->pa_obj_lock);
c9de560ded61fa Alex Tomas            2008-01-29  4223  		list_del_rcu(&pa->pa_inode_list);
c9de560ded61fa Alex Tomas            2008-01-29  4224  		spin_unlock(pa->pa_obj_lock);
c9de560ded61fa Alex Tomas            2008-01-29  4225  
cc0fb9ad7dbc5a Aneesh Kumar K.V      2009-03-27  4226  		if (pa->pa_type == MB_GROUP_PA)
3e1e5f50163246 Eric Sandeen          2010-10-27  4227  			ext4_mb_release_group_pa(&e4b, pa);
c9de560ded61fa Alex Tomas            2008-01-29  4228  		else
3e1e5f50163246 Eric Sandeen          2010-10-27  4229  			ext4_mb_release_inode_pa(&e4b, bitmap_bh, pa);
c9de560ded61fa Alex Tomas            2008-01-29  4230  
c9de560ded61fa Alex Tomas            2008-01-29  4231  		list_del(&pa->u.pa_tmp_list);
c9de560ded61fa Alex Tomas            2008-01-29  4232  		call_rcu(&(pa)->u.pa_rcu, ext4_mb_pa_callback);
c9de560ded61fa Alex Tomas            2008-01-29  4233  	}
c9de560ded61fa Alex Tomas            2008-01-29  4234  
be9ed3afd2b7b2 Jan Kara              2020-09-15  4235  	/* if we still need more blocks and some PAs were used, try again */
be9ed3afd2b7b2 Jan Kara              2020-09-15  4236  	if (free < needed && busy) {
be9ed3afd2b7b2 Jan Kara              2020-09-15  4237  		ext4_unlock_group(sb, group);
be9ed3afd2b7b2 Jan Kara              2020-09-15  4238  		cond_resched();
be9ed3afd2b7b2 Jan Kara              2020-09-15  4239  		busy = 0;
be9ed3afd2b7b2 Jan Kara              2020-09-15  4240  		/* Make sure we increment discard_pa_seq again */
be9ed3afd2b7b2 Jan Kara              2020-09-15  4241  		needed -= free;
be9ed3afd2b7b2 Jan Kara              2020-09-15  4242  		free = 0;
be9ed3afd2b7b2 Jan Kara              2020-09-15  4243  		goto repeat;
be9ed3afd2b7b2 Jan Kara              2020-09-15  4244  	}
c9de560ded61fa Alex Tomas            2008-01-29 @4245  out:
c9de560ded61fa Alex Tomas            2008-01-29  4246  	ext4_unlock_group(sb, group);
e39e07fdfd98be Jing Zhang            2010-05-14  4247  	ext4_mb_unload_buddy(&e4b);
c9de560ded61fa Alex Tomas            2008-01-29  4248  	put_bh(bitmap_bh);
bbc4ec77e9f9c7 Ritesh Harjani        2020-05-10  4249  out_dbg:
d3df14535f4a5b Ritesh Harjani        2020-05-10  4250  	mb_debug(sb, "discarded (%d) blocks preallocated for group %u bb_free (%d)\n",
bbc4ec77e9f9c7 Ritesh Harjani        2020-05-10  4251  		 free, group, grp->bb_free);
c9de560ded61fa Alex Tomas            2008-01-29  4252  	return free;
c9de560ded61fa Alex Tomas            2008-01-29  4253  }
c9de560ded61fa Alex Tomas            2008-01-29  4254  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009161204.hw0muweR%25lkp%40intel.com.

--dDRMvlgZJXvWKvBx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
SOgBAA==

--dDRMvlgZJXvWKvBx--
