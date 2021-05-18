Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQXTRSCQMGQEZ4UNU2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 07065387063
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 05:51:32 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id a141-20020a621a930000b02902de0bf944f8sf872700pfa.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 20:51:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621309890; cv=pass;
        d=google.com; s=arc-20160816;
        b=KNIkT5Q8z5zNHTUupTuLWMgZgQCOeMbGQF8KhKoTYzwW8xRxAhZJUYNrV6IvxcU/P6
         5qQATmlY48IV9o2EKy7g/FHMyUPSo1cMy+qKSU373lZyPl7BF+eqbCe0ocploA+iw9lv
         gURxpJvB+ADvsy/08hDkh+1qaCYK7TGaEZ6jkB6bjFZtRiPDKwmhLkRRJ4TIjA88rrRS
         Cne3MD2rJtjcwYwxndBKsluF3BA20w9F+KLaVY+yyStQI7pPeZedC3BHkJnR+pNC+Fvv
         R6Vwb5PAONLvP5Q319wTIhvDFFYYQai6XOb5PkeVrv7Q0CZi3isAlEsZCptOqDiPYqqH
         tbfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=DsxOls9n1pmzYTzeYHvm6ms9euCohMXcSPwUiGJ39Gc=;
        b=Fzph3Pm9eDi9jnwTA0zz0XHzy0DVNCfltWQkow0D8DeG4zVgLcTPw9VhI3yyCJfkCk
         og2iEMDtmNB5kVSubOI8z4AEe8nQ2+XfXM4ELcvZeRpAz6Co1E7JlZDQZlFToWWgkg6D
         PT4PHEvlZrjpQQGdtTuN9Xp2lWGGgbbh9Y05RNDJKxjQGSAOTMx6J62tHRyyQ5FTFfLZ
         uWom1vQE9I8U0qwCCXfqgQRxmDMS8fr2WYEFjq+Aq7yFYEpAxX9kfO6+JWPiFif6KpEH
         OqKKZVrsy2m9DVP5BFQFUiodeMstKl1AGKkm/vfJQk+G2mORTHVH8vRl8EXfnROFvHyp
         U7Jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DsxOls9n1pmzYTzeYHvm6ms9euCohMXcSPwUiGJ39Gc=;
        b=cVtv0w6QrdyR6F7LQ4nCQVapZeL9yNiAw2bSkAw65gyTyVurpquuuuU3mMI/tzwEaG
         7NZ+Z46c0ey9kssSn1LrXEHjJCJlH4Tw5HW+GNttSZBiLEN8Xm2Zk55vKzFmTZzbtW3k
         kkiRnUsUCemLsYsmpiemWpPbgHXx3jxyRq2VcXHhiFmbvJmK5tsnU2TTukVqnywjxQ26
         R2OqChpA9bMRcIraCPWN9kOsvUWf7w7w5poBRMHW1hjTJoqXJ1nRxdFOHm7Q49Ucjjoq
         IyaupBL/W4Qu14dOI27lM+vhL+w0vFgQcI4M+fdxsvPmym2BI0gH2HR+UaftHmNc0Gpk
         63DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DsxOls9n1pmzYTzeYHvm6ms9euCohMXcSPwUiGJ39Gc=;
        b=GPBzomGy+fwQLb4h6ATCSxCz33dfss1kayv6Po6HRoYvv+Vliwo+cfPdJViTYRnGBr
         p2ovW+MECXOQ5dN9Ufa/hGFWV/gskXk11rPmwq/SdQFByJG71Lm4gZluYyAB3YCGveTp
         Xx4RzuCDlbMt1gSVrf1QYTYy5VIYkhtnnR8VRZJhmYHJQi1ncTQSP3ItMc5tYdKpfVC9
         58hfqqNBwGOw5qkbRqYx0nH7SZ4HPoBSJ459L69nO1ceVrrJLtvbT17T0MGJXsHV0xEx
         KvY/qRreZf/SS/shQB+m9OP1/t0L+U4L5xiMx7+npGr9JS2GJhig7BI1RwwvgiDmg7D/
         wWZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QfsIAHhQ/J8bHJZ+jBsdyB1D232USXc13oB2StFzoRLOIZIYg
	n0nCkMLj+Yqmp4lo+14A0M0=
