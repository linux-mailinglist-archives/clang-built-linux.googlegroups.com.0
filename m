Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBB5AVWAQMGQE4GM4GFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F9731C60F
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 05:54:32 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id o6sf4176168uap.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 20:54:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613451271; cv=pass;
        d=google.com; s=arc-20160816;
        b=gcnacEEZD8Ro+DjfqfO4V7IiO2c/GQSUl/p+95B0pTDBHxT3hQS7Oup8GAReXA1dzz
         HeqRWujVt58gUNYDNgSIKP5F0s5wJUimnioVWDEk/ejKVO1/3hiDgoK5URJEv/v7Nmmk
         lGwngadI9cPfQPEK6b15QEMMKmzAoVUYyhPE05xFGAVrkMeWvaYAlfyXXYTBlv8RkT64
         jI2ToAevCGCyZXKJXOy+mCn2Pi8LzRwT7jvdPzfW/PrLaO1NbC7pVPQBoBvwx80EaMRl
         7PEfUMx6RrvEExgPn8a3kDXStS1dAyVVLy9zU42c/kKAbBawf6b4XXklDx1EtnWnk0Jp
         ulbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=K06MgHwhx+5AYDoj/jlnJDvPH6PlY/I1kSXt8mFaeAg=;
        b=R6frrKL2206GPXXftAUI1tmh1MAQZ4905Zwv8le+Yx95jELpxY7oRmLJ/lKaV4nMDB
         Zi+JTywnYzhLsSTr8FwpgjjiWc/AcswzZNKE0mpy94+zfzSQZhlZaNpgYhJ98/uhHizC
         B/kjiHqXCh+/4Du+o9DsSuaOxH0Z0mOfM9EENiJ/sklwdyX4/2cnPfPdGO86ZWFVBG3F
         Go+NRJc2olAVc+80B2ZLchSOrE583z+E2OD6CAmojgKWsPdiv6IBoskl7+kPfdBcORQH
         yNkNjW+OI6XIsA1gQgiHx8sDklMMRdOCjE8QT6UnztW9TxcRaRQiAw4Lrj4FUkFzV42w
         lg/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K06MgHwhx+5AYDoj/jlnJDvPH6PlY/I1kSXt8mFaeAg=;
        b=h+7XVJ6DfMqJ+wR+yCx2lRSGlVJdYRGFFaOPoAItKwtOpHI0sDAccYFahYeVkiltco
         2xJlqFKAd1o+edzH6R7SfzjEhe8obyRMW74u/5BTiZdehV68+986qweUhEcuuFRM9XhT
         2bPTRUg5ENSq11LiJddV3oa9Yo6vHOAY8qOqKVJEhesagMxzUI0KLhNTABlk2IWHIOU7
         krhNKKCCKpsdrdaZnJQQMUi/SB4ezCVFuOlzeJ2qPB/58swBI62UZh3YtDHL+AMnlCv4
         DqhW44mp1PpkQ+DWoUG7Uwe0F9Hv1AFfxVH19Zi/8Oe6VK1HMC+QL/ILKcENVvXPPMcN
         8cHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K06MgHwhx+5AYDoj/jlnJDvPH6PlY/I1kSXt8mFaeAg=;
        b=WcCEMyijVOdFZHPvSrQvpZ09DO+I07GdIp1M/YtbpEBwp0dFXrUJIgoFZnSHVXErnZ
         wJ12sOLG+nweMyZBrsykeTp9RuNQEk86EUlzgiLptTUdmYBgxYmSxMw/OlgNxrxI5yZC
         9CpTVYbEdqxVIOAHGVK9XtC+0bOSRTVtrrSjQJyx8o6MrAB6xeQvRBs6JzkcZgILvuUP
         hXToFVb9U6qYmVMj6MOaoAw7O4PPt6//FiSLTZU+dukc+kbyBoREN7bI4Lj/rA7U7fGO
         G9w5V5FuLfrR7Ndv3JymjCYj+adpiUHxLkOw17aML5hGMKa4UvNVIXNDD1pbUhhMNqMZ
         +h3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IsF0mqxvIhzYB4a5YeVKEkRvHeKdpg1s2rF5JQXKhHM66g8Gz
	06CAogtafy+ACsRrKnvHLM4=
X-Google-Smtp-Source: ABdhPJxF64cfvceVTQSDLkhYjnNgMBDSRmklfIORvL69PfnteGw7Rcirorf7xLBSQBil7CbA0yqp5w==
X-Received: by 2002:a67:2d04:: with SMTP id t4mr10373200vst.36.1613451271320;
        Mon, 15 Feb 2021 20:54:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:268b:: with SMTP id m133ls903928vkm.6.gmail; Mon, 15 Feb
 2021 20:54:30 -0800 (PST)
