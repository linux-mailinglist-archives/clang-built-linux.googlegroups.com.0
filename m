Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRPEZWAAMGQESRH7LSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F263083D5
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 03:26:14 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id c69sf2018799vke.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 18:26:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611887174; cv=pass;
        d=google.com; s=arc-20160816;
        b=hgfKkn6DpBTi47s+aE8jh/ZA/kMiwUBOwfIdWWZf+iB3sowQoLXNLri8aNS/csB6Up
         V67NXzQZgAbCWxu1n7OdW/kYAkgdhKJG3/csUg6/xxAsxLD+m2prO/HTWxlkT9jqE7zb
         gEMLWFc150PbxSZR3B9zKnHRR1CNy1I1kAoF2fPrI/gYcC+2eMK48VYsTHkM35sl6UQD
         AVFEiNPqMVDIoPwi4eMT9EwLQfakabFbb/kTFwlDFgohJvscm9E/aQIEdobrEZ2aIxZa
         nNZ5K8ZPHMR0CR0C0Z7DOSTpSvElmoCtnvxXpCl6l12E8PumZgKM/SPcX3CdEx5gkBk8
         7qWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=EJUMzYYN0J3FowY8BdNJ/mbjom3ETfG7grjf20PWs60=;
        b=rGaA7DjtLIjLJg3n8Pgesr+a3BXxdqjbD1Yv7Qz0MlUpj+kdEcHEZd1CE1RjUktoPP
         rXL0o4nQDxXxolzKvVGPovYu7EkKHAAygP5IZT1+DPdTxHelQkwKYA3BSvl4hvXXDbrr
         HiVy3qNyi4CdAsuTB6TRSlzKAILf57IgYfGEXl8iqbtDvyohBTCBMgWR+ySMo53uOilo
         ucwPnoP+m66WGpHDZw6NLucDmPpcZ3l9dyPv7EQfjMzl7IalMensevg62lNnubmwtXgK
         66GGdmER+CJeLr1+UHtr+FJHaP+xLYG1m/GKknQFY2QF90OykA/BNJFPoX7qoDtbxMj0
         2XPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EJUMzYYN0J3FowY8BdNJ/mbjom3ETfG7grjf20PWs60=;
        b=qk/+Hk2KenJyq4NxG4PQuMFo9gwk9yOxt08QjdOFQCarjW7BToXIztT6oMX0Ie6zVF
         +mJcaNDOQPp8dFoIvKlbGtXNb7F8XGQeknj4+c5FqMHRc7C+HcGG4BZ0Lar/K4MV4CzP
         Qcz/NIH0Ia27AlgWcAsBOSqu14xgNqOaqpGmXZ5oQ6pCp24Pl2kunws8vqEvm8P79N4i
         54MD8W+znVq5rpNAQlxsh1I0bfX+gg0RUW+uVfKTtDGWZrs7d1EVTGKO+LVCMN8BP6ic
         Ekxq9GyL+SkSKZ1cKguMPdJZV9BXW7MPCMgX+ih84tObUBRIrSUKjWUq6ltHvEpHJStq
         4QbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EJUMzYYN0J3FowY8BdNJ/mbjom3ETfG7grjf20PWs60=;
        b=aOGKDu7IYAlMUmnH2l5GTO4V7mWqAOhITxvdHBwyThS9HI8xC+RVArK+5WMkkl5pg6
         OCxVZTfRTO/nC6ziKONMxJi+Ef16t/BKzMwmbWKeepTdgYFEciT0VWzhd3OsEcAwdbi3
         o9Sa/qfS5WAZKa0x82KZFZSDfG0nKr71RLl82D3lS7GwJ6PkYzI+n6RmFsWdCUsgaqYq
         Hun9YuHAP+oyrAi2EegyG5P6ko7GES7QmDle9M6ibH3EnxPKCfz44YQbV1tWd/Ne3plh
         fMDjXa6FcRaZ4TXi9iRvwGmTMGWv/MyE79p4V9gqOWF4FWIYtcab5MOZSR7P5PfeMjrv
         ACWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NnWdQRbk/EhM/aLHjQbFpb/YIyjJt7mmq5IalEk5NH1nh1aT7
	lNljL9RSdBVIL6Ef+nKc7Ok=