X-Google-Smtp-Source: ABdhPJwl0IrahiSTy3jVggegICctdQ7emg26usiJ/JnenDjmGr+z5vcWBhfjwLcHNknm3CMmB5gk8A==
X-Received: by 2002:a17:902:a50a:b029:ef:1ef:c160 with SMTP id s10-20020a170902a50ab02900ef01efc160mr2255496plq.56.1621309890634;
        Mon, 17 May 2021 20:51:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9f96:: with SMTP id z22ls1328317pfr.2.gmail; Mon, 17 May
 2021 20:51:30 -0700 (PDT)
X-Received: by 2002:a63:5060:: with SMTP id q32mr2977706pgl.32.1621309889950;
        Mon, 17 May 2021 20:51:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621309889; cv=none;
        d=google.com; s=arc-20160816;
        b=auFw1nmxqwwcCe24fhle1dlugDZfL0QdfSE+KW8PduDgj/YJjDMn032jxHyfBSoPVJ
         sLwsAzsrEc09sH7Hu7fPQQ+XUe3QDRsfvpGQ51+p6rreRw4Y2GHYR1dTamMRPKlSs/TM
         +zWC/5D0hT+vhYUpwO0yVqO9J8THqgJx5SKwtfvbxGAkD3CblMUeDv9BwyKsY5bQeMcg
         odDGGd2lVnm6PZH2o1EZ64eVBSo+1dvViCW9PDhhVHHNIs0G1oB+cjisZIRrTQm1q5WM
         5I18PoZI/B0uqKpGhWfOYlZOReYp/PXt+zj9d6jX5i+/w98ifNFjD08iJTGWAUPMo2Yn
         pZ7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=PnG/QygU1MNu1PR4e5guNpsK26jkwbUrVLNH2+mll6A=;
        b=QSgSPJlhlvwUt6x2z1RPdir8kNw1Kz09qcI0tkWrwUH3QZAG/YRE/48O/ETWO32d4q
         1l04wE3f3+G6xVxOE8H7pyZwNz1Z752rok0LWjCZ76p6VQ+d1mE4taoXo9ACFC6yAbnP
         o04gHvSLCsAphJoXhK3R2Cf/GfPNLr3QIAECFaPRz82lZgwpnqpRqNrpOinNS+5usGYn
         J/k27zWw4GGF9R5K6Zow2QnNQApi4ox+4qAE5kpoKOmgZnwimHoPZrdbL5CDlw3UwqPA
         3WgiD6e83at2LEN4gqYqeEngUxpEHBtpKr/BnzYsZo+zXSwFvObqLfh1R4WO0oPOqIWc
         1yrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id b9si1753807pfd.3.2021.05.17.20.51.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 May 2021 20:51:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: NC8XpsJyx5io+TNWQ9ChX7gGKYFEmX8HhlXsbv08btJphwvzBunhPd9oc7CsNEWllLQt+zqzKU
 pMB8oASl2EFA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="286151625"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; 
   d="gz'50?scan'50,208,50";a="286151625"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 May 2021 20:51:29 -0700
IronPort-SDR: Yb5TkvVSfT1m4+LgHzi+3u+MzpN4Ufe63WD/2e2ZIK9RnuobktlFcXYFEyeaao7q1HTZ2p4QjV
 y74JFZWcbtmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; 
   d="gz'50?scan'50,208,50";a="472726784"
Received: from lkp-server01.sh.intel.com (HELO ddd90b05c979) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 17 May 2021 20:51:26 -0700
Received: from kbuild by ddd90b05c979 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1liqlS-00021r-7o; Tue, 18 May 2021 03:51:26 +0000
Date: Tue, 18 May 2021 11:50:31 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Jens Axboe <axboe@kernel.dk>
Subject: drivers/md/dm-log-writes.c:452:12: warning: stack frame size of 1184
 bytes in function 'log_writes_kthread'