X-Received: by 2002:ac5:c810:: with SMTP id y16mr10148981vkl.7.1613451270851;
        Mon, 15 Feb 2021 20:54:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613451270; cv=none;
        d=google.com; s=arc-20160816;
        b=lyz7hyLqXQgUg0qY+YbkmcSUnS+hs5GVHAnL3nSOORWY1OZrRSYX0YY0cEY5zseJUV
         NYqHy+zGl5t30Qla4pf0gt0sgVLwV1oqy13a5/aPqBOF39BtsvZdbGtdRbk27L/UfaBB
         cnsPjPtxpHL+8YaUFlbY8I8OYCl34WUsb2MDRsHzYfGuKaQKmS4EAaT4TNymUIjnreLI
         tfoZKpV/fR5dpEs+lZ/obi20CIJWe5ZwnPIiYPHZ+8m2T7g8+2jglaJaLXqq3+0dqLYL
         qiGebkNoO5M7Ieh6p7ux/RceZog/R6h2BluXVAV0af6Ot3GbvH/TO+8m2Pv0BQ/2bvV5
         sKQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=uDGNfkrOwk7z0GeX+mKXFz618ymdoVKhTH5sSSN5paE=;
        b=tw2DhtVunOTOP5qyzjuNYDwHmrevM9JxHcQxbZGZvoRkpUir7dy2wlBvA+oT/ujD/8
         IE7Uba6DsSvxzDh1bdAh8Bx1j5kQpO8QynNn0ODlOWd+cC292AnvjzeNbCMMfrkOTB/R
         rp8geGz/GZMyVbtyE1sGxwJkjuegpwp29f1DoRwQnZLc1bs9pkyMdSz81IJgHY7oSAvc
         R7a5nS4Kjf5v5uPgmvX0qwLWrvx4GroBnJd3T0VYKR9Q26SVy9+K+B4Cg7bK/yTPNqCw
         ggdO2DLvKayoUaRgKx2Dbq2E72cRanm5KNNGmDofihKACaHj6zB3c1sBlwg3atD8kRlZ
         CrQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id l11si920260vkr.5.2021.02.15.20.54.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2021 20:54:30 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: j+JN3/2ESLuxQNFDer+Z528fmbndiAb8xGKGLr6PRp3Z89iwn8xKXm69Cf4IJaJjyFwnrt6RT+
 UMRCiLdPOh5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9896"; a="179303640"
X-IronPort-AV: E=Sophos;i="5.81,182,1610438400"; 
   d="gz'50?scan'50,208,50";a="179303640"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Feb 2021 20:54:28 -0800
IronPort-SDR: Ts+n7MbgED0Xb9tOAceG3MTMmwUZ/A4RMYs9sRrw2wmBQ/19HoAz6lt8ah/evmU4AlgQZCAfQI
 OLssbbIEH5ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,182,1610438400"; 
   d="gz'50?scan'50,208,50";a="361468129"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 15 Feb 2021 20:54:26 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lBsNV-0007t0-Nu; Tue, 16 Feb 2021 04:54:25 +0000
Date: Tue, 16 Feb 2021 12:54:02 +0800
From: kernel test robot <lkp@intel.com>
To: Jens Axboe <axboe@kernel.dk>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [block:io_uring-worker 10/17] fs/io-wq.c:499:2: error: implicit
 declaration of function 'set_cpus_allowed_common'
Message-ID: <202102161259.UUORNKc9-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="/9DWx/yDrRhgMJTb"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--/9DWx/yDrRhgMJTb
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git io_uring-worker
head:   57ea9801528571943b503bbe9b70a9504793d90e
commit: 276f31457f375639fd79c9eaf975593e750cd7f2 [10/17] io-wq: fork worker threads from original task
config: powerpc-randconfig-r023-20210216 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git/commit/?id=276f31457f375639fd79c9eaf975593e750cd7f2
        git remote add block https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git
        git fetch --no-tags block io_uring-worker
        git checkout 276f31457f375639fd79c9eaf975593e750cd7f2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> fs/io-wq.c:499:2: error: implicit declaration of function 'set_cpus_allowed_common' [-Werror,-Wimplicit-function-declaration]
           set_cpus_allowed_common(current, cpumask_of_node(wqe->node), 0);
           ^
   fs/io-wq.c:499:2: note: did you mean 'set_cpus_allowed_ptr'?
   include/linux/sched.h:1683:19: note: 'set_cpus_allowed_ptr' declared here
   static inline int set_cpus_allowed_ptr(struct task_struct *p, const struct cpumask *new_mask)
                     ^
   1 error generated.


vim +/set_cpus_allowed_common +499 fs/io-wq.c

   485	
   486	static int task_thread(void *data, int index)
   487	{
   488		struct io_worker *worker = data;
   489		struct io_wqe *wqe = worker->wqe;
   490		struct io_wqe_acct *acct = &wqe->acct[index];
   491		struct io_wq *wq = wqe->wq;
   492		unsigned long flags;
   493	
   494		current->flags &= ~PF_KTHREAD;
   495		current->pf_io_worker = worker;
   496		worker->task = current;
   497	
   498		raw_spin_lock_irqsave(&current->pi_lock, flags);
 > 499		set_cpus_allowed_common(current, cpumask_of_node(wqe->node), 0);
   500		current->flags |= PF_NO_SETAFFINITY;
   501		raw_spin_unlock_irqrestore(&current->pi_lock, flags);
   502	
   503		raw_spin_lock_irq(&wqe->lock);
   504		hlist_nulls_add_head_rcu(&worker->nulls_node, &wqe->free_list);
   505		list_add_tail_rcu(&worker->all_list, &wqe->all_list);
   506		worker->flags |= IO_WORKER_F_FREE;
   507		if (index == IO_WQ_ACCT_BOUND)
   508			worker->flags |= IO_WORKER_F_BOUND;
   509		if (!acct->nr_workers && (worker->flags & IO_WORKER_F_BOUND))
   510			worker->flags |= IO_WORKER_F_FIXED;
   511		acct->nr_workers++;
   512		raw_spin_unlock_irq(&wqe->lock);
   513	
   514		if (index == IO_WQ_ACCT_UNBOUND)
   515			atomic_inc(&wq->user->processes);
   516	
   517		io_wqe_worker(data);
   518		do_exit(0);
   519	}
   520	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102161259.UUORNKc9-lkp%40intel.com.

--/9DWx/yDrRhgMJTb
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
XrS19p75H4/vxdviUgEA

--/9DWx/yDrRhgMJTb--