X-Google-Smtp-Source: ABdhPJx1MoOP79utkZqQWbLQrhcbhJx7XWDrZu/jx93tmzuaoCjmbZEbIWa/Gl74AMAbZL2621eXcg==
X-Received: by 2002:a05:6102:804:: with SMTP id g4mr1826078vsb.57.1611887173932;
        Thu, 28 Jan 2021 18:26:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f515:: with SMTP id u21ls972926vsn.2.gmail; Thu, 28 Jan
 2021 18:26:13 -0800 (PST)
X-Received: by 2002:a05:6102:1008:: with SMTP id q8mr1533290vsp.25.1611887173370;
        Thu, 28 Jan 2021 18:26:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611887173; cv=none;
        d=google.com; s=arc-20160816;
        b=DQTAvA1eLEQtVI9CTeGbmXIuuZ0+hq9gKLeJzkbP5wfgdaeK8GXh6+LDd/tS4JceR1
         ga1mnG6bhfQYri+UL2h37DZfAL7Qnjhvb8gemBHcgCAKyOQVanCKaItnyqsUlPSiXeKP
         18AQ4oN1yCf0UJQckRATddNBtYgzWaElitBAfTHahjs+Vg+CwZ1+VOIuKF05oTv1glEV
         pXSXL3Im+WHGv/vfFMaJsZTDa1Wzh/5yPPKt9ESNs3776663GHgpmVq8J0crpS3tyuC9
         N2zJkCmuSakElKbHqi3msMDZUCb66L0SrvR8g5T4Mfj5VqhTmvLI1+azXRNkb8Mg4Kd5
         DhJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Ym4CKmgXnCzUu/HxCplpLS5tCtwD0cxmOdVcCyYJmtQ=;
        b=x5sBIDXQY7w+mLU29aOlrBALIgw1C5gZWTiaIBJN+bFGFCv89j5Jqncb2XZLhIbmA5
         HafJULf0kUsc1yrzUSc+VH5J1Q47GO3qAyivGdyJXCzyy78IndrkjgoXAdYGS+gxmAHw
         WKe6bGb6hPIwPnqGEF3WkBNaDL5QUfwY+Obvg1XDyivNAgloFhcsq65Bn6roCqdFd9vl
         SJ2+nM8BE0qZV7Ahgl4yOreGf5Jqn4hYYSn74p1U+HjuW0qhBJiHsYH5pS/MG6aCm7n7
         2hUb7bQjfRu+w0bLzl3yDOU/Y3u67ZFu+KIeAGRZcJOmL7h1gT1e8aYI7YZy+jLqvtTq
         s2tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id e11si546178vkp.4.2021.01.28.18.26.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 18:26:12 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: UUDHw02enyj62HBo9+7a94Ar7AzPnvEBvyZXKb2Medv6fa2WlCLPLDFpSZmhVYCHILn3cF4FNK
 GrWwwRHeStwg==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="179568146"
X-IronPort-AV: E=Sophos;i="5.79,384,1602572400"; 
   d="gz'50?scan'50,208,50";a="179568146"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jan 2021 18:26:11 -0800
IronPort-SDR: bV/UFjzhTlBq7ZN0d6+xRuhZEW0QevivW80j67T1yiU5J3bqvEh0rvdxqMzd+kxBrjIR4xggL2
 jqO2x61r+OKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,384,1602572400"; 
   d="gz'50?scan'50,208,50";a="575269372"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
  by fmsmga006.fm.intel.com with ESMTP; 28 Jan 2021 18:26:09 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l5JU8-0003LP-OS; Fri, 29 Jan 2021 02:26:08 +0000
Date: Fri, 29 Jan 2021 10:25:17 +0800
From: kernel test robot <lkp@intel.com>
To: Mathias Nyman <mathias.nyman@linux.intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [xhci:for-usb-next 24/26] drivers/usb/host/xhci-ring.c:762:60:
 warning: format specifies type 'unsigned long long' but the argument has
 type 'dma_addr_t' (aka 'unsigned int')
Message-ID: <202101291015.6Sxq7wOW-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="yrj/dFKFPuw6o+aM"
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