Message-ID: <202105181127.lm1mDJHD-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Christoph,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   8ac91e6c6033ebc12c5c1e4aa171b81a662bd70f
commit: 309dca309fc39a9e3c31b916393b74bd174fd74e block: store a block_device pointer in struct bio
date:   4 months ago
config: powerpc64-randconfig-r011-20210518 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 0a34ff8bcb1df16fe7d643ccbe4567b2162c5024)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=309dca309fc39a9e3c31b916393b74bd174fd74e
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 309dca309fc39a9e3c31b916393b74bd174fd74e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/md/dm-log-writes.c:452:12: warning: stack frame size of 1184 bytes in function 'log_writes_kthread' [-Wframe-larger-than=]
   static int log_writes_kthread(void *arg)
              ^
   1 warning generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for NETDEVICES
   Depends on NET
   Selected by
   - AKEBONO && PPC_47x
   WARNING: unmet direct dependencies detected for ETHERNET
   Depends on NETDEVICES && NET
   Selected by
   - AKEBONO && PPC_47x
   WARNING: unmet direct dependencies detected for MMC_SDHCI
   Depends on MMC && HAS_DMA
   Selected by
   - AKEBONO && PPC_47x
   WARNING: unmet direct dependencies detected for MMC_SDHCI_PLTFM
   Depends on MMC && MMC_SDHCI
   Selected by
   - AKEBONO && PPC_47x


vim +/log_writes_kthread +452 drivers/md/dm-log-writes.c

0e9cebe724597a Josef Bacik 2015-03-20  451  
0e9cebe724597a Josef Bacik 2015-03-20 @452  static int log_writes_kthread(void *arg)
0e9cebe724597a Josef Bacik 2015-03-20  453  {
0e9cebe724597a Josef Bacik 2015-03-20  454  	struct log_writes_c *lc = (struct log_writes_c *)arg;
0e9cebe724597a Josef Bacik 2015-03-20  455  	sector_t sector = 0;
0e9cebe724597a Josef Bacik 2015-03-20  456  
0e9cebe724597a Josef Bacik 2015-03-20  457  	while (!kthread_should_stop()) {
0e9cebe724597a Josef Bacik 2015-03-20  458  		bool super = false;
0e9cebe724597a Josef Bacik 2015-03-20  459  		bool logging_enabled;
0e9cebe724597a Josef Bacik 2015-03-20  460  		struct pending_block *block = NULL;
0e9cebe724597a Josef Bacik 2015-03-20  461  		int ret;
0e9cebe724597a Josef Bacik 2015-03-20  462  
0e9cebe724597a Josef Bacik 2015-03-20  463  		spin_lock_irq(&lc->blocks_lock);
0e9cebe724597a Josef Bacik 2015-03-20  464  		if (!list_empty(&lc->logging_blocks)) {
0e9cebe724597a Josef Bacik 2015-03-20  465  			block = list_first_entry(&lc->logging_blocks,
0e9cebe724597a Josef Bacik 2015-03-20  466  						 struct pending_block, list);
0e9cebe724597a Josef Bacik 2015-03-20  467  			list_del_init(&block->list);
0e9cebe724597a Josef Bacik 2015-03-20  468  			if (!lc->logging_enabled)
0e9cebe724597a Josef Bacik 2015-03-20  469  				goto next;
0e9cebe724597a Josef Bacik 2015-03-20  470  
0e9cebe724597a Josef Bacik 2015-03-20  471  			sector = lc->next_sector;
228bb5b26038a7 Josef Bacik 2017-07-28  472  			if (!(block->flags & LOG_DISCARD_FLAG))
228bb5b26038a7 Josef Bacik 2017-07-28  473  				lc->next_sector += dev_to_bio_sectors(lc, block->nr_sectors);
228bb5b26038a7 Josef Bacik 2017-07-28  474  			lc->next_sector += dev_to_bio_sectors(lc, 1);
0e9cebe724597a Josef Bacik 2015-03-20  475  
0e9cebe724597a Josef Bacik 2015-03-20  476  			/*
0e9cebe724597a Josef Bacik 2015-03-20  477  			 * Apparently the size of the device may not be known
0e9cebe724597a Josef Bacik 2015-03-20  478  			 * right away, so handle this properly.
0e9cebe724597a Josef Bacik 2015-03-20  479  			 */
0e9cebe724597a Josef Bacik 2015-03-20  480  			if (!lc->end_sector)
0e9cebe724597a Josef Bacik 2015-03-20  481  				lc->end_sector = logdev_last_sector(lc);
0e9cebe724597a Josef Bacik 2015-03-20  482  			if (lc->end_sector &&
0e9cebe724597a Josef Bacik 2015-03-20  483  			    lc->next_sector >= lc->end_sector) {
0e9cebe724597a Josef Bacik 2015-03-20  484  				DMERR("Ran out of space on the logdev");
0e9cebe724597a Josef Bacik 2015-03-20  485  				lc->logging_enabled = false;
0e9cebe724597a Josef Bacik 2015-03-20  486  				goto next;
0e9cebe724597a Josef Bacik 2015-03-20  487  			}
0e9cebe724597a Josef Bacik 2015-03-20  488  			lc->logged_entries++;
0e9cebe724597a Josef Bacik 2015-03-20  489  			atomic_inc(&lc->io_blocks);
0e9cebe724597a Josef Bacik 2015-03-20  490  
0e9cebe724597a Josef Bacik 2015-03-20  491  			super = (block->flags & (LOG_FUA_FLAG | LOG_MARK_FLAG));
0e9cebe724597a Josef Bacik 2015-03-20  492  			if (super)
0e9cebe724597a Josef Bacik 2015-03-20  493  				atomic_inc(&lc->io_blocks);
0e9cebe724597a Josef Bacik 2015-03-20  494  		}
0e9cebe724597a Josef Bacik 2015-03-20  495  next:
0e9cebe724597a Josef Bacik 2015-03-20  496  		logging_enabled = lc->logging_enabled;
0e9cebe724597a Josef Bacik 2015-03-20  497  		spin_unlock_irq(&lc->blocks_lock);
0e9cebe724597a Josef Bacik 2015-03-20  498  		if (block) {
0e9cebe724597a Josef Bacik 2015-03-20  499  			if (logging_enabled) {
0e9cebe724597a Josef Bacik 2015-03-20  500  				ret = log_one_block(lc, block, sector);
0e9cebe724597a Josef Bacik 2015-03-20  501  				if (!ret && super)
0e9cebe724597a Josef Bacik 2015-03-20  502  					ret = log_super(lc);
0e9cebe724597a Josef Bacik 2015-03-20  503  				if (ret) {
0e9cebe724597a Josef Bacik 2015-03-20  504  					spin_lock_irq(&lc->blocks_lock);
0e9cebe724597a Josef Bacik 2015-03-20  505  					lc->logging_enabled = false;
0e9cebe724597a Josef Bacik 2015-03-20  506  					spin_unlock_irq(&lc->blocks_lock);
0e9cebe724597a Josef Bacik 2015-03-20  507  				}
0e9cebe724597a Josef Bacik 2015-03-20  508  			} else
0e9cebe724597a Josef Bacik 2015-03-20  509  				free_pending_block(lc, block);
0e9cebe724597a Josef Bacik 2015-03-20  510  			continue;
0e9cebe724597a Josef Bacik 2015-03-20  511  		}
0e9cebe724597a Josef Bacik 2015-03-20  512  
0e9cebe724597a Josef Bacik 2015-03-20  513  		if (!try_to_freeze()) {
0e9cebe724597a Josef Bacik 2015-03-20  514  			set_current_state(TASK_INTERRUPTIBLE);
0e9cebe724597a Josef Bacik 2015-03-20  515  			if (!kthread_should_stop() &&
0c79c62021d23f Josef Bacik 2017-07-28  516  			    list_empty(&lc->logging_blocks))
0e9cebe724597a Josef Bacik 2015-03-20  517  				schedule();
0e9cebe724597a Josef Bacik 2015-03-20  518  			__set_current_state(TASK_RUNNING);
0e9cebe724597a Josef Bacik 2015-03-20  519  		}
0e9cebe724597a Josef Bacik 2015-03-20  520  	}
0e9cebe724597a Josef Bacik 2015-03-20  521  	return 0;
0e9cebe724597a Josef Bacik 2015-03-20  522  }
0e9cebe724597a Josef Bacik 2015-03-20  523  

:::::: The code at line 452 was first introduced by commit
:::::: 0e9cebe724597a76ab1b0ebc0a21e16f7db11b47 dm: add log writes target

:::::: TO: Josef Bacik <jbacik@fb.com>
:::::: CC: Mike Snitzer <snitzer@redhat.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105181127.lm1mDJHD-lkp%40intel.com.

--rwEMma7ioTxnRzrJ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
eHmr9aLjuXu8eZIJvYtN8rTzf70Bj+b5TgEA

--rwEMma7ioTxnRzrJ--