--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mnyman/xhci.git for-usb-next
head:   1459194e2d74bfcad77992efdeeec568933df64d
commit: 07677197e939dd5ec8470d1d34f8644bb8306af4 [24/26] xhci: introduce a new move_dequeue_past_td() function to replace old code.
config: riscv-randconfig-r032-20210128 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 275c6af7d7f1ed63a03d05b4484413e447133269)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/mnyman/xhci.git/commit/?id=07677197e939dd5ec8470d1d34f8644bb8306af4
        git remote add xhci https://git.kernel.org/pub/scm/linux/kernel/git/mnyman/xhci.git
        git fetch --no-tags xhci for-usb-next
        git checkout 07677197e939dd5ec8470d1d34f8644bb8306af4
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/usb/host/xhci-ring.c:762:60: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                   xhci_warn(xhci, "WARN Can't submit Set TR Deq 0x%llx\n", addr);
                                                                   ~~~~     ^~~~
                                                                   %x
   drivers/usb/host/xhci.h:1965:57: note: expanded from macro 'xhci_warn'
           dev_warn(xhci_to_hcd(xhci)->self.controller , fmt , ## args)
                                                         ~~~      ^~~~
   include/linux/dev_printk.h:114:33: note: expanded from macro 'dev_warn'
           _dev_warn(dev, dev_fmt(fmt), ##__VA_ARGS__)
                                  ~~~     ^~~~~~~~~~~
   drivers/usb/host/xhci-ring.c:770:68: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                   xhci_warn(xhci, "WARN Fail to allocate Set TR Deq cmd 0x%llx\n", addr);
                                                                           ~~~~     ^~~~
                                                                           %x
   drivers/usb/host/xhci.h:1965:57: note: expanded from macro 'xhci_warn'
           dev_warn(xhci_to_hcd(xhci)->self.controller , fmt , ## args)
                                                         ~~~      ^~~~
   include/linux/dev_printk.h:114:33: note: expanded from macro 'dev_warn'
           _dev_warn(dev, dev_fmt(fmt), ##__VA_ARGS__)
                                  ~~~     ^~~~~~~~~~~
   drivers/usb/host/xhci-ring.c:671:5: warning: no previous prototype for function 'xhci_move_dequeue_past_td' [-Wmissing-prototypes]
   int xhci_move_dequeue_past_td(struct xhci_hcd *xhci,
       ^
   drivers/usb/host/xhci-ring.c:671:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int xhci_move_dequeue_past_td(struct xhci_hcd *xhci,
   ^
   static 
   3 warnings generated.


vim +762 drivers/usb/host/xhci-ring.c

   670	
   671	int xhci_move_dequeue_past_td(struct xhci_hcd *xhci,
   672				      unsigned int slot_id, unsigned int ep_index,
   673				      unsigned int stream_id, struct xhci_td *td)
   674	{
   675		struct xhci_virt_device *dev = xhci->devs[slot_id];
   676		struct xhci_virt_ep *ep = &dev->eps[ep_index];
   677		struct xhci_ring *ep_ring;
   678		struct xhci_command *cmd;
   679		struct xhci_segment *new_seg;
   680		union xhci_trb *new_deq;
   681		int new_cycle;
   682		dma_addr_t addr;
   683		u64 hw_dequeue;
   684		bool cycle_found = false;
   685		bool td_last_trb_found = false;
   686		u32 trb_sct = 0;
   687		int ret;
   688	
   689		ep_ring = xhci_triad_to_transfer_ring(xhci, slot_id,
   690				ep_index, stream_id);
   691		if (!ep_ring) {
   692			xhci_warn(xhci, "WARN can't find new dequeue, invalid stream ID %u\n",
   693				  stream_id);
   694			return -ENODEV;
   695		}
   696		/*
   697		 * A cancelled TD can complete with a stall if HW cached the trb.
   698		 * In this case driver can't find td, but if the ring is empty we
   699		 * can move the dequeue pointer to the current enqueue position.
   700		 * FIXMA MATTU is this still the case?
   701		 */
   702		if (!td) {
   703			if (list_empty(&ep_ring->td_list)) {
   704				new_seg = ep_ring->enq_seg;
   705				new_deq = ep_ring->enqueue;
   706				new_cycle = ep_ring->cycle_state;
   707				xhci_dbg(xhci, "ep ring empty, Set new dequeue = enqueue");
   708				goto deq_found;
   709			} else {
   710				xhci_warn(xhci, "Can't find new dequeue state, missing td\n");
   711				return -EINVAL;
   712			}
   713		}
   714	
   715		hw_dequeue = xhci_get_hw_deq(xhci, dev, ep_index, stream_id);
   716		new_seg = ep_ring->deq_seg;
   717		new_deq = ep_ring->dequeue;
   718		new_cycle = hw_dequeue & 0x1;
   719	
   720		/*
   721		 * We want to find the pointer, segment and cycle state of the new trb
   722		 * (the one after current TD's last_trb). We know the cycle state at
   723		 * hw_dequeue, so walk the ring until both hw_dequeue and last_trb are
   724		 * found.
   725		 */
   726		do {
   727			if (!cycle_found && xhci_trb_virt_to_dma(new_seg, new_deq)
   728			    == (dma_addr_t)(hw_dequeue & ~0xf)) {
   729				cycle_found = true;
   730				if (td_last_trb_found)
   731					break;
   732			}
   733			if (new_deq == td->last_trb)
   734				td_last_trb_found = true;
   735	
   736			if (cycle_found && trb_is_link(new_deq) &&
   737			    link_trb_toggles_cycle(new_deq))
   738				new_cycle ^= 0x1;
   739	
   740			next_trb(xhci, ep_ring, &new_seg, &new_deq);
   741	
   742			/* Search wrapped around, bail out */
   743			if (new_deq == ep->ring->dequeue) {
   744				xhci_err(xhci, "Error: Failed finding new dequeue state\n");
   745				return -EINVAL;
   746			}
   747	
   748		} while (!cycle_found || !td_last_trb_found);
   749	
   750	deq_found:
   751	
   752		/* Don't update the ring cycle state for the producer (us). */
   753		addr = xhci_trb_virt_to_dma(new_seg, new_deq);
   754		if (addr == 0) {
   755			xhci_warn(xhci, "WARN Cannot find dma of new dequeue ptr\n");
   756			xhci_warn(xhci, "deq seg = %p, deq ptr = %p\n", new_seg, new_deq);
   757			return -EINVAL;
   758		}
   759	
   760		/* MATTU fixme do we want this PENDING flag at all?*/
   761		if ((ep->ep_state & SET_DEQ_PENDING)) {
 > 762			xhci_warn(xhci, "WARN Can't submit Set TR Deq 0x%llx\n", addr);
   763			xhci_warn(xhci, "Another Set TR Deq command is pending.\n");
   764			return -EBUSY;  //MATTU FIXME
   765		}
   766	
   767		/* This function gets called from contexts where it cannot sleep */
   768		cmd = xhci_alloc_command(xhci, false, GFP_ATOMIC);
   769		if (!cmd) {
   770			xhci_warn(xhci, "WARN Fail to allocate Set TR Deq cmd 0x%llx\n", addr);
   771			return -ENOMEM;
   772		}
   773	
   774		if (stream_id)
   775			trb_sct = SCT_FOR_TRB(SCT_PRI_TR);
   776		ret = queue_command(xhci, cmd,
   777			lower_32_bits(addr) | trb_sct | new_cycle,
   778			upper_32_bits(addr),
   779			STREAM_ID_FOR_TRB(stream_id), SLOT_ID_FOR_TRB(slot_id) |
   780			EP_ID_FOR_TRB(ep_index) | TRB_TYPE(TRB_SET_DEQ), false);
   781		if (ret < 0) {
   782			xhci_free_command(xhci, cmd);
   783			return ret;
   784		}
   785		ep->queued_deq_seg = new_seg;
   786		ep->queued_deq_ptr = new_deq;
   787	
   788		xhci_dbg_trace(xhci, trace_xhci_dbg_cancel_urb,
   789			       "Set TR Deq ptr 0x%llx, cycle %u\n", addr, new_cycle);
   790	
   791		/* Stop the TD queueing code from ringing the doorbell until
   792		 * this command completes.  The HC won't set the dequeue pointer
   793		 * if the ring is running, and ringing the doorbell starts the
   794		 * ring running.
   795		 */
   796		ep->ep_state |= SET_DEQ_PENDING;
   797		xhci_ring_cmd_db(xhci);
   798		return 0;
   799	}
   800	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101291015.6Sxq7wOW-lkp%40intel.com.

--yrj/dFKFPuw6o+aM
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--yrj/dFKFPuw6o+aM--
